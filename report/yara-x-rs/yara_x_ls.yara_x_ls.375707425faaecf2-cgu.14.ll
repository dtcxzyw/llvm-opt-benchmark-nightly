Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_ls.yara_x_ls.375707425faaecf2-cgu.14?download=true
inline.NumInlined: 2022
inline.NumDeleted: 953
begin_hunk_0_@_RINvNtCs94G7V7CXYRk_8bitflags6parser8from_strNtNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens9ModifiersEBN_:bb.a
  unreachable

_RINvMs_NtCs94G7V7CXYRk_8bitflags6parserNtB5_10ParseError18invalid_named_flagReECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %.split113.us
  %i.az = load ptr, ptr %i.ax, align 8, !noalias !83, !nonnull !8, !noundef !8 ; 2 uses
  %i.ba = icmp samesign ule i64 %i.ai, %i.aw
  call void @llvm.assume(i1 %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.az, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ah, i64 range(i64 1, -9223372036854775808) %i.ai, i1 false), !noalias !84
  store i64 1, ptr %0, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aw, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.563.sroa.4.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.az, ptr %.sroa.563.sroa.4.0..sroa.563.0..sroa_idx.sroa_idx, align 8
  %.sroa.563.sroa.5.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ai, ptr %.sroa.563.sroa.5.0..sroa.563.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.n:                                             ; preds = %bb.t, %bb.l
  %.sroa.031.0 = phi i32 [ %i.bm, %bb.t ], [ %i.as, %bb.l ]
  call void @_RNvYNtNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens9ModifiersNtNtCs94G7V7CXYRk_8bitflags6traits5Flags6insertB8_(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.e, i32 noundef %.sroa.031.0)
  br i1 %i.af, label %bb.g, label %.lr.ph.split

.split119.us:                                     ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.ap, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.q, !noalias !86

.noexc.i:                                         ; preds = %.split119.us
  %i.bb = load i64, ptr %i.a, align 8, !range !11, !noalias !85, !noundef !8
  %i.bc = trunc nuw i64 %i.bb to i1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !12, !noalias !85, !noundef !8 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bc, label %bb.o, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i.i, !prof !13

bb.o:                                             ; preds = %.noexc.i
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !85
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.be, i64 %i.bg) #24
          to label %.noexc1.i unwind label %bb.q, !noalias !86

.noexc1.i:                                        ; preds = %bb.o
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i.i: ; preds = %.noexc.i
  %i.bh = load ptr, ptr %i.bf, align 8, !noalias !85, !nonnull !8, !noundef !8 ; 2 uses
  %i.bi = icmp samesign ule i64 %i.ap, %i.be
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85
  %.not.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtCs94G7V7CXYRk_8bitflags6parser8from_strNtNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens9ModifiersE0BP_.exit, label %bb.p

bb.p:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr nonnull readonly align 1 %i.aq, i64 range(i64 0, -9223372036854775808) %i.ap, i1 false), !noalias !87
  br label %_RNCINvNtCs94G7V7CXYRk_8bitflags6parser8from_strNtNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens9ModifiersE0BP_.exit

bb.q:                                             ; preds = %bb.o, %.split119.us
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs94G7V7CXYRk_8bitflags6parser10ParseErrorECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #22
          to label %bb.s unwind label %bb.r, !noalias !88

bb.r:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !88
  unreachable

bb.s:                                             ; preds = %bb.q
  resume { ptr, i32 } %i.bj

_RNCINvNtCs94G7V7CXYRk_8bitflags6parser8from_strNtNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens9ModifiersE0BP_.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i.i, %bb.p
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs94G7V7CXYRk_8bitflags6parser10ParseErrorECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.be, ptr %i.j, align 8
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.bh, ptr %.sroa.571.0..sroa_idx, align 8
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ap, ptr %.sroa.672.0..sroa_idx, align 8
  %i.bl = trunc i64 %i.be to i32
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.554.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.551.0..sroa_idx, i64 20, i1 false)
  store i64 2, ptr %0, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bl, ptr %.sroa.453.0..sroa_idx, align 8
  br label %bb.h

