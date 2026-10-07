Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_http-9a8611a24ee00448.actix_http.2387a03c31849639-cgu.0?download=true
inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 290
begin_hunk_0_@"_ZN110_$LT$actix_http..header..map..HeaderMap$u20$as$u20$core..convert..From$LT$http..header..map..HeaderMap$GT$$GT$4from17h6f60c81c52cd4eb9E":bb.a
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.i.i.i" unwind label %bb.aj, !noalias !3087, !inline_history !2

bb.al:                                            ; preds = %bb.t
  store i64 %i.cx, ptr %i.cd, align 8, !noalias !3074
  store i64 0, ptr %i.n, align 8, !noalias !3074
  store i64 %i.cw, ptr %i.cc, align 8, !noalias !3074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false), !noalias !3111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3080
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$http..header..map..Drain$LT$http..header..value..HeaderValue$GT$$GT$17hde79f23f3953920dE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n)
          to label %.noexc1 unwind label %bb.b

.noexc1:                                          ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !noalias !3074
  %i.et = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !3112)
  call void @llvm.experimental.noalias.scope.decl(metadata !3113)
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !3114, !noalias !3074, !noundef !21 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit.i", label %bb.ap

bb.am:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !3115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !3115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !3080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.r

.loopexit.i.i:                                    ; preds = %bb.s
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %i.cx, ptr %i.cd, align 8, !noalias !3074
  store i64 1, ptr %i.n, align 8, !noalias !3074
  store i64 %i.cw, ptr %i.cc, align 8, !noalias !3074
  br label %bb.an

.loopexit.split-lp.i.i:                           ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$$LP$actix_http..header..map..HeaderMap$C$http..header..name..HeaderName$RP$$GT$17h73332cb47beb4df4E"(ptr noalias noundef align 8 dereferenceable(72) %i.j) #47
          to label %.body.i.i unwind label %bb.ao, !noalias !3080

bb.ao:                                            ; preds = %.body.i.i, %bb.an
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48, !noalias !3080
  unreachable

.body.i.i:                                        ; preds = %bb.an, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.i.i.i"
  %eh.lpad-body10.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.an ], [ %.pn3.i.i.i, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.i.i.i" ]
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$http..header..map..Drain$LT$http..header..value..HeaderValue$GT$$GT$17hde79f23f3953920dE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n) #47
          to label %.body unwind label %bb.ao, !noalias !3084

bb.ap:                                            ; preds = %.noexc1
  call void @llvm.experimental.noalias.scope.decl(metadata !3116)
  call void @llvm.experimental.noalias.scope.decl(metadata !3117)
  call void @llvm.experimental.noalias.scope.decl(metadata !3118)
  call void @llvm.experimental.noalias.scope.decl(metadata !3119)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !3120, !nonnull !21, !noundef !21
  %i.ez = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !3121, !noalias !3074, !noundef !21
  %i.fc = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !3121, !noalias !3074, !noundef !21
  invoke void %i.ey(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef %i.fb, i64 noundef %i.fd)
          to label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit.i" unwind label %bb.aq, !noalias !3074, !inline_history !1

bb.aq:                                            ; preds = %bb.ap
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$$GT$17hcb08d1ad5ecab8bfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.p)
          to label %.body unwind label %bb.i, !noalias !3074

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit.i": ; preds = %bb.ap, %.noexc1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !3068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3074
  br label %bb.av

bb.ar:                                            ; preds = %bb.o, %bb.m
  %.sroa.06.2.ph.i = phi i1 [ true, %bb.m ], [ false, %bb.o ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$$GT$17hcb08d1ad5ecab8bfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.s)
          to label %"_ZN4core3ptr55drop_in_place$LT$actix_http..header..map..HeaderMap$GT$17h85cb9683216e51faE.exit38.i" unwind label %bb.i, !noalias !3074

"_ZN4core3ptr55drop_in_place$LT$actix_http..header..map..HeaderMap$GT$17h85cb9683216e51faE.exit38.i": ; preds = %bb.ar
  br i1 %.sroa.06.2.ph.i, label %bb.as, label %.thread80.i

bb.as:                                            ; preds = %"_ZN4core3ptr55drop_in_place$LT$actix_http..header..map..HeaderMap$GT$17h85cb9683216e51faE.exit38.i", %.thread56.i
  %.pn.pn63.i = phi { ptr, i32 } [ %i.bi, %.thread56.i ], [ %lpad.thr_comm.i, %"_ZN4core3ptr55drop_in_place$LT$actix_http..header..map..HeaderMap$GT$17h85cb9683216e51faE.exit38.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3122)
  call void @llvm.experimental.noalias.scope.decl(metadata !3123)
  call void @llvm.experimental.noalias.scope.decl(metadata !3124)
  %i.ff = load ptr, ptr %i.t, align 8, !alias.scope !3125, !noalias !3074, !nonnull !21, !align !32, !noundef !21
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !3126, !nonnull !21, !noundef !21
  %i.fi = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.fj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !3125, !noalias !3074, !noundef !21
  %i.fl = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !3125, !noalias !3074, !noundef !21
  invoke void %i.fh(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef %i.fk, i64 noundef %i.fm)
          to label %.thread80.i unwind label %bb.i, !noalias !3074, !inline_history !2

.thread80.i:                                      ; preds = %bb.as, %"_ZN4core3ptr55drop_in_place$LT$actix_http..header..map..HeaderMap$GT$17h85cb9683216e51faE.exit38.i"
  %.pn.pn6283.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %"_ZN4core3ptr55drop_in_place$LT$actix_http..header..map..HeaderMap$GT$17h85cb9683216e51faE.exit38.i" ], [ %.pn.pn63.i, %bb.as ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3127)
  call void @llvm.experimental.noalias.scope.decl(metadata !3128)
  %i.fn = load ptr, ptr %i.u, align 8, !alias.scope !3129, !noalias !3074, !noundef !21 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.thread80.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3130)
  call void @llvm.experimental.noalias.scope.decl(metadata !3131)
  call void @llvm.experimental.noalias.scope.decl(metadata !3132)
  call void @llvm.experimental.noalias.scope.decl(metadata !3133)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !3134, !nonnull !21, !noundef !21
  %i.fr = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !alias.scope !3135, !noalias !3074, !noundef !21
  %i.fu = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !3135, !noalias !3074, !noundef !21
  invoke void %i.fq(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef %i.ft, i64 noundef %i.fv)
          to label %bb.au unwind label %bb.i, !noalias !3074, !inline_history !1

bb.au:                                            ; preds = %bb.at, %.thread80.i, %bb.e
  %.pn.pn.pn.ph.i = phi { ptr, i32 } [ %i.be, %bb.e ], [ %.pn.pn6283.i, %.thread80.i ], [ %.pn.pn6283.i, %bb.at ]
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$http..header..map..Drain$LT$http..header..value..HeaderValue$GT$$GT$17hde79f23f3953920dE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.v) #47
          to label %.body unwind label %bb.i, !noalias !3067

bb.av:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit.i", %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !3136)
  %.val2.i = load i64, ptr %i.y, align 8, !alias.scope !3136, !noundef !21 ; 2 uses
  %i.fw = icmp eq i64 %.val2.i, 0
  br i1 %i.fw, label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.av
  %.val.i = load ptr, ptr %i.w, align 8, !alias.scope !3136, !nonnull !21, !noundef !21
  %i.fx = shl nuw nsw i64 %.val2.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.fx, i64 noundef 2) #45, !noalias !3136
  br label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i"

"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %bb.av
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17h1de2d72d91212fafE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.fy)
          to label %"_ZN4core3ptr49drop_in_place$LT$http..header..map..HeaderMap$GT$17h8d174a38ed5eec9aE.exit" unwind label %bb.aw

bb.aw:                                            ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i"
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr113drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..ExtraValue$LT$http..header..value..HeaderValue$GT$$GT$$GT$17h55e18b70bf41f712E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.as) #47
          to label %common.resume unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48, !noalias !3136
  unreachable

common.resume:                                    ; preds = %.body, %bb.aw
  %common.resume.op = phi { ptr, i32 } [ %i.fz, %bb.aw ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr49drop_in_place$LT$http..header..map..HeaderMap$GT$17h8d174a38ed5eec9aE.exit": ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i"
  call fastcc void @"_ZN4core3ptr113drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..ExtraValue$LT$http..header..value..HeaderValue$GT$$GT$$GT$17h55e18b70bf41f712E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.as)
  ret void

bb.ay:                                            ; preds = %.body
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN110_$LT$actix_http..header..shared..content_encoding..ContentEncodingParseError$u20$as$u20$core..fmt..Display$GT$3fmt17h83b801494aa33163E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !21, !noalias !3139, !nonnull !21
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @226, i64 noundef 28), !noalias !3139, !inline_history !6
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h81848e09d7042e96E"(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(240) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 41 uses
  %i.b = alloca [16 x i8], align 8                ; 41 uses
  %i.c = alloca [8 x i8], align 8                 ; 11 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3163)
  %i.f = load i8, ptr %1, align 8, !range !26, !alias.scope !3163, !noalias !3162, !noundef !21
  switch i8 %i.f, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %_ZN6brotli3enc12ir_interpret9push_base17hafff60b555dc2cecE.exit
    i8 4, label %bb.e
    i8 5, label %_ZN6brotli3enc12ir_interpret9push_base17hafff60b555dc2cecE.exit
    i8 6, label %_ZN6brotli3enc12ir_interpret9push_base17hafff60b555dc2cecE.exit
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !3163, !noalias !3162, !noundef !21
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !3164, !noalias !3163, !noundef !21
  %i.l = add i64 %i.k, %i.i
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !3164, !noalias !3163
  br label %_ZN6brotli3enc12ir_interpret9push_base17hafff60b555dc2cecE.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.n = load i8, ptr %i.m, align 2, !alias.scope !3163, !noalias !3162, !noundef !21
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !3165, !noalias !3163, !noundef !21
  %i.r = add i64 %i.q, %i.o
  store i64 %i.r, ptr %i.p, align 8, !alias.scope !3165, !noalias !3163
  br label %_ZN6brotli3enc12ir_interpret9push_base17hafff60b555dc2cecE.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3166
  store i64 0, ptr %i.e, align 8, !noalias !3166
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %.val14.i = load i64, ptr %i.s, align 8, !alias.scope !3162, !noalias !3163, !noundef !21 ; 17 uses
  %.not.i = icmp eq i64 %.val14.i, 0
  br i1 %.not.i, label %.thread52.i, label %bb.z

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !3163, !noalias !3162, !noundef !21
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.w = load i8, ptr %i.v, align 2, !alias.scope !3163, !noalias !3162, !noundef !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3167)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 %i.u, ptr %i.x, align 8, !alias.scope !3168, !noalias !3163
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 %i.w, ptr %i.y, align 1, !alias.scope !3168, !noalias !3163
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !3168, !noalias !3163, !noundef !21
  %i.ab = add i64 %i.aa, 1                        ; 2 uses
  store i64 %i.ab, ptr %i.z, align 8, !alias.scope !3168, !noalias !3163
  %i.ac = shl i64 %i.ab, 3
  %i.ad = or disjoint i64 %i.ac, 7
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %.val16.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !3168, !noalias !3163, !nonnull !21, !align !28, !noundef !21 ; 8 uses
  %.val16.i.i23 = ptrtoaddr ptr %.val16.i.i to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.val17.i.i = load i64, ptr %i.af, align 8, !alias.scope !3168, !noalias !3163, !noundef !21 ; 8 uses
  %.not.i.i = icmp ult i64 %i.ad, %.val17.i.i
  br i1 %.not.i.i, label %_ZN6brotli3enc12ir_interpret9push_base17hafff60b555dc2cecE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = shl i64 %.val17.i.i, 1                  ; 4 uses
  %i.ah = shl i64 %.val17.i.i, 3                  ; 5 uses
  %i.ai = icmp ugt i64 %i.ag, 4611686018427387903
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775804
  %or.cond.i.i.i.i.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i.i.i.i.i, label %bb.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ak = icmp eq i64 %i.ah, 0
  br i1 %i.ak, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !3169
  %i.al = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.ah, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !3169 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = ptrtoint ptr %i.al to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 4, %bb.g ], [ 0, %bb.f ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !3170
  unreachable

bb.j:                                             ; preds = %bb.h, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi i64 [ %i.an, %bb.h ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ] ; 3 uses
  %i.ao = inttoptr i64 %.sroa.10.0.i.i.i.i to ptr ; 10 uses
  %i.ap = icmp samesign ult i64 %i.ag, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %.not7.i.i = icmp slt i64 %.val17.i.i, 0
  br i1 %.not7.i.i, label %bb.k, label %bb.m, !prof !30

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3171
  store ptr @230, ptr %i.d, align 8, !noalias !3171
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.aq, align 8, !noalias !3171
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.ar, align 8, !noalias !3171
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.as, align 8, !noalias !3171
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.at, align 8, !noalias !3171
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #46
          to label %bb.l unwind label %bb.o, !noalias !3171

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.val17.i.i
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub nuw i64 %i.av, %.sroa.10.0.i.i.i.i
  %i.ax = lshr exact i64 %i.aw, 2
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ax, i64 %.val17.i.i) ; 7 uses
  %.not36.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.m
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i.i.i.i.i, 8
  %i.ay = sub i64 %.val16.i.i23, %.sroa.10.0.i.i.i.i
  %diff.check = icmp ugt i64 %i.ay, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %.sroa.0.0.i.i.i.i.i, 4611686018427387896 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val16.i.i, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <4 x float>, ptr %i.az, align 4, !noalias !3171
  %wide.load24 = load <4 x float>, ptr %i.bb, align 4, !noalias !3171
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <4 x float> %wide.load, ptr %i.ba, align 4, !noalias !3171
  store <4 x float> %wide.load24, ptr %i.bc, align 4, !noalias !3171
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !3153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.0.0.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader26

.lr.ph.i.i.preheader26:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.sroa.8.035.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.sroa.0.0.i.i.i.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader26, %.lr.ph.i.i.prol
  %.sroa.8.035.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.prol ], [ %.sroa.8.035.i.i.ph, %.lr.ph.i.i.preheader26 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader26 ]
  %i.be = add nuw nsw i64 %.sroa.8.035.i.i.prol, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val16.i.i, i64 %.sroa.8.035.i.i.prol
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.sroa.8.035.i.i.prol
  %i.bh = load float, ptr %i.bf, align 4, !noalias !3171, !noundef !21
  store float %i.bh, ptr %i.bg, align 4, !noalias !3171
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3154

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader26
  %.sroa.8.035.i.i.unr = phi i64 [ %.sroa.8.035.i.i.ph, %.lr.ph.i.i.preheader26 ], [ %i.be, %.lr.ph.i.i.prol ]
  %i.bi = sub nsw i64 %.sroa.8.035.i.i.ph, %.sroa.0.0.i.i.i.i.i
  %i.bj = icmp ugt i64 %i.bi, -4
  br i1 %i.bj, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.8.035.i.i = phi i64 [ %i.bw, %.lr.ph.i.i ], [ %.sroa.8.035.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bk = add nuw nsw i64 %.sroa.8.035.i.i, 1     ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9c9c91b28a17fd38E":switch.lookup
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc7a52622e378270bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !align !32, !noundef !21
  %i.b = tail call noundef zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h62ceb23194058131E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcf39174a027bcc5cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !align !29, !noundef !21
  %.val = load i8, ptr %i.a, align 1, !range !22, !noundef !21 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcf39174a027bcc5cE", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcf39174a027bcc5cE.1124", i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd0b24f4704d5e9bfE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !21, !align !32, !noundef !21 ; 10 uses
  %i.g = load i8, ptr %i.f, align 8, !range !73, !noalias !5610, !noundef !21
  switch i8 %i.g, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5610
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !noalias !5610
  %i.k = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field3_finish17h60c420ae607814c7E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @672, i64 noundef 5, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @669, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @670, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @671)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5610
  br label %"_ZN52_$LT$h2..error..Kind$u20$as$u20$core..fmt..Debug$GT$3fmt17h1ea6dcac3c5196a9E.exit"

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5610
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.n, ptr %i.d, align 8, !noalias !5610
  %i.o = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field3_finish17h60c420ae607814c7E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @674, i64 noundef 6, ptr noundef nonnull align 1 %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @673, ptr noundef nonnull align 1 %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @670, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @671)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5610
  br label %"_ZN52_$LT$h2..error..Kind$u20$as$u20$core..fmt..Debug$GT$3fmt17h1ea6dcac3c5196a9E.exit"

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5610
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.p, ptr %i.c, align 8, !noalias !5610
  %i.q = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @676, i64 noundef 6, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @675)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5610
  br label %"_ZN52_$LT$h2..error..Kind$u20$as$u20$core..fmt..Debug$GT$3fmt17h1ea6dcac3c5196a9E.exit"

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5610
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.r, ptr %i.b, align 8, !noalias !5610
  %i.s = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @678, i64 noundef 4, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @677)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5610
  br label %"_ZN52_$LT$h2..error..Kind$u20$as$u20$core..fmt..Debug$GT$3fmt17h1ea6dcac3c5196a9E.exit"

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5610
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.t, ptr %i.a, align 8, !noalias !5610
  %i.u = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @680, i64 noundef 2, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @679)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5610
  br label %"_ZN52_$LT$h2..error..Kind$u20$as$u20$core..fmt..Debug$GT$3fmt17h1ea6dcac3c5196a9E.exit"

"_ZN52_$LT$h2..error..Kind$u20$as$u20$core..fmt..Debug$GT$3fmt17h1ea6dcac3c5196a9E.exit": ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.in.i = phi i1 [ %i.k, %bb.b ], [ %i.o, %bb.c ], [ %i.q, %bb.d ], [ %i.s, %bb.e ], [ %i.u, %bb.f ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd6491b6705e6c3c9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !21, !align !32, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5613
  store ptr %i.b, ptr %i.a, align 8, !noalias !5613
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @681, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @683, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @682)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5613
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd8964eda9c37ce53E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !align !32, !noundef !21
  %i.b = tail call noundef zeroext i1 @"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..fmt..Debug$GT$3fmt17hf80357cefdfa8c04E"(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdaaff30aa2a7aa5fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !21, !align !29, !noundef !21 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5617)
  %i.c = load i8, ptr %i.b, align 1, !range !38, !alias.scope !5617, !noalias !5618, !noundef !21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5619
  store ptr %i.e, ptr %i.a, align 8, !noalias !5619
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @821, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @526)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5619
  br label %"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h53cbeed102b991c1E.exit"

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @792, i64 noundef 4), !noalias !5617
  br label %"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h53cbeed102b991c1E.exit"

"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h53cbeed102b991c1E.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hddf6f4fc8ccc3eecE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !align !29, !noundef !21 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !5623, !noalias !5624, !noundef !21 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h6c6a42330d76a63bE.exit"

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h4106ba8e3ec0c355E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h6c6a42330d76a63bE.exit"

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17hde63f116d7a06bd3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h6c6a42330d76a63bE.exit"

