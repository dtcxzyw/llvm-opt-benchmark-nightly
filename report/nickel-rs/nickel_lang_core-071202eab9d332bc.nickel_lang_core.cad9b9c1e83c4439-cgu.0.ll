Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37290
inline.NumDeleted: 15086
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN16nickel_lang_core5cache11SourceCache22id_or_new_timestamp_of17hc7d7c960b93a33e8E:bb.a
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.ae = invoke fastcc noundef zeroext i1 @"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17h91a3134dbce3fa18E"(ptr nonnull readonly align 8 dereferenceable(32) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ad)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph.i.i
  br i1 %i.ae, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit", label %bb.d, !prof !154

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit.thread", !prof !147

bb.d:                                             ; preds = %.noexc
  %i.ai = add i16 %.sroa.06.0.i33.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ak = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i, %i.ak
  br label %bb.c

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit.thread", %bb.g, %bb.i, %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..cache..SourcePath$GT$17h6c9389b82d5dab2fE"(ptr noalias noundef align 8 dereferenceable(32) %i.g) #86
  resume { ptr, i32 } %lpad.phi

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit": ; preds = %.noexc
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.an = getelementptr inbounds i8, ptr %i.ac, i64 -16 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !range !291, !noundef !145 ; 2 uses
  %i.ap = icmp samesign ugt i32 %i.ao, 999999999
  %i.aq = zext nneg i32 %i.ao to i64
  %i.ar = add nsw i64 %i.aq, -999999999
  %i.as = select i1 %i.ap, i64 %i.ar, i64 0
  switch i64 %i.as, label %bb.h [
    i64 0, label %bb.i
    i64 1, label %bb.k
    i64 2, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit.thread"
  ]

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit.thread": ; preds = %._crit_edge.i.i, %bb.a, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !59764)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !59765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !59766
  invoke void @_ZN3std3sys2fs8metadata17h10d72764d6b6a0fdE(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit.thread"
  %i.at = load i64, ptr %i.c, align 8, !range !175, !noalias !59766, !noundef !145 ; 2 uses
  %i.au = icmp eq i64 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !59767 ; 2 uses
  br i1 %i.au, label %.thread47, label %bb.g

.thread47:                                        ; preds = %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !59766
  store ptr %i.aw, ptr %i.f, align 8, !alias.scope !59764, !noalias !59768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !59765
  br label %bb.t

bb.g:                                             ; preds = %.noexc24
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.0..sroa_idx.i, i64 160, i1 false), !noalias !59765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !59766
  store i64 %i.at, ptr %i.d, align 8, !noalias !59765
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !59765
  invoke void @_ZN3std2fs8Metadata8modified17hb29d135cfbbe75c1E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.d)
          to label %bb.s unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit"
  unreachable

bb.i:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !59769)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !59770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !59771
  invoke void @_ZN3std3sys2fs8metadata17h10d72764d6b6a0fdE(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %bb.i
  %i.ax = load i64, ptr %i.a, align 8, !range !175, !noalias !59771, !noundef !145 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !59772 ; 2 uses
  br i1 %i.ay, label %.thread, label %bb.j

.thread:                                          ; preds = %.noexc29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !59771
  store ptr %i.ba, ptr %i.e, align 8, !alias.scope !59769, !noalias !59773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !59770
  br label %bb.m

bb.j:                                             ; preds = %.noexc29
  %.sroa.9.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5.0..sroa_idx.i27, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.0..sroa_idx.i26, i64 160, i1 false), !noalias !59770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !59771
  store i64 %i.ax, ptr %i.b, align 8, !noalias !59770
  %.sroa.4.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx.i28, align 8, !noalias !59770
  invoke void @_ZN3std2fs8Metadata8modified17hb29d135cfbbe75c1E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.b)
          to label %bb.l unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit"
  %i.bb = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.bc = load i32, ptr %i.bb, align 8, !noundef !145
  store i32 %i.bc, ptr %0, align 8
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !range !293 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !59770
  %i.bd = icmp eq i32 %.pre, 1000000000
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread, %bb.l
  %i.be = load ptr, ptr %i.e, align 8, !nonnull !145, !noundef !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.bf = load i64, ptr %i.e, align 8, !noundef !145 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bg = load i64, ptr %i.am, align 8, !noundef !145
  %i.bh = icmp eq i64 %i.bg, %i.bf
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = load i32, ptr %i.an, align 8, !range !59774, !noundef !145
  %i.bj = icmp eq i32 %i.bi, %.pre
  br i1 %i.bj, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  store i64 %i.bf, ptr %0, align 8
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.bl = load i32, ptr %i.bk, align 8, !noundef !145
  store i32 %i.bl, ptr %0, align 8
  br label %bb.v

