Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.14?download=true
inline.NumInlined: 150
inline.NumDeleted: 76
begin_hunk_0_@_ZN9configure4main17hf38471a218d45771E:bb.a
  %.not101 = icmp eq ptr %i.ai, null
  br i1 %.not101, label %bb.ac, label %bb.be

bb.ac:                                            ; preds = %bb.ab
  %i.aj = invoke noundef ptr @_ZN9configure3aqt19build_and_check_aqt17h5fcb78e7430b2d49E(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.h)
          to label %bb.ad unwind label %bb.e      ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %.not103 = icmp eq ptr %i.aj, null
  br i1 %.not103, label %bb.ae, label %bb.be

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_ZN3std3env3var17h3396a49a2add5805E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @28, i64 noundef 13)
          to label %bb.af unwind label %bb.e

bb.af:                                            ; preds = %bb.ae
  %i.ak = load i64, ptr %i.d, align 8, !range !48, !noundef !6
  %.not105 = icmp eq i64 %i.ak, 0
  br i1 %.not105, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h739de457dbab9967E"(ptr noalias noundef align 8 dereferenceable(32) %i.d)
          to label %bb.ai unwind label %bb.e

bb.ah:                                            ; preds = %bb.af
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h739de457dbab9967E"(ptr noalias noundef align 8 dereferenceable(32) %i.d)
          to label %bb.ak unwind label %bb.e

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %bb.ai
  %i.al = invoke noundef ptr @_ZN9configure4rust10check_rust17h6c0394269cf16211E(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.h)
          to label %bb.am unwind label %bb.e      ; 2 uses

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.am = invoke fastcc noundef ptr @_ZN9configure9installer15build_installer17h330a38c38ab12b3fE(ptr noalias noundef align 8 dereferenceable(248) %i.h)
          to label %bb.al unwind label %bb.e      ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %.not106 = icmp eq ptr %i.am, null
  br i1 %.not106, label %bb.aj, label %bb.be

bb.am:                                            ; preds = %bb.aj
  %.not108 = icmp eq ptr %i.al, null
  br i1 %.not108, label %bb.an, label %bb.be

bb.an:                                            ; preds = %bb.am
  %i.an = invoke noundef ptr @_ZN9configure5pylib11check_pylib17hc97e3581078b3bf3E(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.h)
          to label %bb.ao unwind label %bb.e      ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %.not110 = icmp eq ptr %i.an, null
  br i1 %.not110, label %bb.ap, label %bb.be

bb.ap:                                            ; preds = %bb.ao
  %i.ao = invoke noundef ptr @_ZN9configure6python12check_python17hc53eb3a5767daeccE(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.h)
          to label %bb.aq unwind label %bb.e      ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %.not112 = icmp eq ptr %i.ao, null
  br i1 %.not112, label %bb.ar, label %bb.be

bb.ar:                                            ; preds = %bb.aq
  %i.ap = invoke noundef ptr @_ZN9configure3cog9check_cog17h5e7696513ff14c10E(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.h)
          to label %bb.as unwind label %bb.e      ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %.not114 = icmp eq ptr %i.ap, null
  br i1 %.not114, label %bb.at, label %bb.be

bb.at:                                            ; preds = %bb.as
  %i.aq = invoke noundef ptr @_ZN9configure3web9check_sql17h927691bfe8824644E(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.h)
          to label %bb.au unwind label %bb.e      ; 2 uses

bb.au:                                            ; preds = %bb.at
  %.not116 = icmp eq ptr %i.aq, null
  br i1 %.not116, label %bb.av, label %bb.be

