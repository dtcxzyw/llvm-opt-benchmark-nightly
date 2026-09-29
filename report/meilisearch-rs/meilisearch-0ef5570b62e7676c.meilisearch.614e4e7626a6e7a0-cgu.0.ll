Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN4core4iter6traits8iterator8Iterator7collect17h3a9ee43420228ee4E:bb.a
  br i1 %.not2.i.2.i, label %bb.v, label %.lr.ph.i.3.i

.lr.ph.i.3.i:                                     ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !31128
  invoke fastcc void @"_ZN103_$LT$tracing_subscriber..registry..Scope$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4699ebae871cde17E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %bb.i unwind label %bb.w, !noalias !31119

bb.i:                                             ; preds = %.lr.ph.i.3.i
  %i.aa = load ptr, ptr %i.c, align 8, !noalias !31119, !noundef !45
  %.not2.i.3.i = icmp eq ptr %i.aa, null
  br i1 %.not2.i.3.i, label %bb.v, label %.lr.ph.i.4.i

.lr.ph.i.4.i:                                     ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !31128
  invoke fastcc void @"_ZN103_$LT$tracing_subscriber..registry..Scope$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4699ebae871cde17E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %bb.j unwind label %bb.w, !noalias !31119

bb.j:                                             ; preds = %.lr.ph.i.4.i
  %i.ac = load ptr, ptr %i.c, align 8, !noalias !31119, !noundef !45
  %.not2.i.4.i = icmp eq ptr %i.ac, null
  br i1 %.not2.i.4.i, label %bb.v, label %.lr.ph.i.5.i

.lr.ph.i.5.i:                                     ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !31128
  invoke fastcc void @"_ZN103_$LT$tracing_subscriber..registry..Scope$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4699ebae871cde17E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %bb.k unwind label %bb.w, !noalias !31119

bb.k:                                             ; preds = %.lr.ph.i.5.i
  %i.ae = load ptr, ptr %i.c, align 8, !noalias !31119, !noundef !45
  %.not2.i.5.i = icmp eq ptr %i.ae, null
  br i1 %.not2.i.5.i, label %bb.v, label %.lr.ph.i.6.i

.lr.ph.i.6.i:                                     ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !31128
  invoke fastcc void @"_ZN103_$LT$tracing_subscriber..registry..Scope$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4699ebae871cde17E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %bb.l unwind label %bb.w, !noalias !31119

bb.l:                                             ; preds = %.lr.ph.i.6.i
  %i.ag = load ptr, ptr %i.c, align 8, !noalias !31119, !noundef !45
  %.not2.i.6.i = icmp eq ptr %i.ag, null
  br i1 %.not2.i.6.i, label %bb.v, label %.lr.ph.i.7.i

.lr.ph.i.7.i:                                     ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !31128
  invoke fastcc void @"_ZN103_$LT$tracing_subscriber..registry..Scope$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4699ebae871cde17E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %bb.m unwind label %bb.w, !noalias !31119

bb.m:                                             ; preds = %.lr.ph.i.7.i
  %i.ai = load ptr, ptr %i.c, align 8, !noalias !31119, !noundef !45
  %.not2.i.7.i = icmp eq ptr %i.ai, null
  br i1 %.not2.i.7.i, label %bb.v, label %.lr.ph.i.8.i

.lr.ph.i.8.i:                                     ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !31128
  invoke fastcc void @"_ZN103_$LT$tracing_subscriber..registry..Scope$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4699ebae871cde17E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %bb.n unwind label %bb.w, !noalias !31119

bb.n:                                             ; preds = %.lr.ph.i.8.i
  %i.ak = load ptr, ptr %i.c, align 8, !noalias !31119, !noundef !45
  %.not2.i.8.i = icmp eq ptr %i.ak, null
  br i1 %.not2.i.8.i, label %bb.v, label %.lr.ph.i.9.i

.lr.ph.i.9.i:                                     ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !31128
  invoke fastcc void @"_ZN103_$LT$tracing_subscriber..registry..Scope$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4699ebae871cde17E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %bb.o unwind label %bb.w, !noalias !31119

bb.o:                                             ; preds = %.lr.ph.i.9.i
  %i.am = load ptr, ptr %i.c, align 8, !noalias !31119, !noundef !45
  %.not2.i.9.i = icmp eq ptr %i.am, null
  br i1 %.not2.i.9.i, label %bb.v, label %.lr.ph.i.10.i

.lr.ph.i.10.i:                                    ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !31128
  invoke fastcc void @"_ZN103_$LT$tracing_subscriber..registry..Scope$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4699ebae871cde17E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %bb.p unwind label %bb.w, !noalias !31119

bb.p:                                             ; preds = %.lr.ph.i.10.i
  %i.ao = load ptr, ptr %i.c, align 8, !noalias !31119, !noundef !45
  %.not2.i.10.i = icmp eq ptr %i.ao, null
  br i1 %.not2.i.10.i, label %bb.v, label %.lr.ph.i.11.i

.lr.ph.i.11.i:                                    ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !31128
  invoke fastcc void @"_ZN103_$LT$tracing_subscriber..registry..Scope$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4699ebae871cde17E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %bb.q unwind label %bb.w, !noalias !31119

bb.q:                                             ; preds = %.lr.ph.i.11.i
  %i.aq = load ptr, ptr %i.c, align 8, !noalias !31119, !noundef !45
  %.not2.i.11.i = icmp eq ptr %i.aq, null
  br i1 %.not2.i.11.i, label %bb.v, label %.lr.ph.i.12.i

.lr.ph.i.12.i:                                    ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !31128
  invoke fastcc void @"_ZN103_$LT$tracing_subscriber..registry..Scope$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4699ebae871cde17E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %bb.r unwind label %bb.w, !noalias !31119