"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h6c6a42330d76a63bE.exit": ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1b1d8eaec98bbe85E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !align !32, !noundef !21
  %.val = load ptr, ptr %i.a, align 8, !nonnull !21, !align !32, !noundef !21
  %i.b = tail call noundef zeroext i1 @"_ZN72_$LT$actix_http..h1..timer..TimerState$u20$as$u20$core..fmt..Display$GT$3fmt17hfb0aa882037de388E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2e8fcf1e995295adE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !align !32, !noundef !21
  %i.b = tail call noundef zeroext i1 @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h42c59897d6f9be56E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !align !29, !noundef !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5646)
  %i.b = load i8, ptr %i.a, align 1, !range !46, !alias.scope !5645, !noalias !5646, !noundef !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15.i = load ptr, ptr %i.c, align 8, !alias.scope !5646, !noalias !5645, !nonnull !21, !noundef !21
  %.val14.i = load ptr, ptr %1, align 8, !alias.scope !5646, !noalias !5645, !nonnull !21, !noundef !21 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val15.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !21, !noalias !5647, !nonnull !21 ; 8 uses
  switch i8 %i.b, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val14.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @755, i64 noundef 21), !noalias !5648, !inline_history !5630
  br label %"_ZN62_$LT$actix_http..error..Kind$u20$as$u20$core..fmt..Display$GT$3fmt17h7f5b51847d4c270bE.exit"

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val14.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @756, i64 noundef 26), !noalias !5649, !inline_history !5630
  br label %"_ZN62_$LT$actix_http..error..Kind$u20$as$u20$core..fmt..Display$GT$3fmt17h7f5b51847d4c270bE.exit"

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val14.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @757, i64 noundef 26), !noalias !5650, !inline_history !5630
  br label %"_ZN62_$LT$actix_http..error..Kind$u20$as$u20$core..fmt..Display$GT$3fmt17h7f5b51847d4c270bE.exit"

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val14.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @758, i64 noundef 25), !noalias !5651, !inline_history !5630
  br label %"_ZN62_$LT$actix_http..error..Kind$u20$as$u20$core..fmt..Display$GT$3fmt17h7f5b51847d4c270bE.exit"

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val14.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @759, i64 noundef 19), !noalias !5652, !inline_history !5630
  br label %"_ZN62_$LT$actix_http..error..Kind$u20$as$u20$core..fmt..Display$GT$3fmt17h7f5b51847d4c270bE.exit"

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val14.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @760, i64 noundef 26), !noalias !5653, !inline_history !5630
  br label %"_ZN62_$LT$actix_http..error..Kind$u20$as$u20$core..fmt..Display$GT$3fmt17h7f5b51847d4c270bE.exit"

bb.h:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val14.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @761, i64 noundef 16), !noalias !5654, !inline_history !5630
  br label %"_ZN62_$LT$actix_http..error..Kind$u20$as$u20$core..fmt..Display$GT$3fmt17h7f5b51847d4c270bE.exit"

bb.i:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val14.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @762, i64 noundef 13), !noalias !5655, !inline_history !5630
  br label %"_ZN62_$LT$actix_http..error..Kind$u20$as$u20$core..fmt..Display$GT$3fmt17h7f5b51847d4c270bE.exit"

"_ZN62_$LT$actix_http..error..Kind$u20$as$u20$core..fmt..Display$GT$3fmt17h7f5b51847d4c270bE.exit": ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.d ], [ %i.g, %bb.c ], [ %i.m, %bb.i ], [ %i.l, %bb.h ], [ %i.k, %bb.g ], [ %i.j, %bb.f ], [ %i.i, %bb.e ], [ %i.f, %bb.b ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h66ceb2f0a537a09cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !align !32, !noundef !21 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !21, !noundef !21
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !21
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6b49d4d10913a895E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !align !29, !noundef !21
  %i.b = tail call noundef zeroext i1 @"_ZN60_$LT$http..uri..InvalidUri$u20$as$u20$core..fmt..Display$GT$3fmt17h844f9a69d2c87e4eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h75372fae94e73485E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !align !29, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !21
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7ebf97ad18d7a09fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !align !32, !noundef !21
  %i.b = tail call noundef zeroext i1 @"_ZN68_$LT$actix_http..error..ParseError$u20$as$u20$core..fmt..Display$GT$3fmt17hdb59b16eaf9b7af2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h9c8d38f2ac1a46a4E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !align !32, !noundef !21
  %i.b = tail call noundef zeroext i1 @"_ZN66_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Display$GT$3fmt17h031314d5fbfe9c00E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17ha7d6f7e2dd6e185bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !align !32, !noundef !21 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !21, !align !29, !noundef !21
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !21, !align !32, !noundef !21
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !21, !noalias !5659, !nonnull !21
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !5658
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN45_$LT$$LP$$RP$$u20$as$u20$core..fmt..Debug$GT$3fmt17h03e6a69f3a2ff73dE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter3pad17h36dd57a07a89d236E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @521, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h1c07ef27057e1eafE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !align !29, !noundef !21
  %i.b = tail call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !21 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write10write_char17h5bcbe61ecce2f221E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i32 0, ptr %.sroa.0, align 4
  %i.a = icmp samesign ult i32 %1, 128
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %1, 2048
  %i.c = trunc i32 %1 to i8
  %i.d = and i8 %i.c, 63
  %i.e = or disjoint i8 %i.d, -128                ; 3 uses
  %i.f = lshr i32 %1, 6
  %i.g = trunc i32 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 2 uses
  %i.j = lshr i32 %1, 12
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = lshr i32 %1, 18
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = or disjoint i8 %i.o, -16
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = trunc nuw nsw i32 %1 to i8
  store i8 %i.q, ptr %.sroa.0, align 4, !alias.scope !5669
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.d:                                             ; preds = %bb.b
  %i.r = or disjoint i8 %i.g, -64
  store i8 %i.r, ptr %.sroa.0, align 4, !alias.scope !5669
  %.sroa.0.1..sroa_idx13 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.e, ptr %.sroa.0.1..sroa_idx13, align 1, !alias.scope !5669
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.e:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %1, 65536
  br i1 %i.s, label %bb.f, label %bb.g
end_hunk_1
begin_hunk_2_@"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17hb542e7d2e568c3f6E":bb.a
  %.not1.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not1.i.i.i.i, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h096789c2b3b4c9baE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  invoke void @_ZN5tokio7runtime4task4core7Trailer9wake_join17hde58970b9445298fE(ptr noundef nonnull align 8 %i.g)
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.d
  %i.h = invoke noundef i64 @_ZN5tokio7runtime4task5state5State26unset_waker_after_complete17h026f36bf9d9b5710E(ptr noundef nonnull align 8 %0)
          to label %.noexc5 unwind label %bb.f

.noexc5:                                          ; preds = %.noexc4
  %i.i = and i64 %i.h, 8
  %.not2.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not2.i.i.i.i, label %bb.e, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h096789c2b3b4c9baE.exit"

bb.e:                                             ; preds = %.noexc5
  invoke void @_ZN5tokio7runtime4task4core7Trailer9set_waker17h4ecbb5fce603c1a0E(ptr noundef nonnull align 8 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
          to label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h096789c2b3b4c9baE.exit" unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc4, %bb.d, %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.k)
          to label %bb.h unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #48
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h096789c2b3b4c9baE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !33, !invariant.load !21 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !34, !invariant.load !21 ; 2 uses
  %i.v = icmp ult i64 %i.u, -9223372036854775807
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i64 %i.s, 0
  br i1 %i.w, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h096789c2b3b4c9baE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.k
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.u) #45
  br label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h096789c2b3b4c9baE.exit"

bb.l:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !33, !invariant.load !21 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !34, !invariant.load !21 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i64 %i.z, 0
  br i1 %i.ad, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.l
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #45
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i", %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.o ], [ %i.x, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i" ], [ %i.x, %bb.l ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h096789c2b3b4c9baE.exit": ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = call noundef ptr @"_ZN5tokio4task5local111_$LT$impl$u20$tokio..runtime..task..Schedule$u20$for$u20$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$7release17h7991126e01e3ac1cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.af, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State22transition_to_terminal17hbe80bd7489bcd841E(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ag, label %bb.n, label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr202drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h614044488be23325E.exit", %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h096789c2b3b4c9baE.exit"
  ret void

bb.n:                                             ; preds = %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h096789c2b3b4c9baE.exit"
  invoke fastcc void @"_ZN4core3ptr177drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h9976e347a8f933c6E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr202drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h614044488be23325E.exit" unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #45
  br label %common.resume

"_ZN4core3ptr202drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h614044488be23325E.exit": ; preds = %bb.n
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #45
  br label %bb.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN60_$LT$actix_http..error..Kind$u20$as$u20$core..fmt..Debug$GT$3fmt17hbd2ceb3c0d4ca798E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !46, !noundef !21 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN60_$LT$actix_http..error..Kind$u20$as$u20$core..fmt..Debug$GT$3fmt17hbd2ceb3c0d4ca798E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN60_$LT$actix_http..error..Kind$u20$as$u20$core..fmt..Debug$GT$3fmt17hbd2ceb3c0d4ca798E.1126", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN60_$LT$http..method..Inner$u20$as$u20$core..cmp..PartialEq$GT$2eq17h6ef27bdebf117dbfE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #24 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !25, !noundef !21 ; 2 uses
  %i.b = load i8, ptr %1, align 8, !range !25, !noundef !21
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %bb.c [
    i8 9, label %bb.d
    i8 10, label %bb.f
  ]

bb.c:                                             ; preds = %bb.f, %bb.d, %bb.b, %bb.a, %bb.g, %bb.e
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ %i.m, %bb.e ], [ true, %bb.b ], [ false, %bb.d ], [ %i.v, %bb.g ], [ false, %bb.f ]
  ret i1 %.sroa.0.0.shrunk

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !noundef !21
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i8, ptr %i.f, align 8, !noundef !21
  %i.h = icmp eq i8 %i.e, %i.g
  br i1 %i.h, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i120, ptr %i.j, align 1
  %i.l = load i120, ptr %i.i, align 1
  %i.m = icmp eq i120 %i.k, %i.l
  br label %bb.c

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !21 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !21
  %.not = icmp eq i64 %i.o, %i.q
  br i1 %.not, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !21, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !21, !noundef !21
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.u, ptr nonnull %i.s, i64 %i.o)
  %i.v = icmp eq i32 %bcmp, 0
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN61_$LT$actix_http..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h2879ae9a167cde67E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @751, i64 noundef 17)
  %i.b = load ptr, ptr %0, align 8, !nonnull !21, !align !32, !noundef !21 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @683, i64 noundef 4, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @752)
  %i.e = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @754, i64 noundef 5, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @753)
  %i.f = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN62_$LT$actix_http..error..Kind$u20$as$u20$core..fmt..Display$GT$3fmt17h7f5b51847d4c270bE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !46, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15 = load ptr, ptr %i.b, align 8, !nonnull !21, !noundef !21
  %.val14 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val15, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !21, !noalias !21, !nonnull !21 ; 8 uses
  switch i8 %i.a, label %default.unreachable93 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
  ]

default.unreachable93:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @755, i64 noundef 21), !noalias !7818, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @756, i64 noundef 26), !noalias !7819, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @757, i64 noundef 26), !noalias !7820, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @758, i64 noundef 25), !noalias !7821, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.f:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @759, i64 noundef 19), !noalias !7822, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.g:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @760, i64 noundef 26), !noalias !7823, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.h:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @761, i64 noundef 16), !noalias !7824, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.i:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @762, i64 noundef 13), !noalias !7825, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ %i.l, %bb.i ], [ %i.k, %bb.h ], [ %i.j, %bb.g ], [ %i.i, %bb.f ], [ %i.h, %bb.e ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN62_$LT$actix_http..test..TestBuffer$u20$as$u20$std..io..Read$GT$4read17h30e0e26e8d2cf0daE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull writeonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !21, !noundef !21 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 9 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !21 ; 5 uses
  %i.f = icmp ult i64 %i.e, 9223372036854775807
  br i1 %i.f, label %bb.c, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @763) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = add nuw nsw i64 %i.e, 1
  store i64 %i.g, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noundef !21 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  store i64 %i.e, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noundef !21 ; 8 uses
  %.not15 = icmp eq ptr %i.l, null
  br i1 %.not15, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.k, align 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !21
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !21, !noundef !21 ; 3 uses
  store i64 0, ptr %i.l, align 8
  %i.q = icmp eq ptr %i.l, inttoptr (i64 -1 to ptr)
  br i1 %i.q, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hd9a72f14255c8631E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !21
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.r, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.h, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hd9a72f14255c8631E.exit"

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 24, i64 noundef 8) #45
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hd9a72f14255c8631E.exit"

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.a, align 8
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @546, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @550, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @764) #46
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7834)
  call void @llvm.experimental.noalias.scope.decl(metadata !7835)
  %i.w = load ptr, ptr %i.a, align 8, !alias.scope !7836, !nonnull !21, !noundef !21 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !noalias !7836, !noundef !21
  %i.y = add i64 %i.x, -1                         ; 2 uses
  store i64 %i.y, ptr %i.w, align 8, !noalias !7836
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.k, label %common.resume

bb.k:                                             ; preds = %bb.j
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hcfe607e79af68e65E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %common.resume unwind label %bb.m

bb.l:                                             ; preds = %bb.i
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.s, %bb.k, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.v, %bb.j ], [ %i.aj, %bb.s ], [ %i.ag, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.d
  %i.ab = tail call noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hd9a72f14255c8631E.exit"

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hd9a72f14255c8631E.exit": ; preds = %bb.h, %bb.g, %bb.f, %bb.n, %bb.v
  %.sroa.4.0 = phi ptr [ %i.ap, %bb.v ], [ %i.ab, %bb.n ], [ %i.p, %bb.f ], [ %i.p, %bb.g ], [ %i.p, %bb.h ]
  %.sroa.0.0 = phi i64 [ 0, %bb.v ], [ 1, %bb.n ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ]
  %i.ac = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ad = insertvalue { i64, ptr } %i.ac, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.ad

bb.o:                                             ; preds = %bb.c
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.i) ; 5 uses
  store i64 %i.e, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ae = icmp eq i64 %i.e, 0
  br i1 %i.ae, label %bb.p, label %bb.q, !prof !31

bb.p:                                             ; preds = %bb.o
  store i64 -1, ptr %i.d, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  invoke void @_ZN5bytes9bytes_mut8BytesMut8split_to17ha95e0021e6c956acE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %.sroa.0.0.i)
          to label %bb.t unwind label %bb.r

bb.q:                                             ; preds = %bb.o
  tail call void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #46
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load i64, ptr %i.d, align 8, !noundef !21
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.d, align 8
  br label %common.resume

bb.s:                                             ; preds = %bb.u
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume unwind label %bb.w

bb.t:                                             ; preds = %bb.p
  %i.ak = load i64, ptr %i.d, align 8, !noundef !21
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.d, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noundef !21 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.0.i, %i.an
  br i1 %.not.i, label %bb.v, label %bb.u, !prof !31

bb.u:                                             ; preds = %bb.t
  invoke void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17ha00caa1ffae83bbcE"(i64 noundef %.sroa.0.0.i, i64 noundef %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @765) #46
          to label %.noexc22 unwind label %bb.s

.noexc22:                                         ; preds = %bb.u
  unreachable
end_hunk_2
begin_hunk_3_@"_ZN66_$LT$actix_http..test..TestSeqBuffer$u20$as$u20$std..io..Write$GT$5write17haf2075eddba1a9bcE":bb.a
  %i.l = sub i64 %i.k, %i.i
  %.not.i.i = icmp ugt i64 %2, %i.l
  br i1 %.not.i.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.m = invoke noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %2, i1 noundef zeroext true)
          to label %.lr.ph.i.i.preheader unwind label %.loopexit.split-lp ; 0 uses

bb.c:                                             ; preds = %bb.b
  %.not1415.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not1415.i.i, label %"_ZN96_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$u8$GT$$GT$6extend17hd64d298895f9ed30E.exit", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.thread.i, %bb.c
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.noexc4
  %.sroa.08.016.i.i = phi ptr [ %i.o, %.noexc4 ], [ %1, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.n = load i8, ptr %.sroa.08.016.i.i, align 1, !alias.scope !7878, !noalias !7881, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7882
  store i8 %i.n, ptr %i.a, align 1, !noalias !7882
  invoke void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc4 unwind label %.loopexit

.noexc4:                                          ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.016.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7882
  %.not14.i.i = icmp eq ptr %i.o, %i.g
  br i1 %.not14.i.i, label %"_ZN96_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$u8$GT$$GT$6extend17hd64d298895f9ed30E.exit.loopexit", label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820) #46
  unreachable

"_ZN96_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$u8$GT$$GT$6extend17hd64d298895f9ed30E.exit.loopexit": ; preds = %.noexc4
  %.pre = load i64, ptr %i.c, align 8
  %i.p = add i64 %.pre, 1
  br label %"_ZN96_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$u8$GT$$GT$6extend17hd64d298895f9ed30E.exit"