bb.r:                                             ; preds = %bb.t, %bb.m
  %.sink = phi ptr [ %i.bn, %bb.t ], [ %i.be, %bb.m ]
  store ptr %.sink, ptr %0, align 8
  br label %bb.v

bb.s:                                             ; preds = %bb.g
  %.phi.trans.insert40 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre41 = load i32, ptr %.phi.trans.insert40, align 8, !range !293 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !59765
  %i.bm = icmp eq i32 %.pre41, 1000000000
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread47, %bb.s
  %i.bn = load ptr, ptr %i.f, align 8, !nonnull !145, !noundef !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.u:                                             ; preds = %bb.s
  %i.bo = load i64, ptr %i.f, align 8, !noundef !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.bo, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.k, %bb.u, %bb.q, %bb.p, %bb.r
  %.sink50 = phi i32 [ 1000000001, %bb.r ], [ %.pre, %bb.p ], [ 1000000000, %bb.q ], [ %.pre41, %bb.u ], [ 1000000000, %bb.k ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink50, ptr %i.bp, align 8
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..cache..SourcePath$GT$17h6c9389b82d5dab2fE"(ptr noalias noundef align 8 dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN16nickel_lang_core5cache11SourceCache3new17hb9f0fe45dd8ac0a4E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([296 x i8]) align 8 captures(none) dereferenceable(296) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [488 x i8], align 8               ; 8 uses
  %i.e = alloca [152 x i8], align 8               ; 24 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = alloca [80 x i8], align 8                ; 14 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !59891
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59892)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !59893
  %i.i = tail call noundef dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, 9) 1) #83, !noalias !59894 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

common.resume:                                    ; preds = %bb.ap, %bb.an, %bb.ao, %.body.i.i.i19, %bb.ak, %bb.al, %.body.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.k, %.body.i.i.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i19 ], [ %eh.lpad-body.i.i.i, %bb.al ], [ %eh.lpad-body.i.i.i, %bb.ak ], [ %i.bz, %bb.ao ], [ %i.bz, %bb.an ], [ %i.bz, %bb.ap ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i:                                      ; preds = %bb.c, %bb.b
  %.sroa.7.03640.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ 1, %bb.b ]
  %i.k = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr86drop_in_place$LT$core..array..Guard$LT$$LP$alloc..string..String$C$$RF$str$RP$$GT$$GT$17h107459bb03bead24E"(ptr nonnull align 8 %i.g, i64 %.sroa.7.03640.i.i.i.i.i) #86, !noalias !59891
  br label %common.resume

bb.b:                                             ; preds = %bb.d
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 22, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2913) #82
          to label %.noexc.i.i.i.i.i unwind label %.body.i.i.i, !noalias !59895

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2913) #82
          to label %.noexc6.i.i.i.i.i unwind label %.body.i.i.i, !noalias !59895