bb.r:                                             ; preds = %.lr.ph.i.12.i
  %i.as = load ptr, ptr %i.c, align 8, !noalias !31119, !noundef !45
  %.not2.i.12.i = icmp eq ptr %i.as, null
  br i1 %.not2.i.12.i, label %bb.v, label %.lr.ph.i.13.i

.lr.ph.i.13.i:                                    ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !31128
  invoke fastcc void @"_ZN103_$LT$tracing_subscriber..registry..Scope$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4699ebae871cde17E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %bb.s unwind label %bb.w, !noalias !31119

bb.s:                                             ; preds = %.lr.ph.i.13.i
  %i.au = load ptr, ptr %i.c, align 8, !noalias !31119, !noundef !45
  %.not2.i.13.i = icmp eq ptr %i.au, null
  br i1 %.not2.i.13.i, label %bb.v, label %.lr.ph.i.14.i

.lr.ph.i.14.i:                                    ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !31128
  invoke fastcc void @"_ZN103_$LT$tracing_subscriber..registry..Scope$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4699ebae871cde17E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %bb.t unwind label %bb.w, !noalias !31119

bb.t:                                             ; preds = %.lr.ph.i.14.i
  %i.aw = load ptr, ptr %i.c, align 8, !noalias !31119, !noundef !45
  %.not2.i.14.i = icmp eq ptr %i.aw, null
  br i1 %.not2.i.14.i, label %bb.v, label %.lr.ph.i.15.i

.lr.ph.i.15.i:                                    ; preds = %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !31128
  invoke fastcc void @"_ZN103_$LT$tracing_subscriber..registry..Scope$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4699ebae871cde17E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %bb.u unwind label %bb.w, !noalias !31119

bb.u:                                             ; preds = %.lr.ph.i.15.i
  %i.ay = load ptr, ptr %i.c, align 8, !noalias !31119, !noundef !45
  %.not2.i.15.i = icmp eq ptr %i.ay, null
  br i1 %.not2.i.15.i, label %bb.v, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.u
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !31128
  store i64 16, ptr %i.f, align 8, !alias.scope !31118, !noalias !31128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !31119
  invoke fastcc void @"_ZN103_$LT$tracing_subscriber..registry..Scope$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4699ebae871cde17E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef align 8 dereferenceable(24) %i.b)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !31117

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.7.017.i.lcssa6.i = phi i64 [ 0, %bb.f ], [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.i ], [ 4, %bb.j ], [ 5, %bb.k ], [ 6, %bb.l ], [ 7, %bb.m ], [ 8, %bb.n ], [ 9, %bb.o ], [ 10, %bb.p ], [ 11, %bb.q ], [ 12, %bb.r ], [ 13, %bb.s ], [ 14, %bb.t ], [ 15, %bb.u ]
  store i64 %.sroa.7.017.i.lcssa6.i, ptr %i.f, align 8, !alias.scope !31118, !noalias !31128
  br label %"_ZN139_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$9from_iter17hf1721fb849122783E.exit"

bb.w:                                             ; preds = %.lr.ph.i.15.i, %.lr.ph.i.14.i, %.lr.ph.i.13.i, %.lr.ph.i.12.i, %.lr.ph.i.11.i, %.lr.ph.i.10.i, %.lr.ph.i.9.i, %.lr.ph.i.8.i, %.lr.ph.i.7.i, %.lr.ph.i.6.i, %.lr.ph.i.5.i, %.lr.ph.i.4.i, %.lr.ph.i.3.i, %.lr.ph.i.2.i, %.lr.ph.i.1.i, %bb.a
  %.sroa.7.017.i.lcssa.i = phi i64 [ 0, %bb.a ], [ 1, %.lr.ph.i.1.i ], [ 2, %.lr.ph.i.2.i ], [ 3, %.lr.ph.i.3.i ], [ 4, %.lr.ph.i.4.i ], [ 5, %.lr.ph.i.5.i ], [ 6, %.lr.ph.i.6.i ], [ 7, %.lr.ph.i.7.i ], [ 8, %.lr.ph.i.8.i ], [ 9, %.lr.ph.i.9.i ], [ 10, %.lr.ph.i.10.i ], [ 11, %.lr.ph.i.11.i ], [ 12, %.lr.ph.i.12.i ], [ 13, %.lr.ph.i.13.i ], [ 14, %.lr.ph.i.14.i ], [ 15, %.lr.ph.i.15.i ]
  %i.ba = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.017.i.lcssa.i, ptr %i.f, align 8, !alias.scope !31118, !noalias !31128
  br label %.body.i

