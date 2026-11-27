Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki_proto-fea8caa7562c5a1b.anki_proto.f424b42f7a2ee9d8-cgu.05?download=true
inline.NumInlined: 60
inline.NumDeleted: 18
begin_hunk_0_@"_ZN89_$LT$anki_proto..deck_config..DeckConfigsForUpdate$u20$as$u20$prost..message..Message$GT$5clear17h8d86fb7b1d94d35fE":bb.a

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4e3af16bb4972a6fE.exit.i.i.i.i.i": ; preds = %bb.b
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he4bcf5e95b0dff26E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.f)
          to label %"_ZN4core3ptr56drop_in_place$LT$anki_proto..deck_config..DeckConfig$GT$17he85540be62d3c675E.exit.i.i.i" unwind label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4e3af16bb4972a6fE.exit.i.i.i.i.i"
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.j, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..deck_config..Config$GT$$GT$17h2cc4df81af2d9bf8E"(ptr noalias noundef align 8 dereferenceable(336) %i.m) #10
          to label %.body.i unwind label %bb.f

bb.f:                                             ; preds = %.body.i.i.i.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #9
  unreachable

"_ZN4core3ptr56drop_in_place$LT$anki_proto..deck_config..DeckConfig$GT$17he85540be62d3c675E.exit.i.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4e3af16bb4972a6fE.exit.i.i.i.i.i"
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..deck_config..Config$GT$$GT$17h2cc4df81af2d9bf8E"(ptr noalias noundef align 8 dereferenceable(336) %i.o)
          to label %"_ZN4core3ptr86drop_in_place$LT$anki_proto..deck_config..deck_configs_for_update..ConfigWithExtra$GT$17h5f85c0818643b61bE.exit.i" unwind label %bb.h

"_ZN4core3ptr86drop_in_place$LT$anki_proto..deck_config..deck_configs_for_update..ConfigWithExtra$GT$17h5f85c0818643b61bE.exit.i": ; preds = %"_ZN4core3ptr56drop_in_place$LT$anki_proto..deck_config..DeckConfig$GT$17he85540be62d3c675E.exit.i.i.i", %.lr.ph.i
  %i.p = icmp eq i64 %i.g, %i.d
  br i1 %i.p, label %"_ZN4core3ptr96drop_in_place$LT$$u5b$anki_proto..deck_config..deck_configs_for_update..ConfigWithExtra$u5d$$GT$17ha77b7fd40bf75152E.exit", label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph
  %i.q = add nuw i64 %.sroa.0.1.i44, 1            ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.d
  br i1 %i.r, label %common.resume, label %.lr.ph

bb.h:                                             ; preds = %"_ZN4core3ptr56drop_in_place$LT$anki_proto..deck_config..DeckConfig$GT$17he85540be62d3c675E.exit.i.i.i"
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %.body.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.s, %bb.h ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ] ; 2 uses
  %i.t = icmp eq i64 %i.g, %i.d
  br i1 %i.t, label %common.resume, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i44 = phi i64 [ %i.q, %bb.g ], [ %i.g, %.body.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [392 x i8], ptr %i.b, i64 %.sroa.0.1.i44
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$anki_proto..deck_config..deck_configs_for_update..ConfigWithExtra$GT$17h5f85c0818643b61bE"(ptr noalias noundef align 8 dereferenceable(392) %i.u) #10
          to label %bb.g unwind label %bb.i

common.resume:                                    ; preds = %bb.g, %.body.i, %.body, %.body12
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body13, %.body12 ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #9
  unreachable

"_ZN4core3ptr96drop_in_place$LT$$u5b$anki_proto..deck_config..deck_configs_for_update..ConfigWithExtra$u5d$$GT$17ha77b7fd40bf75152E.exit": ; preds = %"_ZN4core3ptr86drop_in_place$LT$anki_proto..deck_config..deck_configs_for_update..ConfigWithExtra$GT$17h5f85c0818643b61bE.exit.i", %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.x = load i64, ptr %i.w, align 8, !range !4, !alias.scope !193, !noundef !5
  %i.y = icmp eq i64 %i.x, -9223372036854775808
  br i1 %i.y, label %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..deck_configs_for_update..CurrentDeck$GT$$GT$17h99bb7e00d1933c93E.exit", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr96drop_in_place$LT$$u5b$anki_proto..deck_config..deck_configs_for_update..ConfigWithExtra$u5d$$GT$17ha77b7fd40bf75152E.exit"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd8fc038d71482fb4E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.w)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4e3af16bb4972a6fE.exit.i.i.i" unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he4bcf5e95b0dff26E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.w)
          to label %.body.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #9
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4e3af16bb4972a6fE.exit.i.i.i": ; preds = %bb.j
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he4bcf5e95b0dff26E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.w)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haeeb99ae49a7547bE.exit.i.i" unwind label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4e3af16bb4972a6fE.exit.i.i.i"
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.m, %bb.k
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.z, %bb.k ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i64$GT$$GT$17h5b01050f042d0c34E"(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #10
          to label %.body unwind label %bb.p

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haeeb99ae49a7547bE.exit.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4e3af16bb4972a6fE.exit.i.i.i"
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha33c46e3754a8aaeE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %"_ZN4core3ptr82drop_in_place$LT$anki_proto..deck_config..deck_configs_for_update..CurrentDeck$GT$17h03bdb206d879eec1E.exit.i" unwind label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haeeb99ae49a7547bE.exit.i.i"
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he2b90cc5e0fdc848E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #9
  unreachable