bb.t:                                             ; preds = %bb.k
  %i.bm = load i32, ptr %i.j, align 8, !noundef !8
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs94G7V7CXYRk_8bitflags6parser9to_writerNtNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens9ModifiersQNtNtCskKLDkoKarTP_4core3fmt9FormatterEBO_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvYNtNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens9ModifiersNtNtCs94G7V7CXYRk_8bitflags6traits5Flags10iter_namesB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %.sroa.01.0 = phi i1 [ true, %bb.a ], [ false, %bb.l ] ; 2 uses
  %i.h = load i64, ptr %i.d, align 8, !alias.scope !92, !noundef !8
  %i.i = load i64, ptr %i.e, align 8, !alias.scope !92, !noundef !8 ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  br i1 %i.j, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.b, %.backedge.i
  %i.k = phi i64 [ %i.x, %.backedge.i ], [ %i.i, %bb.b ]
  %i.l = load ptr, ptr %i.b, align 8, !alias.scope !92, !nonnull !8, !align !14, !noundef !8
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.k ; 4 uses
  %i.n = call noundef zeroext i1 @_RNvYNtNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens9ModifiersNtNtCs94G7V7CXYRk_8bitflags6traits5Flags8is_emptyB8_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f), !noalias !93
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = load i64, ptr %i.e, align 8, !alias.scope !92, !noundef !8
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.e, align 8, !alias.scope !92
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !93, !noundef !8
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.backedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.val.i = load i32, ptr %i.t, align 8, !noalias !93, !noundef !8 ; 3 uses
  %i.u = call noundef zeroext i1 @_RNvYNtNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens9ModifiersNtNtCs94G7V7CXYRk_8bitflags6traits5Flags8containsB8_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g, i32 noundef %.val.i), !noalias !93
  br i1 %i.u, label %bb.e, label %.backedge.i

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef zeroext i1 @_RNvYNtNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens9ModifiersNtNtCs94G7V7CXYRk_8bitflags6traits5Flags10intersectsB8_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f, i32 noundef %.val.i), !noalias !93
  br i1 %i.v, label %bb.f, label %.backedge.i

.backedge.i:                                      ; preds = %bb.e, %bb.d, %bb.c
  %i.w = load i64, ptr %i.d, align 8, !alias.scope !92, !noundef !8
  %i.x = load i64, ptr %i.e, align 8, !alias.scope !92, !noundef !8 ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  br i1 %i.y, label %.lr.ph.i, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @_RNvYNtNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens9ModifiersNtNtCs94G7V7CXYRk_8bitflags6traits5Flags6removeB8_(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.f, i32 noundef %.val.i), !noalias !93
  %i.aa = load ptr, ptr %i.m, align 8, !noalias !93, !nonnull !8, !noundef !8
  %i.ab = load i64, ptr %i.z, align 8, !noalias !93, !noundef !8
  br i1 %.sroa.01.0, label %bb.l, label %bb.k

.loopexit:                                        ; preds = %bb.b, %.backedge.i, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val = load i32, ptr %i.f, align 4, !noundef !8 ; 2 uses
  store i32 %.val, ptr %i.a, align 4
  %.not = icmp eq i32 %.val, 0
  br i1 %.not, label %.loopexit12.sink.split, label %bb.g

bb.g:                                             ; preds = %.loopexit
  br i1 %.sroa.01.0, label %bb.i, label %bb.h

.loopexit12.sink.split:                           ; preds = %.loopexit, %bb.h, %bb.i, %bb.j
  %.sroa.0.0.ph = phi i1 [ true, %bb.h ], [ %i.af, %bb.j ], [ true, %bb.i ], [ false, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit12

.loopexit12:                                      ; preds = %bb.l, %bb.k, %.loopexit12.sink.split
  %.sroa.0.0 = phi i1 [ %.sroa.0.0.ph, %.loopexit12.sink.split ], [ true, %bb.k ], [ true, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0

bb.h:                                             ; preds = %bb.g
  %i.ac = call noundef zeroext i1 @_RNvXNtCskKLDkoKarTP_4core3fmtQNtB2_9FormatterNtB2_5Write9write_strCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 3)
  br i1 %i.ac, label %.loopexit12.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = call noundef zeroext i1 @_RNvXNtCskKLDkoKarTP_4core3fmtQNtB2_9FormatterNtB2_5Write9write_strCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 2)
  br i1 %i.ad, label %.loopexit12.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.c, align 8, !nonnull !8, !align !14, !noundef !8
  %i.af = call noundef zeroext i1 @_RINvXsm_NtCs94G7V7CXYRk_8bitflags6traitsmNtNtB8_6parser8WriteHex9write_hexQNtNtCskKLDkoKarTP_4core3fmt9FormatterECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
  br label %.loopexit12.sink.split