.loopexit.i:                                      ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$4push17haf6dbc00bd146cb4E.exit.i.i"
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %._crit_edge.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.w, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.b ], [ %i.ba, %bb.w ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @"_ZN4core3ptr656drop_in_place$LT$smallvec..SmallVec$LT$$u5b$tracing_subscriber..registry..SpanRef$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u3b$$u20$16$u5d$$GT$$GT$17h1071a4567b0463d8E"(ptr noalias noundef align 8 dereferenceable(648) %i.e) #44
          to label %bb.y unwind label %bb.x, !noalias !31117

bb.x:                                             ; preds = %.body.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !31117
  unreachable

bb.y:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN139_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$9from_iter17hf1721fb849122783E.exit": ; preds = %._crit_edge21.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !31119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(648) %i.e, i64 648, i1 false), !noalias !31129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !31117
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h06e5b8fa3ba3b0fcE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1056, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h28ba3578b33c102fE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1056, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h2cf73a70063c66d7E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1056, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h84d7e70e621e54ebE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1056, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17haa6e6d2b686b7c46E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1056, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hc9d445f1f052d69bE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1056, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17he4f09d22a00b02d1E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1056, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h002fb142e25895b5E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h149a02d7f37191b9E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !31132, !noundef !45 ; 2 uses
  %i.b = icmp eq ptr %i.a, null                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !31132, !nonnull !45, !align !48
  %.sroa.3.0.i = select i1 %i.b, ptr @1494, ptr %i.d
  %.sroa.0.0.i = select i1 %i.b, ptr %i.c, ptr %i.a
  %i.e = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h307445c50ebb4f2cE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h33ae0599befad820E(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !45, !nonnull !45
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !31133
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h9728332d7b5d3dbeE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #18 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31136)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !31136, !nonnull !45, !align !48, !noundef !45 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noalias !31136, !align !55, !noundef !45 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %"_ZN63_$LT$actix_http..error..Error$u20$as$u20$core..error..Error$GT$6source17hf43e25dcac05d585E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noalias !31136, !nonnull !45, !align !48, !noundef !45
  br label %"_ZN63_$LT$actix_http..error..Error$u20$as$u20$core..error..Error$GT$6source17hf43e25dcac05d585E.exit"

"_ZN63_$LT$actix_http..error..Error$u20$as$u20$core..error..Error$GT$6source17hf43e25dcac05d585E.exit": ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi ptr [ %i.d, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17hc92b12c72789665cE(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !45, !nonnull !45
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !31137
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17h96144459ef14cf01E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17hcd496269e963e487E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h3062d6f8b60ae275E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h4b02aa9b4b6fc8dfE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h52b4819005b4a159E(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hcd8a2b1fc2be3224E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hdb307d7d57d521d6E(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17he18a24396955b0adE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17he23d75f88cbc622dE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h00c2b9275c31940dE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1057, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h1a9a382dbb2ccc76E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1058, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h32104965415ffdd6E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1059, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h378a7cd55389a5d8E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1060, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h4dd050f2aae7b43fE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1061, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h7de1fa6565a258e4E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1062, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17hcba5f1378b9b7a75E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1063, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0b8afe633e839f21E(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %.idx = mul nuw nsw i64 %1, 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.02 = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde7ecda131bc8dd8E.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde7ecda131bc8dd8E.exit
  %.sroa.0.05 = phi ptr [ %.sroa.0.0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde7ecda131bc8dd8E.exit ], [ %.sroa.0.02, %.lr.ph.preheader ] ; 5 uses
  %.pn4 = phi ptr [ %.sroa.0.05, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde7ecda131bc8dd8E.exit ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %i.c = call noundef i8 @"_ZN10prometheus7metrics80_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$prometheus..proto..LabelPair$GT$11partial_cmp17h9a801f9343a63511E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.05, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.pn4)
  %i.d = icmp slt i8 %i.c, 0
  br i1 %i.d, label %bb.a, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde7ecda131bc8dd8E.exit

bb.a:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.05, i64 48, i1 false)
end_hunk_0
begin_hunk_1_@_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h8d6ec10e9474062aE:bb.a
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1 ; 2 uses
  %.val1.i.i.i.i.i.i.i204.1 = load i8, ptr %i.jt, align 1, !alias.scope !36023, !noalias !36024, !noundef !45 ; 2 uses
  %i.ju = icmp ugt i8 %i.jr, %.val1.i.i.i.i.i.i.i204.1
  %.sroa.0.0.i.i.i.i205.1 = select i1 %i.ju, ptr %.sroa.0.0.i.i.i.i205, ptr %i.jt
  %i.jv = tail call i8 @llvm.umax.i8(i8 %i.jr, i8 %.val1.i.i.i.i.i.i.i204.1) ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.sroa.09.0.i.i202
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 2 ; 2 uses
  %.val1.i.i.i.i.i.i.i204.2 = load i8, ptr %i.jx, align 1, !alias.scope !36025, !noalias !36026, !noundef !45 ; 2 uses
  %i.jy = icmp ugt i8 %i.jv, %.val1.i.i.i.i.i.i.i204.2
  %.sroa.0.0.i.i.i.i205.2 = select i1 %i.jy, ptr %.sroa.0.0.i.i.i.i205.1, ptr %i.jx
  %i.jz = tail call i8 @llvm.umax.i8(i8 %i.jv, i8 %.val1.i.i.i.i.i.i.i204.2) ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.sroa.09.0.i.i202
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 3 ; 2 uses
  %.val1.i.i.i.i.i.i.i204.3 = load i8, ptr %i.kb, align 1, !alias.scope !36027, !noalias !36028, !noundef !45 ; 2 uses
  %i.kc = icmp ugt i8 %i.jz, %.val1.i.i.i.i.i.i.i204.3
  %.sroa.0.0.i.i.i.i205.3 = select i1 %i.kc, ptr %.sroa.0.0.i.i.i.i205.2, ptr %i.kb ; 3 uses
  %i.kd = add nuw i64 %.sroa.09.0.i.i202, 4       ; 2 uses
  %i.ke = tail call i8 @llvm.umax.i8(i8 %i.jz, i8 %.val1.i.i.i.i.i.i.i204.3) ; 2 uses
  %niter1146.next.3 = add i64 %niter1146, 4       ; 2 uses
  %niter1146.ncmp.3 = icmp eq i64 %niter1146.next.3, %unroll_iter1145
  br i1 %niter1146.ncmp.3, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207.loopexit.unr-lcssa, label %bb.j

_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod1142.not = icmp eq i64 %xtraiter1140, 0
  br i1 %lcmp.mod1142.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207, label %.epil.preheader1139

.epil.preheader1139:                              ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207.loopexit.unr-lcssa, %bb.i
  %.val.i.i.i.i.i.i.i201.epil.init = phi i8 [ %.val.i.i.i.i.i.pre.i.i200, %bb.i ], [ %i.ke, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207.loopexit.unr-lcssa ]
  %.sroa.09.0.i.i202.epil.init = phi i64 [ 0, %bb.i ], [ %i.kd, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207.loopexit.unr-lcssa ]
  %.sroa.07.0.i.i203.epil.init = phi ptr [ %i.jg, %bb.i ], [ %.sroa.0.0.i.i.i.i205.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207.loopexit.unr-lcssa ]
  %lcmp.mod1144 = icmp ne i64 %xtraiter1140, 0
  tail call void @llvm.assume(i1 %lcmp.mod1144)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader1139
  %.val.i.i.i.i.i.i.i201.epil = phi i8 [ %.val.i.i.i.i.i.i.i201.epil.init, %.epil.preheader1139 ], [ %i.ki, %bb.k ] ; 2 uses
  %.sroa.09.0.i.i202.epil = phi i64 [ %.sroa.09.0.i.i202.epil.init, %.epil.preheader1139 ], [ %i.kh, %bb.k ] ; 2 uses
  %.sroa.07.0.i.i203.epil = phi ptr [ %.sroa.07.0.i.i203.epil.init, %.epil.preheader1139 ], [ %.sroa.0.0.i.i.i.i205.epil, %bb.k ]
  %epil.iter1141 = phi i64 [ 0, %.epil.preheader1139 ], [ %epil.iter1141.next, %bb.k ]
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.sroa.09.0.i.i202.epil ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36022)
  %.val1.i.i.i.i.i.i.i204.epil = load i8, ptr %i.kf, align 1, !alias.scope !36018, !noalias !36017, !noundef !45 ; 2 uses
  %i.kg = icmp ugt i8 %.val.i.i.i.i.i.i.i201.epil, %.val1.i.i.i.i.i.i.i204.epil
  %.sroa.0.0.i.i.i.i205.epil = select i1 %i.kg, ptr %.sroa.07.0.i.i203.epil, ptr %i.kf ; 2 uses
  %i.kh = add nuw i64 %.sroa.09.0.i.i202.epil, 1
  %i.ki = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i.i201.epil, i8 %.val1.i.i.i.i.i.i.i204.epil)
  %epil.iter1141.next = add i64 %epil.iter1141, 1 ; 2 uses
  %epil.iter1141.cmp.not = icmp eq i64 %epil.iter1141.next, %xtraiter1140
  br i1 %epil.iter1141.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207, label %bb.k, !llvm.loop !35571

_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207: ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207.loopexit.unr-lcssa, %bb.k, %bb.g, %bb.h
  %.sroa.0.0.i206 = phi ptr [ null, %bb.g ], [ %i.jg, %bb.h ], [ %.sroa.0.0.i.i.i.i205.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i205.epil, %bb.k ] ; 2 uses
  %.not164 = icmp eq ptr %.sroa.0.0.i206, null
  %.178 = select i1 %.not164, ptr @706, ptr %.sroa.0.0.i206
  %i.kj = load i8, ptr %.178, align 1, !noundef !45 ; 5 uses
  %i.kk = zext i8 %i.kj to i32
  %i.kl = add nuw nsw i32 %i.kk, 1                ; 2 uses
  store i32 %i.kl, ptr %i.hr, align 4
  %i.km = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 8, !noundef !45
  %i.ko = icmp eq i32 %i.kl, %i.kn
  br i1 %i.ko, label %bb.m, label %bb.l, !prof !58

bb.l:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hq)
  store ptr null, ptr %i.hq, align 8
  call void @_ZN4core9panicking13assert_failed17hc1cbb4b42d1dde38E(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.hr, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.km, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.hq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1582) #43
  unreachable

bb.m:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207
  %i.kp = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.kq = load ptr, ptr %i.kp, align 8, !nonnull !45, !align !55, !noundef !45 ; 9 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.ks = load i64, ptr %i.kr, align 8, !noundef !45 ; 8 uses
  %i.kt = icmp samesign eq i64 %i.ks, 0
  br i1 %i.kt, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 1 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36029)
  %i.kv = icmp samesign eq i64 %i.ks, 1
  br i1 %i.kv, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val.i.i.i.i.i.pre.i.i208 = load i8, ptr %i.kq, align 1, !alias.scope !36030, !noalias !36031 ; 2 uses
  %i.kw = add i64 %i.ks, -2
  %i.kx = add i64 %i.ks, -1                       ; 2 uses
  %xtraiter1149 = and i64 %i.kx, 3                ; 3 uses
  %i.ky = icmp ult i64 %i.kw, 3
  br i1 %i.ky, label %.epil.preheader1148, label %.new1147

.new1147:                                         ; preds = %bb.o
  %unroll_iter1154 = and i64 %i.kx, -4
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.new1147
  %.val.i.i.i.i.i.i.i209 = phi i8 [ %.val.i.i.i.i.i.pre.i.i208, %.new1147 ], [ %i.lo, %bb.p ] ; 2 uses
  %.sroa.09.0.i.i210 = phi i64 [ 0, %.new1147 ], [ %i.ln, %bb.p ] ; 5 uses
  %.sroa.07.0.i.i211 = phi ptr [ %i.kq, %.new1147 ], [ %.sroa.0.0.i.i.i.i213.3, %bb.p ]
  %niter1155 = phi i64 [ 0, %.new1147 ], [ %niter1155.next.3, %bb.p ]
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sroa.09.0.i.i210 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36035)
  %.val1.i.i.i.i.i.i.i212 = load i8, ptr %i.kz, align 1, !alias.scope !36031, !noalias !36030, !noundef !45 ; 2 uses
  %i.la = icmp ugt i8 %.val.i.i.i.i.i.i.i209, %.val1.i.i.i.i.i.i.i212
  %.sroa.0.0.i.i.i.i213 = select i1 %i.la, ptr %.sroa.07.0.i.i211, ptr %i.kz
  %i.lb = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i.i209, i8 %.val1.i.i.i.i.i.i.i212) ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sroa.09.0.i.i210
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 1 ; 2 uses
  %.val1.i.i.i.i.i.i.i212.1 = load i8, ptr %i.ld, align 1, !alias.scope !36036, !noalias !36037, !noundef !45 ; 2 uses
  %i.le = icmp ugt i8 %i.lb, %.val1.i.i.i.i.i.i.i212.1
  %.sroa.0.0.i.i.i.i213.1 = select i1 %i.le, ptr %.sroa.0.0.i.i.i.i213, ptr %i.ld
  %i.lf = tail call i8 @llvm.umax.i8(i8 %i.lb, i8 %.val1.i.i.i.i.i.i.i212.1) ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sroa.09.0.i.i210
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 2 ; 2 uses
  %.val1.i.i.i.i.i.i.i212.2 = load i8, ptr %i.lh, align 1, !alias.scope !36038, !noalias !36039, !noundef !45 ; 2 uses
  %i.li = icmp ugt i8 %i.lf, %.val1.i.i.i.i.i.i.i212.2
  %.sroa.0.0.i.i.i.i213.2 = select i1 %i.li, ptr %.sroa.0.0.i.i.i.i213.1, ptr %i.lh
  %i.lj = tail call i8 @llvm.umax.i8(i8 %i.lf, i8 %.val1.i.i.i.i.i.i.i212.2) ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sroa.09.0.i.i210
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 3 ; 2 uses
  %.val1.i.i.i.i.i.i.i212.3 = load i8, ptr %i.ll, align 1, !alias.scope !36040, !noalias !36041, !noundef !45 ; 2 uses
  %i.lm = icmp ugt i8 %i.lj, %.val1.i.i.i.i.i.i.i212.3
  %.sroa.0.0.i.i.i.i213.3 = select i1 %i.lm, ptr %.sroa.0.0.i.i.i.i213.2, ptr %i.ll ; 3 uses
  %i.ln = add nuw i64 %.sroa.09.0.i.i210, 4       ; 2 uses
  %i.lo = tail call i8 @llvm.umax.i8(i8 %i.lj, i8 %.val1.i.i.i.i.i.i.i212.3) ; 2 uses
  %niter1155.next.3 = add i64 %niter1155, 4       ; 2 uses
  %niter1155.ncmp.3 = icmp eq i64 %niter1155.next.3, %unroll_iter1154
  br i1 %niter1155.ncmp.3, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215.loopexit.unr-lcssa, label %bb.p

_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215.loopexit.unr-lcssa: ; preds = %bb.p
  %lcmp.mod1151.not = icmp eq i64 %xtraiter1149, 0
  br i1 %lcmp.mod1151.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215, label %.epil.preheader1148

.epil.preheader1148:                              ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215.loopexit.unr-lcssa, %bb.o
  %.val.i.i.i.i.i.i.i209.epil.init = phi i8 [ %.val.i.i.i.i.i.pre.i.i208, %bb.o ], [ %i.lo, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215.loopexit.unr-lcssa ]
  %.sroa.09.0.i.i210.epil.init = phi i64 [ 0, %bb.o ], [ %i.ln, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215.loopexit.unr-lcssa ]
  %.sroa.07.0.i.i211.epil.init = phi ptr [ %i.kq, %bb.o ], [ %.sroa.0.0.i.i.i.i213.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215.loopexit.unr-lcssa ]
  %lcmp.mod1153 = icmp ne i64 %xtraiter1149, 0
  tail call void @llvm.assume(i1 %lcmp.mod1153)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader1148
  %.val.i.i.i.i.i.i.i209.epil = phi i8 [ %.val.i.i.i.i.i.i.i209.epil.init, %.epil.preheader1148 ], [ %i.ls, %bb.q ] ; 2 uses
  %.sroa.09.0.i.i210.epil = phi i64 [ %.sroa.09.0.i.i210.epil.init, %.epil.preheader1148 ], [ %i.lr, %bb.q ] ; 2 uses
  %.sroa.07.0.i.i211.epil = phi ptr [ %.sroa.07.0.i.i211.epil.init, %.epil.preheader1148 ], [ %.sroa.0.0.i.i.i.i213.epil, %bb.q ]
  %epil.iter1150 = phi i64 [ 0, %.epil.preheader1148 ], [ %epil.iter1150.next, %bb.q ]
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sroa.09.0.i.i210.epil ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36035)
  %.val1.i.i.i.i.i.i.i212.epil = load i8, ptr %i.lp, align 1, !alias.scope !36031, !noalias !36030, !noundef !45 ; 2 uses
  %i.lq = icmp ugt i8 %.val.i.i.i.i.i.i.i209.epil, %.val1.i.i.i.i.i.i.i212.epil
  %.sroa.0.0.i.i.i.i213.epil = select i1 %i.lq, ptr %.sroa.07.0.i.i211.epil, ptr %i.lp ; 2 uses
  %i.lr = add nuw i64 %.sroa.09.0.i.i210.epil, 1
  %i.ls = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i.i209.epil, i8 %.val1.i.i.i.i.i.i.i212.epil)
  %epil.iter1150.next = add i64 %epil.iter1150, 1 ; 2 uses
  %epil.iter1150.cmp.not = icmp eq i64 %epil.iter1150.next, %xtraiter1149
  br i1 %epil.iter1150.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215, label %bb.q, !llvm.loop !35592