"_ZN96_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$u8$GT$$GT$6extend17hd64d298895f9ed30E.exit": ; preds = %"_ZN96_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$u8$GT$$GT$6extend17hd64d298895f9ed30E.exit.loopexit", %bb.c
  %i.q = phi i64 [ %i.p, %"_ZN96_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$u8$GT$$GT$6extend17hd64d298895f9ed30E.exit.loopexit" ], [ 0, %bb.c ]
  store i64 %i.q, ptr %i.c, align 8
  %i.r = inttoptr i64 %2 to ptr
  %i.s = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.r, 1
  ret { i64, ptr } %i.s

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %.thread.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.t = load i64, ptr %i.c, align 8, !noundef !21
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.c, align 8
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hff323d7cf17240d7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !align !29, !noundef !21
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @821, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @822)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @792, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$h2..frame..stream_id..StreamId$u20$as$u20$core..fmt..Debug$GT$3fmt17h2037b75f29ffd6a2E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @825, i64 noundef 8, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @824)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN68_$LT$actix_http..config..Inner$u20$as$u20$core..default..Default$GT$7default17hbf4359f16e655d2cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 12), (16, 28), (32, 44), (48, 50), (80, 107)) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc { ptr, ptr } @_ZN10actix_http4date11DateService3new17h3c8edbd5929d35f2E() ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 5, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.e, align 8
  store i64 5, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 2, ptr %i.k, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.b, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.c, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 1, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 2097152, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1048576, ptr %i.p, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN68_$LT$actix_http..error..ParseError$u20$as$u20$core..error..Error$GT$6source17hd2aebcaf2a59a579E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !25, !noundef !21 ; 2 uses
  %i.c = add nsw i8 %i.b, -2
  %i.d = icmp samesign ugt i8 %i.b, 1
  %narrow = select i1 %i.d, i8 %i.c, i8 9
  switch i8 %narrow, label %bb.e [
    i8 1, label %bb.b
    i8 8, label %bb.c
    i8 9, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.sroa.5.0 = phi ptr [ @829, %bb.d ], [ @827, %bb.b ], [ @9, %bb.c ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %0, %bb.d ], [ %0, %bb.b ], [ %0, %bb.c ], [ null, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.5.0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN68_$LT$actix_http..error..ParseError$u20$as$u20$core..fmt..Display$GT$3fmt17hdb59b16eaf9b7af2E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i8, ptr %i.j, align 8, !range !25, !noundef !21 ; 2 uses
  %i.l = add nsw i8 %i.k, -2
  %i.m = icmp samesign ugt i8 %i.k, 1
  %narrow = select i1 %i.m, i8 %i.l, i8 9
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit35
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit70
    i8 9, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit75
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val30 = load ptr, ptr %i.n, align 8, !nonnull !21, !noundef !21
  %.val29 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.o = getelementptr inbounds nuw i8, ptr %.val30, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !21, !noalias !7903, !nonnull !21
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 1 %.val29, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @830, i64 noundef 24), !noalias !7903, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit35: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6b49d4d10913a895E", ptr %.sroa.411.0..sroa_idx, align 8
  %.val27 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val28 = load ptr, ptr %i.r, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7904
  store ptr @832, ptr %i.c, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.577.0..sroa_idx, align 8
  %.sroa.778.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.h, ptr %.sroa.778.0..sroa_idx, align 8
  %.sroa.879.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.879.0..sroa_idx, align 8
  %.sroa.1080.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.1080.0..sroa_idx, align 8
  %i.s = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val27, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val28, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !7904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val26 = load ptr, ptr %i.t, align 8, !nonnull !21, !noundef !21
  %.val25 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.u = getelementptr inbounds nuw i8, ptr %.val26, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !21, !noalias !7905, !nonnull !21
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 1 %.val25, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @833, i64 noundef 30), !noalias !7905, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val24 = load ptr, ptr %i.x, align 8, !nonnull !21, !noundef !21
  %.val23 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.y = getelementptr inbounds nuw i8, ptr %.val24, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !21, !noalias !7906, !nonnull !21
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 1 %.val23, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @834, i64 noundef 23), !noalias !7906, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val22 = load ptr, ptr %i.ab, align 8, !nonnull !21, !noundef !21
  %.val21 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.ac = getelementptr inbounds nuw i8, ptr %.val22, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !21, !noalias !7907, !nonnull !21
  %i.ae = tail call noundef zeroext i1 %i.ad(ptr noundef nonnull align 1 %.val21, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @835, i64 noundef 25), !noalias !7907, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.g:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val20 = load ptr, ptr %i.af, align 8, !nonnull !21, !noundef !21
  %.val19 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.ag = getelementptr inbounds nuw i8, ptr %.val20, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !invariant.load !21, !noalias !7908, !nonnull !21
  %i.ai = tail call noundef zeroext i1 %i.ah(ptr noundef nonnull align 1 %.val19, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @836, i64 noundef 21), !noalias !7908, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.h:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val18 = load ptr, ptr %i.aj, align 8, !nonnull !21, !noundef !21
  %.val17 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.ak = getelementptr inbounds nuw i8, ptr %.val18, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !invariant.load !21, !noalias !7909, !nonnull !21
  %i.am = tail call noundef zeroext i1 %i.al(ptr noundef nonnull align 1 %.val17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @837, i64 noundef 23), !noalias !7909, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.i:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val16 = load ptr, ptr %i.an, align 8, !nonnull !21, !noundef !21
  %.val15 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.ao = getelementptr inbounds nuw i8, ptr %.val16, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !invariant.load !21, !noalias !7910, !nonnull !21
  %i.aq = tail call noundef zeroext i1 %i.ap(ptr noundef nonnull align 1 %.val15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @838, i64 noundef 7), !noalias !7910, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit70: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2e8fcf1e995295adE", ptr %.sroa.47.0..sroa_idx, align 8
  %.val13 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val14 = load ptr, ptr %i.ar, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7911
  store ptr @840, ptr %i.b, align 8
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.5119.0..sroa_idx, align 8
  %.sroa.7120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %.sroa.7120.0..sroa_idx, align 8
  %.sroa.8121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.8121.0..sroa_idx, align 8
  %.sroa.10122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.10122.0..sroa_idx, align 8
  %i.as = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val14, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !7911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit75: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h9c8d38f2ac1a46a4E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.at, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7912
  store ptr @842, ptr %i.a, align 8
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5125.0..sroa_idx, align 8
  %.sroa.7126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.7126.0..sroa_idx, align 8
  %.sroa.8127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8127.0..sroa_idx, align 8
  %.sroa.10128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10128.0..sroa_idx, align 8
  %i.au = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val12, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !7912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit75, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit70, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit35
  %.sroa.0.0.in = phi i1 [ %i.au, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit75 ], [ %i.s, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit35 ], [ %i.w, %bb.d ], [ %i.aq, %bb.i ], [ %i.am, %bb.h ], [ %i.ai, %bb.g ], [ %i.ae, %bb.f ], [ %i.aa, %bb.e ], [ %i.as, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit70 ], [ %i.q, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$actix_http..error..PayloadError$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc840813367d09e2E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i8, ptr %0, align 8, !range !25, !noundef !21 ; 3 uses
  %i.e = icmp ne i8 %i.d, 9
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i8 %i.d, -5
  %i.g = icmp samesign ugt i8 %i.d, 4
  %narrow = select i1 %i.g, i8 %i.f, i8 4
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.c, align 8
  %i.i = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @814, i64 noundef 10, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @843)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @844, i64 noundef 17)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @845, i64 noundef 8)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @846, i64 noundef 13)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.m = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @848, i64 noundef 12, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @847)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.a, align 8
  %i.o = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @680, i64 noundef 2, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @679)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.o, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN6brotli3enc10prior_eval22PriorEval$LT$Alloc$GT$14choose_bitmask17h4af3245d087fa99bE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8192 x i8], align 1              ; 10 uses
  %i.b = alloca [32 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %i.a, i8 0, i64 8192, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val = load ptr, ptr %i.c, align 8, !nonnull !21, !align !28, !noundef !21 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val19 = load i64, ptr %i.d, align 8, !noundef !21 ; 2 uses
  %.idx = shl nuw nsw i64 %.val19, 5
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  %i.f = icmp eq i64 %.val19, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.w
  %.sroa.0.042 = phi i32 [ %.sroa.0.1, %bb.w ], [ 0, %bb.a ] ; 3 uses
  %.sroa.06.041 = phi i8 [ %.sroa.06.1, %bb.w ], [ 0, %bb.a ] ; 3 uses
  %.sroa.0.02640 = phi ptr [ %i.g, %bb.w ], [ %.val, %bb.a ] ; 9 uses
  %.sroa.7.039 = phi i64 [ %i.h, %bb.w ], [ 0, %bb.a ] ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02640, i64 32 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.7.039, 1
  %i.i = load float, ptr %.sroa.0.02640, align 4, !noundef !21 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.02640, i64 8
  %i.k = load float, ptr %i.j, align 4, !noundef !21 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.02640, i64 12
  %i.m = load float, ptr %i.l, align 4, !noundef !21
  %i.n = fadd float %i.m, 1.600000e+01            ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.02640, i64 16
  %i.p = load float, ptr %i.o, align 4, !noundef !21
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.02640, i64 20
  %i.r = load float, ptr %i.q, align 4, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.02640, i64 24
  %i.t = load float, ptr %i.s, align 4, !noundef !21
  %i.u = fadd float %i.t, 1.600000e+01
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.02640, i64 28
  %i.w = load float, ptr %i.v, align 4, !noundef !21 ; 2 uses
  %i.x = fadd float %i.w, 1.000000e+00
  %i.y = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.p) ; 2 uses
  %i.z = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.r) ; 2 uses
  %i.aa = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.u) ; 2 uses
  %i.ab = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.w) ; 2 uses
  %i.ac = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.x)
  %.sroa.0.0.i22 = tail call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ab)
  %.sroa.0.0.i23 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i22, i64 %i.aa)
  %.sroa.0.0.i24 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i23, i64 %i.z) ; 2 uses
  %.sroa.0.0.i25 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i24, i64 %i.y) ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.02640, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !noundef !21
  %i.af = fadd float %i.ae, 6.000000e+00          ; 4 uses
  %i.ag = uitofp i64 %.sroa.0.0.i25 to float      ; 4 uses
  %i.ah = fcmp olt float %i.af, %i.ag
  %i.ai = fcmp olt float %i.af, %i.i
  %or.cond = and i1 %i.ai, %i.ah
  %i.aj = fcmp olt float %i.af, %i.k
  %or.cond1 = and i1 %i.aj, %or.cond
  %i.ak = fcmp olt float %i.af, %i.n
  %or.cond2 = and i1 %i.ak, %or.cond1
  br i1 %or.cond2, label %bb.d, label %bb.c

._crit_edge:                                      ; preds = %bb.w, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val21 = load i64, ptr %i.al, align 8, !noundef !21 ; 2 uses
  %i.am = icmp ugt i64 %.val21, 8195
  br i1 %i.am, label %"_ZN6brotli3enc9interface41PredictionModeContextMap$LT$SliceType$GT$17set_mixing_values17h6f683542537bdc40E.exit", label %bb.b, !prof !31

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 4, i64 noundef 8196, i64 noundef %.val21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1300) #46, !noalias !7919
  unreachable

"_ZN6brotli3enc9interface41PredictionModeContextMap$LT$SliceType$GT$17set_mixing_values17h6f683542537bdc40E.exit": ; preds = %._crit_edge
end_hunk_3
begin_hunk_4_@"_ZN6flate23zio19Writer$LT$W$C$D$GT$6finish17h653141b4937a8348E":bb.a

bb.b:                                             ; preds = %bb.i, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13168)
  %i.i = load i64, ptr %i.b, align 8, !alias.scope !13168, !noundef !21 ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h5f1e6a7e00cd7b07E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !alias.scope !13168, !noundef !21 ; 2 uses
  %.not.i21 = icmp eq ptr %i.l, null
  br i1 %.not.i21, label %.lr.ph.i._crit_edge, label %.lr.ph, !prof !60

.lr.ph:                                           ; preds = %.lr.ph.i, %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17hd25672fec0f8fd2aE.exit.i"
  %i.m = phi ptr [ %i.ai, %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17hd25672fec0f8fd2aE.exit.i" ], [ %i.l, %.lr.ph.i ]
  %i.n = phi i64 [ %i.ah, %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17hd25672fec0f8fd2aE.exit.i" ], [ %i.i, %.lr.ph.i ] ; 11 uses
  %i.o = load ptr, ptr %i.d, align 8, !alias.scope !13168, !nonnull !21, !noundef !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13170)
  %i.p = load i64, ptr %i.e, align 8, !alias.scope !13171, !noalias !13172, !noundef !21 ; 2 uses
  %i.q = load i64, ptr %i.f, align 8, !alias.scope !13171, !noalias !13172, !noundef !21
  %i.r = sub i64 %i.q, %i.p
  %.not.i.i.i = icmp ugt i64 %i.n, %i.r
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.s = tail call noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.n, i1 noundef zeroext true), !noalias !13172 ; 0 uses
  %.pre.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !13171, !noalias !13172
  %.pre.i = load ptr, ptr %i.c, align 8, !alias.scope !13171, !noalias !13172
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.t = phi ptr [ %i.m, %.lr.ph ], [ %.pre.i, %bb.c ]
  %i.u = phi i64 [ %i.p, %.lr.ph ], [ %.pre.i.i.i, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.o, i64 %i.n, i1 false)
  %i.w = load i64, ptr %i.f, align 8, !alias.scope !13171, !noalias !13172, !noundef !21
  %i.x = load i64, ptr %i.e, align 8, !alias.scope !13171, !noalias !13172, !noundef !21 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp ugt i64 %i.n, %i.y
  br i1 %i.z, label %bb.e, label %bb.f, !prof !30

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13173
  store i64 %i.n, ptr %i.a, align 8, !noalias !13173
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.y, ptr %i.aa, align 8, !noalias !13173
  call void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #46, !noalias !13172
  unreachable

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17hd25672fec0f8fd2aE.exit.i"
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1387) #46
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = add i64 %i.x, %i.n
  store i64 %i.ab, ptr %i.e, align 8, !alias.scope !13171, !noalias !13172
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13174)
  %i.ac = load i64, ptr %i.b, align 8, !alias.scope !13175, !noalias !13176, !noundef !21 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, -1
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp samesign ugt i64 %i.n, %i.ac
  br i1 %i.ae, label %bb.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h7d024b6f8b8167dcE.exit.i", !prof !30

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.n, i64 noundef range(i64 0, -9223372036854775808) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @699) #46, !noalias !13177
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h7d024b6f8b8167dcE.exit.i": ; preds = %bb.f
  store i64 0, ptr %i.b, align 8, !alias.scope !13175, !noalias !13176
  %.not.i.i.i.i.i = icmp eq i64 %i.ac, %i.n
  br i1 %.not.i.i.i.i.i, label %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h5f1e6a7e00cd7b07E.exit", label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17hd25672fec0f8fd2aE.exit.i"

"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17hd25672fec0f8fd2aE.exit.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h7d024b6f8b8167dcE.exit.i"
  %i.af = load ptr, ptr %i.d, align 8, !alias.scope !13175, !noalias !13176, !nonnull !21, !noundef !21 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.n
  %i.ah = sub nuw nsw i64 %i.ac, %i.n             ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.ag, i64 %i.ah, i1 false), !noalias !13178
  store i64 %i.ah, ptr %i.b, align 8, !alias.scope !13168, !noalias !13178
  %i.ai = load ptr, ptr %i.c, align 8, !alias.scope !13168, !noundef !21 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %.lr.ph.i._crit_edge, label %.lr.ph, !prof !61

"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h5f1e6a7e00cd7b07E.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h7d024b6f8b8167dcE.exit.i", %bb.b
  %.val12 = load i64, ptr %i.h, align 8, !noundef !21
  %i.aj = tail call noundef i8 @"_ZN58_$LT$flate2..mem..Compress$u20$as$u20$flate2..zio..Ops$GT$7run_vec17hfcf1bfa2d5e57b55E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i8 noundef 4)
  %i.ak = icmp eq i8 %i.aj, 3
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h5f1e6a7e00cd7b07E.exit"
  %i.al = tail call noundef nonnull ptr @"_ZN6flate23mem105_$LT$impl$u20$core..convert..From$LT$flate2..mem..CompressError$GT$$u20$for$u20$std..io..error..Error$GT$4from17hfdc3486e2ae86fdeE"()
  br label %.loopexit

bb.i:                                             ; preds = %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h5f1e6a7e00cd7b07E.exit"
  %.val = load i64, ptr %i.h, align 8, !noundef !21
  %i.am = icmp eq i64 %.val12, %.val
  br i1 %i.am, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.i, %bb.h
  %.sroa.0.0 = phi ptr [ %i.al, %bb.h ], [ null, %bb.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @"_ZN70_$LT$actix_http..error..PayloadError$u20$as$u20$core..error..Error$GT$6source17hd0d5dcc124711f99E"(ptr noundef nonnull align 8 %0) unnamed_addr #15 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !25, !noundef !21 ; 3 uses
  %i.b = icmp ne i8 %i.a, 9
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i8 %i.a, -5
  %i.d = icmp samesign ugt i8 %i.a, 4
  %narrow = select i1 %i.d, i8 %i.c, i8 4
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.f
    i8 2, label %bb.f
    i8 3, label %bb.f
    i8 4, label %bb.d
    i8 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !21
  %.not = icmp eq ptr %i.f, null
  %.1 = select i1 %.not, ptr null, ptr %i.e
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.c, %bb.e, %bb.d
  %.sroa.8.0 = phi ptr [ undef, %bb.a ], [ @9, %bb.e ], [ @9, %bb.c ], [ undef, %bb.a ], [ undef, %bb.a ], [ @1389, %bb.d ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.g, %bb.e ], [ %.1, %bb.c ], [ null, %bb.a ], [ null, %bb.a ], [ %0, %bb.d ]
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %.sroa.8.0, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN70_$LT$actix_http..error..PayloadError$u20$as$u20$core..fmt..Display$GT$3fmt17h767056f9220a27d9E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i8, ptr %0, align 8, !range !25, !noundef !21 ; 3 uses
  %i.e = icmp ne i8 %i.d, 9
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i8 %i.d, -5
  %i.g = icmp samesign ugt i8 %i.d, 4
  %narrow = select i1 %i.g, i8 %i.f, i8 4
  switch i8 %narrow, label %bb.b [
    i8 0, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h8765458b3730f7f7E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val9 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.i, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13187
  store ptr @1391, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.j = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val10, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !13187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.k, align 8, !nonnull !21, !noundef !21
  %.val7 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.l = getelementptr inbounds nuw i8, ptr %.val8, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !21, !noalias !13188, !nonnull !21
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 1 %.val7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1392, i64 noundef 31), !noalias !13188, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.o, align 8, !nonnull !21, !noundef !21
  %.val5 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.p = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !21, !noalias !13189, !nonnull !21
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 1 %.val5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1393, i64 noundef 26), !noalias !13189, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.s, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !21, !noalias !13190, !nonnull !21
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1394, i64 noundef 25), !noalias !13190, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15

