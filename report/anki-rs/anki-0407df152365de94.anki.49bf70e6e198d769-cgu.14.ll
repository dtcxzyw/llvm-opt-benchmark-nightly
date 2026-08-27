Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.14?download=true
inline.NumInlined: 6502
inline.NumDeleted: 2826
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 45
begin_hunk_0_@"_ZN6zopfli7deflate23DeflateEncoder$LT$W$GT$8__finish17h7469b61ccc1a4c9aE":bb.a
bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.04.0.copyload = load i64, ptr %i.c, align 8 ; 2 uses
  store i64 -9223372036854775807, ptr %i.c, align 8
  %.not15 = icmp eq i64 %.sroa.04.0.copyload, -9223372036854775807
  br i1 %.not15, label %bb.h, label %bb.f, !prof !35

bb.f:                                             ; preds = %bb.e
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.sroa.04.0.copyload, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12604)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !12604, !noundef !3
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread", label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12604
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.k = load i8, ptr %i.j, align 8, !alias.scope !12604, !noundef !3
  store i8 %i.k, ptr %i.a, align 1, !noalias !12604
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !12604, !noundef !3
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !alias.scope !12604
  %i.o = invoke noundef ptr @_ZN3std2io5Write9write_all17h7a4c174562ea57efE(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.g
  %.not.i = icmp eq ptr %i.o, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12604
  br i1 %.not.i, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread", label %bb.j

bb.h:                                             ; preds = %bb.e
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @797) #35
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr106drop_in_place$LT$zopfli..deflate..BitwiseWriter$LT$zip..write..MaybeEncrypted$LT$std..fs..File$GT$$GT$$GT$17hd5183c5b2c7fa8bcE"(ptr noalias noundef align 8 dereferenceable(56) %i.b) #33
          to label %common.resume unwind label %bb.p

bb.j:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.q, align 8
  store i64 -9223372036854775806, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12607)
  call void @llvm.experimental.noalias.scope.decl(metadata !12610)
  %i.r = load i64, ptr %i.b, align 8, !range !48, !alias.scope !12613, !noundef !3
  %i.s = icmp eq i64 %i.r, -9223372036854775808
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.val.i.i = load i32, ptr %.sroa.5.0..sroa_idx6, align 8, !range !2489, !alias.scope !12613, !noundef !3
  %i.t = call noundef i32 @close(i32 noundef %.val.i.i) #26, !noalias !12613 ; 0 uses
  br label %"_ZN4core3ptr106drop_in_place$LT$zopfli..deflate..BitwiseWriter$LT$zip..write..MaybeEncrypted$LT$std..fs..File$GT$$GT$$GT$17hd5183c5b2c7fa8bcE.exit"

bb.l:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !12614)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val.i.i.i = load i32, ptr %i.u, align 8, !range !2489, !alias.scope !12617, !noundef !3
  %i.v = call noundef i32 @close(i32 noundef %.val.i.i.i) #26, !noalias !12617 ; 0 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %"_ZN4core3ptr73drop_in_place$LT$zip..zipcrypto..ZipCryptoWriter$LT$std..fs..File$GT$$GT$17hadd9f81919a6d8e4E.exit.i.i" unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.p, %bb.i ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr73drop_in_place$LT$zip..zipcrypto..ZipCryptoWriter$LT$std..fs..File$GT$$GT$17hadd9f81919a6d8e4E.exit.i.i": ; preds = %bb.l
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
  br label %"_ZN4core3ptr106drop_in_place$LT$zopfli..deflate..BitwiseWriter$LT$zip..write..MaybeEncrypted$LT$std..fs..File$GT$$GT$$GT$17hd5183c5b2c7fa8bcE.exit"

"_ZN4core3ptr106drop_in_place$LT$zopfli..deflate..BitwiseWriter$LT$zip..write..MaybeEncrypted$LT$std..fs..File$GT$$GT$$GT$17hd5183c5b2c7fa8bcE.exit": ; preds = %bb.k, %"_ZN4core3ptr73drop_in_place$LT$zip..zipcrypto..ZipCryptoWriter$LT$std..fs..File$GT$$GT$17hadd9f81919a6d8e4E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread": ; preds = %.noexc, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread", %"_ZN4core3ptr106drop_in_place$LT$zopfli..deflate..BitwiseWriter$LT$zip..write..MaybeEncrypted$LT$std..fs..File$GT$$GT$$GT$17hd5183c5b2c7fa8bcE.exit", %bb.d, %bb.c
  ret void