_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215: ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215.loopexit.unr-lcssa, %bb.q, %bb.m, %bb.n
  %.sroa.0.0.i214 = phi ptr [ null, %bb.m ], [ %i.kq, %bb.n ], [ %.sroa.0.0.i.i.i.i213.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i213.epil, %bb.q ] ; 2 uses
  %.not165 = icmp eq ptr %.sroa.0.0.i214, null
  %.179 = select i1 %.not165, ptr @706, ptr %.sroa.0.0.i214
  %i.lt = load i8, ptr %.179, align 1, !noundef !45 ; 5 uses
  %i.lu = zext i8 %i.lt to i32
  %i.lv = add nuw nsw i32 %i.lu, 1                ; 2 uses
  store i32 %i.lv, ptr %i.hp, align 4
  %i.lw = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 8, !noundef !45
  %i.ly = icmp eq i32 %i.lv, %i.lx
  br i1 %i.ly, label %bb.s, label %bb.r, !prof !58

bb.r:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ho)
  store ptr null, ptr %i.ho, align 8
  call void @_ZN4core9panicking13assert_failed17hc1cbb4b42d1dde38E(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.hp, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.lw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ho, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1583) #43
  unreachable

bb.s:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215
  %i.lz = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ma = load i64, ptr %i.lz, align 8, !noundef !45 ; 4 uses
  %i.mb = icmp ult i64 %i.ma, 16385               ; 2 uses
  br i1 %i.mb, label %bb.t, label %.loopexit353