bb.p:                                             ; preds = %.body.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #9
  unreachable

"_ZN4core3ptr82drop_in_place$LT$anki_proto..deck_config..deck_configs_for_update..CurrentDeck$GT$17h03bdb206d879eec1E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haeeb99ae49a7547bE.exit.i.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he2b90cc5e0fdc848E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..deck_configs_for_update..CurrentDeck$GT$$GT$17h99bb7e00d1933c93E.exit" unwind label %bb.q

bb.q:                                             ; preds = %"_ZN4core3ptr82drop_in_place$LT$anki_proto..deck_config..deck_configs_for_update..CurrentDeck$GT$17h03bdb206d879eec1E.exit.i"
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.n, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.q ], [ %i.ae, %bb.n ], [ %eh.lpad-body.i.i, %.body.i.i ]
  store i64 -9223372036854775808, ptr %i.w, align 8
  br label %common.resume

"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..deck_configs_for_update..CurrentDeck$GT$$GT$17h99bb7e00d1933c93E.exit": ; preds = %"_ZN4core3ptr96drop_in_place$LT$$u5b$anki_proto..deck_config..deck_configs_for_update..ConfigWithExtra$u5d$$GT$17ha77b7fd40bf75152E.exit", %"_ZN4core3ptr82drop_in_place$LT$anki_proto..deck_config..deck_configs_for_update..CurrentDeck$GT$17h03bdb206d879eec1E.exit.i"
  store i64 -9223372036854775808, ptr %i.w, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.aj = load i64, ptr %i.ai, align 8, !range !4, !alias.scope !194, !noundef !5
  %i.ak = icmp eq i64 %i.aj, -9223372036854775808
  br i1 %i.ak, label %"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h610a3dfc6b7c72edE.exit", label %bb.r

bb.r:                                             ; preds = %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..deck_configs_for_update..CurrentDeck$GT$$GT$17h99bb7e00d1933c93E.exit"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd8fc038d71482fb4E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.ai)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4e3af16bb4972a6fE.exit.i.i.i11" unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he4bcf5e95b0dff26E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.ai)
          to label %.body.i.i9 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #9
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4e3af16bb4972a6fE.exit.i.i.i11": ; preds = %bb.r
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he4bcf5e95b0dff26E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.ai)
          to label %"_ZN4core3ptr56drop_in_place$LT$anki_proto..deck_config..DeckConfig$GT$17he85540be62d3c675E.exit.i" unwind label %bb.u

bb.u:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4e3af16bb4972a6fE.exit.i.i.i11"
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i9