bb.f:                                             ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 @"_ZN55_$LT$h2..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hff78fd470a4d7eeaE"(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15

bb.g:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = tail call noundef zeroext i1 @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15: ; preds = %bb.e, %bb.d, %bb.c, %bb.g, %bb.f, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.sroa.0.0.in = phi i1 [ %i.j, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.y, %bb.g ], [ %i.r, %bb.d ], [ %i.v, %bb.e ], [ %i.w, %bb.f ], [ %i.n, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN71_$LT$actix_http..date..DateService$u20$as$u20$core..ops..drop..Drop$GT$4drop17h976cbc4c5158959bE"(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN5tokio7runtime4task7harness52_$LT$impl$u20$tokio..runtime..task..raw..RawTask$GT$12remote_abort17hdc11b91b5edf8232E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$actix_http..error..DispatchError$u20$as$u20$core..fmt..Display$GT$3fmt17h15eaee3ea9c1e4a7E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = load i64, ptr %0, align 8, !range !13209, !noundef !21
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 2)
  switch i64 %i.k, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit33
    i64 2, label %bb.c
    i64 3, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit43
    i64 4, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit48
    i64 5, label %bb.d
    i64 6, label %bb.e
    i64 7, label %bb.f
    i64 8, label %bb.g
    i64 9, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val28 = load ptr, ptr %i.l, align 8, !nonnull !21, !noundef !21
  %.val27 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.m = getelementptr inbounds nuw i8, ptr %.val28, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !21, !noalias !13210, !nonnull !21
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 1 %.val27, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1395, i64 noundef 13), !noalias !13210, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit33: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17ha7d6f7e2dd6e185bE", ptr %.sroa.411.0..sroa_idx, align 8
  %.val25 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val26 = load ptr, ptr %i.q, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13211
  store ptr @1397, ptr %i.c, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.570.0..sroa_idx, align 8
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.h, ptr %.sroa.771.0..sroa_idx, align 8
  %.sroa.872.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.872.0..sroa_idx, align 8
  %.sroa.1073.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.1073.0..sroa_idx, align 8
  %i.r = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val25, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val26, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !13211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val24 = load ptr, ptr %i.s, align 8, !nonnull !21, !noundef !21
  %.val23 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %.val24, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !21, !noalias !13212, !nonnull !21
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 1 %.val23, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1398, i64 noundef 13), !noalias !13212, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit43: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2e8fcf1e995295adE", ptr %.sroa.47.0..sroa_idx, align 8
  %.val21 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val22 = load ptr, ptr %i.x, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13213
  store ptr @840, ptr %i.b, align 8
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.582.0..sroa_idx, align 8
  %.sroa.783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %.sroa.783.0..sroa_idx, align 8
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.884.0..sroa_idx, align 8
  %.sroa.1085.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1085.0..sroa_idx, align 8
  %i.y = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val21, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val22, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !13213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit48: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7ebf97ad18d7a09fE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val19 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val20 = load ptr, ptr %i.aa, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13214
  store ptr @1400, ptr %i.a, align 8
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.588.0..sroa_idx, align 8
  %.sroa.789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.789.0..sroa_idx, align 8
  %.sroa.890.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.890.0..sroa_idx, align 8
  %.sroa.1091.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1091.0..sroa_idx, align 8
  %i.ab = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val19, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val20, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !13214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = tail call noundef zeroext i1 @"_ZN55_$LT$h2..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hff78fd470a4d7eeaE"(ptr noundef nonnull align 8 %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val18 = load ptr, ptr %i.ae, align 8, !nonnull !21, !noundef !21
  %.val17 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.af = getelementptr inbounds nuw i8, ptr %.val18, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !21, !noalias !13215, !nonnull !21
  %i.ah = tail call noundef zeroext i1 %i.ag(ptr noundef nonnull align 1 %.val17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1401, i64 noundef 53), !noalias !13215, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.f:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val16 = load ptr, ptr %i.ai, align 8, !nonnull !21, !noundef !21
  %.val15 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.aj = getelementptr inbounds nuw i8, ptr %.val16, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !21, !noalias !13216, !nonnull !21
  %i.al = tail call noundef zeroext i1 %i.ak(ptr noundef nonnull align 1 %.val15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1402, i64 noundef 27), !noalias !13216, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.g:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val14 = load ptr, ptr %i.am, align 8, !nonnull !21, !noundef !21
  %.val13 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.an = getelementptr inbounds nuw i8, ptr %.val14, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !invariant.load !21, !noalias !13217, !nonnull !21
  %i.ap = tail call noundef zeroext i1 %i.ao(ptr noundef nonnull align 1 %.val13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1403, i64 noundef 42), !noalias !13217, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.h:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.aq, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.ar = getelementptr inbounds nuw i8, ptr %.val12, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !21, !noalias !13218, !nonnull !21
  %i.at = tail call noundef zeroext i1 %i.as(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1404, i64 noundef 14), !noalias !13218, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %bb.d, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit48, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit43, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit33
  %.sroa.0.0.in = phi i1 [ %i.ah, %bb.e ], [ %i.r, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit33 ], [ %i.v, %bb.c ], [ %i.y, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit43 ], [ %i.ab, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit48 ], [ %i.ad, %bb.d ], [ %i.at, %bb.h ], [ %i.ap, %bb.g ], [ %i.al, %bb.f ], [ %i.o, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$actix_http..extensions..Extensions$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa93775239443526E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1405, i64 noundef 10)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN71_$LT$actix_http..h1..codec..Codec$u20$as$u20$core..default..Default$GT$7default17h5f575c238a4510abE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #45 ; 19 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hab9960c02c3b4c45E.exit.i", !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 128) #46
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hab9960c02c3b4c45E.exit.i": ; preds = %bb.a
  %i.c = invoke fastcc { ptr, ptr } @_ZN10actix_http4date11DateService3new17h3c8edbd5929d35f2E()
          to label %"_ZN65_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h8a167b29d761efcfE.exit" unwind label %bb.c ; 2 uses

bb.c:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hab9960c02c3b4c45E.exit.i"
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 128, i64 noundef 8) #45
  resume { ptr, i32 } %i.d

"_ZN65_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h8a167b29d761efcfE.exit": ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hab9960c02c3b4c45E.exit.i"
  %i.e = extractvalue { ptr, ptr } %i.c, 0
  %i.f = extractvalue { ptr, ptr } %i.c, 1
  store i64 1, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i, align 8
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 5, ptr %.sroa.56.0..sroa_idx.i, align 8
  %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 0, ptr %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.6.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.56.sroa.6.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.7.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %.sroa.56.sroa.7.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.9.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 5, ptr %.sroa.56.sroa.9.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.10.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %.sroa.56.sroa.10.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.12.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i16 2, ptr %.sroa.56.sroa.12.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.14.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.e, ptr %.sroa.56.sroa.14.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.15.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.f, ptr %.sroa.56.sroa.15.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.16.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i32 2097152, ptr %.sroa.56.sroa.16.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.17.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  store i32 1048576, ptr %.sroa.56.sroa.17.0..sroa.56.0..sroa_idx.sroa_idx.i, align 4
  %.sroa.56.sroa.18.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 0, ptr %.sroa.56.sroa.18.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.19.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 121
  store i8 1, ptr %.sroa.56.sroa.19.0..sroa.56.0..sroa_idx.sroa_idx.i, align 1
  %.sroa.56.sroa.20.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 122
  store i8 2, ptr %.sroa.56.sroa.20.0..sroa.56.0..sroa_idx.sroa_idx.i, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.a, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 2, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 2, ptr %i.k, align 2
  store i64 0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$5write17h7eab469a7facf9a0E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13231)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !13230, !noalias !13231, !noundef !21
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !13230, !noalias !13231
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !13230, !noalias !13231, !noundef !21 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %2) ; 3 uses
  %i.h = icmp ugt i64 %.sroa.0.0.i.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i.i = load i32, ptr %1, align 1, !alias.scope !13232, !noalias !13230
  %i.i = zext i32 %.sroa.014.0.copyload.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.011.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i11.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.j = or disjoint i64 %.sroa.0.0.i11.i, 1
  %i.k = icmp ult i64 %i.j, %.sroa.0.0.i.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.0.0.i11.i
  %.sroa.015.0.copyload.i.i = load i16, ptr %i.l, align 1, !alias.scope !13232, !noalias !13230
  %i.m = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.n = shl nuw nsw i64 %.sroa.0.0.i11.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.011.0.i.i
  %i.q = or disjoint i64 %.sroa.0.0.i11.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.011.1.i.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.011.0.i.i, %bb.d ] ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.0.0.i11.i, %bb.d ] ; 3 uses
  %i.r = icmp ult i64 %.sroa.0.1.i.i, %.sroa.0.0.i.i
  br i1 %i.r, label %bb.g, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !13232, !noalias !13230, !noundef !21
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.0.1.i.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.011.1.i.i
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.011.2.i.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.011.1.i.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.011.2.i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !13230, !noalias !13231, !noundef !21
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !13230, !noalias !13231
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub i64 %2, %.sroa.0.0.i                ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %bb.k

.lr.ph.i:                                         ; preds = %bb.h
  %.promoted.i = load i64, ptr %0, align 8, !alias.scope !13230, !noalias !13231
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted21.i = load i64, ptr %i.aj, align 8, !alias.scope !13230, !noalias !13231
  %.promoted22.i = load i64, ptr %i.ak, align 8, !alias.scope !13233, !noalias !13231
  %.promoted24.i = load i64, ptr %i.al, align 8, !alias.scope !13233, !noalias !13231
  br label %bb.q

bb.i:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !13230, !noalias !13231, !noundef !21
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !13234, !noalias !13231, !noundef !21
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !13234, !noalias !13231, !noundef !21 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !13234, !noalias !13231, !noundef !21
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
end_hunk_4
begin_hunk_5_@"_ZN72_$LT$actix_http..h2..Payload$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hf7d2194183724ed9E":bb.a
  %i.i = load ptr, ptr %i.c, align 8, !alias.scope !13249, !nonnull !21, !align !32, !noundef !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !13249, !nonnull !21, !noundef !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !13249, !noundef !21
  invoke void %i.k(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.n, i64 noundef %i.g)
          to label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E.exit" unwind label %bb.k, !inline_history !39

bb.g:                                             ; preds = %bb.e
  %i.o = load i8, ptr %i.b, align 8, !range !23, !noundef !21
  %.not20 = icmp eq i8 %i.o, 5
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !13250)
  call void @llvm.experimental.noalias.scope.decl(metadata !13251)
  %i.p = load ptr, ptr %i.c, align 8, !alias.scope !13252, !nonnull !21, !align !32, !noundef !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !13252, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !13252, !noundef !21
  call void %i.r(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.u, i64 noundef %i.g), !inline_history !5
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %.sroa.45.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.45, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.45.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  store i8 11, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.45, i64 39, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E.exit": ; preds = %bb.f
  resume { ptr, i32 } %i.h

bb.l:                                             ; preds = %bb.c, %bb.d, %bb.j, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN72_$LT$actix_http..test..TestRequest$u20$as$u20$core..default..Default$GT$7default17h4ee6dc4e672c685fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 6 uses
  %i.d = alloca [88 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN5bytes5bytes5Bytes15copy_from_slice17hadf080abce5a0c12E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @0, i64 noundef 1)
  call void @_ZN4http3uri3Uri11from_shared17h321495c802369005E(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !13259)
  call void @llvm.experimental.noalias.scope.decl(metadata !13260)
  %i.e = load i8, ptr %i.c, align 8, !range !41, !alias.scope !13260, !noalias !13261, !noundef !21
  %i.f = icmp eq i8 %i.e, 3
  br i1 %i.f, label %.noexc, label %bb.b, !prof !30

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13262
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !25, !alias.scope !13260, !noalias !13261, !noundef !21
  store i8 %i.h, ptr %i.a, align 1, !noalias !13262
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @546, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @547, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1417) #46
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false), !alias.scope !13263, !noalias !13264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = invoke noundef i64 @_ZN8foldhash4seed19gen_per_hasher_seed17h40665e60abfadd55E()
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %bb.b
  %i.j = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8foldhash4seed6global19GLOBAL_SEED_STORAGE17h12cb7ed91cc53f21E, i64 32) acquire, align 8, !noalias !13265
  %.not.i.i = icmp eq i8 %i.j, 2
  br i1 %.not.i.i, label %bb.e, label %bb.c, !prof !31

bb.c:                                             ; preds = %.noexc5
  invoke void @_ZN8foldhash4seed6global10GlobalSeed9init_slow17heea34a4b01fb9b4fE()
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr35drop_in_place$LT$http..uri..Uri$GT$17h4f3ddb8af80f4cb4E"(ptr noalias noundef align 8 dereferenceable(88) %i.d) #47
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %.noexc5, %bb.c
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.01.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 4, ptr %0, align 8
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.01.sroa.6.sroa.5.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.01.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 72340172838076673, ptr %.sroa.01.sroa.6.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.sroa.6.sroa.5.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @163, i64 32, i1 false)
  %.sroa.01.sroa.7.sroa.4.0..sroa.01.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.i, ptr %.sroa.01.sroa.7.sroa.4.0..sroa.01.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 8
  ret void

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @"_ZN73_$LT$actix_http..extensions..NoOpHasher$u20$as$u20$core..hash..Hasher$GT$5write17h5e0224b6b85b2f45E"(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #25 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1422, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1424) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN74_$LT$actix_http..body..boxed..BoxBodyInner$u20$as$u20$core..fmt..Debug$GT$3fmt17h06e9ce80dbc21d3bE"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !36, !noundef !21
  switch i64 %i.d, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN4core3fmt9Formatter11debug_tuple17h287fb5cf395e5aedE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @792, i64 noundef 4)
  %i.f = call noundef align 8 dereferenceable(24) ptr @_ZN4core3fmt8builders10DebugTuple5field17hf87b1547c504b9ffE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1425)
  %i.g = call noundef zeroext i1 @_ZN4core3fmt8builders10DebugTuple6finish17h725fa46a38425d91E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3fmt9Formatter11debug_tuple17h287fb5cf395e5aedE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1426, i64 noundef 5)
  %i.i = call noundef align 8 dereferenceable(24) ptr @_ZN4core3fmt8builders10DebugTuple5field17hf87b1547c504b9ffE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @673)
  %i.j = call noundef zeroext i1 @_ZN4core3fmt8builders10DebugTuple6finish17h725fa46a38425d91E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter11debug_tuple17h287fb5cf395e5aedE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1427, i64 noundef 6)
  %i.k = call noundef align 8 dereferenceable(24) ptr @_ZN4core3fmt8builders10DebugTuple5field17hf87b1547c504b9ffE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 1 @1429, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1430)
  %i.l = call noundef zeroext i1 @_ZN4core3fmt8builders10DebugTuple6finish17h725fa46a38425d91E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.j, %bb.c ], [ %i.l, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN74_$LT$actix_http..error..ContentTypeError$u20$as$u20$core..fmt..Display$GT$3fmt17h8a7fad088cf3dbacE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !38, !noundef !21
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !21, !noundef !21
  %.val2 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !21, !noalias !21, !nonnull !21 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1432, i64 noundef 24), !noalias !13270, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1431, i64 noundef 28), !noalias !13271, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.c ], [ %i.f, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$brotli..enc..input_pair..InputReference$u20$as$u20$core..fmt..Debug$GT$3fmt17h5b4728440c3d48b8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1436, i64 noundef 14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1437, i64 noundef 4, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1434, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1438, i64 noundef 11, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1435)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$actix_http..message.._..InternalBitFlags$u20$as$u20$core..fmt..Debug$GT$3fmt17h4f650a40e1ddf4e7E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i8, ptr %0, align 1, !noundef !21
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @"_ZN79_$LT$actix_http..message.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17he5d470ad8b313a6fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @405, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13274
  store ptr @145, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @1439, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !13274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$actix_http..message.._..InternalBitFlags$u20$as$u20$core..fmt..Octal$GT$3fmt17hc13f1e9180d06eaaE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !21
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u8$GT$3fmt17h7cacf98b1b32ad44E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN78_$LT$actix_http..h1..client..ClientCodec$u20$as$u20$core..default..Default$GT$7default17hd433157df6235797E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #45 ; 19 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hab9960c02c3b4c45E.exit.i", !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 128) #46
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hab9960c02c3b4c45E.exit.i": ; preds = %bb.a
  %i.c = invoke fastcc { ptr, ptr } @_ZN10actix_http4date11DateService3new17h3c8edbd5929d35f2E()
          to label %"_ZN65_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h8a167b29d761efcfE.exit" unwind label %bb.c ; 2 uses

bb.c:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hab9960c02c3b4c45E.exit.i"
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 128, i64 noundef 8) #45
  resume { ptr, i32 } %i.d

"_ZN65_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h8a167b29d761efcfE.exit": ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hab9960c02c3b4c45E.exit.i"
  %i.e = extractvalue { ptr, ptr } %i.c, 0
  %i.f = extractvalue { ptr, ptr } %i.c, 1
  store i64 1, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i, align 8
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 5, ptr %.sroa.56.0..sroa_idx.i, align 8
  %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 0, ptr %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.6.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.56.sroa.6.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.7.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %.sroa.56.sroa.7.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.9.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 5, ptr %.sroa.56.sroa.9.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.10.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %.sroa.56.sroa.10.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.12.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i16 2, ptr %.sroa.56.sroa.12.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.14.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.e, ptr %.sroa.56.sroa.14.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.15.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.f, ptr %.sroa.56.sroa.15.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.16.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i32 2097152, ptr %.sroa.56.sroa.16.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.17.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  store i32 1048576, ptr %.sroa.56.sroa.17.0..sroa.56.0..sroa_idx.sroa_idx.i, align 4
  %.sroa.56.sroa.18.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 0, ptr %.sroa.56.sroa.18.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.56.sroa.19.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 121
  store i8 1, ptr %.sroa.56.sroa.19.0..sroa.56.0..sroa_idx.sroa_idx.i, align 1
  %.sroa.56.sroa.20.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 122
  store i8 2, ptr %.sroa.56.sroa.20.0..sroa.56.0..sroa_idx.sroa_idx.i, align 2
  store i64 0, ptr %0, align 8
  %.sroa.01.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %.sroa.01.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.01.sroa.0.sroa.5.sroa.5.0..sroa.01.sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.01.sroa.0.sroa.5.sroa.5.0..sroa.01.sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 3, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 2, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 8, ptr %.sroa.8.0..sroa_idx, align 2
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$actix_http..message.._..InternalBitFlags$u20$as$u20$core..fmt..Binary$GT$3fmt17h867eb547b897c9f1E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !21
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u8$GT$3fmt17h64a589b259a2d727E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN79_$LT$actix_http..h1..codec.._..InternalBitFlags$u20$as$u20$core..fmt..Debug$GT$3fmt17h57b1dbab67ad4260E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i8, ptr %0, align 1, !noundef !21
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @"_ZN81_$LT$actix_http..h1..codec.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h4b3e861ef0b8a524E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @405, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13277
  store ptr @145, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
end_hunk_5
begin_hunk_6_@"_ZN79_$LT$actix_http..message.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17he5d470ad8b313a6fE":.peel.begin
.peel.begin:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = load i8, ptr %0, align 1, !noundef !21   ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13291)
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.thread.i, label %.lr.ph.split.i.i.peel

.lr.ph.split.i.i.peel:                            ; preds = %.peel.begin
  %i.g = and i8 %i.e, 1
  %or.cond.i.i.peel.not = icmp eq i8 %i.g, 0
  br i1 %or.cond.i.i.peel.not, label %.lr.ph.split.i.i.1.peel, label %bb.a

.lr.ph.split.i.i.1.peel:                          ; preds = %.lr.ph.split.i.i.peel
  %i.h = and i8 %i.e, 2
  %or.cond.i.i.1.peel.not = icmp eq i8 %i.h, 0
  br i1 %or.cond.i.i.1.peel.not, label %.lr.ph.split.i.i.2.peel, label %bb.a

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.i = and i8 %i.e, 4
  %or.cond.i.i.2.peel.not = icmp eq i8 %i.i, 0
  br i1 %or.cond.i.i.2.peel.not, label %.lr.ph.split.i.i.3.peel, label %bb.a