.loopexit353:                                     ; preds = %.lr.ph.preheader, %middle.block, %bb.t, %bb.s
  %i.mc = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.md = load i64, ptr %i.mc, align 8, !noundef !45 ; 4 uses
  %i.me = icmp ult i64 %i.md, 16385
  br i1 %i.me, label %bb.u, label %.loopexit352

bb.t:                                             ; preds = %bb.s
  %i.mf = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.mg = load ptr, ptr %i.mf, align 8, !nonnull !45, !align !70, !noundef !45 ; 6 uses
  %.idx = shl nuw nsw i64 %i.ma, 2                ; 2 uses
  %i.mh = getelementptr i8, ptr %i.mg, i64 %.idx  ; 2 uses
  %i.mi = icmp eq i64 %i.ma, 0
  br i1 %i.mi, label %.loopexit353, label %.lr.ph.preheader.preheader

.lr.ph.preheader.preheader:                       ; preds = %bb.t
  %i.mj = add nsw i64 %.idx, -4                   ; 3 uses
  %i.mk = lshr exact i64 %i.mj, 2
  %i.ml = add nuw nsw i64 %i.mk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.mj, 60
  br i1 %min.iters.check, label %.lr.ph.preheader.preheader1135, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.preheader
  %i.mm = lshr exact i64 %i.mj, 2
  %i.mn = getelementptr i8, ptr %i.hv, i64 %i.mm
  %scevgep986 = getelementptr i8, ptr %i.mn, i64 1
  %bound0 = icmp ult ptr %i.hv, %i.mh
  %bound1 = icmp ult ptr %i.mg, %scevgep986
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader.preheader1135, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ml, 9223372036854775800     ; 4 uses
  %i.mo = shl i64 %n.vec, 2
  %i.mp = getelementptr i8, ptr %i.mg, i64 %i.mo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.mg, i64 %i.mq ; 2 uses
  %i.mr = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !36042
  %wide.load987 = load <4 x i32>, ptr %i.mr, align 4, !alias.scope !36042
  %i.ms = getelementptr inbounds nuw i8, ptr %i.hv, i64 %index ; 2 uses
  %i.mt = trunc <4 x i32> %wide.load to <4 x i8>
  %i.mu = trunc <4 x i32> %wide.load987 to <4 x i8>
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  store <4 x i8> %i.mt, ptr %i.ms, align 1, !alias.scope !36043, !noalias !36042
  store <4 x i8> %i.mu, ptr %i.mv, align 1, !alias.scope !36043, !noalias !36042
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mw = icmp eq i64 %index.next, %n.vec
  br i1 %i.mw, label %middle.block, label %vector.body, !llvm.loop !35596

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ml, %n.vec
  br i1 %cmp.n, label %.loopexit353, label %.lr.ph.preheader.preheader1135