.noexc6.i.i.i.i.i:                                ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) @1072, i64 16, i1 false), !noalias !59896
  store i64 16, ptr %i.g, align 8, !alias.scope !59892, !noalias !59897
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !59892, !noalias !59897
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 16, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !59892, !noalias !59897
  %.sroa.431.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @1089, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !59892, !noalias !59897
  %.sroa.532.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 165643, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !59892, !noalias !59897
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !59893
  %i.l = tail call noundef dereferenceable_or_null(22) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 22, i64 noundef range(i64 1, 9) 1) #83, !noalias !59898 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %_ZN4core5array5drain16drain_array_with17h08a2da7b0cf678ceE.exit

_ZN4core5array5drain16drain_array_with17h08a2da7b0cf678ceE.exit: ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.l, ptr noundef nonnull align 1 dereferenceable(22) @1073, i64 22, i1 false), !noalias !59899
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 22, ptr %i.n, align 8, !alias.scope !59892, !noalias !59897
  %.sroa.2.0..sroa_idx.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.l, ptr %.sroa.2.0..sroa_idx.1.i.i.i.i.i, align 8, !alias.scope !59892, !noalias !59897
  %.sroa.3.0..sroa_idx.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 22, ptr %.sroa.3.0..sroa_idx.1.i.i.i.i.i, align 8, !alias.scope !59892, !noalias !59897
  %.sroa.431.0..sroa_idx.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr @1090, ptr %.sroa.431.0..sroa_idx.1.i.i.i.i.i, align 8, !alias.scope !59892, !noalias !59897
  %.sroa.532.0..sroa_idx.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i64 18531, ptr %.sroa.532.0..sroa_idx.1.i.i.i.i.i, align 8, !alias.scope !59892, !noalias !59897
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !59900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.59.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !59891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !59901
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59902)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.f, i8 0, i64 17, i1 false), !noalias !59901
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59903)
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 5 uses
  store i64 0, ptr %i.q, align 8, !alias.scope !59904, !noalias !59905
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  store i64 2, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !59904, !noalias !59905
  store i64 -9223372036854775807, ptr %i.e, align 8, !alias.scope !59906, !noalias !59907
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59908)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !59909
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfaed3d99e6b64e75E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.q)
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !59900

.noexc.i.i.i.i:                                   ; preds = %_ZN4core5array5drain16drain_array_with17h08a2da7b0cf678ceE.exit
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_parser..files..File$GT$$GT$$GT$17h1bd2a092232decdaE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %bb.f unwind label %bb.e, !noalias !59910

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !59910
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ae, %bb.n, %bb.i, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.e
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.x, %bb.i ], [ %i.bg, %bb.ae ], [ %i.r, %bb.e ], [ %i.aa, %bb.n ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr362drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$core..array..iter..IntoIter$LT$$LP$alloc..string..String$C$$RF$str$RP$$C$2_usize$GT$$C$nickel_lang_parser..files..Files..new$LT$alloc..string..String$C$$RF$str$C$$u5b$$LP$alloc..string..String$C$$RF$str$RP$$u3b$$u20$2$u5d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hf5050854868d5643E"(ptr noalias noundef align 8 dereferenceable(152) %i.e) #86
          to label %.body.i.i.i19 unwind label %bb.ai, !noalias !59900

.loopexit.i.i.i.i:                                ; preds = %bb.ah, %bb.ad, %bb.aa, %bb.z, %bb.v, %bb.m
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.w, %_ZN4core5array5drain16drain_array_with17h08a2da7b0cf678ceE.exit
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.f:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !59910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !59909
  %.pre.i.i.i.i.i = load i64, ptr %i.e, align 8, !range !200, !alias.scope !59908, !noalias !59910 ; 2 uses
  %i.s = icmp ne i64 %.pre.i.i.i.i.i, -9223372036854775807
  call void @llvm.assume(i1 %i.s)
  %.not.i.not.i.i.i = icmp eq i64 %.pre.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.not.i.i.i, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !59900
  store i64 1, ptr %i.d, align 8, !noalias !59900
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.t, align 8, !noalias !59900
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.u, align 8, !noalias !59900
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !59900
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !59911
  %i.v = call noundef align 8 dereferenceable_or_null(488) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 488, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !59911 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %bb.k, !prof !155

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 488) #82
          to label %.noexc13.i.i.i.i unwind label %bb.i, !noalias !59900