.lr.ph.split.i.i.3.peel:                          ; preds = %.lr.ph.split.i.i.2.peel
  %i.j = and i8 %i.e, 8
  %or.cond.i.i.3.peel.not = icmp eq i8 %i.j, 0
  br i1 %or.cond.i.i.3.peel.not, label %.lr.ph.split.i.i.4.peel, label %bb.a

.lr.ph.split.i.i.4.peel:                          ; preds = %.lr.ph.split.i.i.3.peel
  %i.k = and i8 %i.e, 16
  %or.cond.i.i.4.peel.not = icmp eq i8 %i.k, 0
  br i1 %or.cond.i.i.4.peel.not, label %.lr.ph.split.i.i.5.peel, label %bb.a

.lr.ph.split.i.i.5.peel:                          ; preds = %.lr.ph.split.i.i.4.peel
  %i.l = and i8 %i.e, 32
  %or.cond.i.i.5.peel.not = icmp eq i8 %i.l, 0
  br i1 %or.cond.i.i.5.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.5.peel, %.lr.ph.split.i.i.4.peel, %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @1468, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @1468, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @1468, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @1468, i64 72), %.lr.ph.split.i.i.3.peel ], [ getelementptr inbounds nuw (i8, ptr @1468, i64 96), %.lr.ph.split.i.i.4.peel ], [ getelementptr inbounds nuw (i8, ptr @1468, i64 120), %.lr.ph.split.i.i.5.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ], [ 5, %.lr.ph.split.i.i.4.peel ], [ 6, %.lr.ph.split.i.i.5.peel ]
  %i.m = phi i8 [ -2, %.lr.ph.split.i.i.peel ], [ -3, %.lr.ph.split.i.i.1.peel ], [ -5, %.lr.ph.split.i.i.2.peel ], [ -9, %.lr.ph.split.i.i.3.peel ], [ -17, %.lr.ph.split.i.i.4.peel ], [ -33, %.lr.ph.split.i.i.5.peel ]
  %i.n = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !13292, !noundef !21
  %i.p = and i8 %i.e, %i.m
  %i.q = load ptr, ptr %.lcssa56.peel, align 8, !noalias !13292, !nonnull !21, !align !29, !noundef !21
  %i.r = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.q, i64 noundef %i.o)
  br i1 %i.r, label %_ZN8bitflags6parser9to_writer17h9f2c76ce6f847ebdE.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i8 [ %i.bn, %bb.h ], [ %i.p, %bb.a ] ; 15 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 8 uses
  %i.s = icmp ult i64 %.sroa.7.0.i, 6
  br i1 %i.s, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.t = icmp eq i8 %.sroa.13.0.i, 0
  br i1 %i.t, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13291
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw [24 x i8], ptr @1468, i64 %.sroa.7.0.i ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val.i.i = load i8, ptr %i.w, align 8, !noalias !13292, !noundef !21 ; 4 uses
  %i.x = and i8 %.val.i.i, %i.e
  %i.y = icmp eq i8 %i.x, %.val.i.i
  %i.z = and i8 %.val.i.i, %.sroa.13.0.i
  %i.aa = icmp ne i8 %i.z, 0
  %or.cond.i.i = and i1 %i.aa, %i.y
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.v, 6
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr @1468, i64 %i.v ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.7.0.i, 2         ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.val.i.i.1 = load i8, ptr %i.ad, align 8, !noalias !13292, !noundef !21 ; 4 uses
  %i.ae = and i8 %.val.i.i.1, %i.e
  %i.af = icmp eq i8 %i.ae, %.val.i.i.1
  %i.ag = and i8 %.val.i.i.1, %.sroa.13.0.i
  %i.ah = icmp ne i8 %i.ag, 0
  %or.cond.i.i.1 = and i1 %i.ah, %i.af
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.ac, 6
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr @1468, i64 %i.ac ; 2 uses
  %i.aj = add nuw nsw i64 %.sroa.7.0.i, 3         ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.val.i.i.2 = load i8, ptr %i.ak, align 8, !noalias !13292, !noundef !21 ; 4 uses
  %i.al = and i8 %.val.i.i.2, %i.e
  %i.am = icmp eq i8 %i.al, %.val.i.i.2
  %i.an = and i8 %.val.i.i.2, %.sroa.13.0.i
  %i.ao = icmp ne i8 %i.an, 0
  %or.cond.i.i.2 = and i1 %i.ao, %i.am
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.aj, 6
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr @1468, i64 %i.aj ; 2 uses
  %i.aq = add nuw nsw i64 %.sroa.7.0.i, 4         ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.val.i.i.3 = load i8, ptr %i.ar, align 8, !noalias !13292, !noundef !21 ; 4 uses
  %i.as = and i8 %.val.i.i.3, %i.e
  %i.at = icmp eq i8 %i.as, %.val.i.i.3
  %i.au = and i8 %.val.i.i.3, %.sroa.13.0.i
  %i.av = icmp ne i8 %i.au, 0
  %or.cond.i.i.3 = and i1 %i.av, %i.at
  br i1 %or.cond.i.i.3, label %bb.b, label %.backedge.i.i.3

.backedge.i.i.3:                                  ; preds = %.lr.ph.split.i.i.3
  %exitcond.not.i.i.3 = icmp eq i64 %i.aq, 6
  br i1 %exitcond.not.i.i.3, label %.loopexit.i, label %.lr.ph.split.i.i.4

.lr.ph.split.i.i.4:                               ; preds = %.backedge.i.i.3
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr @1468, i64 %i.aq ; 2 uses
  %i.ax = add nuw nsw i64 %.sroa.7.0.i, 5         ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val.i.i.4 = load i8, ptr %i.ay, align 8, !noalias !13292, !noundef !21 ; 4 uses
  %i.az = and i8 %.val.i.i.4, %i.e
  %i.ba = icmp eq i8 %i.az, %.val.i.i.4
  %i.bb = and i8 %.val.i.i.4, %.sroa.13.0.i
  %i.bc = icmp ne i8 %i.bb, 0
  %or.cond.i.i.4 = and i1 %i.bc, %i.ba
  br i1 %or.cond.i.i.4, label %bb.b, label %.backedge.i.i.4

.backedge.i.i.4:                                  ; preds = %.lr.ph.split.i.i.4
  %exitcond.not.i.i.4 = icmp eq i64 %i.ax, 6
  br i1 %exitcond.not.i.i.4, label %.loopexit.i, label %.lr.ph.split.i.i.5

.lr.ph.split.i.i.5:                               ; preds = %.backedge.i.i.4
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr @1468, i64 %i.ax ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.7.0.i, 6
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.val.i.i.5 = load i8, ptr %i.bf, align 8, !noalias !13292, !noundef !21 ; 4 uses
  %i.bg = and i8 %.val.i.i.5, %i.e
  %i.bh = icmp eq i8 %i.bg, %.val.i.i.5
  %i.bi = and i8 %.val.i.i.5, %.sroa.13.0.i
  %i.bj = icmp ne i8 %i.bi, 0
  %or.cond.i.i.5 = and i1 %i.bj, %i.bh
  br i1 %or.cond.i.i.5, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.5, %.lr.ph.split.i.i.4, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.u, %.lr.ph.split.i.i ], [ %i.ab, %.lr.ph.split.i.i.1 ], [ %i.ai, %.lr.ph.split.i.i.2 ], [ %i.ap, %.lr.ph.split.i.i.3 ], [ %i.aw, %.lr.ph.split.i.i.4 ], [ %i.bd, %.lr.ph.split.i.i.5 ] ; 2 uses
  %.lcssa = phi i64 [ %i.v, %.lr.ph.split.i.i ], [ %i.ac, %.lr.ph.split.i.i.1 ], [ %i.aj, %.lr.ph.split.i.i.2 ], [ %i.aq, %.lr.ph.split.i.i.3 ], [ %i.ax, %.lr.ph.split.i.i.4 ], [ %i.be, %.lr.ph.split.i.i.5 ]
  %.val.i.i.lcssa = phi i8 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ], [ %.val.i.i.4, %.lr.ph.split.i.i.4 ], [ %.val.i.i.5, %.lr.ph.split.i.i.5 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !13292, !noundef !21
  %i.bm = xor i8 %.val.i.i.lcssa, -1
  %i.bn = and i8 %.sroa.13.0.i, %i.bm
  %i.bo = load ptr, ptr %.lcssa56, align 8, !noalias !13292, !nonnull !21, !align !29, !noundef !21
  %i.bp = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1481, i64 noundef 3)
  br i1 %i.bp, label %_ZN8bitflags6parser9to_writer17h9f2c76ce6f847ebdE.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.5, %.lr.ph.split.i.i.5.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2, %.backedge.i.i.3, %.backedge.i.i.4
  %.sroa.13.0.i65 = phi i8 [ %.sroa.13.0.i, %.backedge.i.i.4 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.5 ], [ %i.e, %.lr.ph.split.i.i.5.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.backedge.i.i.2 ], [ %.sroa.13.0.i, %.backedge.i.i.3 ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.4 ], [ false, %.lr.ph.split.i.i.5 ], [ true, %.lr.ph.split.i.i.5.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.backedge.i.i.2 ], [ false, %.backedge.i.i.3 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13291
  store i8 %.sroa.13.0.i65, ptr %i.d, align 1, !noalias !13291
  %.not.i = icmp eq i8 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1481, i64 noundef 3)
  br i1 %i.bq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.br = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1480, i64 noundef 2)
  br i1 %i.br, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13293)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13291
  store ptr %i.d, ptr %i.c, align 8, !noalias !13294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13294
  store ptr %i.c, ptr %i.b, align 8, !noalias !13294
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h1c07ef27057e1eafE", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !13294
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !13295, !noalias !13296, !nonnull !21, !noundef !21
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !13295, !noalias !13296, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13297
  store ptr @145, ptr %i.a, align 8, !noalias !13294
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !13294
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !13294
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !13294
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !13294
  %i.bt = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !13298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13291
  br i1 %i.bt, label %bb.f, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13291
  br label %_ZN8bitflags6parser9to_writer17h9f2c76ce6f847ebdE.exit

bb.h:                                             ; preds = %bb.b
  %i.bu = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bo, i64 noundef %i.bl)
  br i1 %i.bu, label %_ZN8bitflags6parser9to_writer17h9f2c76ce6f847ebdE.exit, label %.peel.newph, !llvm.loop !13290

_ZN8bitflags6parser9to_writer17h9f2c76ce6f847ebdE.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN80_$LT$actix_http..encoding..encoder..EncoderError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf0142126d369d3f0E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !21
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @680, i64 noundef 2, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @679)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @747, i64 noundef 4, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @822)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$actix_http..h1..client.._..InternalBitFlags$u20$as$u20$core..fmt..Debug$GT$3fmt17h5bcbe92c25aeca3bE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i8, ptr %0, align 1, !noundef !21
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @"_ZN82_$LT$actix_http..h1..client.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h0a394dc1309f61f3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @405, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13301
  store ptr @145, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @1439, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !13301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$actix_http..h1..client.._..InternalBitFlags$u20$as$u20$core..fmt..Octal$GT$3fmt17hca415d6a3713f9a4E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !21
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u8$GT$3fmt17h7cacf98b1b32ad44E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$actix_http..h1..codec.._..InternalBitFlags$u20$as$u20$core..fmt..Binary$GT$3fmt17he304bcfc1c326997E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !21
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u8$GT$3fmt17h64a589b259a2d727E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$actix_http..message.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h853cc614887df682E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !21
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$actix_http..message.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h1a0680c2bc7087e5E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !21
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17hde63f116d7a06bd3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$actix_http..body..utils..BodyLimitExceeded$u20$as$u20$core..fmt..Display$GT$3fmt17h5ef9dccd4f179b5cE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !21, !noalias !13304, !nonnull !21
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1441, i64 noundef 42), !noalias !13304, !inline_history !6
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$actix_http..h1..client.._..InternalBitFlags$u20$as$u20$core..fmt..Binary$GT$3fmt17haa8c7e9d11135507E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !21
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u8$GT$3fmt17h64a589b259a2d727E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$actix_http..h1..codec.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h4b3e861ef0b8a524E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = load i8, ptr %0, align 1, !noundef !21   ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13318)
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.thread.i, label %.lr.ph.split.i.i.peel

.lr.ph.split.i.i.peel:                            ; preds = %.peel.begin
  %i.g = and i8 %i.e, 1
  %or.cond.i.i.peel.not = icmp eq i8 %i.g, 0
  br i1 %or.cond.i.i.peel.not, label %.lr.ph.split.i.i.1.peel, label %bb.a

.lr.ph.split.i.i.1.peel:                          ; preds = %.lr.ph.split.i.i.peel
  %i.h = and i8 %i.e, 2
  %or.cond.i.i.1.peel.not = icmp eq i8 %i.h, 0
  br i1 %or.cond.i.i.1.peel.not, label %.lr.ph.split.i.i.2.peel, label %bb.a

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.i = and i8 %i.e, 4
  %or.cond.i.i.2.peel.not = icmp eq i8 %i.i, 0
  br i1 %or.cond.i.i.2.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @1472, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @1472, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @1472, i64 48), %.lr.ph.split.i.i.2.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ]
  %i.j = phi i8 [ -2, %.lr.ph.split.i.i.peel ], [ -3, %.lr.ph.split.i.i.1.peel ], [ -5, %.lr.ph.split.i.i.2.peel ]
  %i.k = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !13319, !noundef !21
  %i.m = and i8 %i.e, %i.j
  %i.n = load ptr, ptr %.lcssa56.peel, align 8, !noalias !13319, !nonnull !21, !align !29, !noundef !21
  %i.o = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.l)
  br i1 %i.o, label %_ZN8bitflags6parser9to_writer17hfba52ccb135d91b7E.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i8 [ %i.ap, %bb.h ], [ %i.m, %bb.a ] ; 9 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 5 uses
  %i.p = icmp ult i64 %.sroa.7.0.i, 3
  br i1 %i.p, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.q = icmp eq i8 %.sroa.13.0.i, 0
  br i1 %i.q, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13318
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw [24 x i8], ptr @1472, i64 %.sroa.7.0.i ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val.i.i = load i8, ptr %i.t, align 8, !noalias !13319, !noundef !21 ; 4 uses
  %i.u = and i8 %.val.i.i, %i.e
  %i.v = icmp eq i8 %i.u, %.val.i.i
  %i.w = and i8 %.val.i.i, %.sroa.13.0.i
  %i.x = icmp ne i8 %i.w, 0
  %or.cond.i.i = and i1 %i.x, %i.v
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.s, 3
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.y = getelementptr inbounds nuw [24 x i8], ptr @1472, i64 %i.s ; 2 uses
  %i.z = add nuw nsw i64 %.sroa.7.0.i, 2          ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val.i.i.1 = load i8, ptr %i.aa, align 8, !noalias !13319, !noundef !21 ; 4 uses
  %i.ab = and i8 %.val.i.i.1, %i.e
  %i.ac = icmp eq i8 %i.ab, %.val.i.i.1
  %i.ad = and i8 %.val.i.i.1, %.sroa.13.0.i
  %i.ae = icmp ne i8 %i.ad, 0
  %or.cond.i.i.1 = and i1 %i.ae, %i.ac
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.z, 3
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.af = getelementptr inbounds nuw [24 x i8], ptr @1472, i64 %i.z ; 2 uses
  %i.ag = add nuw nsw i64 %.sroa.7.0.i, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.val.i.i.2 = load i8, ptr %i.ah, align 8, !noalias !13319, !noundef !21 ; 4 uses
  %i.ai = and i8 %.val.i.i.2, %i.e
  %i.aj = icmp eq i8 %i.ai, %.val.i.i.2
  %i.ak = and i8 %.val.i.i.2, %.sroa.13.0.i
  %i.al = icmp ne i8 %i.ak, 0
  %or.cond.i.i.2 = and i1 %i.al, %i.aj
  br i1 %or.cond.i.i.2, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.r, %.lr.ph.split.i.i ], [ %i.y, %.lr.ph.split.i.i.1 ], [ %i.af, %.lr.ph.split.i.i.2 ] ; 2 uses
  %.lcssa = phi i64 [ %i.s, %.lr.ph.split.i.i ], [ %i.z, %.lr.ph.split.i.i.1 ], [ %i.ag, %.lr.ph.split.i.i.2 ]
  %.val.i.i.lcssa = phi i8 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ]
  %i.am = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noalias !13319, !noundef !21
  %i.ao = xor i8 %.val.i.i.lcssa, -1
  %i.ap = and i8 %.sroa.13.0.i, %i.ao
  %i.aq = load ptr, ptr %.lcssa56, align 8, !noalias !13319, !nonnull !21, !align !29, !noundef !21
  %i.ar = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1481, i64 noundef 3)
  br i1 %i.ar, label %_ZN8bitflags6parser9to_writer17hfba52ccb135d91b7E.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.2.peel, %.backedge.i.i, %.backedge.i.i.1
  %.sroa.13.0.i65 = phi i8 [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.2 ], [ %i.e, %.lr.ph.split.i.i.2.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.1 ], [ false, %.lr.ph.split.i.i.2 ], [ true, %.lr.ph.split.i.i.2.peel ], [ false, %.backedge.i.i ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13318
  store i8 %.sroa.13.0.i65, ptr %i.d, align 1, !noalias !13318
  %.not.i = icmp eq i8 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1481, i64 noundef 3)
  br i1 %i.as, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.at = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1480, i64 noundef 2)
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13320)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13318
  store ptr %i.d, ptr %i.c, align 8, !noalias !13321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13321
  store ptr %i.c, ptr %i.b, align 8, !noalias !13321
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h1c07ef27057e1eafE", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !13321
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !13322, !noalias !13323, !nonnull !21, !noundef !21
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !13322, !noalias !13323, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13324
  store ptr @145, ptr %i.a, align 8, !noalias !13321
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !13321
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !13321
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !13321
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !13321
  %i.av = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !13325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13318
  br i1 %i.av, label %bb.f, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13318
  br label %_ZN8bitflags6parser9to_writer17hfba52ccb135d91b7E.exit

bb.h:                                             ; preds = %bb.b
  %i.aw = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aq, i64 noundef %i.an)
  br i1 %i.aw, label %_ZN8bitflags6parser9to_writer17hfba52ccb135d91b7E.exit, label %.peel.newph, !llvm.loop !13317