bb.p:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN6zopfli7deflate24add_lz77_block_auto_type17hdc6abaca5ea3b1dcE(i1 noundef zeroext %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %3, i64 noundef %4, i64 noundef %5, ptr noalias noundef nonnull align 8 dereferenceable(88) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 29 uses
  %i.b = alloca [1 x i8], align 1                 ; 9 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [144 x i8], align 8               ; 22 uses
  %i.f = tail call noundef double @_ZN6zopfli7deflate20calculate_block_size17h33b066ec04634f88E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %3, i64 noundef %4, i64 noundef %5, i8 noundef 0) ; 2 uses
  %i.g = tail call noundef double @_ZN6zopfli7deflate20calculate_block_size17h33b066ec04634f88E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %3, i64 noundef %4, i64 noundef %5, i8 noundef 1) ; 2 uses
  %i.h = tail call noundef double @_ZN6zopfli7deflate20calculate_block_size17h33b066ec04634f88E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %3, i64 noundef %4, i64 noundef %5, i8 noundef 2) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 2 uses
  %i.k = icmp ult i64 %i.j, 1537228672809129302
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ult i64 %i.j, 1000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %.sroa.8.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.8.0..sroa_idx19, align 8
  %.sroa.10.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.825.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx21, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.825.0..sroa_idx26, align 8
  %.sroa.1028.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.833.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1028.0..sroa_idx29, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.833.0..sroa_idx34, align 8
  %.sroa.1036.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.841.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1036.0..sroa_idx37, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.841.0..sroa_idx42, align 8
  %.sroa.1044.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.849.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1044.0..sroa_idx45, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.849.0..sroa_idx50, align 8
  %.sroa.1052.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %.sroa.857.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1052.0..sroa_idx53, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.857.0..sroa_idx58, align 8
  %.sroa.1060.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store i64 0, ptr %.sroa.1060.0..sroa_idx61, align 8
  %i.m = icmp eq i64 %4, %5                       ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.m, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.m, label %bb.e, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.n = fmul double %i.h, 1.100000e+00
  %i.o = fcmp ugt double %i.g, %i.n
  br i1 %i.o, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12618)
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 81 ; 25 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 25 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 20 uses
  %.pre.i = load i8, ptr %i.p, align 1, !alias.scope !12618 ; 2 uses
  %.pre10.i = load i8, ptr %i.q, align 8, !alias.scope !12618
  %i.s = zext i1 %0 to i8
  %i.t = and i8 %.pre.i, 7
  %i.u = shl nuw i8 %i.s, %i.t
  %i.v = or i8 %i.u, %.pre10.i                    ; 3 uses
  store i8 %i.v, ptr %i.q, align 8, !alias.scope !12618
  %i.w = add i8 %.pre.i, 1                        ; 3 uses
  store i8 %i.w, ptr %i.p, align 1, !alias.scope !12618
  %i.x = icmp eq i8 %i.w, 8
  br i1 %i.x, label %bb.f, label %7

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12621)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12624
  store i8 %i.v, ptr %i.c, align 1, !noalias !12624
  %i.y = load i64, ptr %i.r, align 8, !alias.scope !12624, !noundef !3
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.r, align 8, !alias.scope !12624
  %i.aa = invoke noundef ptr @_ZN3std2io5Write9write_all17h719b9333d5087defE(ptr noalias noundef nonnull align 8 dereferenceable(88) %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.f
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i", label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17h8b2ccadb579d4727E.exit"

"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i": ; preds = %.noexc
  store i8 0, ptr %i.q, align 8, !alias.scope !12624
  store i8 0, ptr %i.p, align 1, !alias.scope !12624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12624
  br label %7

bb.g:                                             ; preds = %bb.p, %bb.d
  %.sroa.014.0 = phi double [ %i.g, %bb.d ], [ %i.aq, %bb.p ] ; 2 uses
  %.sroa.01.0 = phi i1 [ false, %bb.d ], [ true, %bb.p ]
  %i.ab = fcmp ole double %i.f, %.sroa.014.0
  %i.ac = fcmp ole double %i.f, %i.h
  %or.cond = and i1 %i.ac, %i.ab
  br i1 %or.cond, label %.invoke, label %bb.q

bb.h:                                             ; preds = %bb.c, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !3 ; 2 uses
  %i.af = icmp ult i64 %4, %i.ae
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !3, !noundef !3
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %4
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !3 ; 2 uses
  %i.ak = invoke noundef i64 @_ZN6zopfli4lz779Lz77Store14get_byte_range17h727f6c81cbb6c49dE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %3, i64 noundef %4, i64 noundef %5)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %bb.h
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %4, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @798) #35
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.n
  %.pn = phi { ptr, i32 } [ %i.am, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit93, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit96, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zopfli..lz77..Lz77Store$GT$17he3e6fa702fdf0e9bE"(ptr noalias noundef align 8 dereferenceable(144) %i.e) #33
          to label %bb.al unwind label %bb.t

.loopexit:                                        ; preds = %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.w, %bb.u
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.f
  %lpad.loopexit96 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.i, %bb.j, %bb.l, %bb.o, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_ZN6zopfli5cache23ZopfliLongestMatchCache3new17hdbf21f37eae3bcd2E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, i64 noundef %i.ak)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.al = add i64 %i.ak, %i.aj
  invoke void @_ZN6zopfli7squeeze18lz77_optimal_fixed17hfdfb251af3de7cb5E(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.aj, i64 noundef %i.al, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.e)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$zopfli..cache..ZopfliLongestMatchCache$GT$17h26b00334f5f966b3E"(ptr noalias noundef align 8 dereferenceable(72) %i.d) #33
          to label %.loopexit.split-lp unwind label %bb.t

bb.o:                                             ; preds = %bb.m
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$zopfli..cache..ZopfliLongestMatchCache$GT$17h26b00334f5f966b3E"(ptr noalias noundef align 8 dereferenceable(72) %i.d)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noundef !3 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 1537228672809129302
  call void @llvm.assume(i1 %i.ap)
  %i.aq = invoke noundef double @_ZN6zopfli7deflate20calculate_block_size17h33b066ec04634f88E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.e, i64 noundef 0, i64 noundef %i.ao, i8 noundef 1)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.g
  %i.ar = fcmp ugt double %.sroa.014.0, %i.h
  br i1 %i.ar, label %.invoke, label %bb.r

.invoke:                                          ; preds = %bb.r, %bb.q, %bb.g, %bb.s
  %i.as = phi i8 [ 1, %bb.s ], [ 0, %bb.g ], [ 2, %bb.q ], [ 1, %bb.r ]
  %i.at = phi ptr [ %i.e, %bb.s ], [ %3, %bb.g ], [ %3, %bb.q ], [ %3, %bb.r ]
  %i.au = phi i64 [ 0, %bb.s ], [ %4, %bb.g ], [ %4, %bb.q ], [ %4, %bb.r ]
  %i.av = phi i64 [ %i.ay, %bb.s ], [ %5, %bb.g ], [ %5, %bb.q ], [ %5, %bb.r ]
  %i.aw = invoke fastcc noundef ptr @_ZN6zopfli7deflate14add_lz77_block17h8f75c9feb80eb935E(i8 noundef %i.as, i1 noundef zeroext %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.at, i64 noundef %i.au, i64 noundef %i.av, ptr noalias noundef align 8 dereferenceable(88) %6)
          to label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17h8b2ccadb579d4727E.exit88" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  br i1 %.sroa.01.0, label %bb.s, label %.invoke

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !3 ; 2 uses
  %i.az = icmp ult i64 %i.ay, 1537228672809129302
  call void @llvm.assume(i1 %i.az)
  br label %.invoke