.lr.ph.preheader.preheader1135:                   ; preds = %vector.memcheck, %.lr.ph.preheader.preheader, %middle.block
  %.sroa.0.0455.ph = phi ptr [ %i.mg, %vector.memcheck ], [ %i.mg, %.lr.ph.preheader.preheader ], [ %i.mp, %middle.block ]
  %.sroa.7.0454.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.preheader

.loopexit352:                                     ; preds = %.lr.ph458.preheader, %middle.block1005, %bb.u, %.loopexit353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hn)
  br i1 %i.mb, label %bb.w, label %bb.v, !prof !58

bb.u:                                             ; preds = %.loopexit353
  %i.mx = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.my = load ptr, ptr %i.mx, align 8, !nonnull !45, !align !70, !noundef !45 ; 6 uses
  %.idx460 = shl nuw nsw i64 %i.md, 2             ; 2 uses
  %i.mz = getelementptr i8, ptr %i.my, i64 %.idx460 ; 2 uses
  %i.na = icmp eq i64 %i.md, 0
  br i1 %i.na, label %.loopexit352, label %.lr.ph458.preheader.preheader

.lr.ph458.preheader.preheader:                    ; preds = %bb.u
  %i.nb = add nsw i64 %.idx460, -4                ; 3 uses
  %i.nc = lshr exact i64 %i.nb, 2
  %i.nd = add nuw nsw i64 %i.nc, 1                ; 2 uses
  %min.iters.check996 = icmp ult i64 %i.nb, 60
  br i1 %min.iters.check996, label %.lr.ph458.preheader.preheader1134, label %vector.memcheck989