.noexc13.i.i.i.i:                                 ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr128drop_in_place$LT$alloc..rc..RcInner$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_parser..files..File$C$8_usize$GT$$GT$$GT$17h192ada6913958442E"(ptr noalias noundef nonnull align 8 dereferenceable(488) %i.d) #86
          to label %.body.i.i.i.i unwind label %bb.j, !noalias !59900

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !59900
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %i.v, ptr noundef nonnull align 8 dereferenceable(488) %i.d, i64 488, i1 false), !noalias !59900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !59900
  store ptr %i.v, ptr %i.f, align 8, !alias.scope !59902, !noalias !59912
  br label %.preheader

.preheader:                                       ; preds = %bb.k, %bb.f
  br label %bb.l

bb.l:                                             ; preds = %.backedge, %.preheader
  %i.z = load i64, ptr %i.e, align 8, !range !200, !noalias !59900, !noundef !145 ; 2 uses
  %.not.i15.i.i.i.i = icmp eq i64 %i.z, -9223372036854775807
  br i1 %.not.i15.i.i.i.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !59913
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfaed3d99e6b64e75E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.q)
          to label %.noexc17.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !59900

.noexc17.i.i.i.i:                                 ; preds = %bb.m
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_parser..files..File$GT$$GT$$GT$17h1bd2a092232decdaE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %bb.o unwind label %bb.n, !noalias !59914

bb.n:                                             ; preds = %.noexc17.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !59914
  br label %.body.i.i.i.i

bb.o:                                             ; preds = %.noexc17.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !59914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !59913
  %.pre.i16.i.i.i.i = load i64, ptr %i.e, align 8, !range !200, !noalias !59900
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.ab = phi i64 [ %.pre.i16.i.i.i.i, %bb.o ], [ %i.z, %bb.l ]
  %.not7.i.i.i.i = icmp eq i64 %i.ab, -9223372036854775808
  br i1 %.not7.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !59902, !noalias !59912, !noundef !145
  %.not8.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not8.i.i.i.i, label %bb.w, label %bb.v, !prof !147

bb.r:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !59915)
  call void @llvm.experimental.noalias.scope.decl(metadata !59916)
  call void @llvm.experimental.noalias.scope.decl(metadata !59917)
  call void @llvm.experimental.noalias.scope.decl(metadata !59918)
  call void @llvm.experimental.noalias.scope.decl(metadata !59919)
  %i.ad = load i64, ptr %i.q, align 8, !alias.scope !59920, !noalias !59900, !noundef !145 ; 3 uses
  %i.ae = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !59920, !noalias !59900, !noundef !145 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !59921)
  call void @llvm.experimental.noalias.scope.decl(metadata !59922)
  %i.af = icmp eq i64 %i.ae, %i.ad
  br i1 %i.af, label %"_ZN4core3ptr362drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$core..array..iter..IntoIter$LT$$LP$alloc..string..String$C$$RF$str$RP$$C$2_usize$GT$$C$nickel_lang_parser..files..Files..new$LT$alloc..string..String$C$$RF$str$C$$u5b$$LP$alloc..string..String$C$$RF$str$RP$$u3b$$u20$2$u5d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hf5050854868d5643E.exit.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = sub nuw i64 %i.ae, %i.ad
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %.sroa.59.0..sroa_idx.i, i64 %i.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !59923)
  br label %bb.t