bb.k:                                             ; preds = %bb.f
  %i.ag = call noundef zeroext i1 @_RNvXNtCskKLDkoKarTP_4core3fmtQNtB2_9FormatterNtB2_5Write9write_strCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 3)
  br i1 %i.ag, label %.loopexit12, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.ah = call noundef zeroext i1 @_RNvXNtCskKLDkoKarTP_4core3fmtQNtB2_9FormatterNtB2_5Write9write_strCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab)
  br i1 %i.ah, label %.loopexit12, label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATNtCs6SHYdBec2sV_3url3UrlINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEj1_ECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0)
          to label %.body.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6SHYdBec2sV_3url3UrlECs4KzxGwe94yc_9yara_x_ls.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.d, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #22
          to label %common.resume.i.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6SHYdBec2sV_3url3UrlECs4KzxGwe94yc_9yara_x_ls.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtCs6SHYdBec2sV_3url3UrlINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEECs4KzxGwe94yc_9yara_x_ls.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6SHYdBec2sV_3url3UrlECs4KzxGwe94yc_9yara_x_ls.exit.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs2w2nn1AeeqK_9lsp_types8TextEditENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume.i.i:                                ; preds = %bb.e, %.body.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.g:                                             ; preds = %.body.i.i
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtCs6SHYdBec2sV_3url3UrlINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6SHYdBec2sV_3url3UrlECs4KzxGwe94yc_9yara_x_ls.exit.i.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs2w2nn1AeeqK_9lsp_types8TextEditENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsjUxepGb3YzM_7dashmap7DashMapNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1C_(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %cond = icmp eq i64 %.8.val, 0
  br i1 %cond, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtNtCs7uMgTmySp6A_15crossbeam_utils12cache_padded11CachePaddedINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsjUxepGb3YzM_7dashmap4lock9RawRwLockINtNtNtCs9Ef5aAcmeIW_9hashbrown3raw5inner8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtB2V_4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEEEEEEB5g_.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs7uMgTmySp6A_15crossbeam_utils12cache_padded11CachePaddedINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsjUxepGb3YzM_7dashmap4lock9RawRwLockINtNtNtCs9Ef5aAcmeIW_9hashbrown3raw5inner8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtB2l_4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEEEEEB4G_.exit.i.i: ; preds = %.lr.ph
  %i.a = icmp eq i64 %i.c, %.8.val
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCs7uMgTmySp6A_15crossbeam_utils12cache_padded11CachePaddedINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsjUxepGb3YzM_7dashmap4lock9RawRwLockINtNtNtCs9Ef5aAcmeIW_9hashbrown3raw5inner8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtB2m_4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEEEEEB4H_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs7uMgTmySp6A_15crossbeam_utils12cache_padded11CachePaddedINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsjUxepGb3YzM_7dashmap4lock9RawRwLockINtNtNtCs9Ef5aAcmeIW_9hashbrown3raw5inner8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtB2l_4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEEEEEB4G_.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs7uMgTmySp6A_15crossbeam_utils12cache_padded11CachePaddedINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsjUxepGb3YzM_7dashmap4lock9RawRwLockINtNtNtCs9Ef5aAcmeIW_9hashbrown3raw5inner8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtB2l_4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEEEEEB4G_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [128 x i8], ptr %.0.val, i64 %.sroa.0.0.i.i1 ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  invoke void @_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtCs6SHYdBec2sV_3url3UrlINtNtCsjUxepGb3YzM_7dashmap4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEENtNtNtB6_5alloc5inner6GlobalEB2y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 256, i64 noundef 16)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs7uMgTmySp6A_15crossbeam_utils12cache_padded11CachePaddedINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsjUxepGb3YzM_7dashmap4lock9RawRwLockINtNtNtCs9Ef5aAcmeIW_9hashbrown3raw5inner8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtB2l_4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEEEEEB4G_.exit.i.i unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs7uMgTmySp6A_15crossbeam_utils12cache_padded11CachePaddedINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsjUxepGb3YzM_7dashmap4lock9RawRwLockINtNtNtCs9Ef5aAcmeIW_9hashbrown3raw5inner8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtB2l_4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEEEEEB4G_.exit7.i.i: ; preds = %.lr.ph3
  %i.f = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.g = icmp eq i64 %i.f, %.8.val
  br i1 %i.g, label %.body.i, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp eq i64 %i.c, %.8.val
  br i1 %i.i, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs7uMgTmySp6A_15crossbeam_utils12cache_padded11CachePaddedINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsjUxepGb3YzM_7dashmap4lock9RawRwLockINtNtNtCs9Ef5aAcmeIW_9hashbrown3raw5inner8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtB2l_4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEEEEEB4G_.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs7uMgTmySp6A_15crossbeam_utils12cache_padded11CachePaddedINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsjUxepGb3YzM_7dashmap4lock9RawRwLockINtNtNtCs9Ef5aAcmeIW_9hashbrown3raw5inner8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtB2l_4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEEEEEB4G_.exit7.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  invoke void @_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtCs6SHYdBec2sV_3url3UrlINtNtCsjUxepGb3YzM_7dashmap4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEENtNtNtB6_5alloc5inner6GlobalEB2y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 256, i64 noundef 16)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs7uMgTmySp6A_15crossbeam_utils12cache_padded11CachePaddedINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsjUxepGb3YzM_7dashmap4lock9RawRwLockINtNtNtCs9Ef5aAcmeIW_9hashbrown3raw5inner8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtB2l_4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEEEEEB4G_.exit7.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph3
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