vector.memcheck989:                               ; preds = %.lr.ph458.preheader.preheader
  %scevgep990 = getelementptr inbounds nuw i8, ptr %i.hu, i64 8208
  %i.ne = lshr exact i64 %i.nb, 2
  %i.nf = getelementptr i8, ptr %i.hu, i64 %i.ne
  %scevgep991 = getelementptr i8, ptr %i.nf, i64 8209
  %bound0992 = icmp ult ptr %scevgep990, %i.mz
  %bound1993 = icmp ult ptr %i.my, %scevgep991
  %found.conflict994 = and i1 %bound0992, %bound1993
  br i1 %found.conflict994, label %.lr.ph458.preheader.preheader1134, label %vector.ph997

vector.ph997:                                     ; preds = %vector.memcheck989
  %n.vec998 = and i64 %i.nd, 9223372036854775800  ; 4 uses
  %i.ng = shl i64 %n.vec998, 2
  %i.nh = getelementptr i8, ptr %i.my, i64 %i.ng
  br label %vector.body999

vector.body999:                                   ; preds = %vector.body999, %vector.ph997
  %index1000 = phi i64 [ 0, %vector.ph997 ], [ %index.next1004, %vector.body999 ] ; 3 uses
  %i.ni = shl i64 %index1000, 2
  %next.gep1001 = getelementptr i8, ptr %i.my, i64 %i.ni ; 2 uses
  %i.nj = getelementptr i8, ptr %next.gep1001, i64 16
  %wide.load1002 = load <4 x i32>, ptr %next.gep1001, align 4, !alias.scope !36044
  %wide.load1003 = load <4 x i32>, ptr %i.nj, align 4, !alias.scope !36044
  %i.nk = getelementptr inbounds nuw i8, ptr %i.hu, i64 %index1000 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8208
  %i.nm = trunc <4 x i32> %wide.load1002 to <4 x i8>
  %i.nn = trunc <4 x i32> %wide.load1003 to <4 x i8>
  %i.no = getelementptr inbounds nuw i8, ptr %i.nk, i64 8212
  store <4 x i8> %i.nm, ptr %i.nl, align 1, !alias.scope !36045, !noalias !36044
  store <4 x i8> %i.nn, ptr %i.no, align 1, !alias.scope !36045, !noalias !36044
  %index.next1004 = add nuw i64 %index1000, 8     ; 2 uses
  %i.np = icmp eq i64 %index.next1004, %n.vec998
  br i1 %i.np, label %middle.block1005, label %vector.body999, !llvm.loop !35600

middle.block1005:                                 ; preds = %vector.body999
  %cmp.n1006 = icmp eq i64 %i.nd, %n.vec998
  br i1 %cmp.n1006, label %.loopexit352, label %.lr.ph458.preheader.preheader1134

.lr.ph458.preheader.preheader1134:                ; preds = %vector.memcheck989, %.lr.ph458.preheader.preheader, %middle.block1005
  %.sroa.01.0457.ph = phi ptr [ %i.my, %vector.memcheck989 ], [ %i.my, %.lr.ph458.preheader.preheader ], [ %i.nh, %middle.block1005 ]
  %.sroa.73.0456.ph = phi i64 [ 0, %vector.memcheck989 ], [ 0, %.lr.ph458.preheader.preheader ], [ %n.vec998, %middle.block1005 ]
  br label %.lr.ph458.preheader

bb.v:                                             ; preds = %.loopexit352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd)
  store ptr @186, ptr %i.hd, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store i64 1, ptr %i.nq, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  store ptr null, ptr %i.nr, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ns, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  store i64 0, ptr %i.nt, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.hd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1584) #43
  unreachable

bb.w:                                             ; preds = %.loopexit352
  %i.nu = add i64 %i.md, 8208                     ; 5 uses
  %i.nv = icmp ult i64 %i.nu, 24593
  br i1 %i.nv, label %bb.y, label %bb.x, !prof !58

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc)
  store ptr @186, ptr %i.hc, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store i64 1, ptr %i.nw, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  store ptr null, ptr %i.nx, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ny, align 8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  store i64 0, ptr %i.nz, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.hc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1585) #43
  unreachable

bb.y:                                             ; preds = %bb.w
  store ptr %i.hv, ptr %i.hn, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store i64 %i.ma, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.hn, i64 24 ; 5 uses
  store ptr %i.hu, ptr %i.oa, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 32 ; 5 uses
  store i64 %i.nu, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  store i64 0, ptr %.sroa.529.0..sroa_idx, align 8
  %i.ob = icmp samesign ugt i64 %i.nu, 8195
  br i1 %i.ob, label %.preheader.preheader, label %bb.z, !prof !58