.body.i.i9:                                       ; preds = %bb.u, %bb.s
  %eh.lpad-body.i.i10 = phi { ptr, i32 } [ %i.an, %bb.u ], [ %i.al, %bb.s ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..deck_config..Config$GT$$GT$17h2cc4df81af2d9bf8E"(ptr noalias noundef align 8 dereferenceable(336) %i.ao) #10
          to label %.body12 unwind label %bb.v

bb.v:                                             ; preds = %.body.i.i9
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #9
  unreachable

"_ZN4core3ptr56drop_in_place$LT$anki_proto..deck_config..DeckConfig$GT$17he85540be62d3c675E.exit.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4e3af16bb4972a6fE.exit.i.i.i11"
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..deck_config..Config$GT$$GT$17h2cc4df81af2d9bf8E"(ptr noalias noundef align 8 dereferenceable(336) %i.aq)
          to label %"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h610a3dfc6b7c72edE.exit" unwind label %bb.w

bb.w:                                             ; preds = %"_ZN4core3ptr56drop_in_place$LT$anki_proto..deck_config..DeckConfig$GT$17he85540be62d3c675E.exit.i"
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body12

.body12:                                          ; preds = %.body.i.i9, %bb.w
  %eh.lpad-body13 = phi { ptr, i32 } [ %i.ar, %bb.w ], [ %eh.lpad-body.i.i10, %.body.i.i9 ]
  store i64 -9223372036854775808, ptr %i.ai, align 8
  br label %common.resume

"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h610a3dfc6b7c72edE.exit": ; preds = %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..deck_configs_for_update..CurrentDeck$GT$$GT$17h99bb7e00d1933c93E.exit", %"_ZN4core3ptr56drop_in_place$LT$anki_proto..deck_config..DeckConfig$GT$17he85540be62d3c675E.exit.i"
  store i64 -9223372036854775808, ptr %i.ai, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.at, i8 0, i64 10, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN89_$LT$anki_proto..deck_config..GetRetentionWorkloadRequest$u20$as$u20$core..fmt..Debug$GT$3fmt17hea09cd59c559f902E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !195 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN4core3fmt9Formatter12debug_struct17h1e7fed6a090e7031E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @140, i64 noundef 27)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.d = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @142, i64 noundef 1, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @141)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @143, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17h85c161700f9add69E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$anki_proto..stats..graphs_response..FutureDue$u20$as$u20$prost..message..Message$GT$5clear17hebf59a2cc34902e6E"(ptr noalias noundef align 8 dereferenceable(56) %0) unnamed_addr #0 !guid !196 {
bb.a:
  tail call void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17heead10660ac582d1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$anki_proto..stats..graphs_response..Intervals$u20$as$u20$prost..message..Message$GT$5clear17h0c889bd1dd91d9feE"(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #0 !guid !197 {
bb.a:
  tail call void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17h687b8c0fb1b104c8E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN90_$LT$anki_proto..deck_config..GetIgnoredBeforeCountRequest$u20$as$u20$core..fmt..Debug$GT$3fmt17h792f98b16243fd95E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !198 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN4core3fmt9Formatter12debug_struct17h1e7fed6a090e7031E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @144, i64 noundef 28)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.d = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @145, i64 noundef 26, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @143, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17h85c161700f9add69E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN90_$LT$anki_proto..deck_config..GetRetentionWorkloadResponse$u20$as$u20$core..fmt..Debug$GT$3fmt17h453f4e5f97ab0752E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !199 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3fmt9Formatter12debug_struct17h1e7fed6a090e7031E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @146, i64 noundef 28)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @148, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @147)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17h85c161700f9add69E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN91_$LT$anki_proto..deck_config..GetIgnoredBeforeCountResponse$u20$as$u20$core..fmt..Debug$GT$3fmt17h568a81444315559bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !200 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN4core3fmt9Formatter12debug_struct17h1e7fed6a090e7031E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @149, i64 noundef 29)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.d = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @151, i64 noundef 8, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @150)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @152, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @150)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17h85c161700f9add69E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN91_$LT$anki_proto..stats..graphs_response..TrueRetentionStats$u20$as$u20$core..fmt..Debug$GT$3fmt17hd628a4a932c56b6aE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !201 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_ZN4core3fmt9Formatter12debug_struct17h1e7fed6a090e7031E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @153, i64 noundef 18)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %0, ptr %i.f, align 8
  %i.h = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @155, i64 noundef 5, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @154)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store ptr %i.i, ptr %i.e, align 8
  %i.j = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @156, i64 noundef 9, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @154)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %i.d, align 8
  %i.l = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 4, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @154)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60
  store ptr %i.m, ptr %i.c, align 8
  %i.n = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @158, i64 noundef 5, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @154)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.o, ptr %i.b, align 8
  %i.p = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @159, i64 noundef 4, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @154)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 100
  store ptr %i.q, ptr %i.a, align 8
  %i.r = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @56, i64 noundef 8, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @154)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17h85c161700f9add69E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i1 %i.s
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN93_$LT$anki_proto..deck_config..UpdateDeckConfigsRequest$u20$as$u20$prost..message..Message$GT$5clear17h6a4a2ae978ff6916E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(136) initializes((72, 80)) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !202 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN4core3ptr66drop_in_place$LT$$u5b$anki_proto..deck_config..DeckConfig$u5d$$GT$17hbcedce17d0a90ac0E.exit", label %.lr.ph