_ZN8bitflags6parser9to_writer17hfba52ccb135d91b7E.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN81_$LT$actix_http..h1..payload..Payload$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hb6c300d4d5267b39E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i = alloca [39 x i8], align 1          ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21 ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !21
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.s, !prof !31

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.c, align 8
  %.val = load ptr, ptr %2, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13348)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13349)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !13350, !noalias !13351, !noundef !21 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17hd3a7fc5399015439E.exit.thread.i", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17hd3a7fc5399015439E.exit.i"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17hd3a7fc5399015439E.exit.i": ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !13350, !noalias !13351, !noundef !21 ; 2 uses
  %i.l = add i64 %i.k, 1                          ; 2 uses
  %i.m = load i64, ptr %i.i, align 8, !range !33, !alias.scope !13350, !noalias !13351, !noundef !21 ; 3 uses
  %.not.i.i = icmp ult i64 %i.l, %i.m
  %i.n = select i1 %.not.i.i, i64 0, i64 %i.m
  %.sroa.0.0.i.i = sub nuw i64 %i.l, %i.n
  store i64 %.sroa.0.0.i.i, ptr %i.j, align 8, !alias.scope !13350, !noalias !13351
  %i.o = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !13350, !noalias !13351
  %i.p = icmp ult i64 %i.o, %i.m
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !13350, !noalias !13351, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.k ; 2 uses
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.s, align 8, !noalias !13352 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload1.i, null
  br i1 %.not.i, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17hd3a7fc5399015439E.exit.thread.i", label %bb.c

bb.c:                                             ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17hd3a7fc5399015439E.exit.i"
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13353
  store ptr %.sroa.0.0.copyload1.i, ptr %i.a, align 8, !noalias !13353
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx2.i, i64 24, i1 false), !noalias !13353
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noalias !13353, !noundef !21 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !13348, !noalias !13347, !noundef !21
  %i.x = sub i64 %i.w, %i.u                       ; 2 uses
  store i64 %i.x, ptr %i.v, align 8, !alias.scope !13348, !noalias !13347
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 137
  %i.z = icmp ult i64 %i.x, 32768                 ; 2 uses
  %i.aa = zext i1 %i.z to i8
  store i8 %i.aa, ptr %i.y, align 1, !alias.scope !13348, !noalias !13347
  %.not5.i = xor i1 %i.z, true
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ac = load i8, ptr %i.ab, align 8, !range !38, !alias.scope !13348, !noalias !13347
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i = select i1 %.not5.i, i1 true, i1 %i.ad
  br i1 %or.cond.i, label %_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit.i, label %bb.e

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17hd3a7fc5399015439E.exit.thread.i": ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17hd3a7fc5399015439E.exit.i", %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %.sroa.03.0.copyload.i = load i8, ptr %i.ae, align 8, !alias.scope !13348, !noalias !13347 ; 2 uses
  store i8 11, ptr %i.ae, align 8, !alias.scope !13348, !noalias !13347
  %.not17.i = icmp eq i8 %.sroa.03.0.copyload.i, 11
  br i1 %.not17.i, label %bb.l, label %bb.k

_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit.i: ; preds = %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$17h568f55af7e93b3e9E.exit.i.i", %bb.f, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13354)
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !13355, !noalias !13347, !align !32, !noundef !21 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !13355, !noalias !13347
  store ptr null, ptr %i.af, align 8, !alias.scope !13355, !noalias !13347
  %.not.i19.i = icmp eq ptr %i.ag, null
  br i1 %.not.i19.i, label %_ZN10actix_http2h17payload5Inner7wake_io17h2fd40e0a0b772e87E.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !13356, !nonnull !21, !noundef !21
  invoke void %i.ak(ptr noundef %i.ai)
          to label %_ZN10actix_http2h17payload5Inner7wake_io17h2fd40e0a0b772e87E.exit.i unwind label %bb.i, !noalias !13353, !inline_history !13334

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13357)
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !13358, !noalias !13347, !align !32, !noundef !21 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %.not.i20.i = icmp eq ptr %i.am, null
  %.pre.i.i = load ptr, ptr %.val, align 8, !noalias !13359 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.pre1.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !13359 ; 3 uses
  br i1 %.not.i20.i, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %bb.e
  %i.ao = load ptr, ptr %.pre.i.i, align 8, !noalias !13359, !nonnull !21, !noundef !21
  %i.ap = invoke { ptr, ptr } %i.ao(ptr noundef %.pre1.i.i)
          to label %.noexc21.i unwind label %bb.i, !noalias !13353, !inline_history !13337 ; 2 uses

.noexc21.i:                                       ; preds = %.thread.i.i
  %i.aq = extractvalue { ptr, ptr } %i.ap, 0      ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.ap, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  br label %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$17h568f55af7e93b3e9E.exit.i.i"

bb.f:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.an, align 8, !alias.scope !13358, !noalias !13347, !noundef !21 ; 2 uses
  %i.at = icmp ne ptr %.pre1.i.i, %i.as
  %i.au = icmp ne ptr %.pre.i.i, %i.am
  %or.cond.i.i = or i1 %i.au, %i.at
  br i1 %or.cond.i.i, label %bb.g, label %_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit.i

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %.pre.i.i, align 8, !noalias !13359, !nonnull !21, !noundef !21
  %i.aw = invoke { ptr, ptr } %i.av(ptr noundef %.pre1.i.i)
          to label %.noexc22.i unwind label %bb.i, !noalias !13353, !inline_history !13337 ; 2 uses

.noexc22.i:                                       ; preds = %bb.g
  %i.ax = extractvalue { ptr, ptr } %i.aw, 0      ; 3 uses
  %i.ay = extractvalue { ptr, ptr } %i.aw, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !13359, !nonnull !21, !noundef !21
  invoke void %i.ba(ptr noundef %i.as)
          to label %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$17h568f55af7e93b3e9E.exit.i.i" unwind label %bb.h, !noalias !13359, !inline_history !0

bb.h:                                             ; preds = %.noexc22.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ax, ptr %i.al, align 8, !alias.scope !13358, !noalias !13347
  store ptr %i.ay, ptr %i.an, align 8, !alias.scope !13358, !noalias !13347
  br label %.body.i

"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$17h568f55af7e93b3e9E.exit.i.i": ; preds = %.noexc22.i, %.noexc21.i
  %i.bc = phi ptr [ %i.ar, %.noexc21.i ], [ %i.ay, %.noexc22.i ]
  %i.bd = phi ptr [ %i.aq, %.noexc21.i ], [ %i.ax, %.noexc22.i ]
  store ptr %i.bd, ptr %i.al, align 8, !alias.scope !13358, !noalias !13347
  store ptr %i.bc, ptr %i.an, align 8, !alias.scope !13358, !noalias !13347
  br label %_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit.i

bb.i:                                             ; preds = %bb.g, %.thread.i.i, %bb.d
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.be, %bb.i ], [ %i.bb, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13361)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !13362, !nonnull !21, !noundef !21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bi = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !13363, !noalias !13353, !noundef !21
  invoke void %i.bg(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef %i.bi, i64 noundef %i.u)
          to label %bb.v unwind label %bb.j, !noalias !13353, !inline_history !39

_ZN10actix_http2h17payload5Inner7wake_io17h2fd40e0a0b772e87E.exit.i: ; preds = %bb.d, %_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit.i
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.4.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !13353
  store i8 11, ptr %0, align 8, !alias.scope !13347, !noalias !13348
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.42.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4.i, i64 39, i1 false), !noalias !13348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13353
end_hunk_6
begin_hunk_7_@"_ZN81_$LT$actix_http..h1..payload..Payload$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hb6c300d4d5267b39E":bb.a
  store ptr %i.cg, ptr %i.bo, align 8, !alias.scope !13365, !noalias !13347
  store ptr %i.cf, ptr %i.bq, align 8, !alias.scope !13365, !noalias !13347
  br label %_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit32.i

_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit32.i: ; preds = %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$17h568f55af7e93b3e9E.exit.i30.i", %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13367)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !13368, !noalias !13347, !align !32, !noundef !21 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !13368, !noalias !13347
  store ptr null, ptr %i.ch, align 8, !alias.scope !13368, !noalias !13347
  %.not.i33.i = icmp eq ptr %i.ci, null
  br i1 %.not.i33.i, label %_ZN10actix_http2h17payload5Inner7wake_io17h2fd40e0a0b772e87E.exit34.i, label %bb.q

bb.q:                                             ; preds = %_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit32.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !13369, !nonnull !21, !noundef !21
  invoke void %i.cm(ptr noundef %i.ck)
          to label %_ZN10actix_http2h17payload5Inner7wake_io17h2fd40e0a0b772e87E.exit34.i unwind label %bb.t, !inline_history !13344

_ZN10actix_http2h17payload5Inner7wake_io17h2fd40e0a0b772e87E.exit34.i: ; preds = %bb.q, %_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit32.i
  store i8 13, ptr %0, align 8, !alias.scope !13347, !noalias !13348
  br label %bb.u

bb.r:                                             ; preds = %bb.l
  store i8 12, ptr %0, align 8, !alias.scope !13347, !noalias !13348
  br label %bb.u

bb.s:                                             ; preds = %bb.a
  tail call void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1442) #46
  unreachable

bb.t:                                             ; preds = %bb.q, %bb.o, %.thread.i31.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZN10actix_http2h17payload5Inner7wake_io17h2fd40e0a0b772e87E.exit.i, %bb.r, %_ZN10actix_http2h17payload5Inner7wake_io17h2fd40e0a0b772e87E.exit34.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %i.co = load i64, ptr %i.c, align 8, !noundef !21
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.c, align 8
  ret void

bb.v:                                             ; preds = %bb.t, %bb.p, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.cn, %bb.t ], [ %i.ce, %bb.p ], [ %eh.lpad-body.i, %.body.i ]
  %i.cq = load i64, ptr %i.c, align 8, !noundef !21
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.c, align 8
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN81_$LT$actix_http..test..TestBuffer$u20$as$u20$tokio..io..async_read..AsyncRead$GT$9poll_read17h078803f0f539b49dE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !21 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !21 ; 6 uses
  %i.f = sub nuw i64 %i.c, %i.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13375)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !13375, !noundef !21 ; 4 uses
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.j = phi i64 [ %i.c, %bb.c ], [ %i.h, %bb.a ]
  %i.k = icmp ult i64 %i.c, %i.e
  br i1 %i.k, label %bb.d, label %_ZN5tokio2io8read_buf7ReadBuf22initialize_unfilled_to17hcbf22aa019d7dc2dE.exit, !prof !64

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %2, align 8, !alias.scope !13375, !nonnull !21, !align !29, !noundef !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = sub nuw i64 %i.c, %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %i.n, i1 false), !noalias !13375
  store i64 %i.c, ptr %i.g, align 8, !alias.scope !13375
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.e, i64 noundef %i.c, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1444) #46, !noalias !13375
  unreachable

_ZN5tokio2io8read_buf7ReadBuf22initialize_unfilled_to17hcbf22aa019d7dc2dE.exit: ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !alias.scope !13375, !nonnull !21, !align !29, !noundef !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.e
  %i.q = tail call { i64, ptr } @"_ZN62_$LT$actix_http..test..TestBuffer$u20$as$u20$std..io..Read$GT$4read17h30e0e26e8d2cf0daE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 1 %i.p, i64 noundef %i.f) ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 2 uses
  %i.t = trunc nuw i64 %i.r to i1
  br i1 %i.t, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN5tokio2io8read_buf7ReadBuf22initialize_unfilled_to17hcbf22aa019d7dc2dE.exit
  %i.u = ptrtoint ptr %i.s to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13376)
  %i.v = add i64 %i.e, %i.u                       ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.e
  br i1 %i.w, label %bb.g, label %bb.f, !prof !30

bb.f:                                             ; preds = %bb.e
  %.not.i3 = icmp ugt i64 %i.v, %i.j
  br i1 %.not.i3, label %bb.h, label %_ZN5tokio2io8read_buf7ReadBuf7advance17h4df9e7806afc6eefE.exit, !prof !30

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @720, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1445) #46, !noalias !13376
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13377
  store ptr @719, ptr %i.a, align 8, !noalias !13377
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.x, align 8, !noalias !13377
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.y, align 8, !noalias !13377
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.z, align 8, !noalias !13377
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.aa, align 8, !noalias !13377
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1445) #46, !noalias !13376
  unreachable

_ZN5tokio2io8read_buf7ReadBuf7advance17h4df9e7806afc6eefE.exit: ; preds = %bb.f
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !13376, !noalias !13378
  br label %bb.i

bb.i:                                             ; preds = %_ZN5tokio2io8read_buf7ReadBuf22initialize_unfilled_to17hcbf22aa019d7dc2dE.exit, %_ZN5tokio2io8read_buf7ReadBuf7advance17h4df9e7806afc6eefE.exit
  %.sroa.0.0 = phi ptr [ null, %_ZN5tokio2io8read_buf7ReadBuf7advance17h4df9e7806afc6eefE.exit ], [ %i.s, %_ZN5tokio2io8read_buf7ReadBuf22initialize_unfilled_to17hcbf22aa019d7dc2dE.exit ]
  %i.ab = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.0.0, 1
  ret { i64, ptr } %i.ab
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h757ef9b3de63fdbcE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN3std2io5Write9write_all17hfe9ab90629b516a2E.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !21, !align !32, !noundef !21
  %.val = load ptr, ptr %i.b, align 8, !nonnull !21, !noundef !21
  tail call void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 1, 0) %2)
  br label %_ZN3std2io5Write9write_all17hfe9ab90629b516a2E.exit

_ZN3std2io5Write9write_all17hfe9ab90629b516a2E.exit: ; preds = %.lr.ph.split.us.i, %bb.a
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h7d4f3998086fead0E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !align !29, !noundef !21
  %i.b = tail call fastcc noundef ptr @_ZN3std2io5Write9write_all17h7db539defa25edd9E(ptr noalias noundef nonnull align 1 %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !13381, !noundef !21
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h1ee6ae55c83a15b5E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h85474bca0acdf2a3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h1ee6ae55c83a15b5E.exit" unwind label %bb.e

bb.d:                                             ; preds = %bb.a, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h1ee6ae55c83a15b5E.exit"
  ret i1 %.not

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.c, align 8
  resume { ptr, i32 } %i.f

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h1ee6ae55c83a15b5E.exit": ; preds = %bb.b, %bb.c
  store ptr %i.b, ptr %i.c, align 8
  br label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN82_$LT$actix_http..encoding..encoder..EncoderError$u20$as$u20$core..error..Error$GT$6source17hb5c9fb2bdca9d11bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !21  ; 2 uses
  %i.b = icmp eq ptr %i.a, null                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !21, !align !32
  %.sroa.3.0 = select i1 %i.b, ptr @9, ptr %i.d
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr %i.a
  %i.e = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN82_$LT$actix_http..encoding..encoder..EncoderError$u20$as$u20$core..fmt..Display$GT$3fmt17hb7f057c63b11d934E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !21
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !21, !noundef !21
  %.val2 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !21, !noalias !21, !nonnull !21 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1447, i64 noundef 2), !noalias !13386, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1446, i64 noundef 4), !noalias !13387, !inline_history !6
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.c ], [ %i.f, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN82_$LT$actix_http..h1..client.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h0a394dc1309f61f3E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = load i8, ptr %0, align 1, !noundef !21   ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13401)
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.thread.i, label %.lr.ph.split.i.i.peel

.lr.ph.split.i.i.peel:                            ; preds = %.peel.begin
  %i.g = and i8 %i.e, 1
  %or.cond.i.i.peel.not = icmp eq i8 %i.g, 0
  br i1 %or.cond.i.i.peel.not, label %.lr.ph.split.i.i.1.peel, label %bb.a

.lr.ph.split.i.i.1.peel:                          ; preds = %.lr.ph.split.i.i.peel
  %i.h = and i8 %i.e, 8
  %or.cond.i.i.1.peel.not = icmp eq i8 %i.h, 0
  br i1 %or.cond.i.i.1.peel.not, label %.lr.ph.split.i.i.2.peel, label %bb.a

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.i = and i8 %i.e, 16
  %or.cond.i.i.2.peel.not = icmp eq i8 %i.i, 0
  br i1 %or.cond.i.i.2.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @1473, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @1473, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @1473, i64 48), %.lr.ph.split.i.i.2.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ]
  %i.j = phi i8 [ -2, %.lr.ph.split.i.i.peel ], [ -9, %.lr.ph.split.i.i.1.peel ], [ -17, %.lr.ph.split.i.i.2.peel ]
  %i.k = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !13402, !noundef !21
  %i.m = and i8 %i.e, %i.j
  %i.n = load ptr, ptr %.lcssa56.peel, align 8, !noalias !13402, !nonnull !21, !align !29, !noundef !21
  %i.o = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.l)
  br i1 %i.o, label %_ZN8bitflags6parser9to_writer17hcb2ebd997c19ca31E.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i8 [ %i.ap, %bb.h ], [ %i.m, %bb.a ] ; 9 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 5 uses
  %i.p = icmp ult i64 %.sroa.7.0.i, 3
  br i1 %i.p, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.q = icmp eq i8 %.sroa.13.0.i, 0
  br i1 %i.q, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13401
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw [24 x i8], ptr @1473, i64 %.sroa.7.0.i ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val.i.i = load i8, ptr %i.t, align 8, !noalias !13402, !noundef !21 ; 4 uses
  %i.u = and i8 %.val.i.i, %i.e
  %i.v = icmp eq i8 %i.u, %.val.i.i
  %i.w = and i8 %.val.i.i, %.sroa.13.0.i
  %i.x = icmp ne i8 %i.w, 0
  %or.cond.i.i = and i1 %i.x, %i.v
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.s, 3
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.y = getelementptr inbounds nuw [24 x i8], ptr @1473, i64 %i.s ; 2 uses
  %i.z = add nuw nsw i64 %.sroa.7.0.i, 2          ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val.i.i.1 = load i8, ptr %i.aa, align 8, !noalias !13402, !noundef !21 ; 4 uses
  %i.ab = and i8 %.val.i.i.1, %i.e
  %i.ac = icmp eq i8 %i.ab, %.val.i.i.1
  %i.ad = and i8 %.val.i.i.1, %.sroa.13.0.i
  %i.ae = icmp ne i8 %i.ad, 0
  %or.cond.i.i.1 = and i1 %i.ae, %i.ac
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.z, 3
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.af = getelementptr inbounds nuw [24 x i8], ptr @1473, i64 %i.z ; 2 uses
  %i.ag = add nuw nsw i64 %.sroa.7.0.i, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.val.i.i.2 = load i8, ptr %i.ah, align 8, !noalias !13402, !noundef !21 ; 4 uses
  %i.ai = and i8 %.val.i.i.2, %i.e
  %i.aj = icmp eq i8 %i.ai, %.val.i.i.2
  %i.ak = and i8 %.val.i.i.2, %.sroa.13.0.i
  %i.al = icmp ne i8 %i.ak, 0
  %or.cond.i.i.2 = and i1 %i.al, %i.aj
  br i1 %or.cond.i.i.2, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.r, %.lr.ph.split.i.i ], [ %i.y, %.lr.ph.split.i.i.1 ], [ %i.af, %.lr.ph.split.i.i.2 ] ; 2 uses
  %.lcssa = phi i64 [ %i.s, %.lr.ph.split.i.i ], [ %i.z, %.lr.ph.split.i.i.1 ], [ %i.ag, %.lr.ph.split.i.i.2 ]
  %.val.i.i.lcssa = phi i8 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ]
  %i.am = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noalias !13402, !noundef !21
  %i.ao = xor i8 %.val.i.i.lcssa, -1
  %i.ap = and i8 %.sroa.13.0.i, %i.ao
  %i.aq = load ptr, ptr %.lcssa56, align 8, !noalias !13402, !nonnull !21, !align !29, !noundef !21
  %i.ar = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1481, i64 noundef 3)
  br i1 %i.ar, label %_ZN8bitflags6parser9to_writer17hcb2ebd997c19ca31E.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.2.peel, %.backedge.i.i, %.backedge.i.i.1
  %.sroa.13.0.i65 = phi i8 [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.2 ], [ %i.e, %.lr.ph.split.i.i.2.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.1 ], [ false, %.lr.ph.split.i.i.2 ], [ true, %.lr.ph.split.i.i.2.peel ], [ false, %.backedge.i.i ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13401
  store i8 %.sroa.13.0.i65, ptr %i.d, align 1, !noalias !13401
  %.not.i = icmp eq i8 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1481, i64 noundef 3)
  br i1 %i.as, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.at = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1480, i64 noundef 2)
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13401
  store ptr %i.d, ptr %i.c, align 8, !noalias !13404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13404
  store ptr %i.c, ptr %i.b, align 8, !noalias !13404
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h1c07ef27057e1eafE", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !13404
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !13405, !noalias !13406, !nonnull !21, !noundef !21
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !13405, !noalias !13406, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13407
  store ptr @145, ptr %i.a, align 8, !noalias !13404
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !13404
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !13404
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !13404
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !13404
  %i.av = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !13408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13401
  br i1 %i.av, label %bb.f, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13401
  br label %_ZN8bitflags6parser9to_writer17hcb2ebd997c19ca31E.exit