.preheader.preheader:                             ; preds = %bb.y
  %scevgep = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %scevgep, i8 4, i64 8192, i1 false)
  %i.oc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.od = load i64, ptr %i.oc, align 8            ; 5 uses
  %i.oe = trunc i64 %i.od to i16
  %i.of = lshr i64 %i.od, 16
  %i.og = trunc i64 %i.of to i16
  %i.oh = lshr i64 %i.od, 32
  %i.oi = trunc i64 %i.oh to i16
  %i.oj = lshr i64 %i.od, 48
  call fastcc void @"_ZN6brotli3enc9interface41PredictionModeContextMap$LT$SliceType$GT$24set_stride_context_speed17hb8a44357f8733648E"(ptr nonnull %i.hu, i64 %i.nu, i64 %i.od)
  %i.ok = load i64, ptr %10, align 8              ; 6 uses
  %i.ol = trunc i64 %i.ok to i16                  ; 2 uses
  %i.om = lshr i64 %i.ok, 16
  %i.on = trunc i64 %i.om to i16                  ; 2 uses
  %i.oo = lshr i64 %i.ok, 32
  %i.op = trunc i64 %i.oo to i16                  ; 2 uses
  %i.oq = lshr i64 %i.ok, 48
  %i.or = trunc nuw i64 %i.oq to i16              ; 2 uses
  %.val192 = load ptr, ptr %i.oa, align 8, !nonnull !45, !align !55, !noundef !45
  %.val193 = load i64, ptr %.sroa.428.0..sroa_idx, align 8, !noundef !45
  call fastcc void @"_ZN6brotli3enc9interface41PredictionModeContextMap$LT$SliceType$GT$21set_context_map_speed17hbcf910d8f775e717E"(ptr nonnull %.val192, i64 %.val193, i64 %i.ok)
  %.val196 = load ptr, ptr %i.oa, align 8, !nonnull !45, !align !55, !noundef !45
  %.val197 = load i64, ptr %.sroa.428.0..sroa_idx, align 8, !noundef !45
  call fastcc void @"_ZN6brotli3enc9interface41PredictionModeContextMap$LT$SliceType$GT$33set_combined_stride_context_speed17hb6f1842ffd71a563E"(ptr nonnull %.val196, i64 %.val197, i64 %i.ok)
  %.not170 = icmp eq i8 %11, 4                    ; 9 uses
  %.val199 = load i64, ptr %.sroa.428.0..sroa_idx, align 8, !noundef !45
  %.not.i = icmp eq i64 %.val199, 0
  br i1 %.not.i, label %bb.aa, label %"_ZN6brotli3enc9interface41PredictionModeContextMap$LT$SliceType$GT$27set_literal_prediction_mode17h22d1cea2c74d1d59E.exit"

bb.z:                                             ; preds = %bb.y
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 4, i64 noundef 8196, i64 noundef %i.nu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1586) #43
  unreachable

bb.aa:                                            ; preds = %.preheader.preheader
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1957) #43
  unreachable

"_ZN6brotli3enc9interface41PredictionModeContextMap$LT$SliceType$GT$27set_literal_prediction_mode17h22d1cea2c74d1d59E.exit": ; preds = %.preheader.preheader
  %.val198 = load ptr, ptr %i.oa, align 8, !nonnull !45, !align !55, !noundef !45
  %.180 = select i1 %.not170, i8 0, i8 %11
  store i8 %.180, ptr %.val198, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hm)
  %i.os = getelementptr inbounds nuw i8, ptr %10, i64 92
  %i.ot = load i8, ptr %i.os, align 4, !noundef !45 ; 3 uses
  %.off = add i8 %i.ot, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.ab, label %bb.bs

bb.ab:                                            ; preds = %"_ZN6brotli3enc9interface41PredictionModeContextMap$LT$SliceType$GT$27set_literal_prediction_mode17h22d1cea2c74d1d59E.exit"
  call fastcc void @"_ZN6brotli3enc11find_stride28EntropyTally$LT$AllocU32$GT$3new17hc714c4f7fb79bc4eE"(ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.hf, i1 noundef zeroext false)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !36046
  %i.ou = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) 262144, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !36046 ; 3 uses
  %i.ov = icmp eq ptr %i.ou, null
  br i1 %i.ov, label %bb.ac, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i"

.thread263:                                       ; preds = %.noexc266, %.noexc265, %.noexc267, %bb.br, %.noexc221, %.noexc222, %.noexc223, %.noexc224, %.noexc225, %.noexc226, %.noexc227, %.noexc228, %.noexc229, %.noexc230, %.noexc231, %.noexc232, %.noexc233, %.noexc234, %.noexc235, %.noexc236, %.noexc237, %.noexc238, %.noexc239, %.noexc240, %.noexc241, %.noexc242, %.noexc243, %.noexc244, %.noexc245, %.noexc246, %.noexc247, %.noexc248, %.noexc249, %.noexc250, %.noexc251, %.noexc252, %.noexc253, %.noexc254, %.noexc255, %.noexc256, %.noexc257, %.noexc258, %.noexc259, %.noexc260, %.noexc261, %.noexc262, %.noexc263, %.noexc264
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 262144, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc220 unwind label %.thread255.thread294

.thread255.thread294:                             ; preds = %bb.ac
  %lpad.thr_comm.split-lp296 = landingpad { ptr, i32 }
          cleanup
  br label %.thread255.thread

.noexc220:                                        ; preds = %bb.ac
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i": ; preds = %bb.ab
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !36047
  %i.ow = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) 262144, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !36047 ; 3 uses
  %i.ox = icmp eq ptr %i.ow, null
  br i1 %i.ox, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 262144, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc.i unwind label %bb.ae, !noalias !36048

.noexc.i:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %.thread259

bb.af:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !36049
  %i.oz = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) 262144, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !36049 ; 3 uses
  %i.pa = icmp eq ptr %i.oz, null
  br i1 %i.pa, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 262144, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc44.i unwind label %bb.ah, !noalias !36048

.noexc44.i:                                       ; preds = %bb.ag
  unreachable

"_ZN4core3ptr116drop_in_place$LT$brotli..enc..find_stride..EntropyBucketPopulation$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17h5dc176c94e5a0eabE.exit47.i": ; preds = %"_ZN4core3ptr116drop_in_place$LT$brotli..enc..find_stride..EntropyBucketPopulation$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17h5dc176c94e5a0eabE.exit51.i", %bb.ah
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %"_ZN4core3ptr116drop_in_place$LT$brotli..enc..find_stride..EntropyBucketPopulation$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17h5dc176c94e5a0eabE.exit51.i" ], [ %i.pb, %bb.ah ]
  call void @mi_free(ptr noundef nonnull %i.ow) #38, !noalias !36048
  br label %.thread259

bb.ah:                                            ; preds = %bb.ag
  %i.pb = landingpad { ptr, i32 }
end_hunk_1