"_ZN4core3ptr56drop_in_place$LT$anki_proto..deck_config..DeckConfig$GT$17he85540be62d3c675E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haeeb99ae49a7547bE.exit.i.i"
  %i.g = icmp eq i64 %i.i, %i.e
  br i1 %i.g, label %"_ZN4core3ptr66drop_in_place$LT$$u5b$anki_proto..deck_config..DeckConfig$u5d$$GT$17hbcedce17d0a90ac0E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4core3ptr56drop_in_place$LT$anki_proto..deck_config..DeckConfig$GT$17he85540be62d3c675E.exit.i"
  %.sroa.0.0.i21 = phi i64 [ %i.i, %"_ZN4core3ptr56drop_in_place$LT$anki_proto..deck_config..DeckConfig$GT$17he85540be62d3c675E.exit.i" ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [384 x i8], ptr %i.c, i64 %.sroa.0.0.i21 ; 5 uses
  %i.i = add nuw i64 %.sroa.0.0.i21, 1            ; 4 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd8fc038d71482fb4E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.h)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4e3af16bb4972a6fE.exit.i.i.i" unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he4bcf5e95b0dff26E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.h)
          to label %.body.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #9
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4e3af16bb4972a6fE.exit.i.i.i": ; preds = %.lr.ph
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he4bcf5e95b0dff26E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.h)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haeeb99ae49a7547bE.exit.i.i" unwind label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4e3af16bb4972a6fE.exit.i.i.i"
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.d, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.j, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..deck_config..Config$GT$$GT$17h2cc4df81af2d9bf8E"(ptr noalias noundef align 8 dereferenceable(336) %i.m) #10
          to label %.body.i unwind label %bb.e

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haeeb99ae49a7547bE.exit.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4e3af16bb4972a6fE.exit.i.i.i"
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..deck_config..Config$GT$$GT$17h2cc4df81af2d9bf8E"(ptr noalias noundef align 8 dereferenceable(336) %i.n)
          to label %"_ZN4core3ptr56drop_in_place$LT$anki_proto..deck_config..DeckConfig$GT$17he85540be62d3c675E.exit.i" unwind label %bb.g

bb.e:                                             ; preds = %.body.i.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #9
  unreachable

bb.f:                                             ; preds = %.lr.ph23
  %i.p = add nuw i64 %.sroa.0.1.i22, 1            ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.e
  br i1 %i.q, label %._crit_edge, label %.lr.ph23

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haeeb99ae49a7547bE.exit.i.i"
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.g ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %i.s = icmp eq i64 %i.i, %i.e
  br i1 %i.s, label %._crit_edge, label %.lr.ph23