bb.av:                                            ; preds = %bb.au
  %i.ar = invoke noundef ptr @_ZN9configure4rust15check_minilints17hd81b8ed3cafbda09E(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.h)
          to label %bb.aw unwind label %bb.e      ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %.not118 = icmp eq ptr %i.ar, null
  br i1 %.not118, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @29, i64 noundef 17)
          to label %bb.ay unwind label %bb.e

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.as)
          to label %bb.ba unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.d

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.au = invoke noundef ptr @"_ZN9ninja_gen6render41_$LT$impl$u20$ninja_gen..build..Build$GT$16write_build_file17hc421d6208b9f8cc9E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.h)
          to label %bb.bb unwind label %bb.e      ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not120 = icmp eq ptr %i.au, null
  br i1 %.not120, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  call fastcc void @"_ZN4core3ptr44drop_in_place$LT$ninja_gen..build..Build$GT$17hf34a4a2dc59bf31cE"(ptr noalias noundef align 8 dereferenceable(248) %i.h)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.b, %bb.be, %bb.bc
  %.sroa.0.0 = phi ptr [ null, %bb.bc ], [ %i.l, %bb.b ], [ %.sroa.0.1, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret ptr %.sroa.0.0

bb.be:                                            ; preds = %bb.bb, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.al, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.u, %bb.m, %bb.f
  %.sroa.0.1 = phi ptr [ %i.aq, %bb.au ], [ %i.m, %bb.f ], [ %i.aa, %bb.m ], [ %i.af, %bb.u ], [ %i.ac, %bb.v ], [ %i.ag, %bb.x ], [ %i.ah, %bb.z ], [ %i.ai, %bb.ab ], [ %i.aj, %bb.ad ], [ %i.ar, %bb.aw ], [ %i.am, %bb.al ], [ %i.al, %bb.am ], [ %i.an, %bb.ao ], [ %i.ao, %bb.aq ], [ %i.ap, %bb.as ], [ %i.au, %bb.bb ]
  call fastcc void @"_ZN4core3ptr44drop_in_place$LT$ninja_gen..build..Build$GT$17hf34a4a2dc59bf31cE"(ptr noalias noundef align 8 dereferenceable(248) %i.h)
  br label %bb.bd

bb.bf:                                            ; preds = %bb.d
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #19
  unreachable

bb.bg:                                            ; preds = %bb.h
  unreachable

bb.bh:                                            ; preds = %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN9configure9installer15build_installer17h330a38c38ab12b3fE(ptr noalias noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @30, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 29, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 0, ptr %i.h, align 8
  %i.i = call noundef ptr @_ZN9ninja_gen5build5Build10add_action17h8d4440d179d8bcfcE(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @31, i64 noundef 22, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @32, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 25, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 0, ptr %i.k, align 8
  %i.l = call noundef ptr @_ZN9ninja_gen5build5Build10add_action17h8d4440d179d8bcfcE(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @33, i64 noundef 22, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not16 = icmp eq ptr %i.l, null
  br i1 %.not16, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_ZN9configure12anki_version17h0cc5eff0917c3307E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = invoke noundef ptr @_ZN9ninja_gen5build5Build10add_action17h413d2ddfd5220c09E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @34, i64 noundef 15, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.e unwind label %bb.k       ; 2 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not17 = icmp eq ptr %i.m, null
  br i1 %.not17, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.n = call noundef ptr @_ZN9ninja_gen5build5Build10add_action17h3ed76dd2a42139d1E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @35, i64 noundef 17, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit"
  %.sroa.0.0.ph = phi ptr [ %i.n, %bb.f ], [ %i.m, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ %i.l, %bb.b ], [ %i.i, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  ret ptr %.sroa.0.0

bb.h:                                             ; preds = %bb.e
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77374583839addd9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit" unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #19
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.i ], [ %lpad.thr_comm, %bb.k ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit": ; preds = %bb.h
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %.sink.split

bb.k:                                             ; preds = %bb.d, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #20
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_ZN9ninja_gen6action11BuildAction4name17h2b04af94999c58a7E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @36, i64 noundef 29, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @37, i64 noundef 2)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 29, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 121
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %i.b = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator4fold17h2e1b89611d06ce42E(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.a) ; 3 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %.lr.ph.split.i.i, !prof !105

.lr.ph.split.i.i:                                 ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 6 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.split.i.i
  %i.e = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.t, %.backedge.backedge ] ; 5 uses
  %i.f = sub nuw i64 %i.d, %i.e                   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 2 uses
  %i.h = icmp ult i64 %i.f, 16
  br i1 %i.h, label %.preheader.i.i.i, label %bb.b

.preheader.i.i.i:                                 ; preds = %.backedge
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %.backedge
  %i.i = call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef 60, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.g, i64 noundef %i.f), !noalias !134
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.f, %bb.c ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.c ], [ 1, %.lr.ph.i.i.i ]
  %i.j = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.k = insertvalue { i64, i64 } %i.j, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.01.05.i.i.i = phi i64 [ %i.o, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.05.i.i.i
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !140, !noalias !134, !noundef !6
  %i.n = icmp eq i8 %i.m, 60
  br i1 %i.n, label %._crit_edge.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.o = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.o, %i.f
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.b
  %.merged.i.i.i = phi { i64, i64 } [ %i.k, %._crit_edge.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.p = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.d, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit"

bb.d:                                             ; preds = %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i
  %i.r = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.s = add i64 %i.e, 1
  %i.t = add i64 %i.s, %i.r                       ; 2 uses
  %.not14.i.i = icmp ugt i64 %i.t, %i.d           ; 2 uses
  %i.u = add i64 %i.e, %i.r
  %or.cond.i.i.not = icmp ult i64 %i.u, %i.d
  br i1 %or.cond.i.i.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not14.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit", label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.e, %bb.f
  br label %.backedge

bb.f:                                             ; preds = %bb.d
  %i.v = add i64 %i.e, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.v
  %lhsc = load i8, ptr %i.w, align 1
  %i.x = icmp eq i8 %lhsc, 60                     ; 2 uses
  %brmerge = or i1 %i.x, %.not14.i.i
  br i1 %brmerge, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit", label %.backedge.backedge

bb.g:                                             ; preds = %bb.a
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #21
  unreachable

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit": ; preds = %bb.f
  %.mux.le = select i1 %i.x, i64 %i.v, i64 %i.d
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit": ; preds = %bb.e, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit"
  %.sroa.4.1.i = phi i64 [ %.mux.le, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit" ], [ %i.d, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i ], [ %i.d, %bb.e ]
  %i.y = insertvalue { ptr, i64 } %i.b, i64 %.sroa.4.1.i, 1
  ret { ptr, i64 } %i.y
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_ZN9ninja_gen6action11BuildAction4name17h78aecf79fc06988fE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @40, i64 noundef 29, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @37, i64 noundef 2)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 29, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 121
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %i.b = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator4fold17h2e1b89611d06ce42E(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.a) ; 3 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %.lr.ph.split.i.i, !prof !105

.lr.ph.split.i.i:                                 ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 6 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.split.i.i
  %i.e = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.t, %.backedge.backedge ] ; 5 uses
  %i.f = sub nuw i64 %i.d, %i.e                   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 2 uses
  %i.h = icmp ult i64 %i.f, 16
  br i1 %i.h, label %.preheader.i.i.i, label %bb.b

.preheader.i.i.i:                                 ; preds = %.backedge
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %.backedge
  %i.i = call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef 60, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.g, i64 noundef %i.f), !noalias !143
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.f, %bb.c ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.c ], [ 1, %.lr.ph.i.i.i ]
  %i.j = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.k = insertvalue { i64, i64 } %i.j, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.01.05.i.i.i = phi i64 [ %i.o, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.05.i.i.i
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !149, !noalias !143, !noundef !6
  %i.n = icmp eq i8 %i.m, 60
  br i1 %i.n, label %._crit_edge.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.o = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
end_hunk_0