bb.h:                                             ; preds = %bb.b
  %i.aw = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aq, i64 noundef %i.an)
  br i1 %i.aw, label %_ZN8bitflags6parser9to_writer17hcb2ebd997c19ca31E.exit, label %.peel.newph, !llvm.loop !13400

_ZN8bitflags6parser9to_writer17hcb2ebd997c19ca31E.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN82_$LT$actix_http..h1..codec.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hfe614c50d65bf978E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !21
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN82_$LT$actix_http..h1..codec.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17hddf4c141d6f8f47dE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !21
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17hde63f116d7a06bd3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN82_$LT$actix_http..requests..head..RequestHead$u20$as$u20$core..default..Default$GT$7default17hbc76953a94f708a9E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @127, ptr %i.b, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.516.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr @127, ptr %i.c, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @0, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 1, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %.sroa.01.sroa.6.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i16 -1, ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = invoke noundef i64 @_ZN8foldhash4seed19gen_per_hasher_seed17h40665e60abfadd55E()
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %i.e = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8foldhash4seed6global19GLOBAL_SEED_STORAGE17h12cb7ed91cc53f21E, i64 32) acquire, align 8, !noalias !13415
  %.not.i.i = icmp eq i8 %i.e, 2
  br i1 %.not.i.i, label %"_ZN70_$LT$foldhash..fast..RandomState$u20$as$u20$core..default..Default$GT$7default17h2c8694b974f1cf30E.exit.i", label %bb.b, !prof !31

bb.b:                                             ; preds = %.noexc
  invoke void @_ZN8foldhash4seed6global10GlobalSeed9init_slow17heea34a4b01fb9b4fE()
          to label %"_ZN70_$LT$foldhash..fast..RandomState$u20$as$u20$core..default..Default$GT$7default17h2c8694b974f1cf30E.exit.i" unwind label %bb.e

"_ZN70_$LT$foldhash..fast..RandomState$u20$as$u20$core..default..Default$GT$7default17h2c8694b974f1cf30E.exit.i": ; preds = %bb.b, %.noexc
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !13416
  %i.f = tail call noundef align 16 dereferenceable_or_null(6448) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 6448, i64 noundef range(i64 1, -9223372036854775807) 16) #45, !noalias !13416 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %"_ZN70_$LT$foldhash..fast..RandomState$u20$as$u20$core..default..Default$GT$7default17h2c8694b974f1cf30E.exit.i"
  %i.h = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext true, i64 noundef 16, i64 noundef 6448)
          to label %.noexc32 unwind label %bb.e   ; 2 uses

.noexc32:                                         ; preds = %bb.c
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %i.h, 0
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %i.h, 1
  br label %_ZN10actix_http6header3map9HeaderMap13with_capacity17h922651f18070de4dE.exit

bb.d:                                             ; preds = %"_ZN70_$LT$foldhash..fast..RandomState$u20$as$u20$core..default..Default$GT$7default17h2c8694b974f1cf30E.exit.i"
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 6400 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.i, i8 -1, i64 48, i1 false), !noalias !13417
  br label %_ZN10actix_http6header3map9HeaderMap13with_capacity17h922651f18070de4dE.exit

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr35drop_in_place$LT$http..uri..Uri$GT$17h4f3ddb8af80f4cb4E"(ptr noalias noundef align 8 dereferenceable(88) %i.a) #47
          to label %bb.g unwind label %bb.f

_ZN10actix_http6header3map9HeaderMap13with_capacity17h922651f18070de4dE.exit: ; preds = %.noexc32, %bb.d
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %.noexc32 ], [ 28, %bb.d ]
  %.sroa.538.0 = phi i64 [ %.sroa.7.0.ph.i, %.noexc32 ], [ 31, %bb.d ]
  %.sroa.037.0 = phi ptr [ null, %.noexc32 ], [ %i.i, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 72340172838076673, ptr %i.k, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.534.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.l, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.037.0, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.sroa.538.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.sroa.7.0, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %.sroa.641.0..sroa_idx, align 8
  %.sroa.742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.d, ptr %.sroa.742.0..sroa_idx, align 8
  store i16 2, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN83_$LT$actix_http..h1..client.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h65d6aa6037e4fab6E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !21
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN83_$LT$actix_http..h1..client.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h0ebf5332455b1ce5E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !21
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17hde63f116d7a06bd3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN83_$LT$actix_http..header..shared..charset..Charset$u20$as$u20$core..fmt..Display$GT$3fmt17ha0b8be61f1506f45E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13420, !alias.scope !13421, !noundef !21 ; 2 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 24
  switch i64 %i.d, label %bb.b [
    i64 0, label %_ZN10actix_http6header6shared7charset7Charset5label17hc96512074c4ff7e4E.exit
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
end_hunk_7
begin_hunk_8_@"_ZN86_$LT$actix_http..h1..dispatcher.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h9eb6f78074ac421bE":.peel.begin
.peel.begin:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = load i8, ptr %0, align 1, !noundef !21   ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13513)
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.thread.i, label %.lr.ph.split.i.i.peel

.lr.ph.split.i.i.peel:                            ; preds = %.peel.begin
  %i.g = and i8 %i.e, 1
  %or.cond.i.i.peel.not = icmp eq i8 %i.g, 0
  br i1 %or.cond.i.i.peel.not, label %.lr.ph.split.i.i.1.peel, label %bb.a

.lr.ph.split.i.i.1.peel:                          ; preds = %.lr.ph.split.i.i.peel
  %i.h = and i8 %i.e, 2
  %or.cond.i.i.1.peel.not = icmp eq i8 %i.h, 0
  br i1 %or.cond.i.i.1.peel.not, label %.lr.ph.split.i.i.2.peel, label %bb.a

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.i = and i8 %i.e, 4
  %or.cond.i.i.2.peel.not = icmp eq i8 %i.i, 0
  br i1 %or.cond.i.i.2.peel.not, label %.lr.ph.split.i.i.3.peel, label %bb.a

.lr.ph.split.i.i.3.peel:                          ; preds = %.lr.ph.split.i.i.2.peel
  %i.j = and i8 %i.e, 8
  %or.cond.i.i.3.peel.not = icmp eq i8 %i.j, 0
  br i1 %or.cond.i.i.3.peel.not, label %.lr.ph.split.i.i.4.peel, label %bb.a

.lr.ph.split.i.i.4.peel:                          ; preds = %.lr.ph.split.i.i.3.peel
  %i.k = and i8 %i.e, 16
  %or.cond.i.i.4.peel.not = icmp eq i8 %i.k, 0
  br i1 %or.cond.i.i.4.peel.not, label %.lr.ph.split.i.i.5.peel, label %bb.a

.lr.ph.split.i.i.5.peel:                          ; preds = %.lr.ph.split.i.i.4.peel
  %i.l = and i8 %i.e, 32
  %or.cond.i.i.5.peel.not = icmp eq i8 %i.l, 0
  br i1 %or.cond.i.i.5.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.5.peel, %.lr.ph.split.i.i.4.peel, %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @1479, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @1479, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @1479, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @1479, i64 72), %.lr.ph.split.i.i.3.peel ], [ getelementptr inbounds nuw (i8, ptr @1479, i64 96), %.lr.ph.split.i.i.4.peel ], [ getelementptr inbounds nuw (i8, ptr @1479, i64 120), %.lr.ph.split.i.i.5.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ], [ 5, %.lr.ph.split.i.i.4.peel ], [ 6, %.lr.ph.split.i.i.5.peel ]
  %i.m = phi i8 [ -2, %.lr.ph.split.i.i.peel ], [ -3, %.lr.ph.split.i.i.1.peel ], [ -5, %.lr.ph.split.i.i.2.peel ], [ -9, %.lr.ph.split.i.i.3.peel ], [ -17, %.lr.ph.split.i.i.4.peel ], [ -33, %.lr.ph.split.i.i.5.peel ]
  %i.n = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !13514, !noundef !21
  %i.p = and i8 %i.e, %i.m
  %i.q = load ptr, ptr %.lcssa56.peel, align 8, !noalias !13514, !nonnull !21, !align !29, !noundef !21
  %i.r = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.q, i64 noundef %i.o)
  br i1 %i.r, label %_ZN8bitflags6parser9to_writer17h40e1ca361c411c60E.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i8 [ %i.bn, %bb.h ], [ %i.p, %bb.a ] ; 15 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 8 uses
  %i.s = icmp ult i64 %.sroa.7.0.i, 6
  br i1 %i.s, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.t = icmp eq i8 %.sroa.13.0.i, 0
  br i1 %i.t, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13513
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw [24 x i8], ptr @1479, i64 %.sroa.7.0.i ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val.i.i = load i8, ptr %i.w, align 8, !noalias !13514, !noundef !21 ; 4 uses
  %i.x = and i8 %.val.i.i, %i.e
  %i.y = icmp eq i8 %i.x, %.val.i.i
  %i.z = and i8 %.val.i.i, %.sroa.13.0.i
  %i.aa = icmp ne i8 %i.z, 0
  %or.cond.i.i = and i1 %i.aa, %i.y
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.v, 6
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr @1479, i64 %i.v ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.7.0.i, 2         ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.val.i.i.1 = load i8, ptr %i.ad, align 8, !noalias !13514, !noundef !21 ; 4 uses
  %i.ae = and i8 %.val.i.i.1, %i.e
  %i.af = icmp eq i8 %i.ae, %.val.i.i.1
  %i.ag = and i8 %.val.i.i.1, %.sroa.13.0.i
  %i.ah = icmp ne i8 %i.ag, 0
  %or.cond.i.i.1 = and i1 %i.ah, %i.af
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.ac, 6
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr @1479, i64 %i.ac ; 2 uses
  %i.aj = add nuw nsw i64 %.sroa.7.0.i, 3         ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.val.i.i.2 = load i8, ptr %i.ak, align 8, !noalias !13514, !noundef !21 ; 4 uses
  %i.al = and i8 %.val.i.i.2, %i.e
  %i.am = icmp eq i8 %i.al, %.val.i.i.2
  %i.an = and i8 %.val.i.i.2, %.sroa.13.0.i
  %i.ao = icmp ne i8 %i.an, 0
  %or.cond.i.i.2 = and i1 %i.ao, %i.am
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.aj, 6
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr @1479, i64 %i.aj ; 2 uses
  %i.aq = add nuw nsw i64 %.sroa.7.0.i, 4         ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.val.i.i.3 = load i8, ptr %i.ar, align 8, !noalias !13514, !noundef !21 ; 4 uses
  %i.as = and i8 %.val.i.i.3, %i.e
  %i.at = icmp eq i8 %i.as, %.val.i.i.3
  %i.au = and i8 %.val.i.i.3, %.sroa.13.0.i
  %i.av = icmp ne i8 %i.au, 0
  %or.cond.i.i.3 = and i1 %i.av, %i.at
  br i1 %or.cond.i.i.3, label %bb.b, label %.backedge.i.i.3

.backedge.i.i.3:                                  ; preds = %.lr.ph.split.i.i.3
  %exitcond.not.i.i.3 = icmp eq i64 %i.aq, 6
  br i1 %exitcond.not.i.i.3, label %.loopexit.i, label %.lr.ph.split.i.i.4

.lr.ph.split.i.i.4:                               ; preds = %.backedge.i.i.3
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr @1479, i64 %i.aq ; 2 uses
  %i.ax = add nuw nsw i64 %.sroa.7.0.i, 5         ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val.i.i.4 = load i8, ptr %i.ay, align 8, !noalias !13514, !noundef !21 ; 4 uses
  %i.az = and i8 %.val.i.i.4, %i.e
  %i.ba = icmp eq i8 %i.az, %.val.i.i.4
  %i.bb = and i8 %.val.i.i.4, %.sroa.13.0.i
  %i.bc = icmp ne i8 %i.bb, 0
  %or.cond.i.i.4 = and i1 %i.bc, %i.ba
  br i1 %or.cond.i.i.4, label %bb.b, label %.backedge.i.i.4

.backedge.i.i.4:                                  ; preds = %.lr.ph.split.i.i.4
  %exitcond.not.i.i.4 = icmp eq i64 %i.ax, 6
  br i1 %exitcond.not.i.i.4, label %.loopexit.i, label %.lr.ph.split.i.i.5

.lr.ph.split.i.i.5:                               ; preds = %.backedge.i.i.4
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr @1479, i64 %i.ax ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.7.0.i, 6
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.val.i.i.5 = load i8, ptr %i.bf, align 8, !noalias !13514, !noundef !21 ; 4 uses
  %i.bg = and i8 %.val.i.i.5, %i.e
  %i.bh = icmp eq i8 %i.bg, %.val.i.i.5
  %i.bi = and i8 %.val.i.i.5, %.sroa.13.0.i
  %i.bj = icmp ne i8 %i.bi, 0
  %or.cond.i.i.5 = and i1 %i.bj, %i.bh
  br i1 %or.cond.i.i.5, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.5, %.lr.ph.split.i.i.4, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.u, %.lr.ph.split.i.i ], [ %i.ab, %.lr.ph.split.i.i.1 ], [ %i.ai, %.lr.ph.split.i.i.2 ], [ %i.ap, %.lr.ph.split.i.i.3 ], [ %i.aw, %.lr.ph.split.i.i.4 ], [ %i.bd, %.lr.ph.split.i.i.5 ] ; 2 uses
  %.lcssa = phi i64 [ %i.v, %.lr.ph.split.i.i ], [ %i.ac, %.lr.ph.split.i.i.1 ], [ %i.aj, %.lr.ph.split.i.i.2 ], [ %i.aq, %.lr.ph.split.i.i.3 ], [ %i.ax, %.lr.ph.split.i.i.4 ], [ %i.be, %.lr.ph.split.i.i.5 ]
  %.val.i.i.lcssa = phi i8 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ], [ %.val.i.i.4, %.lr.ph.split.i.i.4 ], [ %.val.i.i.5, %.lr.ph.split.i.i.5 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !13514, !noundef !21
  %i.bm = xor i8 %.val.i.i.lcssa, -1
  %i.bn = and i8 %.sroa.13.0.i, %i.bm
  %i.bo = load ptr, ptr %.lcssa56, align 8, !noalias !13514, !nonnull !21, !align !29, !noundef !21
  %i.bp = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1481, i64 noundef 3)
  br i1 %i.bp, label %_ZN8bitflags6parser9to_writer17h40e1ca361c411c60E.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.5, %.lr.ph.split.i.i.5.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2, %.backedge.i.i.3, %.backedge.i.i.4
  %.sroa.13.0.i65 = phi i8 [ %.sroa.13.0.i, %.backedge.i.i.4 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.5 ], [ %i.e, %.lr.ph.split.i.i.5.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.backedge.i.i.2 ], [ %.sroa.13.0.i, %.backedge.i.i.3 ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.4 ], [ false, %.lr.ph.split.i.i.5 ], [ true, %.lr.ph.split.i.i.5.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.backedge.i.i.2 ], [ false, %.backedge.i.i.3 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13513
  store i8 %.sroa.13.0.i65, ptr %i.d, align 1, !noalias !13513
  %.not.i = icmp eq i8 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1481, i64 noundef 3)
  br i1 %i.bq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.br = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1480, i64 noundef 2)
  br i1 %i.br, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13515)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13513
  store ptr %i.d, ptr %i.c, align 8, !noalias !13516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13516
  store ptr %i.c, ptr %i.b, align 8, !noalias !13516
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h1c07ef27057e1eafE", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !13516
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !13517, !noalias !13518, !nonnull !21, !noundef !21
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !13517, !noalias !13518, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13519
  store ptr @145, ptr %i.a, align 8, !noalias !13516
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !13516
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !13516
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !13516
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !13516
  %i.bt = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !13520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13513
  br i1 %i.bt, label %bb.f, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13513
  br label %_ZN8bitflags6parser9to_writer17h40e1ca361c411c60E.exit

bb.h:                                             ; preds = %bb.b
  %i.bu = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bo, i64 noundef %i.bl)
  br i1 %i.bu, label %_ZN8bitflags6parser9to_writer17h40e1ca361c411c60E.exit, label %.peel.newph, !llvm.loop !13512

_ZN8bitflags6parser9to_writer17h40e1ca361c411c60E.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN86_$LT$actix_http..header..shared..http_date..HttpDate$u20$as$u20$core..fmt..Display$GT$3fmt17hb08aa84dffd724d1E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %0, align 8, !noundef !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !range !48, !noundef !21
  %i.e = tail call i64 @"_ZN93_$LT$httpdate..date..HttpDate$u20$as$u20$core..convert..From$LT$std..time..SystemTime$GT$$GT$4from17hc4b6d6f843266763E"(i64 noundef %i.b, i32 noundef %i.d)
  store i64 %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @"_ZN63_$LT$httpdate..date..HttpDate$u20$as$u20$core..fmt..Display$GT$3fmt17h5cf934b1ef303333E"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN86_$LT$actix_http..test..TestSeqBuffer$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$10poll_write17h3c089bcea29370cfE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 1 captures(address) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13532)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !13531, !noalias !13532, !nonnull !21, !noundef !21 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !13533, !noundef !21
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.d, !prof !31

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.c, align 8, !noalias !13533
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13535)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13536)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !13537, !noalias !13538, !noundef !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !13537, !noalias !13538, !noundef !21
  %i.l = sub i64 %i.k, %i.i
  %.not.i.i.i = icmp ugt i64 %3, %i.l
  br i1 %.not.i.i.i, label %.thread.i.i, label %bb.c