.lr.ph23:                                         ; preds = %.body.i, %bb.f
  %.sroa.0.1.i22 = phi i64 [ %i.p, %bb.f ], [ %i.i, %.body.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [384 x i8], ptr %i.c, i64 %.sroa.0.1.i22
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$anki_proto..deck_config..DeckConfig$GT$17he85540be62d3c675E"(ptr noalias noundef align 8 dereferenceable(384) %i.t) #10
          to label %bb.f unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.h:                                             ; preds = %.lr.ph23
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #9
  unreachable

"_ZN4core3ptr66drop_in_place$LT$$u5b$anki_proto..deck_config..DeckConfig$u5d$$GT$17hbcedce17d0a90ac0E.exit": ; preds = %"_ZN4core3ptr56drop_in_place$LT$anki_proto..deck_config..DeckConfig$GT$17he85540be62d3c675E.exit.i", %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 2, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.z, i8 0, i64 5, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN93_$LT$anki_proto..stats..graphs_response..Retrievability$u20$as$u20$core..default..Default$GT$7default17h713e4c4e6d0bbe46E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 60)) %0) unnamed_addr #0 !guid !203 {
bb.a:
  %i.a = tail call { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h1c28be290deb9b64E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @121) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @123, i64 32, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.b, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.c, ptr %.sroa.53.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> zeroinitializer, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float 0.000000e+00, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN93_$LT$anki_proto..stats..graphs_response..ReviewCountsAndTimes$u20$as$u20$core..fmt..Debug$GT$3fmt17h1707a361f03efb38E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !204 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN4core3fmt9Formatter12debug_struct17h1e7fed6a090e7031E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @160, i64 noundef 20)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.d = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @162, i64 noundef 5, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @164, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17h85c161700f9add69E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN94_$LT$anki_proto..stats..graphs_response..Retrievability$u20$as$u20$prost..message..Message$GT$5clear17hca96c51b33d7b7beE"(ptr noalias noundef align 8 dereferenceable(64) %0) unnamed_addr #0 !guid !205 {
bb.a:
  tail call void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17h687b8c0fb1b104c8E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> zeroinitializer, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float 0.000000e+00, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN96_$LT$anki_proto..deck_config..GetRetentionWorkloadResponse$u20$as$u20$core..default..Default$GT$7default17h4fed278547f7057eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0) unnamed_addr #0 !guid !206 {
bb.a:
  %i.a = tail call { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h1c28be290deb9b64E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @121) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @123, i64 32, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.b, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.c, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN97_$LT$anki_proto..deck_config..GetRetentionWorkloadResponse$u20$as$u20$prost..message..Message$GT$5clear17h8cf43bf9fdc0b1b2E"(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #0 !guid !207 {
bb.a:
  tail call void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17hacab152d372aa57fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN98_$LT$anki_proto..deck_config..deck_configs_for_update..CurrentDeck$u20$as$u20$core..fmt..Debug$GT$3fmt17h47617cc0174287c6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !208 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_ZN4core3fmt9Formatter12debug_struct17h1e7fed6a090e7031E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @165, i64 noundef 11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  %i.f = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @31, i64 noundef 4, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.g, ptr %i.c, align 8
  %i.h = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @166, i64 noundef 9, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.i, ptr %i.b, align 8
  %i.j = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @168, i64 noundef 17, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.k, ptr %i.a, align 8
  %i.l = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @133, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17h85c161700f9add69E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %i.m
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN99_$LT$anki_proto..stats..graphs_response..ReviewCountsAndTimes$u20$as$u20$core..default..Default$GT$7default17hd22f6b5caac760b5E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !209 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h1c28be290deb9b64E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @121) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @123, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = invoke { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h1c28be290deb9b64E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @121)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4a2673fb0c3b11aeE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %"_ZN4core3ptr139drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$anki_proto..stats..graphs_response..review_counts_and_times..Reviews$GT$$GT$17h39be3c135141b0cfE.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, i64 } %i.e, 0
  %i.h = extractvalue { i64, i64 } %i.e, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) @123, i64 32, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.g, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.h, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #9
  unreachable

"_ZN4core3ptr139drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$anki_proto..stats..graphs_response..review_counts_and_times..Reviews$GT$$GT$17h39be3c135141b0cfE.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17hd7d5fb5a59702213E"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter12debug_struct17h1e7fed6a090e7031E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcbdcbdd7c0aa50e2E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2bebfa20d9445db5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17h85c161700f9add69E(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter9debug_map17ha1db76d3917da565E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hbbbe59ef217491d4E"(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9b7ba17582d23461E"(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt8builders8DebugMap6finish17h03c9a309c3bc48d4E(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h671adeaba7f888e9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders8DebugMap5entry17h2ee10b7eb24a730eE(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17h6c99d673e0e60c78E"(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_0