bb.t:                                             ; preds = %"_ZN4core3ptr60drop_in_place$LT$$LP$alloc..string..String$C$$RF$str$RP$$GT$17h82d3f244458feac9E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.s
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.s ], [ %i.aj, %"_ZN4core3ptr60drop_in_place$LT$$LP$alloc..string..String$C$$RF$str$RP$$GT$17h82d3f244458feac9E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aj = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !range !146, !alias.scope !59924, !noalias !59900, !noundef !145 ; 2 uses
  %i.ak = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %"_ZN4core3ptr60drop_in_place$LT$$LP$alloc..string..String$C$$RF$str$RP$$GT$17h82d3f244458feac9E.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = getelementptr i8, ptr %i.ai, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !59925, !noalias !59900, !nonnull !145, !noundef !145
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !59926
  br label %"_ZN4core3ptr60drop_in_place$LT$$LP$alloc..string..String$C$$RF$str$RP$$GT$17h82d3f244458feac9E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr60drop_in_place$LT$$LP$alloc..string..String$C$$RF$str$RP$$GT$17h82d3f244458feac9E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.u, %bb.t
  %i.am = icmp eq i64 %i.aj, %i.ag
  br i1 %i.am, label %"_ZN4core3ptr362drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$core..array..iter..IntoIter$LT$$LP$alloc..string..String$C$$RF$str$RP$$C$2_usize$GT$$C$nickel_lang_parser..files..Files..new$LT$alloc..string..String$C$$RF$str$C$$u5b$$LP$alloc..string..String$C$$RF$str$RP$$u3b$$u20$2$u5d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hf5050854868d5643E.exit.i.i.i.i", label %bb.t

"_ZN4core3ptr362drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$core..array..iter..IntoIter$LT$$LP$alloc..string..String$C$$RF$str$RP$$C$2_usize$GT$$C$nickel_lang_parser..files..Files..new$LT$alloc..string..String$C$$RF$str$C$$u5b$$LP$alloc..string..String$C$$RF$str$RP$$u3b$$u20$2$u5d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hf5050854868d5643E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr60drop_in_place$LT$$LP$alloc..string..String$C$$RF$str$RP$$GT$17h82d3f244458feac9E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.r
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_parser..files..File$GT$$GT$$GT$17h1bd2a092232decdaE"(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.e)
          to label %_ZN18nickel_lang_parser5files5Files3new17hbfcbadc27aa6adb1E.exit unwind label %bb.aj, !noalias !59901

bb.v:                                             ; preds = %bb.q
  %i.an = invoke fastcc noundef align 8 dereferenceable(472) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h74a78aeff33368e3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.y unwind label %.loopexit.i.i.i.i, !noalias !59912 ; 4 uses

bb.w:                                             ; preds = %bb.q
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #82
          to label %bb.x unwind label %.loopexit.split-lp.i.i.i.i, !noalias !59900

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.ao = load i64, ptr %i.an, align 8, !range !164, !noalias !59900, !noundef !145
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  br i1 %i.ap, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ar = load i8, ptr %i.p, align 8, !alias.scope !59902, !noalias !59912, !noundef !145
  %i.as = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h3811c98d28a28d9eE"(ptr noalias noundef align 8 dereferenceable(152) %i.e, ptr noalias noundef align 8 dereferenceable(80) %i.aq, i8 noundef %i.ar)
          to label %bb.ac unwind label %.loopexit.i.i.i.i, !noalias !59900

bb.aa:                                            ; preds = %bb.y
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 464 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !noalias !59900, !noundef !145
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 456 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !noalias !59900, !noundef !145
  %i.ax = sub i64 %i.au, %i.aw                    ; 2 uses
  %i.ay = sub i64 8, %i.ax
  invoke fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h34bbd9c07e777d63E"(ptr noalias noundef align 8 dereferenceable(464) %i.aq, ptr noalias noundef align 8 dereferenceable(152) %i.e, i64 noundef %i.ay)
          to label %bb.ab unwind label %.loopexit.i.i.i.i, !noalias !59900

bb.ab:                                            ; preds = %bb.aa
  %i.az = load i64, ptr %i.at, align 8, !noalias !59900, !noundef !145
  %i.ba = load i64, ptr %i.av, align 8, !noalias !59900, !noundef !145
  %i.bb = add i64 %i.ax, %i.ba
  %i.bc = sub i64 %i.az, %i.bb
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.sroa.03.0.i.i.i.i = phi i64 [ %i.bc, %bb.ab ], [ %i.as, %bb.z ]
  %i.bd = load i64, ptr %i.o, align 8, !alias.scope !59902, !noalias !59912, !noundef !145
  %i.be = add i64 %i.bd, %.sroa.03.0.i.i.i.i
  store i64 %i.be, ptr %i.o, align 8, !alias.scope !59902, !noalias !59912
  %i.bf = load i64, ptr %i.e, align 8, !range !200, !noalias !59900, !noundef !145 ; 2 uses
  %.not.i21.i.i.i.i = icmp eq i64 %i.bf, -9223372036854775807
  br i1 %.not.i21.i.i.i.i, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !59927
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfaed3d99e6b64e75E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.q)
          to label %.noexc23.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !59900