"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17h8b2ccadb579d4727E.exit88": ; preds = %.invoke, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17h8b2ccadb579d4727E.exit", %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17h8b2ccadb579d4727E.exit78", %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.i85", %.thread140, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i86.6", %bb.aj
  %.sroa.0.1 = phi ptr [ null, %bb.aj ], [ %.lcssa100, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17h8b2ccadb579d4727E.exit78" ], [ %i.aa, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17h8b2ccadb579d4727E.exit" ], [ %.lcssa, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.i85" ], [ null, %.thread140 ], [ null, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i86.6" ], [ %i.aw, %.invoke ]
  call fastcc void @"_ZN4core3ptr44drop_in_place$LT$zopfli..lz77..Lz77Store$GT$17he3e6fa702fdf0e9bE"(ptr noalias noundef align 8 dereferenceable(144) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %.sroa.0.1

bb.t:                                             ; preds = %bb.n, %.loopexit.split-lp
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17h8b2ccadb579d4727E.exit": ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12624
  br label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17h8b2ccadb579d4727E.exit88"

7:                                                ; preds = %bb.e, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i"
  %.pre10.i70 = phi i8 [ %i.v, %bb.e ], [ 0, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i" ]
  %.pre.i69 = phi i8 [ %i.w, %bb.e ], [ 0, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i" ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12625)
  %8 = and i8 %.pre.i69, 7
  %9 = shl nuw i8 1, %8
  %10 = or i8 %9, %.pre10.i70                     ; 7 uses
  store i8 %10, ptr %i.q, align 8, !alias.scope !12625
  %11 = add i8 %.pre.i69, 1                       ; 2 uses
  store i8 %11, ptr %i.p, align 1, !alias.scope !12625
  %12 = icmp eq i8 %11, 8
  br i1 %12, label %bb.u, label %bb.v

bb.u:                                             ; preds = %7
  call void @llvm.experimental.noalias.scope.decl(metadata !12628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12631
  store i8 %10, ptr %i.b, align 1, !noalias !12631
  %i.bb = load i64, ptr %i.r, align 8, !alias.scope !12631, !noundef !3
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.r, align 8, !alias.scope !12631
  %i.bd = invoke noundef ptr @_ZN3std2io5Write9write_all17h719b9333d5087defE(ptr noalias noundef nonnull align 8 dereferenceable(88) %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 1)
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc77:                                         ; preds = %bb.u
  %.not.i.i74 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i74, label %.thread, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17h8b2ccadb579d4727E.exit78"

.thread:                                          ; preds = %.noexc77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12631
  store i8 0, ptr %i.q, align 8, !alias.scope !12625
  store i8 1, ptr %i.p, align 1, !alias.scope !12625
  br label %.thread127

bb.v:                                             ; preds = %7
  store i8 %10, ptr %i.q, align 8, !alias.scope !12625
  %i.be = add i8 %.pre.i69, 2                     ; 2 uses
  store i8 %i.be, ptr %i.p, align 1, !alias.scope !12625
  %i.bf = icmp eq i8 %i.be, 8
  br i1 %i.bf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !12632)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12634
  store i8 %10, ptr %i.b, align 1, !noalias !12634
  %i.bg = load i64, ptr %i.r, align 8, !alias.scope !12634, !noundef !3
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !12634
  %i.bi = invoke noundef ptr @_ZN3std2io5Write9write_all17h719b9333d5087defE(ptr noalias noundef nonnull align 8 dereferenceable(88) %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 1)
          to label %.noexc77.1 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc77.1:                                       ; preds = %bb.w
  %.not.i.i74.1 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i74.1, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i76.1", label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17h8b2ccadb579d4727E.exit78"

"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i76.1": ; preds = %.noexc77.1
  store i8 0, ptr %i.q, align 8, !alias.scope !12634
  store i8 0, ptr %i.p, align 1, !alias.scope !12634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12634
  br label %.thread127

.thread127:                                       ; preds = %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i76.1", %.thread
  %.pre.i79.ph = phi i8 [ 2, %.thread ], [ 1, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i76.1" ] ; 2 uses
  store i8 0, ptr %i.q, align 8, !alias.scope !12635
  store i8 %.pre.i79.ph, ptr %i.p, align 1, !alias.scope !12635
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !12638)
  store i8 %10, ptr %i.q, align 8, !alias.scope !12638
  %i.bj = add i8 %.pre.i69, 3                     ; 3 uses
  store i8 %i.bj, ptr %i.p, align 1, !alias.scope !12638
  %i.bk = icmp eq i8 %i.bj, 8
  br i1 %i.bk, label %bb.y, label %bb.z

"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17h8b2ccadb579d4727E.exit78": ; preds = %.noexc77.1, %.noexc77
  %.lcssa100 = phi ptr [ %i.bd, %.noexc77 ], [ %i.bi, %.noexc77.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12631
  br label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17h8b2ccadb579d4727E.exit88"

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !12640)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12643
  store i8 %10, ptr %i.a, align 1, !noalias !12643
  %i.bl = load i64, ptr %i.r, align 8, !alias.scope !12643, !noundef !3
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.r, align 8, !alias.scope !12643
  %i.bn = invoke noundef ptr @_ZN3std2io5Write9write_all17h719b9333d5087defE(ptr noalias noundef nonnull align 8 dereferenceable(88) %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc87 unwind label %.loopexit ; 2 uses

.noexc87:                                         ; preds = %bb.y
  %.not.i.i84 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i84, label %.thread130, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.i85"

.thread130:                                       ; preds = %.noexc87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12643
  store i8 0, ptr %i.q, align 8, !alias.scope !12638
  store i8 1, ptr %i.p, align 1, !alias.scope !12638
  br label %.thread132.a

"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.i85": ; preds = %.noexc87.6, %.noexc87.5, %.noexc87.4, %.noexc87.3, %.noexc87.2, %.noexc87.1, %.noexc87
  %.lcssa = phi ptr [ %i.bn, %.noexc87 ], [ %i.bu, %.noexc87.1 ], [ %i.bz, %.noexc87.2 ], [ %i.cg, %.noexc87.3 ], [ %i.cl, %.noexc87.4 ], [ %i.cs, %.noexc87.5 ], [ %i.cx, %.noexc87.6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12643
  br label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17h8b2ccadb579d4727E.exit88"

bb.z:                                             ; preds = %.thread127, %bb.x
  %i.bo = phi i8 [ 0, %.thread127 ], [ %10, %bb.x ] ; 5 uses
  %i.bp = phi i8 [ %.pre.i79.ph, %.thread127 ], [ %i.bj, %bb.x ] ; 2 uses
  store i8 %i.bo, ptr %i.q, align 8, !alias.scope !12638
  %i.bq = add i8 %i.bp, 1                         ; 2 uses
  store i8 %i.bq, ptr %i.p, align 1, !alias.scope !12638
  %i.br = icmp eq i8 %i.bq, 8
  br i1 %i.br, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !12644)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12646
  store i8 %i.bo, ptr %i.a, align 1, !noalias !12646
  %i.bs = load i64, ptr %i.r, align 8, !alias.scope !12646, !noundef !3
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !12646
  %i.bu = invoke noundef ptr @_ZN3std2io5Write9write_all17h719b9333d5087defE(ptr noalias noundef nonnull align 8 dereferenceable(88) %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc87.1 unwind label %.loopexit ; 2 uses

.noexc87.1:                                       ; preds = %bb.aa
  %.not.i.i84.1 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i84.1, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i86.1", label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.i85"

"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i86.1": ; preds = %.noexc87.1
  store i8 0, ptr %i.q, align 8, !alias.scope !12646
  store i8 0, ptr %i.p, align 1, !alias.scope !12646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12646
  br label %.thread132.a

.thread132.a:                                     ; preds = %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i86.1", %.thread130
  %.ph = phi i8 [ 2, %.thread130 ], [ 1, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i86.1" ] ; 2 uses
  store i8 0, ptr %i.q, align 8, !alias.scope !12638
  store i8 %.ph, ptr %i.p, align 1, !alias.scope !12638
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  store i8 %i.bo, ptr %i.q, align 8, !alias.scope !12638
  %i.bv = add i8 %i.bp, 2                         ; 3 uses
  store i8 %i.bv, ptr %i.p, align 1, !alias.scope !12638
  %i.bw = icmp eq i8 %i.bv, 8
  br i1 %i.bw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !12647)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12649
  store i8 %i.bo, ptr %i.a, align 1, !noalias !12649
  %i.bx = load i64, ptr %i.r, align 8, !alias.scope !12649, !noundef !3
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.r, align 8, !alias.scope !12649
  %i.bz = invoke noundef ptr @_ZN3std2io5Write9write_all17h719b9333d5087defE(ptr noalias noundef nonnull align 8 dereferenceable(88) %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc87.2 unwind label %.loopexit ; 2 uses

.noexc87.2:                                       ; preds = %bb.ac
  %.not.i.i84.2 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i84.2, label %.thread133, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.i85"

.thread133:                                       ; preds = %.noexc87.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12649
  store i8 0, ptr %i.q, align 8, !alias.scope !12638
  store i8 1, ptr %i.p, align 1, !alias.scope !12638
  br label %.thread136.a

bb.ad:                                            ; preds = %.thread132.a, %bb.ab
  %i.ca = phi i8 [ 0, %.thread132.a ], [ %i.bo, %bb.ab ] ; 5 uses
  %i.cb = phi i8 [ %.ph, %.thread132.a ], [ %i.bv, %bb.ab ] ; 2 uses
  store i8 %i.ca, ptr %i.q, align 8, !alias.scope !12638
  %i.cc = add i8 %i.cb, 1                         ; 2 uses
  store i8 %i.cc, ptr %i.p, align 1, !alias.scope !12638
  %i.cd = icmp eq i8 %i.cc, 8
  br i1 %i.cd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !12650)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12652
  store i8 %i.ca, ptr %i.a, align 1, !noalias !12652
  %i.ce = load i64, ptr %i.r, align 8, !alias.scope !12652, !noundef !3
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.r, align 8, !alias.scope !12652
  %i.cg = invoke noundef ptr @_ZN3std2io5Write9write_all17h719b9333d5087defE(ptr noalias noundef nonnull align 8 dereferenceable(88) %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc87.3 unwind label %.loopexit ; 2 uses

.noexc87.3:                                       ; preds = %bb.ae
  %.not.i.i84.3 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i84.3, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i86.3", label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.i85"

"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i86.3": ; preds = %.noexc87.3
  store i8 0, ptr %i.q, align 8, !alias.scope !12652
  store i8 0, ptr %i.p, align 1, !alias.scope !12652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12652
  br label %.thread136.a

.thread136.a:                                     ; preds = %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i86.3", %.thread133
  %.ph135 = phi i8 [ 2, %.thread133 ], [ 1, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i86.3" ] ; 2 uses
  store i8 0, ptr %i.q, align 8, !alias.scope !12638
  store i8 %.ph135, ptr %i.p, align 1, !alias.scope !12638
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  store i8 %i.ca, ptr %i.q, align 8, !alias.scope !12638
  %i.ch = add i8 %i.cb, 2                         ; 3 uses
  store i8 %i.ch, ptr %i.p, align 1, !alias.scope !12638
  %i.ci = icmp eq i8 %i.ch, 8
  br i1 %i.ci, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !12653)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12655
  store i8 %i.ca, ptr %i.a, align 1, !noalias !12655
  %i.cj = load i64, ptr %i.r, align 8, !alias.scope !12655, !noundef !3
  %i.ck = add i64 %i.cj, 1
  store i64 %i.ck, ptr %i.r, align 8, !alias.scope !12655
  %i.cl = invoke noundef ptr @_ZN3std2io5Write9write_all17h719b9333d5087defE(ptr noalias noundef nonnull align 8 dereferenceable(88) %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc87.4 unwind label %.loopexit ; 2 uses

.noexc87.4:                                       ; preds = %bb.ag
  %.not.i.i84.4 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i84.4, label %.thread137, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.i85"

.thread137:                                       ; preds = %.noexc87.4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12655
  store i8 0, ptr %i.q, align 8, !alias.scope !12638
  store i8 1, ptr %i.p, align 1, !alias.scope !12638
  br label %.thread140

bb.ah:                                            ; preds = %.thread136.a, %bb.af
  %i.cm = phi i8 [ 0, %.thread136.a ], [ %i.ca, %bb.af ] ; 4 uses
  %i.cn = phi i8 [ %.ph135, %.thread136.a ], [ %i.ch, %bb.af ] ; 2 uses
  store i8 %i.cm, ptr %i.q, align 8, !alias.scope !12638
  %i.co = add i8 %i.cn, 1                         ; 2 uses
  store i8 %i.co, ptr %i.p, align 1, !alias.scope !12638
  %i.cp = icmp eq i8 %i.co, 8
  br i1 %i.cp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !12656)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12658
  store i8 %i.cm, ptr %i.a, align 1, !noalias !12658
  %i.cq = load i64, ptr %i.r, align 8, !alias.scope !12658, !noundef !3
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.r, align 8, !alias.scope !12658
  %i.cs = invoke noundef ptr @_ZN3std2io5Write9write_all17h719b9333d5087defE(ptr noalias noundef nonnull align 8 dereferenceable(88) %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc87.5 unwind label %.loopexit ; 2 uses

.noexc87.5:                                       ; preds = %bb.ai
  %.not.i.i84.5 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i84.5, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i86.5", label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.i85"

"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i86.5": ; preds = %.noexc87.5
  store i8 0, ptr %i.q, align 8, !alias.scope !12658
  store i8 0, ptr %i.p, align 1, !alias.scope !12658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12658
  br label %.thread140

.thread140:                                       ; preds = %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i86.5", %.thread137
  %.ph139 = phi i8 [ 2, %.thread137 ], [ 1, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i86.5" ]
  store i8 0, ptr %i.q, align 8, !alias.scope !12638
  store i8 %.ph139, ptr %i.p, align 1, !alias.scope !12638
  br label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17h8b2ccadb579d4727E.exit88"

bb.aj:                                            ; preds = %bb.ah
  store i8 %i.cm, ptr %i.q, align 8, !alias.scope !12638
  %i.ct = add i8 %i.cn, 2                         ; 2 uses
  store i8 %i.ct, ptr %i.p, align 1, !alias.scope !12638
  %i.cu = icmp eq i8 %i.ct, 8
  br i1 %i.cu, label %bb.ak, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17h8b2ccadb579d4727E.exit88"

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !12659)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12661
  store i8 %i.cm, ptr %i.a, align 1, !noalias !12661
  %i.cv = load i64, ptr %i.r, align 8, !alias.scope !12661, !noundef !3
  %i.cw = add i64 %i.cv, 1
  store i64 %i.cw, ptr %i.r, align 8, !alias.scope !12661
  %i.cx = invoke noundef ptr @_ZN3std2io5Write9write_all17h719b9333d5087defE(ptr noalias noundef nonnull align 8 dereferenceable(88) %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc87.6 unwind label %.loopexit ; 2 uses

.noexc87.6:                                       ; preds = %bb.ak
  %.not.i.i84.6 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i84.6, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i86.6", label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.i85"

"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17hc36ef08927265b6aE.exit.thread.i86.6": ; preds = %.noexc87.6
  store i8 0, ptr %i.q, align 8, !alias.scope !12661
  store i8 0, ptr %i.p, align 1, !alias.scope !12661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12661
  br label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17h8b2ccadb579d4727E.exit88"

bb.al:                                            ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN6zopfli7deflate24add_lz77_block_auto_type17hef738b1dfa83b17fE(i1 noundef zeroext %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %3, i64 noundef %4, i64 noundef %5, ptr noalias noundef nonnull align 8 dereferenceable(56) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 29 uses
  %i.b = alloca [1 x i8], align 1                 ; 9 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [144 x i8], align 8               ; 22 uses
  %i.f = tail call noundef double @_ZN6zopfli7deflate20calculate_block_size17h33b066ec04634f88E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %3, i64 noundef %4, i64 noundef %5, i8 noundef 0) ; 2 uses
  %i.g = tail call noundef double @_ZN6zopfli7deflate20calculate_block_size17h33b066ec04634f88E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %3, i64 noundef %4, i64 noundef %5, i8 noundef 1) ; 2 uses
  %i.h = tail call noundef double @_ZN6zopfli7deflate20calculate_block_size17h33b066ec04634f88E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %3, i64 noundef %4, i64 noundef %5, i8 noundef 2) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 2 uses
  %i.k = icmp ult i64 %i.j, 1537228672809129302
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ult i64 %i.j, 1000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %.sroa.8.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.8.0..sroa_idx19, align 8
  %.sroa.10.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.825.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx21, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.825.0..sroa_idx26, align 8
  %.sroa.1028.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.833.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1028.0..sroa_idx29, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.833.0..sroa_idx34, align 8
  %.sroa.1036.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.841.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1036.0..sroa_idx37, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.841.0..sroa_idx42, align 8
  %.sroa.1044.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.849.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1044.0..sroa_idx45, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.849.0..sroa_idx50, align 8
  %.sroa.1052.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %.sroa.857.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1052.0..sroa_idx53, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.857.0..sroa_idx58, align 8
  %.sroa.1060.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store i64 0, ptr %.sroa.1060.0..sroa_idx61, align 8
  %i.m = icmp eq i64 %4, %5                       ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.m, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.m, label %bb.e, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.n = fmul double %i.h, 1.100000e+00
  %i.o = fcmp ugt double %i.g, %i.n
  br i1 %i.o, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12662)
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 49 ; 25 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 25 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 20 uses
  %.pre.i = load i8, ptr %i.p, align 1, !alias.scope !12662 ; 2 uses
  %.pre10.i = load i8, ptr %i.q, align 8, !alias.scope !12662
  %i.s = zext i1 %0 to i8
  %i.t = and i8 %.pre.i, 7
  %i.u = shl nuw i8 %i.s, %i.t
  %i.v = or i8 %i.u, %.pre10.i                    ; 3 uses
  store i8 %i.v, ptr %i.q, align 8, !alias.scope !12662
  %i.w = add i8 %.pre.i, 1                        ; 3 uses
  store i8 %i.w, ptr %i.p, align 1, !alias.scope !12662
  %i.x = icmp eq i8 %i.w, 8
  br i1 %i.x, label %bb.f, label %7

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12665)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12668
  store i8 %i.v, ptr %i.c, align 1, !noalias !12668
  %i.y = load i64, ptr %i.r, align 8, !alias.scope !12668, !noundef !3
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.r, align 8, !alias.scope !12668
  %i.aa = invoke noundef ptr @_ZN3std2io5Write9write_all17h7a4c174562ea57efE(ptr noalias noundef nonnull align 8 dereferenceable(56) %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.f
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread.i", label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17hdb2f654b56b6c494E.exit"

"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread.i": ; preds = %.noexc
  store i8 0, ptr %i.q, align 8, !alias.scope !12668
  store i8 0, ptr %i.p, align 1, !alias.scope !12668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12668
  br label %7

bb.g:                                             ; preds = %bb.p, %bb.d
  %.sroa.014.0 = phi double [ %i.g, %bb.d ], [ %i.aq, %bb.p ] ; 2 uses
  %.sroa.01.0 = phi i1 [ false, %bb.d ], [ true, %bb.p ]
  %i.ab = fcmp ole double %i.f, %.sroa.014.0
  %i.ac = fcmp ole double %i.f, %i.h
  %or.cond = and i1 %i.ac, %i.ab
  br i1 %or.cond, label %.invoke, label %bb.q

bb.h:                                             ; preds = %bb.c, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !3 ; 2 uses
  %i.af = icmp ult i64 %4, %i.ae
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !3, !noundef !3
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %4
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !3 ; 2 uses
  %i.ak = invoke noundef i64 @_ZN6zopfli4lz779Lz77Store14get_byte_range17h727f6c81cbb6c49dE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %3, i64 noundef %4, i64 noundef %5)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %bb.h
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %4, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @798) #35
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.n
  %.pn = phi { ptr, i32 } [ %i.am, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit93, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit96, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zopfli..lz77..Lz77Store$GT$17he3e6fa702fdf0e9bE"(ptr noalias noundef align 8 dereferenceable(144) %i.e) #33
          to label %bb.al unwind label %bb.t

.loopexit:                                        ; preds = %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.w, %bb.u
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.f
  %lpad.loopexit96 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.i, %bb.j, %bb.l, %bb.o, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_ZN6zopfli5cache23ZopfliLongestMatchCache3new17hdbf21f37eae3bcd2E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, i64 noundef %i.ak)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.al = add i64 %i.ak, %i.aj
  invoke void @_ZN6zopfli7squeeze18lz77_optimal_fixed17hfdfb251af3de7cb5E(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.aj, i64 noundef %i.al, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.e)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$zopfli..cache..ZopfliLongestMatchCache$GT$17h26b00334f5f966b3E"(ptr noalias noundef align 8 dereferenceable(72) %i.d) #33
          to label %.loopexit.split-lp unwind label %bb.t

bb.o:                                             ; preds = %bb.m
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$zopfli..cache..ZopfliLongestMatchCache$GT$17h26b00334f5f966b3E"(ptr noalias noundef align 8 dereferenceable(72) %i.d)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noundef !3 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 1537228672809129302
  call void @llvm.assume(i1 %i.ap)
  %i.aq = invoke noundef double @_ZN6zopfli7deflate20calculate_block_size17h33b066ec04634f88E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.e, i64 noundef 0, i64 noundef %i.ao, i8 noundef 1)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.g
  %i.ar = fcmp ugt double %.sroa.014.0, %i.h
  br i1 %i.ar, label %.invoke, label %bb.r

.invoke:                                          ; preds = %bb.r, %bb.q, %bb.g, %bb.s
  %i.as = phi i8 [ 1, %bb.s ], [ 0, %bb.g ], [ 2, %bb.q ], [ 1, %bb.r ]
  %i.at = phi ptr [ %i.e, %bb.s ], [ %3, %bb.g ], [ %3, %bb.q ], [ %3, %bb.r ]
  %i.au = phi i64 [ 0, %bb.s ], [ %4, %bb.g ], [ %4, %bb.q ], [ %4, %bb.r ]
  %i.av = phi i64 [ %i.ay, %bb.s ], [ %5, %bb.g ], [ %5, %bb.q ], [ %5, %bb.r ]
  %i.aw = invoke fastcc noundef ptr @_ZN6zopfli7deflate14add_lz77_block17h1454267431b9f7e3E(i8 noundef %i.as, i1 noundef zeroext %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.at, i64 noundef %i.au, i64 noundef %i.av, ptr noalias noundef align 8 dereferenceable(56) %6)
          to label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17hdb2f654b56b6c494E.exit88" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  br i1 %.sroa.01.0, label %bb.s, label %.invoke

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !3 ; 2 uses
  %i.az = icmp ult i64 %i.ay, 1537228672809129302
  call void @llvm.assume(i1 %i.az)
  br label %.invoke

"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17hdb2f654b56b6c494E.exit88": ; preds = %.invoke, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17hdb2f654b56b6c494E.exit", %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17hdb2f654b56b6c494E.exit78", %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.i85", %.thread140, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread.i86.6", %bb.aj
  %.sroa.0.1 = phi ptr [ null, %bb.aj ], [ %.lcssa100, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17hdb2f654b56b6c494E.exit78" ], [ %i.aa, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17hdb2f654b56b6c494E.exit" ], [ %.lcssa, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.i85" ], [ null, %.thread140 ], [ null, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread.i86.6" ], [ %i.aw, %.invoke ]
  call fastcc void @"_ZN4core3ptr44drop_in_place$LT$zopfli..lz77..Lz77Store$GT$17he3e6fa702fdf0e9bE"(ptr noalias noundef align 8 dereferenceable(144) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %.sroa.0.1

bb.t:                                             ; preds = %bb.n, %.loopexit.split-lp
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17hdb2f654b56b6c494E.exit": ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12668
  br label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17hdb2f654b56b6c494E.exit88"

7:                                                ; preds = %bb.e, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread.i"
  %.pre10.i70 = phi i8 [ %i.v, %bb.e ], [ 0, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread.i" ]
  %.pre.i69 = phi i8 [ %i.w, %bb.e ], [ 0, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread.i" ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12669)
  %8 = and i8 %.pre.i69, 7
  %9 = shl nuw i8 1, %8
  %10 = or i8 %9, %.pre10.i70                     ; 7 uses
  store i8 %10, ptr %i.q, align 8, !alias.scope !12669
  %11 = add i8 %.pre.i69, 1                       ; 2 uses
  store i8 %11, ptr %i.p, align 1, !alias.scope !12669
  %12 = icmp eq i8 %11, 8
  br i1 %12, label %bb.u, label %bb.v

bb.u:                                             ; preds = %7
  call void @llvm.experimental.noalias.scope.decl(metadata !12672)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12675
  store i8 %10, ptr %i.b, align 1, !noalias !12675
  %i.bb = load i64, ptr %i.r, align 8, !alias.scope !12675, !noundef !3
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.r, align 8, !alias.scope !12675
  %i.bd = invoke noundef ptr @_ZN3std2io5Write9write_all17h7a4c174562ea57efE(ptr noalias noundef nonnull align 8 dereferenceable(56) %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 1)
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc77:                                         ; preds = %bb.u
  %.not.i.i74 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i74, label %.thread, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17hdb2f654b56b6c494E.exit78"

.thread:                                          ; preds = %.noexc77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12675
  store i8 0, ptr %i.q, align 8, !alias.scope !12669
  store i8 1, ptr %i.p, align 1, !alias.scope !12669
  br label %.thread127

bb.v:                                             ; preds = %7
  store i8 %10, ptr %i.q, align 8, !alias.scope !12669
  %i.be = add i8 %.pre.i69, 2                     ; 2 uses
  store i8 %i.be, ptr %i.p, align 1, !alias.scope !12669
  %i.bf = icmp eq i8 %i.be, 8
  br i1 %i.bf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !12676)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12678
  store i8 %10, ptr %i.b, align 1, !noalias !12678
  %i.bg = load i64, ptr %i.r, align 8, !alias.scope !12678, !noundef !3
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !12678
  %i.bi = invoke noundef ptr @_ZN3std2io5Write9write_all17h7a4c174562ea57efE(ptr noalias noundef nonnull align 8 dereferenceable(56) %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 1)
          to label %.noexc77.1 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc77.1:                                       ; preds = %bb.w
  %.not.i.i74.1 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i74.1, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread.i76.1", label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17hdb2f654b56b6c494E.exit78"

"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread.i76.1": ; preds = %.noexc77.1
  store i8 0, ptr %i.q, align 8, !alias.scope !12678
  store i8 0, ptr %i.p, align 1, !alias.scope !12678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12678
  br label %.thread127

.thread127:                                       ; preds = %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread.i76.1", %.thread
  %.pre.i79.ph = phi i8 [ 2, %.thread ], [ 1, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread.i76.1" ] ; 2 uses
  store i8 0, ptr %i.q, align 8, !alias.scope !12679
  store i8 %.pre.i79.ph, ptr %i.p, align 1, !alias.scope !12679
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !12682)
  store i8 %10, ptr %i.q, align 8, !alias.scope !12682
  %i.bj = add i8 %.pre.i69, 3                     ; 3 uses
  store i8 %i.bj, ptr %i.p, align 1, !alias.scope !12682
  %i.bk = icmp eq i8 %i.bj, 8
  br i1 %i.bk, label %bb.y, label %bb.z

"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17hdb2f654b56b6c494E.exit78": ; preds = %.noexc77.1, %.noexc77
  %.lcssa100 = phi ptr [ %i.bd, %.noexc77 ], [ %i.bi, %.noexc77.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12675
  br label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17hdb2f654b56b6c494E.exit88"

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !12684)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12687
  store i8 %10, ptr %i.a, align 1, !noalias !12687
  %i.bl = load i64, ptr %i.r, align 8, !alias.scope !12687, !noundef !3
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.r, align 8, !alias.scope !12687
  %i.bn = invoke noundef ptr @_ZN3std2io5Write9write_all17h7a4c174562ea57efE(ptr noalias noundef nonnull align 8 dereferenceable(56) %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc87 unwind label %.loopexit ; 2 uses

.noexc87:                                         ; preds = %bb.y
  %.not.i.i84 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i84, label %.thread130, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.i85"

.thread130:                                       ; preds = %.noexc87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12687
  store i8 0, ptr %i.q, align 8, !alias.scope !12682
  store i8 1, ptr %i.p, align 1, !alias.scope !12682
  br label %.thread132.a

"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.i85": ; preds = %.noexc87.6, %.noexc87.5, %.noexc87.4, %.noexc87.3, %.noexc87.2, %.noexc87.1, %.noexc87
  %.lcssa = phi ptr [ %i.bn, %.noexc87 ], [ %i.bu, %.noexc87.1 ], [ %i.bz, %.noexc87.2 ], [ %i.cg, %.noexc87.3 ], [ %i.cl, %.noexc87.4 ], [ %i.cs, %.noexc87.5 ], [ %i.cx, %.noexc87.6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12687
  br label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$8add_bits17hdb2f654b56b6c494E.exit88"

bb.z:                                             ; preds = %.thread127, %bb.x
  %i.bo = phi i8 [ 0, %.thread127 ], [ %10, %bb.x ] ; 5 uses
  %i.bp = phi i8 [ %.pre.i79.ph, %.thread127 ], [ %i.bj, %bb.x ] ; 2 uses
  store i8 %i.bo, ptr %i.q, align 8, !alias.scope !12682
  %i.bq = add i8 %i.bp, 1                         ; 2 uses
  store i8 %i.bq, ptr %i.p, align 1, !alias.scope !12682
  %i.br = icmp eq i8 %i.bq, 8
  br i1 %i.br, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !12688)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12690
  store i8 %i.bo, ptr %i.a, align 1, !noalias !12690
  %i.bs = load i64, ptr %i.r, align 8, !alias.scope !12690, !noundef !3
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !12690
  %i.bu = invoke noundef ptr @_ZN3std2io5Write9write_all17h7a4c174562ea57efE(ptr noalias noundef nonnull align 8 dereferenceable(56) %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc87.1 unwind label %.loopexit ; 2 uses

.noexc87.1:                                       ; preds = %bb.aa
  %.not.i.i84.1 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i84.1, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread.i86.1", label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.i85"

"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread.i86.1": ; preds = %.noexc87.1
  store i8 0, ptr %i.q, align 8, !alias.scope !12690
  store i8 0, ptr %i.p, align 1, !alias.scope !12690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12690
  br label %.thread132.a

.thread132.a:                                     ; preds = %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread.i86.1", %.thread130
  %.ph = phi i8 [ 2, %.thread130 ], [ 1, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread.i86.1" ] ; 2 uses
  store i8 0, ptr %i.q, align 8, !alias.scope !12682
  store i8 %.ph, ptr %i.p, align 1, !alias.scope !12682
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  store i8 %i.bo, ptr %i.q, align 8, !alias.scope !12682
  %i.bv = add i8 %i.bp, 2                         ; 3 uses
  store i8 %i.bv, ptr %i.p, align 1, !alias.scope !12682
  %i.bw = icmp eq i8 %i.bv, 8
  br i1 %i.bw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !12691)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12693
  store i8 %i.bo, ptr %i.a, align 1, !noalias !12693
  %i.bx = load i64, ptr %i.r, align 8, !alias.scope !12693, !noundef !3
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.r, align 8, !alias.scope !12693
  %i.bz = invoke noundef ptr @_ZN3std2io5Write9write_all17h7a4c174562ea57efE(ptr noalias noundef nonnull align 8 dereferenceable(56) %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc87.2 unwind label %.loopexit ; 2 uses

.noexc87.2:                                       ; preds = %bb.ac
  %.not.i.i84.2 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i84.2, label %.thread133, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.i85"

.thread133:                                       ; preds = %.noexc87.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12693
  store i8 0, ptr %i.q, align 8, !alias.scope !12682
  store i8 1, ptr %i.p, align 1, !alias.scope !12682
  br label %.thread136.a

bb.ad:                                            ; preds = %.thread132.a, %bb.ab
  %i.ca = phi i8 [ 0, %.thread132.a ], [ %i.bo, %bb.ab ] ; 5 uses
  %i.cb = phi i8 [ %.ph, %.thread132.a ], [ %i.bv, %bb.ab ] ; 2 uses
  store i8 %i.ca, ptr %i.q, align 8, !alias.scope !12682
  %i.cc = add i8 %i.cb, 1                         ; 2 uses
  store i8 %i.cc, ptr %i.p, align 1, !alias.scope !12682
  %i.cd = icmp eq i8 %i.cc, 8
  br i1 %i.cd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !12694)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12696
  store i8 %i.ca, ptr %i.a, align 1, !noalias !12696
  %i.ce = load i64, ptr %i.r, align 8, !alias.scope !12696, !noundef !3
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.r, align 8, !alias.scope !12696
  %i.cg = invoke noundef ptr @_ZN3std2io5Write9write_all17h7a4c174562ea57efE(ptr noalias noundef nonnull align 8 dereferenceable(56) %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc87.3 unwind label %.loopexit ; 2 uses

.noexc87.3:                                       ; preds = %bb.ae
  %.not.i.i84.3 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i84.3, label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread.i86.3", label %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.i85"

"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread.i86.3": ; preds = %.noexc87.3
  store i8 0, ptr %i.q, align 8, !alias.scope !12696
  store i8 0, ptr %i.p, align 1, !alias.scope !12696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12696
  br label %.thread136.a

.thread136.a:                                     ; preds = %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread.i86.3", %.thread133
  %.ph135 = phi i8 [ 2, %.thread133 ], [ 1, %"_ZN6zopfli7deflate22BitwiseWriter$LT$W$GT$19finish_partial_bits17h319d487be9541224E.exit.thread.i86.3" ] ; 2 uses
  store i8 0, ptr %i.q, align 8, !alias.scope !12682
  store i8 %.ph135, ptr %i.p, align 1, !alias.scope !12682
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  store i8 %i.ca, ptr %i.q, align 8, !alias.scope !12682
  %i.ch = add i8 %i.cb, 2                         ; 3 uses
  store i8 %i.ch, ptr %i.p, align 1, !alias.scope !12682
  %i.ci = icmp eq i8 %i.ch, 8
  br i1 %i.ci, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !12697)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12699
  store i8 %i.ca, ptr %i.a, align 1, !noalias !12699
  %i.cj = load i64, ptr %i.r, align 8, !alias.scope !12699, !noundef !3
end_hunk_0