.thread.i.i:                                      ; preds = %bb.b
  %i.m = invoke noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %3, i1 noundef zeroext true)
          to label %.lr.ph.i.i.i.preheader unwind label %.loopexit.split-lp.i, !noalias !13533 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %.not1415.i.i.i = icmp samesign eq i64 %3, 0
  br i1 %.not1415.i.i.i, label %"_ZN66_$LT$actix_http..test..TestSeqBuffer$u20$as$u20$std..io..Write$GT$5write17haf2075eddba1a9bcE.exit", label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c, %.thread.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.noexc4.i
  %.sroa.08.016.i.i.i = phi ptr [ %i.o, %.noexc4.i ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.n = load i8, ptr %.sroa.08.016.i.i.i, align 1, !alias.scope !13539, !noalias !13540, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13541
  store i8 %i.n, ptr %i.a, align 1, !noalias !13541
  invoke void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc4.i unwind label %.loopexit.i, !noalias !13533

.noexc4.i:                                        ; preds = %.lr.ph.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.016.i.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13541
  %.not14.i.i.i = icmp eq ptr %i.o, %i.g
  br i1 %.not14.i.i.i, label %"_ZN96_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$u8$GT$$GT$6extend17hd64d298895f9ed30E.exit.loopexit.i", label %.lr.ph.i.i.i

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820) #46, !noalias !13533
  unreachable

"_ZN96_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$u8$GT$$GT$6extend17hd64d298895f9ed30E.exit.loopexit.i": ; preds = %.noexc4.i
  %.pre.i = load i64, ptr %i.c, align 8, !noalias !13533
  %i.p = add i64 %.pre.i, 1
  br label %"_ZN66_$LT$actix_http..test..TestSeqBuffer$u20$as$u20$std..io..Write$GT$5write17haf2075eddba1a9bcE.exit"

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp.i:                             ; preds = %.thread.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.q = load i64, ptr %i.c, align 8, !noalias !13533, !noundef !21
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.c, align 8, !noalias !13533
  resume { ptr, i32 } %lpad.phi.i

"_ZN66_$LT$actix_http..test..TestSeqBuffer$u20$as$u20$std..io..Write$GT$5write17haf2075eddba1a9bcE.exit": ; preds = %bb.c, %"_ZN96_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$u8$GT$$GT$6extend17hd64d298895f9ed30E.exit.loopexit.i"
  %i.s = phi i64 [ %i.p, %"_ZN96_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$u8$GT$$GT$6extend17hd64d298895f9ed30E.exit.loopexit.i" ], [ 0, %bb.c ]
  store i64 %i.s, ptr %i.c, align 8, !noalias !13533
  %i.t = inttoptr i64 %3 to ptr
  %i.u = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.t, 1
  ret { i64, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN87_$LT$actix_http..h1..dispatcher.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hd67a2a7e4701ac40E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !21
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN87_$LT$actix_http..h1..dispatcher.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17hc4e63ec29dbd02e7E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !21
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17hde63f116d7a06bd3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN87_$LT$actix_http..message.._..InternalBitFlags$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hce9b1b17d0c5b03bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13593)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hee58a253dc84ce04E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2), !noalias !13594
  %i.c = extractvalue { ptr, i64 } %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit19, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.716.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.x, %.lr.ph.i
  %.lcssa141154.i = phi i64 [ 0, %.lr.ph.i ], [ %.lcssa141152.i, %bb.x ] ; 3 uses
  %.sroa.0.0149.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cw, %bb.x ]
  %.lcssa119144148.i = phi i64 [ 0, %.lr.ph.i ], [ %.lcssa119143.i, %bb.x ] ; 7 uses
  %i.e = icmp ult i64 %2, %.lcssa141154.i
  br i1 %i.e, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.b, %bb.d
  %i.f = phi i64 [ %i.s, %bb.d ], [ %.lcssa141154.i, %bb.b ] ; 5 uses
  %i.g = sub nuw i64 %2, %i.f                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 2 uses
  %i.i = icmp ult i64 %i.g, 16
  br i1 %i.i, label %.preheader.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %2, %i.f
  br i1 %.not.i.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.c
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.m, %bb.c ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.05.i.i.i.i
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !13595, !noalias !13596, !noundef !21
  %i.l = icmp eq i8 %i.k, 124
  br i1 %i.l, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.m = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.m, %i.g
  br i1 %exitcond.not.i.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", label %.lr.ph.i.i.i.i

end_hunk_8
begin_hunk_9_@"_ZN94_$LT$actix_http..h1..dispatcher.._..InternalBitFlags$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h971db17deb5a4e89E":bb.a
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.be = load i64, ptr %i.y, align 1
  %i.bf = icmp ne i64 5645067812823451731, %i.be
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.g
  %i.bi = load i64, ptr %i.y, align 1
  %i.bj = xor i64 6001403154405606738, %i.bi
  %i.bk = getelementptr i8, ptr %i.y, i64 7
  %i.bl = load i64, ptr %i.bk, align 1
  %i.bm = xor i64 6071772925249143635, %i.bl
  %i.bn = or i64 %i.bj, %i.bm
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.g
  %i.br = load i128, ptr %i.y, align 1
  %i.bs = icmp ne i128 112004441225749748693636951838386901591, %i.br
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.f
  %.sroa.5103.0.copyload.i = load i64, ptr %.sroa.716.0..sroa_idx.i, align 8, !noalias !14020 ; 6 uses
  %.sroa.6104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6104.0.copyload.i = load ptr, ptr %.sroa.6104.0..sroa_idx.i, align 8, !noalias !14020 ; 4 uses
  %i.bv = icmp slt i64 %i.af, 0
  br i1 %i.bv, label %bb.p, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.bw = icmp eq i64 %i.af, 0
  br i1 %i.bw, label %bb.t, label %bb.o

bb.o:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !14021
  %i.bx = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, 9) 1) #45, !noalias !14021 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1461) #46
          to label %.noexc.i.i unwind label %bb.q, !noalias !14022

.noexc.i.i:                                       ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.bz = landingpad { ptr, i32 }
          cleanup
  switch i64 %i.ag, label %bb.r [
    i64 0, label %"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17h57e148999d69892fE.exit.i"
    i64 1, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ca = icmp eq i64 %.sroa.5103.0.copyload.i, 0
  br i1 %i.ca, label %"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17h57e148999d69892fE.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha11c7752690666b5E.exit.sink.split.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha11c7752690666b5E.exit.sink.split.i.i.i": ; preds = %bb.s, %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6104.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6104.0.copyload.i, i64 noundef %.sroa.5103.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !14023
  br label %"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17h57e148999d69892fE.exit.i"

bb.s:                                             ; preds = %bb.q
  %i.cb = icmp eq i64 %.sroa.5103.0.copyload.i, 0
  br i1 %i.cb, label %"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17h57e148999d69892fE.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha11c7752690666b5E.exit.sink.split.i.i.i"

"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17h57e148999d69892fE.exit.i": ; preds = %bb.s, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha11c7752690666b5E.exit.sink.split.i.i.i", %bb.r, %bb.q
  resume { ptr, i32 } %i.bz

bb.t:                                             ; preds = %bb.o, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.bx, %bb.o ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %i.ae, i64 %i.af, i1 false), !noalias !14024
  switch i64 %i.ag, label %bb.u [
    i64 0, label %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hfc484ded80a9dc3aE.exit.i"
    i64 1, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.cc = icmp eq i64 %.sroa.5103.0.copyload.i, 0
  br i1 %i.cc, label %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hfc484ded80a9dc3aE.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha11c7752690666b5E.exit.sink.split.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha11c7752690666b5E.exit.sink.split.i.i.i.i": ; preds = %bb.v, %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6104.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6104.0.copyload.i, i64 noundef %.sroa.5103.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !14025
  br label %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hfc484ded80a9dc3aE.exit.i"

bb.v:                                             ; preds = %bb.t
  %i.cd = icmp eq i64 %.sroa.5103.0.copyload.i, 0
  br i1 %i.cd, label %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hfc484ded80a9dc3aE.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha11c7752690666b5E.exit.sink.split.i.i.i.i"

"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hfc484ded80a9dc3aE.exit.i": ; preds = %bb.v, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha11c7752690666b5E.exit.sink.split.i.i.i.i", %bb.u, %bb.t
  %.sroa.9.sroa.8.0.extract.shift2 = and i64 %i.af, 9223372036854775552
  br label %.loopexit

bb.w:                                             ; preds = %bb.f
  %.sroa.716.0.copyload.i = load i8, ptr %.sroa.716.0..sroa_idx.i, align 8, !noalias !14020
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  %.sroa.03.0.i = phi i8 [ %.sroa.716.0.copyload.i, %bb.w ], [ %.val.i84.i, %bb.y ]
  %i.ce = or i8 %.sroa.03.0.i, %.sroa.0.0149.i    ; 2 uses
  br i1 %i.w, label %.loopexit19, label %bb.b

bb.y:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.03.0.ptr10.lcssa.i.i = phi ptr [ @1479, %bb.h ], [ getelementptr inbounds nuw (i8, ptr @1479, i64 24), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @1479, i64 48), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @1479, i64 72), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @1479, i64 96), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @1479, i64 120), %bb.m ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.03.0.ptr10.lcssa.i.i, i64 16
  %.val.i84.i = load i8, ptr %i.cf, align 1, !noalias !14026, !noundef !21
  br label %bb.x

bb.z:                                             ; preds = %bb.g
  %i.cg = icmp slt i64 %i.z, 0
  br i1 %i.cg, label %bb.aa, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !68

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", %bb.z
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !14027
  %i.ch = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %i.z, i64 noundef range(i64 1, 9) 1) #45, !noalias !14027 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.aa, label %_ZN8bitflags6parser10ParseError18invalid_named_flag17h7c5e6e9702284f00E.exit.i

bb.aa:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, %bb.z
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ 0, %bb.z ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 range(i64 1, 0) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1461) #46, !noalias !14028
  unreachable

_ZN8bitflags6parser10ParseError18invalid_named_flag17h7c5e6e9702284f00E.exit.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ch, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.y, i64 range(i64 1, 0) %i.z, i1 false), !noalias !14029
  %.sroa.9.sroa.8.0.extract.shift = and i64 %i.z, -256
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hfc484ded80a9dc3aE.exit.i", %_ZN8bitflags6parser10ParseError18invalid_named_flag17h7c5e6e9702284f00E.exit.i
  %.sroa.9.sroa.8.sroa.0.1.ph = phi i64 [ %.sroa.9.sroa.8.0.extract.shift2, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hfc484ded80a9dc3aE.exit.i" ], [ %.sroa.9.sroa.8.0.extract.shift, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h7c5e6e9702284f00E.exit.i ], [ %i.z, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.9.sroa.0.1.ph = phi i64 [ %i.af, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hfc484ded80a9dc3aE.exit.i" ], [ %i.z, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h7c5e6e9702284f00E.exit.i ], [ %i.z, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.16.1.ph = phi i64 [ %i.af, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hfc484ded80a9dc3aE.exit.i" ], [ %i.z, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h7c5e6e9702284f00E.exit.i ], [ undef, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.14.1.ph = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hfc484ded80a9dc3aE.exit.i" ], [ %i.ch, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h7c5e6e9702284f00E.exit.i ], [ undef, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.0.1.ph = phi i64 [ 2, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hfc484ded80a9dc3aE.exit.i" ], [ 1, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h7c5e6e9702284f00E.exit.i ], [ %i.z, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.9.sroa.0.0.insert.ext = and i64 %.sroa.9.sroa.0.1.ph, 255
  %.sroa.9.sroa.0.0.insert.insert = or disjoint i64 %.sroa.9.sroa.0.0.insert.ext, %.sroa.9.sroa.8.sroa.0.1.ph
  store i64 %.sroa.0.1.ph, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.sroa.0.0.insert.insert, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.14.1.ph, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.16.1.ph, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.ab

.loopexit19:                                      ; preds = %bb.x, %bb.a
  %.sroa.9.sroa.0.1 = phi i8 [ 0, %bb.a ], [ %i.ce, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.9.sroa.0.1, ptr %i.cj, align 8
  store i64 3, ptr %0, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit19, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN94_$LT$actix_http..header..shared..http_date..HttpDate$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h355bfc5e3339cd5dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 17)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i32 } @_ZN8httpdate15parse_http_date17h254b106bb4c5841dE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %i.b = extractvalue { i64, i32 } %i.a, 1        ; 2 uses
  %i.c = icmp eq i32 %i.b, 1000000000
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i32 } %i.a, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.b, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN94_$LT$actix_http..header..shared..quality..QualityOutOfBounds$u20$as$u20$core..fmt..Display$GT$3fmt17h5afbaf80fc96b669E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !21, !noalias !14032, !nonnull !21
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1498, i64 noundef 21), !noalias !14032, !inline_history !6
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN95_$LT$actix_http..h1..decoder..PayloadDecoder$u20$as$u20$tokio_util..codec..decoder..Decoder$GT$6decode17h1328d84ad6d1a7a3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 3 uses
  %i.o = alloca [48 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [48 x i8], align 8                ; 8 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [48 x i8], align 8               ; 8 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [32 x i8], align 8               ; 8 uses
  %i.ag = alloca [8 x i8], align 8                ; 10 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [48 x i8], align 8               ; 8 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [24 x i8], align 8               ; 12 uses
  %i.ao = alloca [48 x i8], align 8               ; 8 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [32 x i8], align 8               ; 8 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [32 x i8], align 8               ; 6 uses
  %i.au = alloca [8 x i8], align 8                ; 3 uses
  %i.av = alloca [48 x i8], align 8               ; 7 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [32 x i8], align 8               ; 10 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [32 x i8], align 8               ; 6 uses
  %i.ba = alloca [8 x i8], align 8                ; 3 uses
  %i.bb = alloca [48 x i8], align 8               ; 7 uses
  %i.bc = alloca [8 x i8], align 8                ; 4 uses
  %i.bd = alloca [32 x i8], align 8               ; 10 uses
  %i.be = alloca [24 x i8], align 8               ; 4 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 4 uses
  %i.bh = alloca [32 x i8], align 8               ; 7 uses
  %i.bi = alloca [48 x i8], align 8               ; 8 uses
  %i.bj = alloca [16 x i8], align 8               ; 5 uses
  %i.bk = alloca [32 x i8], align 8               ; 7 uses
  %i.bl = alloca [24 x i8], align 8               ; 5 uses
  %i.bm = alloca [48 x i8], align 8               ; 8 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [32 x i8], align 8               ; 7 uses
  %i.bp = alloca [32 x i8], align 8               ; 48 uses
  %i.bq = alloca [8 x i8], align 8                ; 4 uses
  %i.br = alloca [16 x i8], align 8               ; 5 uses
  %i.bs = alloca [48 x i8], align 8               ; 8 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [32 x i8], align 8               ; 7 uses
  %i.bv = alloca [24 x i8], align 8               ; 5 uses
  %i.bw = alloca [8 x i8], align 8                ; 4 uses
  %i.bx = alloca [16 x i8], align 8               ; 5 uses
  %i.by = alloca [48 x i8], align 8               ; 8 uses
  %i.bz = alloca [16 x i8], align 8               ; 5 uses
  %i.ca = alloca [32 x i8], align 8               ; 8 uses
  %i.cb = alloca [32 x i8], align 8               ; 7 uses
  %i.cc = alloca [32 x i8], align 8               ; 7 uses
  %i.cd = alloca [32 x i8], align 8               ; 12 uses
  %i.ce = load i8, ptr %1, align 8, !range !22, !noundef !21
  switch i8 %i.ce, label %default.unreachable297 [
    i8 0, label %bb.b
    i8 1, label %bb.an
    i8 2, label %bb.c
  ]

default.unreachable297:                           ; preds = %bb.an, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !21 ; 3 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !21
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.ec, label %bb.ed

bb.d:                                             ; preds = %bb.b
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !21 ; 3 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  %i.co = icmp ugt i64 %i.cg, %i.cm
  br i1 %i.co, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.ec, %_ZN5bytes9bytes_mut8BytesMut6freeze17h3d19f315c4911139E.exit160, %bb.d, %bb.aj, %bb.dy, %bb.f
  ret void

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @_ZN5bytes9bytes_mut8BytesMut8split_to17ha95e0021e6c956acE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.cb, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.cg)
  call void @llvm.experimental.noalias.scope.decl(metadata !14139)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.cp = load ptr, ptr %i.cb, align 8, !alias.scope !14139, !noalias !14140, !nonnull !21, !noundef !21 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !14139, !noalias !14140, !noundef !21 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !14139, !noalias !14140, !noundef !21 ; 2 uses
  %i.cu = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cv = and i64 %i.cu, 1
  %.not.i = icmp eq i64 %i.cv, 0
  br i1 %.not.i, label %bb.o, label %.noexc

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @_ZN5bytes9bytes_mut8BytesMut5split17hdec65ef5b53cc0f1E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !14141)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.cw = load ptr, ptr %i.cc, align 8, !alias.scope !14141, !noalias !14142, !nonnull !21, !noundef !21 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !14141, !noalias !14142, !noundef !21 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !14141, !noalias !14142, !noundef !21 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dc = and i64 %i.db, 1
  %.not.i89 = icmp eq i64 %i.dc, 0
  br i1 %.not.i89, label %bb.t, label %.noexc95

.noexc:                                           ; preds = %bb.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !14139, !noalias !14140, !noundef !21
  %i.df = lshr i64 %i.cu, 5                       ; 5 uses
  call void @_ZN5bytes9bytes_mut11rebuild_vec17h7930fac3c9cb4245E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.be, ptr noundef nonnull %i.cp, i64 noundef %i.cr, i64 noundef %i.de, i64 noundef %i.df)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !14143
  call void @"_ZN92_$LT$bytes..bytes..Bytes$u20$as$u20$core..convert..From$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$4from17h105911369ca93d58E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.be)
  call void @llvm.experimental.noalias.scope.decl(metadata !14144)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !14143
  store i64 %i.df, ptr %i.bc, align 8, !noalias !14145
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !14144, !noalias !14143, !noundef !21 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.df, %i.dh
  br i1 %.not.i.i, label %bb.k, label %bb.m, !prof !30

bb.k:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !14145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !14145
  store i64 %i.dh, ptr %i.ba, align 8, !noalias !14145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !14145
  store ptr %i.bc, ptr %i.az, align 8, !noalias !14145
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !14145
  %i.di = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.ba, ptr %i.di, align 8, !noalias !14145
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE", ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !14145
  store ptr @801, ptr %i.bb, align 8, !noalias !14145
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 2, ptr %i.dj, align 8, !noalias !14145
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr null, ptr %i.dk, align 8, !noalias !14145
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
end_hunk_9