.body.i:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs7uMgTmySp6A_15crossbeam_utils12cache_padded11CachePaddedINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsjUxepGb3YzM_7dashmap4lock9RawRwLockINtNtNtCs9Ef5aAcmeIW_9hashbrown3raw5inner8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtB2l_4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEEEEEB4G_.exit7.i.i, %bb.b
  %i.n = shl nuw nsw i64 %.8.val, 7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.n, i64 noundef 128) #25
  resume { ptr, i32 } %i.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCs7uMgTmySp6A_15crossbeam_utils12cache_padded11CachePaddedINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsjUxepGb3YzM_7dashmap4lock9RawRwLockINtNtNtCs9Ef5aAcmeIW_9hashbrown3raw5inner8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtB2m_4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEEEEEB4H_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs7uMgTmySp6A_15crossbeam_utils12cache_padded11CachePaddedINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsjUxepGb3YzM_7dashmap4lock9RawRwLockINtNtNtCs9Ef5aAcmeIW_9hashbrown3raw5inner8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtB2l_4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEEEEEB4G_.exit.i.i
  %i.o = shl nuw nsw i64 %.8.val, 7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.o, i64 noundef 128) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtNtCs7uMgTmySp6A_15crossbeam_utils12cache_padded11CachePaddedINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsjUxepGb3YzM_7dashmap4lock9RawRwLockINtNtNtCs9Ef5aAcmeIW_9hashbrown3raw5inner8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtB2V_4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEEEEEEB5g_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtNtCs7uMgTmySp6A_15crossbeam_utils12cache_padded11CachePaddedINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsjUxepGb3YzM_7dashmap4lock9RawRwLockINtNtNtCs9Ef5aAcmeIW_9hashbrown3raw5inner8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtB2V_4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEEEEEEB5g_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCs7uMgTmySp6A_15crossbeam_utils12cache_padded11CachePaddedINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsjUxepGb3YzM_7dashmap4lock9RawRwLockINtNtNtCs9Ef5aAcmeIW_9hashbrown3raw5inner8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtB2m_4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEEEEEB4H_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtCs6m2LFPinx2P_9async_lsp5ErrorENtNtB4_6marker4SendEL_EEECs4KzxGwe94yc_9yara_x_ls(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !15, !invariant.load !8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBG_3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtCs6m2LFPinx2P_9async_lsp5ErrorENtNtB4_6marker4SendEL_EECs4KzxGwe94yc_9yara_x_ls.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !16, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBG_3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtCs6m2LFPinx2P_9async_lsp5ErrorENtNtB4_6marker4SendEL_EECs4KzxGwe94yc_9yara_x_ls.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !15, !invariant.load !8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtB7_3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtCs6m2LFPinx2P_9async_lsp5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !16, !invariant.load !8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #25
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtB7_3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtCs6m2LFPinx2P_9async_lsp5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls.exit4.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtB7_3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtCs6m2LFPinx2P_9async_lsp5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBG_3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtCs6m2LFPinx2P_9async_lsp5ErrorENtNtB4_6marker4SendEL_EECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs6m2LFPinx2P_9async_lsp5ErrorENtNtB4_6marker4SendEL_EEECs4KzxGwe94yc_9yara_x_ls(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !15, !invariant.load !8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs6m2LFPinx2P_9async_lsp5ErrorENtNtB4_6marker4SendEL_EECs4KzxGwe94yc_9yara_x_ls.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !16, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs6m2LFPinx2P_9async_lsp5ErrorENtNtB4_6marker4SendEL_EECs4KzxGwe94yc_9yara_x_ls.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !15, !invariant.load !8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtCs6m2LFPinx2P_9async_lsp5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !16, !invariant.load !8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #25
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtCs6m2LFPinx2P_9async_lsp5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls.exit4.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtCs6m2LFPinx2P_9async_lsp5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs6m2LFPinx2P_9async_lsp5ErrorENtNtB4_6marker4SendEL_EECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !alias.scope !122, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEECs4KzxGwe94yc_9yara_x_ls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !128, !nonnull !8, !noundef !8
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !129
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6i8zKcEiGNL_14regex_automata4util8captures9GroupInfoECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs6i8zKcEiGNL_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6i8zKcEiGNL_14regex_automata4util8captures9GroupInfoECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs6i8zKcEiGNL_14regex_automata4util10primitives11NonMaxUsizeEEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #22
          to label %.body.i.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6i8zKcEiGNL_14regex_automata4util8captures9GroupInfoECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i: ; preds = %bb.c, %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs6i8zKcEiGNL_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBK_3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs6i8zKcEiGNL_14regex_automata4util10primitives11NonMaxUsizeEEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6i8zKcEiGNL_14regex_automata4util8captures9GroupInfoECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs6i8zKcEiGNL_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