.noexc23.i.i.i.i:                                 ; preds = %bb.ad
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_parser..files..File$GT$$GT$$GT$17h1bd2a092232decdaE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %bb.af unwind label %bb.ae, !noalias !59928

bb.ae:                                            ; preds = %.noexc23.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !59928
  br label %.body.i.i.i.i

bb.af:                                            ; preds = %.noexc23.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !59928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !59927
  %.pre.i22.i.i.i.i = load i64, ptr %i.e, align 8, !range !200, !noalias !59900
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %i.bh = phi i64 [ %.pre.i22.i.i.i.i, %bb.af ], [ %i.bf, %bb.ac ]
  %.not9.i.i.i.i = icmp eq i64 %i.bh, -9223372036854775808
  br i1 %.not9.i.i.i.i, label %.backedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$9add_level17haa5312a21fa76507E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.backedge unwind label %.loopexit.i.i.i.i, !noalias !59912

.backedge:                                        ; preds = %bb.ah, %bb.ag
  br label %bb.l

bb.ai:                                            ; preds = %.body.i.i.i.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !59900
  unreachable

bb.aj:                                            ; preds = %"_ZN4core3ptr362drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$core..array..iter..IntoIter$LT$$LP$alloc..string..String$C$$RF$str$RP$$C$2_usize$GT$$C$nickel_lang_parser..files..Files..new$LT$alloc..string..String$C$$RF$str$C$$u5b$$LP$alloc..string..String$C$$RF$str$RP$$u3b$$u20$2$u5d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hf5050854868d5643E.exit.i.i.i.i"
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i19

.body.i.i.i19:                                    ; preds = %bb.aj, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bj, %bb.aj ], [ %.pn.i.i.i.i, %.body.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !59929)
  call void @llvm.experimental.noalias.scope.decl(metadata !59930)
  %i.bk = load ptr, ptr %i.f, align 8, !alias.scope !59931, !noalias !59901, !noundef !145 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %common.resume, label %bb.ak

bb.ak:                                            ; preds = %.body.i.i.i19
  %i.bm = load i64, ptr %i.bk, align 8, !noalias !59932, !noundef !145
  %i.bn = add i64 %i.bm, -1                       ; 2 uses
  store i64 %i.bn, ptr %i.bk, align 8, !noalias !59932
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.al, label %common.resume

bb.al:                                            ; preds = %bb.ak
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha3d18f83ba1e1015E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.am, !noalias !59901

bb.am:                                            ; preds = %bb.al
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !59901
  unreachable

_ZN18nickel_lang_parser5files5Files3new17hbfcbadc27aa6adb1E.exit: ; preds = %"_ZN4core3ptr362drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$core..array..iter..IntoIter$LT$$LP$alloc..string..String$C$$RF$str$RP$$C$2_usize$GT$$C$nickel_lang_parser..files..Files..new$LT$alloc..string..String$C$$RF$str$C$$u5b$$LP$alloc..string..String$C$$RF$str$RP$$u3b$$u20$2$u5d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hf5050854868d5643E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !59900
  %1 = load <3 x i64>, ptr %i.f, align 8, !noalias !59933
  %2 = shufflevector <3 x i64> %1, <3 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %.sroa.2.0.copyload3.i = load i64, ptr %i.f, align 8, !noalias !59933 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !59901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store <4 x i64> %2, ptr %i.h, align 8
  %i.bq = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8, !range !153, !noalias !59934, !noundef !145
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = inttoptr i64 %.sroa.2.0.copyload3.i to ptr ; 2 uses
  br i1 %i.bt, label %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i", !prof !154

._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i: ; preds = %_ZN18nickel_lang_parser5files5Files3new17hbfcbadc27aa6adb1E.exit
  %.pre.i.i = load i64, ptr %i.bq, align 8, !noalias !59935
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !59935
  br label %bb.aq

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i": ; preds = %_ZN18nickel_lang_parser5files5Files3new17hbfcbadc27aa6adb1E.exit
  %i.bv = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.an    ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i"
  %i.bw = extractvalue { i64, i64 } %i.bv, 0
  %i.bx = extractvalue { i64, i64 } %i.bv, 1      ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !noalias !59936
  store i8 1, ptr %i.br, align 8, !noalias !59936
  br label %bb.aq

bb.an:                                            ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i"
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ca = icmp eq i64 %.sroa.2.0.copyload3.i, 0
  br i1 %i.ca, label %common.resume, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cb = load i64, ptr %i.bu, align 8, !noalias !59937, !noundef !145
  %i.cc = add i64 %i.cb, -1                       ; 2 uses
  store i64 %i.cc, ptr %i.bu, align 8, !noalias !59937
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.ap, label %common.resume

bb.ap:                                            ; preds = %bb.ao
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha3d18f83ba1e1015E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.h)
          to label %common.resume unwind label %bb.ar

bb.aq:                                            ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i
  %.pre-phi43 = phi i64 [ %i.bx, %.noexc ], [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i ] ; 3 uses
  %.pre-phi = phi i64 [ %i.bw, %.noexc ], [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i ] ; 4 uses
  %i.ce = add i64 %.pre-phi, 1
  %i.cf = add i64 %.pre-phi, 2
  %i.cg = add i64 %.pre-phi, 3
  store i64 %i.cg, ptr %i.bq, align 8, !noalias !59938
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  %.sroa.4.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.pre-phi, ptr %.sroa.4.0..sroa_idx53, align 8
  %.sroa.5.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.pre-phi43, ptr %.sroa.5.0..sroa_idx54, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ce, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.pre-phi43, ptr %.sroa.557.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.560.0..sroa_idx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.cf, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.pre-phi43, ptr %.sroa.513.0..sroa_idx, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr null, ptr %i.cl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.ar:                                            ; preds = %bb.ap
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_ZN16nickel_lang_core5cache11SourceCache4name17he16979f4a51365d7E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = tail call { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i32 noundef %1)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_ZN16nickel_lang_core5cache11SourceCache5id_of17h527c5a735ce3e8ffE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(296) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %1, align 8, !range !287, !noundef !145
  %i.c = icmp sgt i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !145, !noundef !145
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !145
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i8, ptr %i.h, align 8, !range !167, !noundef !145
  call void @_ZN16nickel_lang_core5cache11SourceCache22id_or_new_timestamp_of17hc7d7c960b93a33e8E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef %i.g, i8 noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i32, ptr %i.j, align 8, !range !291, !noundef !145 ; 2 uses
  %i.l = icmp eq i32 %i.k, 1000000001
  br i1 %i.l, label %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$nickel_lang_core..cache..SourceState$C$std..io..error..Error$GT$$GT$17heb23d13669fb7dc9E.exit", label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59952)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !59952, !noalias !59953, !noundef !145
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit.thread", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i = load i64, ptr %i.q, align 8, !alias.scope !59952, !noalias !59953, !noundef !145
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val5.i = load i64, ptr %i.r, align 8, !alias.scope !59952, !noalias !59953, !noundef !145
  %i.s = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17haf7caa9d740b7e5fE(i64 %.val.i, i64 %.val5.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !59952 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59955)
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !59956, !noalias !59957, !noundef !145 ; 2 uses
  %i.x = load ptr, ptr %i.p, align 8, !alias.scope !59956, !noalias !59957, !nonnull !145, !noundef !145 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ao, %bb.g ]
  %.pn.i.i = phi i64 [ %i.s, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.w      ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.y, align 1, !noalias !59958 ; 2 uses
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.06.0.i33.i.i = phi i16 [ %i.an, %bb.f ], [ %i.aa, %bb.e ] ; 3 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = add i64 %.sroa.01.0.i.i.i, %i.ac
  %i.ae = and i64 %i.ad, %i.w
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [56 x i8], ptr %i.x, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -56
  %i.ai = tail call fastcc noundef zeroext i1 @"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17h91a3134dbce3fa18E"(ptr nonnull readonly align 8 dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ah), !noalias !59959
  br i1 %i.ai, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit", label %bb.f, !prof !154

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %bb.g, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit.thread", !prof !147

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.am = add i16 %.sroa.06.0.i33.i.i, -1
  %i.an = and i16 %i.am, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ao = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ap = add i64 %.sroa.01.0.i.i.i, %i.ao
  br label %bb.e

bb.h:                                             ; preds = %bb.b
  %.sroa.017.0.copyload = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not23 = icmp eq i32 %i.k, 1000000000          ; 2 uses
  %.sroa.022.0.extract.trunc = trunc i64 %.sroa.017.0.copyload to i32
  %.sroa.6.0 = select i1 %.not23, i32 %.sroa.022.0.extract.trunc, i32 undef
  %.sroa.0.0 = zext i1 %.not23 to i32
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit.thread"

"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$nickel_lang_core..cache..SourceState$C$std..io..error..Error$GT$$GT$17heb23d13669fb7dc9E.exit": ; preds = %bb.b
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h02aac197275825a2E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit.thread"

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit.thread": ; preds = %._crit_edge.i.i, %bb.c, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit", %bb.h, %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$nickel_lang_core..cache..SourceState$C$std..io..error..Error$GT$$GT$17heb23d13669fb7dc9E.exit"
  %.sroa.6.1 = phi i32 [ undef, %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$nickel_lang_core..cache..SourceState$C$std..io..error..Error$GT$$GT$17heb23d13669fb7dc9E.exit" ], [ %.sroa.6.0, %bb.h ], [ %i.at, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit" ], [ undef, %bb.c ], [ undef, %._crit_edge.i.i ]
  %.sroa.0.1 = phi i32 [ 0, %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$nickel_lang_core..cache..SourceState$C$std..io..error..Error$GT$$GT$17heb23d13669fb7dc9E.exit" ], [ %.sroa.0.0, %bb.h ], [ 1, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit" ], [ 0, %bb.c ], [ 0, %._crit_edge.i.i ]
  %i.aq = insertvalue { i32, i32 } poison, i32 %.sroa.0.1, 0
  %i.ar = insertvalue { i32, i32 } %i.aq, i32 %.sroa.6.1, 1
  ret { i32, i32 } %i.ar

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit": ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.at = load i32, ptr %i.as, align 8, !noundef !145
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1e099ad162abced4E.exit.thread"
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_ZN16nickel_lang_core5cache11SourceCache6source17h841fda6f30e2d0a1E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = tail call { ptr, i64 } @_ZN18nickel_lang_parser5files5Files6source17h9b34b2be1e64ff4fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i32 noundef %1)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core5cache11SourceCache8add_file17he63c1a636c621117E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 7 uses
  %i.b = alloca [176 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %.sroa.0.0.copyload = load i64, ptr %2, align 8, !alias.scope !59976 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !59976, !nonnull !145, !noundef !145 ; 4 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !59976 ; 2 uses
end_hunk_0
