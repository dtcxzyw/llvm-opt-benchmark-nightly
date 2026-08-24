Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_http-9a8611a24ee00448.actix_http.2387a03c31849639-cgu.0?download=true
inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 295
begin_hunk_0_@_ZN10actix_http2h17encoder16TransferEncoding6encode17hdc9482252fe2629fE:bb.a
  store i64 1, ptr %i.bc, align 8
  %i.bd = call fastcc noundef ptr @_ZN3std2io5Write9write_fmt17ha7f7a287cc9fb0ebE(ptr noalias noundef align 8 dereferenceable(8) %i.j, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.i) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not12 = icmp eq ptr %i.bd, null
  br i1 %.not12, label %bb.u, label %bb.p

bb.o:                                             ; preds = %_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit22, %_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit16
  %i.be = phi i8 [ 0, %_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit22 ], [ 1, %_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit16 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.be, ptr %i.bf, align 1
  store i8 0, ptr %0, align 8
  br label %bb.ad

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.bd, ptr %i.f, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.bg = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #45 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.q, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hac59a83f80c597f7E.exit", !prof !42

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #46
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h85474bca0acdf2a3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #47
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

bb.t:                                             ; preds = %bb.r
  resume { ptr, i32 } %i.bi

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hac59a83f80c597f7E.exit": ; preds = %bb.p
  store ptr %i.bd, ptr %i.bg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bk = call noundef nonnull ptr @_ZN3std2io5error5Error4_new17h6d8eca976092d069E(i8 noundef 40, ptr noundef nonnull align 1 %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @9)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.bl, align 8
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ad

bb.u:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bm = add i64 %3, 2                           ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !4
  %i.br = sub i64 %i.bq, %i.bo                    ; 2 uses
  %.not13 = icmp ugt i64 %i.bm, %i.br
  br i1 %.not13, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bs = call noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.bm, i1 noundef zeroext true) ; 0 uses
  %.pre = load i64, ptr %i.bn, align 8, !alias.scope !486, !noalias !489 ; 2 uses
  %.pre26 = load i64, ptr %i.bp, align 8, !alias.scope !486, !noalias !489
  %.pre27 = sub i64 %.pre26, %.pre
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.pre-phi = phi i64 [ %i.br, %bb.u ], [ %.pre27, %bb.v ]
  %i.bt = phi i64 [ %i.bo, %bb.u ], [ %.pre, %bb.v ]
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %.not.i17 = icmp ugt i64 %3, %.pre-phi
  br i1 %.not.i17, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bu = call noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %3, i1 noundef zeroext true), !noalias !489 ; 0 uses
  %.pre.i18 = load i64, ptr %i.bn, align 8, !alias.scope !486, !noalias !489
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bv = phi i64 [ %i.bt, %bb.w ], [ %.pre.i18, %bb.x ]
  %i.bw = load ptr, ptr %4, align 8, !alias.scope !486, !noalias !489, !nonnull !4, !noundef !4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull readonly align 1 %2, i64 %3, i1 false)
  %i.by = load i64, ptr %i.bp, align 8, !alias.scope !486, !noalias !489, !noundef !4 ; 2 uses
  %i.bz = load i64, ptr %i.bn, align 8, !alias.scope !486, !noalias !489, !noundef !4 ; 2 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 2 uses
  %i.cb = icmp ugt i64 %3, %i.ca
  br i1 %i.cb, label %bb.z, label %_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit19, !prof !282

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !491
  store i64 %3, ptr %i.c, align 8, !noalias !491
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ca, ptr %i.cc, align 8, !noalias !491
  call void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) #46, !noalias !489
  unreachable

_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit19: ; preds = %bb.y
  %i.cd = add i64 %i.bz, %3                       ; 3 uses
  store i64 %i.cd, ptr %i.bn, align 8, !alias.scope !486, !noalias !489
  call void @llvm.experimental.noalias.scope.decl(metadata !492)
  %i.ce = sub i64 %i.by, %i.cd
  %.not.i20 = icmp ult i64 %i.ce, 2
  br i1 %.not.i20, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit19
  %i.cf = call noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 2, i1 noundef zeroext true), !noalias !495 ; 0 uses
  %.pre.i21 = load i64, ptr %i.bn, align 8, !alias.scope !492, !noalias !495
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit19
  %i.cg = phi i64 [ %i.cd, %_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit19 ], [ %.pre.i21, %bb.aa ]
  %i.ch = load ptr, ptr %4, align 8, !alias.scope !492, !noalias !495, !nonnull !4, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cg
  store i16 2573, ptr %i.ci, align 1
  %i.cj = load i64, ptr %i.bp, align 8, !alias.scope !492, !noalias !495, !noundef !4
  %i.ck = load i64, ptr %i.bn, align 8, !alias.scope !492, !noalias !495, !noundef !4 ; 2 uses
  %i.cl = sub i64 %i.cj, %i.ck                    ; 2 uses
  %i.cm = icmp ult i64 %i.cl, 2
  br i1 %i.cm, label %bb.ac, label %_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit22, !prof !282

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !497
  store i64 2, ptr %i.b, align 8, !noalias !497
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.cl, ptr %i.cn, align 8, !noalias !497
  call void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) #46, !noalias !495
  unreachable

_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit22: ; preds = %bb.ab
  %i.co = add i64 %i.ck, 2
  store i64 %i.co, ptr %i.bn, align 8, !alias.scope !492, !noalias !495
  br label %bb.o

bb.ad:                                            ; preds = %bb.ae, %_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit25, %bb.i, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hac59a83f80c597f7E.exit", %bb.ag, %bb.o, %_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit
  ret void

bb.ae:                                            ; preds = %bb.c
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.cp, align 1
  store i8 0, ptr %0, align 8
  br label %bb.ad

bb.af:                                            ; preds = %bb.c
  %i.cq = icmp eq i64 %3, 0
  br i1 %i.cq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.cr, align 1
  store i8 0, ptr %0, align 8
  br label %bb.ad

bb.ah:                                            ; preds = %bb.af
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %i.p) ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !498, !noalias !501, !noundef !4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !498, !noalias !501, !noundef !4
  %i.cw = sub i64 %i.cv, %i.ct
  %.not.i23 = icmp ugt i64 %.sroa.0.0.i, %i.cw
  br i1 %.not.i23, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cx = tail call noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.sroa.0.0.i, i1 noundef zeroext true), !noalias !501 ; 0 uses
  %.pre.i24 = load i64, ptr %i.cs, align 8, !alias.scope !498, !noalias !501
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.cy = phi i64 [ %i.ct, %bb.ah ], [ %.pre.i24, %bb.ai ]
  %i.cz = load ptr, ptr %4, align 8, !alias.scope !498, !noalias !501, !nonnull !4, !noundef !4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.da, ptr nonnull readonly align 1 %2, i64 %.sroa.0.0.i, i1 false)
  %i.db = load i64, ptr %i.cu, align 8, !alias.scope !498, !noalias !501, !noundef !4
  %i.dc = load i64, ptr %i.cs, align 8, !alias.scope !498, !noalias !501, !noundef !4 ; 2 uses
  %i.dd = sub i64 %i.db, %i.dc                    ; 2 uses
  %i.de = icmp ugt i64 %.sroa.0.0.i, %i.dd
  br i1 %i.de, label %bb.ak, label %_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit25, !prof !282

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !503
  store i64 %.sroa.0.0.i, ptr %i.a, align 8, !noalias !503
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.dd, ptr %i.df, align 8, !noalias !503
  call void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #46, !noalias !501
  unreachable

_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit25: ; preds = %bb.aj
  %i.dg = add i64 %i.dc, %.sroa.0.0.i
  store i64 %i.dg, ptr %i.cs, align 8, !alias.scope !498, !noalias !501
  %i.dh = sub nuw i64 %i.p, %.sroa.0.0.i
  store i64 %i.dh, ptr %i.o, align 8
  %i.di = icmp ule i64 %i.p, %3
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dk = zext i1 %i.di to i8
  store i8 %i.dk, ptr %i.dj, align 1
  store i8 0, ptr %0, align 8
  br label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10actix_http2h17encoder16write_camel_case17h1ed327d5c1407388E(ptr noalias noundef nonnull readonly align 1 captures(address) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 1 %0, i64 %3, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.d = load i8, ptr %0, align 1, !noundef !4    ; 2 uses
  %i.e = add i8 %i.d, -97
  %or.cond = icmp ult i8 %i.e, 26
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.e, %bb.b
  %.sroa.010.0 = phi ptr [ %0, %bb.a ], [ %i.c, %bb.e ], [ %i.c, %bb.b ] ; 2 uses
  %i.f = icmp eq ptr %.sroa.010.0, %i.a
  br i1 %i.f, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = and i8 %i.d, 95
  store i8 %i.g, ptr %2, align 1
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #46
  unreachable

.lr.ph:                                           ; preds = %bb.c, %bb.h
  %.sroa.03.023 = phi i64 [ %i.l, %bb.h ], [ 2, %bb.c ] ; 5 uses
  %.sroa.010.122 = phi ptr [ %.sroa.010.2, %bb.h ], [ %.sroa.010.0, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.010.122, i64 1 ; 3 uses
  %i.i = load i8, ptr %.sroa.010.122, align 1, !noundef !4
  %i.j = icmp eq i8 %i.i, 45
  br i1 %i.j, label %bb.g, label %bb.h

._crit_edge:                                      ; preds = %bb.h, %bb.c
  ret void

bb.g:                                             ; preds = %.lr.ph
  %i.k = icmp eq ptr %i.h, %i.a
  br i1 %i.k, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.j, %.lr.ph
  %.sroa.010.2 = phi ptr [ %.sroa.010.3, %bb.j ], [ %i.h, %.lr.ph ] ; 2 uses
  %.sroa.03.1 = phi i64 [ %i.q, %bb.j ], [ %.sroa.03.023, %.lr.ph ]
  %i.l = add i64 %.sroa.03.1, 1
  %i.m = icmp eq ptr %.sroa.010.2, %i.a
  br i1 %i.m, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.010.122, i64 2 ; 2 uses
  %i.o = load i8, ptr %i.h, align 1, !noundef !4  ; 2 uses
  %i.p = add i8 %i.o, -97
  %or.cond20 = icmp ult i8 %i.p, 26
  br i1 %or.cond20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.l, %bb.i
  %.sroa.010.3 = phi ptr [ %i.a, %bb.g ], [ %i.n, %bb.l ], [ %i.n, %bb.i ]
  %i.q = add i64 %.sroa.03.023, 1
  br label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.r = icmp ult i64 %.sroa.03.023, %3
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = and i8 %i.o, 95
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.03.023
  store i8 %i.s, ptr %i.t, align 1
  br label %bb.j

bb.m:                                             ; preds = %bb.k
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.03.023, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10actix_http2h17payload5Inner11register_io17hfcabe30035ffd0eaE(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !350, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  %.pre4 = load ptr, ptr %.pre, align 8           ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre5 = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.d = load ptr, ptr %.pre4, align 8, !nonnull !4, !noundef !4
  %i.e = tail call { ptr, ptr } %i.d(ptr noundef %.pre5) ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.e, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  br label %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$17h568f55af7e93b3e9E.exit"

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !noundef !4
  %i.i = icmp ne ptr %.pre5, %i.h
  %i.j = icmp ne ptr %.pre4, %i.b
  %or.cond = or i1 %i.j, %i.i
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %.pre4, align 8, !nonnull !4, !noundef !4
  %i.l = tail call { ptr, ptr } %i.k(ptr noundef %.pre5) ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 3 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %.val3 = load ptr, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  invoke void %i.p(ptr noundef %.val3)
          to label %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$17h568f55af7e93b3e9E.exit" unwind label %bb.e, !inline_history !504

bb.d:                                             ; preds = %bb.b, %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$17h568f55af7e93b3e9E.exit"
  ret void

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr %i.m, ptr %i.a, align 8
  store ptr %i.n, ptr %i.c, align 8
  resume { ptr, i32 } %i.q

"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$17h568f55af7e93b3e9E.exit": ; preds = %.thread, %bb.c
  %i.r = phi ptr [ %i.g, %.thread ], [ %i.n, %bb.c ]
  %i.s = phi ptr [ %i.f, %.thread ], [ %i.m, %bb.c ]
  store ptr %i.s, ptr %i.a, align 8
  store ptr %i.r, ptr %i.c, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10actix_http2h17payload5Inner11unread_data17h5a37ad0fcf9ffb85E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = add i64 %i.d, %i.b
  store i64 %i.e, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !505, !noalias !508, !noundef !4 ; 2 uses
  %i.h = load i64, ptr %0, align 8, !range !352, !alias.scope !505, !noalias !508, !noundef !4 ; 2 uses
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$14push_front_mut17h8a09176aed1a2561E.exit"

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h52942997103a7208E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122)
          to label %._crit_edge.i unwind label %bb.c, !noalias !508

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load i64, ptr %0, align 8, !range !352, !alias.scope !505, !noalias !508
  %.pre1.i = load i64, ptr %i.f, align 8, !alias.scope !505, !noalias !508
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$14push_front_mut17h8a09176aed1a2561E.exit"

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.k = load ptr, ptr %1, align 8, !alias.scope !516, !noalias !505, !nonnull !4, !align !350, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !noalias !517, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !516, !noalias !505, !noundef !4
  invoke void %i.m(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.p, i64 noundef %i.b)
          to label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E.exit.i" unwind label %bb.d, !noalias !505, !inline_history !518

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48, !noalias !505
  unreachable

"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E.exit.i": ; preds = %bb.c
  resume { ptr, i32 } %i.j

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$14push_front_mut17h8a09176aed1a2561E.exit": ; preds = %bb.a, %._crit_edge.i
  %i.r = phi i64 [ %.pre1.i, %._crit_edge.i ], [ %i.g, %bb.a ]
end_hunk_0
begin_hunk_1_@"_ZN10actix_http6header3map120_$LT$impl$u20$core..convert..From$LT$actix_http..header..map..HeaderMap$GT$$u20$for$u20$http..header..map..HeaderMap$GT$4from17h1ed91704e540821dE":bb.a
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 6 uses
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !1085, !noalias !1083
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 6 uses
  store i64 0, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !1085, !noalias !1083
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 88 ; 3 uses
  store i16 0, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !1085, !noalias !1083
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1080, !noalias !1089, !nonnull !4, !noundef !4 ; 6 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1080, !noalias !1089 ; 4 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !1080, !noalias !1089 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1093
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.0.0.copyload.i, align 16, !noalias !1098
  %i.m = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 2 uses
  %i.o = bitcast <16 x i1> %i.m to i16
  br label %.outer.i.i.i.i.i.i.i

.outer.i.i.i.i.i.i.i:                             ; preds = %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i.i.i.i", %bb.a
  %i.p = phi i16 [ %i.u, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i.i.i.i" ], [ %i.o, %bb.a ] ; 2 uses
  %.lcssa2631.i.i.i.i.i.i.i = phi ptr [ %.lcssa2630.i.i.i.i.i.i.i, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i.i.i.i" ], [ %i.n, %bb.a ] ; 2 uses
  %.lcssa2529.i.i.i.i.i.i.i = phi ptr [ %.lcssa2528.i.i.i.i.i.i.i, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i.i.i.i" ], [ %.sroa.0.0.copyload.i, %bb.a ] ; 2 uses
  %.sroa.02.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.ac, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i.i.i.i" ], [ 0, %bb.a ] ; 5 uses
  %.sroa.0.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.ad, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i.i.i.i" ], [ %.sroa.55.0.copyload.i, %bb.a ] ; 2 uses
  %.not22.i.i.i.i.i.i.i = icmp eq i16 %i.p, 0
  br i1 %.not22.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.outer.i.i.i.i.i.i.i
  %i.q = icmp eq i64 %.sroa.0.0.ph.i.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.split.i.i.i.i.i.i.i, %.outer.i.i.i.i.i.i.i
  %.lcssa2630.i.i.i.i.i.i.i = phi ptr [ %.lcssa2631.i.i.i.i.i.i.i, %.outer.i.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.split.i.i.i.i.i.i.i ]
  %.lcssa2528.i.i.i.i.i.i.i = phi ptr [ %.lcssa2529.i.i.i.i.i.i.i, %.outer.i.i.i.i.i.i.i ], [ %i.ah, %.lr.ph.split.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.p, %.outer.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i.i.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [200 x i8], ptr %.lcssa2528.i.i.i.i.i.i.i, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !noalias !1107, !noundef !4 ; 2 uses
  %i.z = icmp ugt i64 %i.y, 4
  br i1 %i.z, label %bb.b, label %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i.i.i.i"

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -160
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !1107, !noundef !4
  br label %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i.i.i.i"

"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i.i.i.i": ; preds = %bb.b, %._crit_edge.i.i.i.i.i.i.i
  %.sink10.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ab, %bb.b ], [ %i.y, %._crit_edge.i.i.i.i.i.i.i ]
  %i.ac = add i64 %.sink10.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.02.0.ph.i.i.i.i.i.i.i
  %i.ad = add i64 %.sroa.0.0.ph.i.i.i.i.i.i.i, -1
  br label %.outer.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i
  %i.ae = phi ptr [ %i.ai, %.lr.ph.split.i.i.i.i.i.i.i ], [ %.lcssa2631.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.af = phi ptr [ %i.ah, %.lr.ph.split.i.i.i.i.i.i.i ], [ %.lcssa2529.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.val18.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ae, align 16, !noalias !1116
  %i.ag = icmp sgt <16 x i8> %.val18.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -3200 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ag to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.aj = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %i.aj, label %bb.c, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i: ; preds = %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit.i.i.i
  %i.ak = mul i64 %.sroa.4.0.copyload.i, 200      ; 2 uses
  %i.al = add i64 %i.ak, 200
  %i.am = icmp ult i64 %i.al, -15
  tail call void @llvm.assume(i1 %i.am)
  %i.an = and i64 %i.ak, -16                      ; 2 uses
  %i.ao = add i64 %i.an, 208                      ; 2 uses
  %i.ap = add i64 %.sroa.4.0.copyload.i, 17
  %i.aq = add i64 %i.ap, %i.ao                    ; 3 uses
  %i.ar = icmp uge i64 %i.aq, %i.ao
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp ult i64 %i.aq, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as)
  %i.at = sub i64 -208, %i.an
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %i.at
  br label %bb.c

.thread27.i.i:                                    ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hf69a570de10fd6d8E.exit.thread.i.i", %.invoke.i.i
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.c:                                             ; preds = %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i
  %.sroa.5.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.aq, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ undef, %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit.i.i.i ]
  %.sroa.5.sroa.4.0.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ undef, %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ 0, %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit.i.i.i ]
  %i.av = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.4.0.copyload.i
  %i.aw = getelementptr i8, ptr %i.av, i64 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.ax, align 8, !alias.scope !1095, !noalias !1117
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i.i, ptr %.sroa.47.0..sroa_idx.i.i.i, align 8, !alias.scope !1095, !noalias !1117
  %.sroa.58.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i.i, ptr %.sroa.58.0..sroa_idx.i.i.i, align 8, !alias.scope !1095, !noalias !1117
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 248
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !alias.scope !1095, !noalias !1117
  %.sroa.710.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  store ptr %i.n, ptr %.sroa.710.0..sroa_idx.i.i.i, align 8, !alias.scope !1095, !noalias !1117
  %.sroa.811.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  store ptr %i.aw, ptr %.sroa.811.0..sroa_idx.i.i.i, align 8, !alias.scope !1095, !noalias !1117
  %.sroa.912.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  store <16 x i1> %i.m, ptr %.sroa.912.0..sroa_idx.i.i.i, align 8, !alias.scope !1095, !noalias !1117
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  store i64 %.sroa.55.0.copyload.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !alias.scope !1095, !noalias !1117
  store i64 0, ptr %i.k, align 8, !alias.scope !1095, !noalias !1117
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  store i64 %.sroa.02.0.ph.i.i.i.i.i.i.i, ptr %i.ay, align 8, !alias.scope !1095, !noalias !1117
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  %.not.i = icmp eq i64 %.sroa.02.0.ph.i.i.i.i.i.i.i, 0
  br i1 %.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hc1fd0f743d2fe2d3E.exit.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = icmp eq i64 %.sroa.02.0.ph.i.i.i.i.i.i.i, 1
  %i.ba = add i64 %.sroa.02.0.ph.i.i.i.i.i.i.i, -1
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %i.bc = lshr i64 -1, %i.bb
  %.sroa.018.0.i.i.i = select i1 %i.az, i64 0, i64 %i.bc ; 5 uses
  %i.bd = add i64 %.sroa.018.0.i.i.i, 1           ; 7 uses
  %or.cond.i.i.i = icmp ugt i64 %.sroa.018.0.i.i.i, 32767
  br i1 %or.cond.i.i.i, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hf69a570de10fd6d8E.exit.thread.i.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !1121

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.be = trunc nuw i64 %i.bd to i16
  %i.bf = add i16 %i.be, -1
  store i16 %i.bf, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !1122, !noalias !1123
  %i.bg = shl nuw nsw i64 %i.bd, 2                ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !1124
  %i.bh = tail call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bg, i64 noundef range(i64 1, 9) 2) #45, !noalias !1124 ; 7 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.invoke.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbdfca0cd9d76e044E.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbdfca0cd9d76e044E.exit.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.bj = icmp samesign ugt i64 %i.bd, 1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.preheader, label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i"

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbdfca0cd9d76e044E.exit.i.i.i.i.i"
  %min.iters.check = icmp ult i64 %.sroa.018.0.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader110, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %.sroa.018.0.i.i.i, 32760      ; 3 uses
  %i.bk = shl nuw nsw i64 %n.vec, 2
  %i.bl = getelementptr i8, ptr %i.bh, i64 %i.bk
  %i.bm = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bn
  %i.bo = getelementptr i8, ptr %i.bh, i64 %i.bn
  %next.gep90 = getelementptr i8, ptr %i.bo, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2, !noalias !1132
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep90, align 2, !noalias !1132
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.preheader110, label %vector.body, !llvm.loop !1135

.lr.ph.i.i.i.i.i.preheader110:                    ; preds = %vector.body, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.09.i.i.i.i.i.ph = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bl, %vector.body ]
  %.sroa.03.08.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bm, %vector.body ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader110, %.lr.ph.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader110 ] ; 3 uses
  %.sroa.03.08.i.i.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i ], [ %.sroa.03.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader110 ] ; 2 uses
  %i.bq = add nuw nsw i64 %.sroa.03.08.i.i.i.i.i, 1
  store i16 -1, ptr %.sroa.0.09.i.i.i.i.i, align 2, !noalias !1132
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 2
  store i16 0, ptr %i.br, align 2, !noalias !1132
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 4 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %.sroa.03.08.i.i.i.i.i, %.sroa.018.0.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i", label %.lr.ph.i.i.i.i.i, !llvm.loop !1138

"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbdfca0cd9d76e044E.exit.i.i.i.i.i"
  %.sroa.0.0.lcssa16.i.i.i.i.i = phi ptr [ %i.bh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbdfca0cd9d76e044E.exit.i.i.i.i.i" ], [ %i.bs, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store i16 -1, ptr %.sroa.0.0.lcssa16.i.i.i.i.i, align 2, !noalias !1132
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa16.i.i.i.i.i, i64 2
  store i16 0, ptr %i.bt, align 2, !noalias !1132
  %i.bu = icmp samesign ult i64 %i.bd, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bu)
  store ptr %i.bh, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !1122, !noalias !1123
  store i64 %i.bd, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !1122, !noalias !1123
  %i.bv = lshr i64 %i.bd, 2
  %i.bw = sub nuw nsw i64 %i.bd, %i.bv            ; 3 uses
  %2 = mul nuw nsw i64 %i.bw, 104                 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !1139
  %3 = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 8) #45, !noalias !1139 ; 3 uses
  %4 = icmp eq ptr %3, null
  br i1 %4, label %.invoke.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h235b1f0f1411e3bfE.exit.i.i.i"

.invoke.i.i:                                      ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %5 = phi i64 [ 2, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ 8, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i" ]
  %6 = phi i64 [ %i.bg, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %2, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i" ]
  %7 = phi ptr [ @561, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ @562, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %5, i64 %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %7) #46
          to label %.cont.i.i unwind label %.thread27.i.i, !noalias !1123

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h235b1f0f1411e3bfE.exit.i.i.i": ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i"
  invoke fastcc void @"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17h1de2d72d91212fafE"(ptr noalias noundef align 8 dereferenceable(24) %.sroa.58.0..sroa_idx.i)
          to label %bb.e unwind label %.thread23.i.i, !noalias !1123

.thread23.i.i:                                    ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h235b1f0f1411e3bfE.exit.i.i.i"
  %i.bx = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bw, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !1122, !noalias !1123
  store ptr %3, ptr %.sroa.69.0..sroa_idx.i, align 8, !alias.scope !1122, !noalias !1123
  br label %bb.an

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h235b1f0f1411e3bfE.exit.i.i.i"
  store i64 %i.bw, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !1122, !noalias !1123
  store ptr %3, ptr %.sroa.69.0..sroa_idx.i, align 8, !alias.scope !1122, !noalias !1123
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hc1fd0f743d2fe2d3E.exit.i.i"

"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hf69a570de10fd6d8E.exit.thread.i.i": ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @130, i64 noundef 23, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @543, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @375) #46
          to label %.noexc7.i.i unwind label %.thread27.i.i, !noalias !1123

.noexc7.i.i:                                      ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hf69a570de10fd6d8E.exit.thread.i.i"
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hc1fd0f743d2fe2d3E.exit.i.i": ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1093
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.j, ptr noundef nonnull align 8 dereferenceable(296) %i.k, i64 296, i1 false), !noalias !1093
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hef4946ab596fe8bdE.exit.i.i", %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hc1fd0f743d2fe2d3E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1093
  invoke void @"_ZN92_$LT$actix_http..header..map..IntoIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h845ed4ebfcb90ed9E"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(296) %i.j)
          to label %bb.g unwind label %.loopexit.i.i, !noalias !1123

.loopexit.i.i:                                    ; preds = %bb.ae, %.noexc.i.i.i, %bb.n, %bb.f
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit40.i.i, %bb.ah, %bb.q
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i.i

.body14.i.i:                                      ; preds = %bb.ak, %.thread55.i.i.i, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %eh.lpad-body15.i.i = phi { ptr, i32 } [ %.pn59.i.i.i, %.thread55.i.i.i ], [ %.pn59.i.i.i, %bb.ak ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_http..header..map..IntoIter$GT$17h467e39a2065df9b5E"(ptr noalias noundef align 8 dereferenceable(296) %i.j) #47
          to label %.body.i unwind label %bb.am, !noalias !1123

bb.g:                                             ; preds = %bb.f
  %i.ce = load i8, ptr %i.by, align 8, !range !27, !noalias !1093, !noundef !4
  %.not.i.i = icmp eq i8 %i.ce, 2
  br i1 %.not.i.i, label %bb.al, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !1093
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.bz, i64 40, i1 false), !noalias !1093
  call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  %i.cf = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17hfc460cfa010b52f2E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.l)
          to label %bb.i unwind label %.loopexit35.i.i, !noalias !1151

bb.i:                                             ; preds = %bb.h
  br i1 %i.cf, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = call fastcc noundef i16 @_ZN4http6header3map15hash_elem_using17h9537a80642263a08E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.h), !noalias !1152 ; 6 uses
  %i.ch = load i16, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !1153, !noalias !1151, !noundef !4 ; 3 uses
  %i.ci = and i16 %i.ch, %i.cg
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !1153, !noalias !1151, !noundef !4 ; 2 uses
  %i.cl = zext i16 %i.ch to i64
  %i.cm = load ptr, ptr %i.h, align 8, !noalias !1093 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null                 ; 4 uses
  %not..i.i.i.i.i = xor i1 %i.cn, true
  %i.co = load i8, ptr %i.ca, align 8, !range !466, !noalias !1093
  %i.cp = load i64, ptr %i.cb, align 8, !noalias !1093 ; 3 uses
  %i.cq = load ptr, ptr %i.ca, align 8, !noalias !1093 ; 2 uses
  %i.cr = load ptr, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !1083, !nonnull !4, !align !130
  %i.cs = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1083 ; 6 uses
  %i.ct = load ptr, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !1083, !nonnull !4
  %.not = icmp eq i64 %i.ck, 0
  br label %.outer92

bb.k:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %i.cu = load ptr, ptr %i.g, align 8, !alias.scope !1163, !noalias !1164, !nonnull !4, !align !350, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !1165, !nonnull !4, !noundef !4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !1163, !noalias !1164, !noundef !4
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !1163, !noalias !1164, !noundef !4
  invoke void %i.cw(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef %i.cz, i64 noundef %i.db)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.thread.i.i.i" unwind label %bb.ag, !noalias !1166, !inline_history !798

.loopexit:                                        ; preds = %.outer92
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.sroa.05.0.i.i.i.ph.mux ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !noalias !1151, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.dd, -1
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.w
  unreachable

bb.m:                                             ; preds = %.loopexit
  %i.de = zext i16 %i.dd to i64                   ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  %i.dg = load i16, ptr %i.df, align 2, !noalias !1151, !noundef !4 ; 2 uses
  %i.dh = and i16 %i.dg, %i.ch
  %i.di = zext i16 %i.dh to i64
  %i.dj = sub i64 %.sroa.05.0.i.i.i.ph.mux, %i.di
  %i.dk = and i64 %i.dj, %i.cl
  %i.dl = icmp samesign ult i64 %i.dk, %.sroa.011.0.i.i.i.ph
  br i1 %i.dl, label %.noexc.i.i.i, label %bb.r

bb.n:                                             ; preds = %.loopexit
  %i.dm = icmp ult i64 %i.cs, 88686269585142076
  call void @llvm.assume(i1 %i.dm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !1168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !1164
  %i.dn = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17hdd730520bc6ad14cE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.l, i16 noundef %i.cg, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b)
          to label %.noexc9.i.i unwind label %.loopexit.i.i, !noalias !1123

.noexc9.i.i:                                      ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1167
  br i1 %i.dn, label %.loopexit40.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc9.i.i
  %i.do = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !1153, !noalias !1151, !noundef !4 ; 2 uses
  %i.dp = icmp ult i64 %.sroa.05.0.i.i.i.ph.mux, %i.do
  br i1 %i.dp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dq = load ptr, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !1153, !noalias !1151, !nonnull !4, !align !130, !noundef !4
  %i.dr = trunc i64 %i.cs to i16
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.sroa.05.0.i.i.i.ph.mux ; 2 uses
  store i16 %i.dr, ptr %i.ds, align 2, !noalias !1151
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  store i16 %i.cg, ptr %i.dt, align 2, !noalias !1151
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hef4946ab596fe8bdE.exit.i.i"

bb.q:                                             ; preds = %bb.o
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.05.0.i.i.i.ph.mux, i64 noundef %i.do, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @558) #46
          to label %.noexc10.i.i unwind label %.loopexit.split-lp.i.i, !noalias !1123

.noexc10.i.i:                                     ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.m
  %i.du = icmp eq i16 %i.dg, %i.cg
  br i1 %i.du, label %bb.s, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread.i.i.i"

.noexc.i.i.i:                                     ; preds = %bb.m
  %i.dv = icmp samesign ugt i64 %.sroa.011.0.i.i.i.ph, 511
  %i.dw = load i64, ptr %i.l, align 8, !range !372, !noalias !1083
  %i.dx = icmp ne i64 %i.dw, 2
  %.sroa.017.0.i.i.i = select i1 %i.dv, i1 %i.dx, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !1168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !1164
  %i.dy = icmp ult i64 %i.cs, 88686269585142076
  call void @llvm.assume(i1 %i.dy)
  %i.dz = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17hdd730520bc6ad14cE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.l, i16 noundef range(i16 0, -32768) %i.cg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
          to label %.noexc11.i.i unwind label %.loopexit.i.i, !noalias !1123

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread.i.i.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.i.i.i", %.split.i.i.i, %bb.v, %bb.t, %bb.r
  %i.ea = add nuw nsw i64 %.sroa.011.0.i.i.i.ph, 1
  %i.eb = add i64 %.sroa.05.0.i.i.i.ph.mux, 1
  br label %.outer92

.outer92:                                         ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread.i.i.i", %bb.j
  %.sroa.011.0.i.i.i.ph = phi i64 [ %i.ea, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread.i.i.i" ], [ 0, %bb.j ] ; 3 uses
  %.sroa.05.0.i.i.i.ph = phi i64 [ %i.eb, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread.i.i.i" ], [ %i.cj, %bb.j ] ; 2 uses
  %i.ec = icmp ult i64 %.sroa.05.0.i.i.i.ph, %i.ck ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.ec, %.not.not
  %.sroa.05.0.i.i.i.ph.mux = select i1 %i.ec, i64 %.sroa.05.0.i.i.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

bb.s:                                             ; preds = %bb.r
  %i.ed = icmp ugt i64 %i.cs, %i.de
  br i1 %i.ed, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ee = getelementptr inbounds nuw [104 x i8], ptr %i.ct, i64 %i.de ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !1151, !noundef !4
end_hunk_1
begin_hunk_2_@_ZN10actix_http8encoding7decoder14ContentDecoder9feed_data17h73412a47fd435263E:bb.a
  br i1 %.not.i.i.i.i49, label %bb.ay, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h284bea049c5183feE.exit.i.i.i"

bb.ay:                                            ; preds = %bb.ax
  store i64 0, ptr %i.dk, align 8, !alias.scope !2114, !noalias !2049
  store ptr inttoptr (i64 1 to ptr), ptr %i.dl, align 8, !alias.scope !2114, !noalias !2049
  store i64 0, ptr %.sroa.6.0..sroa_idx10.i.i.i.i, align 8, !alias.scope !2114, !noalias !2049
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h284bea049c5183feE.exit.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h284bea049c5183feE.exit.i.i.i": ; preds = %bb.ay, %bb.ax
  %.not.i159.i.i.i = icmp eq i64 %.sroa.21.5.i.i, 0
  br i1 %.not.i159.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h284bea049c5183feE.exit.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6af4b13eac3c80aaE.exit.i.i.i.i"
  %i.jn = phi i64 [ %i.jp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6af4b13eac3c80aaE.exit.i.i.i.i" ], [ %.sroa.21.5.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h284bea049c5183feE.exit.i.i.i" ]
  %.sink3.i.i2931.i.i.i.i = phi ptr [ %.sink3.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6af4b13eac3c80aaE.exit.i.i.i.i" ], [ %.sroa.0.3.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h284bea049c5183feE.exit.i.i.i" ] ; 2 uses
  %i.jo = load i8, ptr %.sink3.i.i2931.i.i.i.i, align 1, !alias.scope !2006, !noalias !2117, !noundef !4 ; 2 uses
  %i.jp = add i64 %i.jn, -1                       ; 4 uses
  %.sink3.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sink3.i.i2931.i.i.i.i, i64 1 ; 3 uses
  %i.jq = icmp eq i8 %i.jo, 0
  br i1 %i.jq, label %_ZN6flate22gz11read_to_nul17h81faad5140491313E.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i.i
  %i.jr = load i64, ptr %.sroa.6.0..sroa_idx10.i.i.i.i, align 8, !alias.scope !2129, !noalias !2131, !noundef !4 ; 5 uses
  %i.js = icmp sgt i64 %i.jr, -1
  call void @llvm.assume(i1 %i.js)
  %i.jt = icmp eq i64 %i.jr, 65535
  br i1 %i.jt, label %.invoke, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ju = load i64, ptr %i.dk, align 8, !range !352, !alias.scope !2132, !noalias !2131, !noundef !4
  %i.jv = icmp eq i64 %i.jr, %i.ju
  br i1 %i.jv, label %bb.bb, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6af4b13eac3c80aaE.exit.i.i.i.i"

bb.bb:                                            ; preds = %bb.ba
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1381)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6af4b13eac3c80aaE.exit.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6af4b13eac3c80aaE.exit.i.i.i.i": ; preds = %bb.bb, %bb.ba
  %i.jw = load ptr, ptr %i.dl, align 8, !alias.scope !2132, !noalias !2131, !nonnull !4, !noundef !4
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jr
  store i8 %i.jo, ptr %i.jx, align 1, !noalias !2135
  %i.jy = add nuw i64 %i.jr, 1
  store i64 %i.jy, ptr %.sroa.6.0..sroa_idx10.i.i.i.i, align 8, !alias.scope !2132, !noalias !2131
  %.not42.i.i.i.i = icmp eq i64 %i.jp, 0
  br i1 %.not42.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZN6flate22gz11read_to_nul17h81faad5140491313E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.jz = load ptr, ptr %i.df, align 8, !alias.scope !2048, !noalias !2049, !align !350, !noundef !4 ; 2 uses
  %.not119.i.i.i = icmp eq ptr %i.jz, null
  br i1 %.not119.i.i.i, label %.noexc82, label %bb.bc

bb.bc:                                            ; preds = %_ZN6flate22gz11read_to_nul17h81faad5140491313E.exit.i.i.i
  %i.ka = load ptr, ptr %i.dl, align 8, !alias.scope !2048, !noalias !2049, !nonnull !4, !noundef !4
  %i.kb = load i64, ptr %.sroa.6.0..sroa_idx10.i.i.i.i, align 8, !alias.scope !2048, !noalias !2049, !noundef !4
  invoke void @_ZN6flate23crc14impl_crc32fast3Crc6update17h753381d122cdba06E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ka, i64 noundef %i.kb)
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc81:                                         ; preds = %bb.bc
  %i.kc = load ptr, ptr %i.df, align 8, !alias.scope !2048, !noalias !2049, !nonnull !4, !align !350, !noundef !4
  invoke void @_ZN6flate23crc14impl_crc32fast3Crc6update17h753381d122cdba06E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kc, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @405, i64 noundef 1)
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bd:                                            ; preds = %bb.aa
  %i.kd = load i64, ptr %i.di, align 8, !range !1788, !alias.scope !2136, !noalias !2049, !noundef !4
  %.not.i162.i.i.i = icmp eq i64 %i.kd, -9223372036854775808
  br i1 %.not.i162.i.i.i, label %bb.be, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h284bea049c5183feE.exit164.i.i.i"

bb.be:                                            ; preds = %bb.bd
  store i64 0, ptr %i.di, align 8, !alias.scope !2136, !noalias !2049
  store ptr inttoptr (i64 1 to ptr), ptr %i.dj, align 8, !alias.scope !2136, !noalias !2049
  store i64 0, ptr %.sroa.6.0..sroa_idx10.i163.i.i.i, align 8, !alias.scope !2136, !noalias !2049
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h284bea049c5183feE.exit164.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h284bea049c5183feE.exit164.i.i.i": ; preds = %bb.be, %bb.bd
  %.not.i167.i.i.i = icmp eq i64 %.sroa.21.3.i.i, 0
  br i1 %.not.i167.i.i.i, label %.loopexit.i.i, label %.lr.ph.i168.i.i.i

.lr.ph.i168.i.i.i:                                ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h284bea049c5183feE.exit164.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6af4b13eac3c80aaE.exit.i171.i.i.i"
  %i.ke = phi i64 [ %i.kg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6af4b13eac3c80aaE.exit.i171.i.i.i" ], [ %.sroa.21.3.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h284bea049c5183feE.exit164.i.i.i" ]
  %.sink3.i.i2931.i169.i.i.i = phi ptr [ %.sink3.i.i.i170.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6af4b13eac3c80aaE.exit.i171.i.i.i" ], [ %.sroa.0.1.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h284bea049c5183feE.exit164.i.i.i" ] ; 2 uses
  %i.kf = load i8, ptr %.sink3.i.i2931.i169.i.i.i, align 1, !alias.scope !2006, !noalias !2139, !noundef !4 ; 2 uses
  %i.kg = add i64 %i.ke, -1                       ; 4 uses
  %.sink3.i.i.i170.i.i.i = getelementptr inbounds nuw i8, ptr %.sink3.i.i2931.i169.i.i.i, i64 1 ; 3 uses
  %i.kh = icmp eq i8 %i.kf, 0
  br i1 %i.kh, label %_ZN6flate22gz11read_to_nul17h81faad5140491313E.exit176.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i168.i.i.i
  %i.ki = load i64, ptr %.sroa.6.0..sroa_idx10.i163.i.i.i, align 8, !alias.scope !2151, !noalias !2153, !noundef !4 ; 5 uses
  %i.kj = icmp sgt i64 %i.ki, -1
  call void @llvm.assume(i1 %i.kj)
  %i.kk = icmp eq i64 %i.ki, 65535
  br i1 %i.kk, label %.invoke, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kl = load i64, ptr %i.di, align 8, !range !352, !alias.scope !2154, !noalias !2153, !noundef !4
  %i.km = icmp eq i64 %i.ki, %i.kl
  br i1 %i.km, label %bb.bh, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6af4b13eac3c80aaE.exit.i171.i.i.i"

bb.bh:                                            ; preds = %bb.bg
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1381)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6af4b13eac3c80aaE.exit.i171.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6af4b13eac3c80aaE.exit.i171.i.i.i": ; preds = %bb.bh, %bb.bg
  %i.kn = load ptr, ptr %i.dj, align 8, !alias.scope !2154, !noalias !2153, !nonnull !4, !noundef !4
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.ki
  store i8 %i.kf, ptr %i.ko, align 1, !noalias !2157
  %i.kp = add nuw i64 %i.ki, 1
  store i64 %i.kp, ptr %.sroa.6.0..sroa_idx10.i163.i.i.i, align 8, !alias.scope !2154, !noalias !2153
  %.not42.i172.i.i.i = icmp eq i64 %i.kg, 0
  br i1 %.not42.i172.i.i.i, label %.loopexit.i.i, label %.lr.ph.i168.i.i.i

.invoke:                                          ; preds = %bb.az, %bb.bf
  %i.kq = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 20, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1382, i64 noundef 26)
          to label %.loopexit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN6flate22gz11read_to_nul17h81faad5140491313E.exit176.i.i.i: ; preds = %.lr.ph.i168.i.i.i
  %i.kr = load ptr, ptr %i.df, align 8, !alias.scope !2048, !noalias !2049, !align !350, !noundef !4 ; 2 uses
  %.not116.i.i.i = icmp eq ptr %i.kr, null
  br i1 %.not116.i.i.i, label %.noexc86, label %bb.bi

bb.bi:                                            ; preds = %_ZN6flate22gz11read_to_nul17h81faad5140491313E.exit176.i.i.i
  %i.ks = load ptr, ptr %i.dj, align 8, !alias.scope !2048, !noalias !2049, !nonnull !4, !noundef !4
  %i.kt = load i64, ptr %.sroa.6.0..sroa_idx10.i163.i.i.i, align 8, !alias.scope !2048, !noalias !2049, !noundef !4
  invoke void @_ZN6flate23crc14impl_crc32fast3Crc6update17h753381d122cdba06E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kr, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ks, i64 noundef %i.kt)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc85:                                         ; preds = %bb.bi
  %i.ku = load ptr, ptr %i.df, align 8, !alias.scope !2048, !noalias !2049, !nonnull !4, !align !350, !noundef !4
  invoke void @_ZN6flate23crc14impl_crc32fast3Crc6update17h753381d122cdba06E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ku, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @405, i64 noundef 1)
          to label %.noexc86 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

"_ZN4core3ptr106drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$flate2..crc..impl_crc32fast..Crc$GT$$GT$$GT$17hb63f03d680e7e4eeE.exit.sink.split.i179.i.i.i": ; preds = %bb.bj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val128.i.i.i, i64 noundef 24, i64 noundef 8) #45, !noalias !2056
  br label %_ZN6flate22gz14GzHeaderParser5parse17ha4aa989ef6312db5E.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.bm
  %.pre308.i.i.i = load ptr, ptr %i.df, align 8, !alias.scope !2048, !noalias !2049
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.i.i.i, %.preheader208.i.i.i
  %.sroa.21.1.i.i = phi i64 [ %i.li, %._crit_edge.i.i.i ], [ %.sroa.21.0.i.i, %.preheader208.i.i.i ]
  %.val128.i.i.i = phi ptr [ %.pre308.i.i.i, %._crit_edge.i.i.i ], [ %i.gi, %.preheader208.i.i.i ] ; 2 uses
  %.sroa.0103.0.copyload.i.i.i = load i16, ptr %i.de, align 2, !alias.scope !2048, !noalias !2049
  %i.kv = getelementptr inbounds nuw i8, ptr %.val128.i.i.i, i64 4
  %i.kw = load i32, ptr %i.kv, align 4, !noalias !2056, !noundef !4
  %i.kx = trunc i32 %i.kw to i16
  %.not113.i.i.i = icmp eq i16 %.sroa.0103.0.copyload.i.i.i, %i.kx
  br i1 %.not113.i.i.i, label %"_ZN4core3ptr106drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$flate2..crc..impl_crc32fast..Crc$GT$$GT$$GT$17hb63f03d680e7e4eeE.exit.sink.split.i179.i.i.i", label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ky = invoke noundef nonnull ptr @_ZN6flate22gz7corrupt17hdab2de0c993d2283E()
          to label %.loopexit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.lr.ph.i.i.i:                                     ; preds = %.preheader208.i.i.i, %bb.bm
  %i.kz = phi i64 [ %i.li, %bb.bm ], [ %.sroa.21.0.i.i, %.preheader208.i.i.i ] ; 3 uses
  %i.la = phi i8 [ %i.ll, %bb.bm ], [ %.promoted.i.i.i, %.preheader208.i.i.i ] ; 2 uses
  %i.lb = phi ptr [ %i.lj, %bb.bm ], [ %.sroa.0.023.i.i, %.preheader208.i.i.i ] ; 3 uses
  %i.lc = zext nneg i8 %i.la to i64               ; 2 uses
  %i.ld = sub nuw nsw i64 2, %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.lc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2158)
  call void @llvm.experimental.noalias.scope.decl(metadata !2161)
  %.sroa.0.0.i.i.i181.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.kz, i64 range(i64 0, -9223372036854775808) %i.ld) ; 5 uses
  %i.lf = icmp eq i64 %.sroa.0.0.i.i.i181.i.i.i, 1
  br i1 %i.lf, label %bb.bl, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he0c864dc1f70503bE.exit.i.i182.i.i.i"

bb.bl:                                            ; preds = %.lr.ph.i.i.i
  %i.lg = load i8, ptr %i.lb, align 1, !alias.scope !2006, !noalias !2164, !noundef !4
  store i8 %i.lg, ptr %i.le, align 1, !alias.scope !2167, !noalias !2168
  br label %_ZN6flate22gz9read_into17hc098e2fb8380b923E.exit185.i.i.i

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he0c864dc1f70503bE.exit.i.i182.i.i.i": ; preds = %.lr.ph.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.le, ptr nonnull readonly align 1 %i.lb, i64 %.sroa.0.0.i.i.i181.i.i.i, i1 false), !alias.scope !2169, !noalias !2173
  br label %_ZN6flate22gz9read_into17hc098e2fb8380b923E.exit185.i.i.i

_ZN6flate22gz9read_into17hc098e2fb8380b923E.exit185.i.i.i: ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he0c864dc1f70503bE.exit.i.i182.i.i.i", %bb.bl
  %i.lh = icmp eq i64 %i.kz, 0
  br i1 %i.lh, label %.loopexit.i.i, label %bb.bm

bb.bm:                                            ; preds = %_ZN6flate22gz9read_into17hc098e2fb8380b923E.exit185.i.i.i
  %i.li = sub nuw i64 %i.kz, %.sroa.0.0.i.i.i181.i.i.i ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lb, i64 %.sroa.0.0.i.i.i181.i.i.i
  %i.lk = trunc nuw nsw i64 %.sroa.0.0.i.i.i181.i.i.i to i8
  %i.ll = add nuw nsw i8 %i.la, %i.lk             ; 3 uses
  store i8 %i.ll, ptr %i.dg, align 1, !alias.scope !2048, !noalias !2049
  %i.lm = icmp samesign ult i8 %i.ll, 2
  br i1 %i.lm, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.bn:                                            ; preds = %"_ZN6flate23zio19Writer$LT$W$C$D$GT$17write_with_status17hae309a0b109f7b3eE.exit.i.i"
  %i.ln = icmp ult i64 %i.fp, %.sroa.5.0103.i
  br i1 %i.ln, label %bb.bo, label %"_ZN72_$LT$flate2..gz..write..GzDecoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h07dcc200c018bd9dE.exit.thread.i"

bb.bo:                                            ; preds = %bb.bn
  %i.lo = load i64, ptr %i.ef, align 8, !alias.scope !2005, !noalias !2006, !noundef !4 ; 6 uses
  %i.lp = icmp sgt i64 %i.lo, -1
  call void @llvm.assume(i1 %i.lp)
  %i.lq = icmp samesign ult i64 %i.lo, 8
  br i1 %i.lq, label %bb.bp, label %"_ZN72_$LT$flate2..gz..write..GzDecoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h07dcc200c018bd9dE.exit.thread.i"

bb.bp:                                            ; preds = %bb.bo
  %i.lr = sub nuw i64 %.sroa.5.0103.i, %i.fp
  %i.ls = sub nuw nsw i64 8, %i.lo
  %.sroa.0.0.i11.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ls, i64 %i.lr) ; 5 uses
  %i.lt = add i64 %.sroa.0.0.i11.i.i, %i.fp       ; 4 uses
  %i.lu = icmp ult i64 %i.lt, %i.fp
  %.not9.i.i = icmp ugt i64 %i.lt, %.sroa.5.0103.i
  %or.cond.i.i = or i1 %i.lu, %.not9.i.i
  br i1 %or.cond.i.i, label %.invoke3481, label %bb.bq, !prof !2175

bb.bq:                                            ; preds = %bb.bp
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0.0105.i, i64 %i.fp
  call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  call void @llvm.experimental.noalias.scope.decl(metadata !2179)
  %i.lw = load i64, ptr %i.ee, align 8, !range !352, !alias.scope !2182, !noalias !2006, !noundef !4
  %i.lx = sub nsw i64 %i.lw, %i.lo
  %i.ly = icmp ugt i64 %.sroa.0.0.i11.i.i, %i.lx
  br i1 %i.ly, label %bb.br, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h7a1ecc28b0d839d0E.exit.i.i", !prof !282

bb.br:                                            ; preds = %bb.bq
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h75d5206bcc8d55f1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ee, i64 noundef %i.lo, i64 noundef %.sroa.0.0.i11.i.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc88:                                         ; preds = %bb.br
  %.pre.i.i.i.i62 = load i64, ptr %i.ef, align 8, !alias.scope !2185, !noalias !2006
  br label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h7a1ecc28b0d839d0E.exit.i.i"

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h7a1ecc28b0d839d0E.exit.i.i": ; preds = %.noexc88, %bb.bq
  %i.lz = phi i64 [ %i.lo, %bb.bq ], [ %.pre.i.i.i.i62, %.noexc88 ] ; 3 uses
  %i.ma = icmp sgt i64 %i.lz, -1
  call void @llvm.assume(i1 %i.ma)
  %i.mb = load ptr, ptr %i.eg, align 8, !alias.scope !2185, !noalias !2006, !nonnull !4, !noundef !4
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.lz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mc, ptr nonnull readonly align 1 %i.lv, i64 %.sroa.0.0.i11.i.i, i1 false), !noalias !2186
  %i.md = add nuw i64 %i.lz, %.sroa.0.0.i11.i.i
  store i64 %i.md, ptr %i.ef, align 8, !alias.scope !2185, !noalias !2006
  br label %"_ZN72_$LT$flate2..gz..write..GzDecoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h07dcc200c018bd9dE.exit.thread.i"

.loopexit.i.i:                                    ; preds = %_ZN6flate22gz9read_into17hc098e2fb8380b923E.exit.i.i.i, %_ZN6flate22gz9read_into17hc098e2fb8380b923E.exit151.i.i.i, %_ZN6flate22gz9read_into17hc098e2fb8380b923E.exit158.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6af4b13eac3c80aaE.exit.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6af4b13eac3c80aaE.exit.i171.i.i.i", %_ZN6flate22gz9read_into17hc098e2fb8380b923E.exit185.i.i.i, %.invoke3479, %.invoke, %bb.bk, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h284bea049c5183feE.exit164.i.i.i", %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h284bea049c5183feE.exit.i.i.i"
  %.sroa.0.0.i.ph.i.i = phi ptr [ inttoptr (i64 158913789955 to ptr), %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h284bea049c5183feE.exit164.i.i.i" ], [ inttoptr (i64 158913789955 to ptr), %_ZN6flate22gz9read_into17hc098e2fb8380b923E.exit151.i.i.i ], [ %i.ky, %bb.bk ], [ inttoptr (i64 158913789955 to ptr), %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h284bea049c5183feE.exit.i.i.i" ], [ inttoptr (i64 158913789955 to ptr), %_ZN6flate22gz9read_into17hc098e2fb8380b923E.exit185.i.i.i ], [ %i.kq, %.invoke ], [ %i.he, %.invoke3479 ], [ inttoptr (i64 158913789955 to ptr), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6af4b13eac3c80aaE.exit.i.i.i.i" ], [ inttoptr (i64 158913789955 to ptr), %_ZN6flate22gz9read_into17hc098e2fb8380b923E.exit158.i.i.i ], [ inttoptr (i64 158913789955 to ptr), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6af4b13eac3c80aaE.exit.i171.i.i.i" ], [ inttoptr (i64 158913789955 to ptr), %_ZN6flate22gz9read_into17hc098e2fb8380b923E.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2187
  store ptr %.sroa.0.0.i.ph.i.i, ptr %i.z, align 8, !noalias !2187
  %i.me = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E(ptr nonnull %.sroa.0.0.i.ph.i.i), !noalias !2003
  %i.mf = icmp eq i8 %i.me, 37
  br i1 %i.mf, label %"_ZN72_$LT$flate2..gz..write..GzDecoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h07dcc200c018bd9dE.exit.i", label %"_ZN72_$LT$flate2..gz..write..GzDecoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h07dcc200c018bd9dE.exit.thread21.i"

_ZN6flate22gz14GzHeaderParser5parse17ha4aa989ef6312db5E.exit.i.i: ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$flate2..crc..impl_crc32fast..Crc$GT$$GT$$GT$17hb63f03d680e7e4eeE.exit.sink.split.i179.i.i.i", %bb.ab
  %.sroa.21.2.i.i = phi i64 [ %.sroa.21.0.i.i, %bb.ab ], [ %.sroa.21.1.i.i, %"_ZN4core3ptr106drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$flate2..crc..impl_crc32fast..Crc$GT$$GT$$GT$17hb63f03d680e7e4eeE.exit.sink.split.i179.i.i.i" ]
  store i8 6, ptr %i.dc, align 8, !alias.scope !2048, !noalias !2049
  %i.mg = sub i64 %.sroa.5.0103.i, %.sroa.21.2.i.i
  br label %"_ZN72_$LT$flate2..gz..write..GzDecoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h07dcc200c018bd9dE.exit.thread.i"

"_ZN72_$LT$flate2..gz..write..GzDecoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h07dcc200c018bd9dE.exit.thread21.i": ; preds = %.loopexit.i.i
  %i.mh = ptrtoint ptr %.sroa.0.0.i.ph.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2187
  br label %bb.bs

"_ZN72_$LT$flate2..gz..write..GzDecoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h07dcc200c018bd9dE.exit.thread17.i": ; preds = %"_ZN6flate23zio19Writer$LT$W$C$D$GT$17write_with_status17hae309a0b109f7b3eE.exit.i.i", %.noexc69
  %.sroa.7.0.i.ph16.i = phi i64 [ %i.fo, %.noexc69 ], [ %i.fp, %"_ZN6flate23zio19Writer$LT$W$C$D$GT$17write_with_status17hae309a0b109f7b3eE.exit.i.i" ] ; 2 uses
  %i.mi = inttoptr i64 %.sroa.7.0.i.ph16.i to ptr
  br label %bb.bs

"_ZN72_$LT$flate2..gz..write..GzDecoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h07dcc200c018bd9dE.exit.i": ; preds = %.loopexit.i.i
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h85474bca0acdf2a3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc90:                                         ; preds = %"_ZN72_$LT$flate2..gz..write..GzDecoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h07dcc200c018bd9dE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2187
  br label %"_ZN72_$LT$flate2..gz..write..GzDecoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h07dcc200c018bd9dE.exit.thread.i"

bb.bs:                                            ; preds = %"_ZN72_$LT$flate2..gz..write..GzDecoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h07dcc200c018bd9dE.exit.thread17.i", %"_ZN72_$LT$flate2..gz..write..GzDecoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h07dcc200c018bd9dE.exit.thread21.i"
  %storemerge.i = phi ptr [ %.sroa.0.0.i.ph.i.i, %"_ZN72_$LT$flate2..gz..write..GzDecoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h07dcc200c018bd9dE.exit.thread21.i" ], [ %i.mi, %"_ZN72_$LT$flate2..gz..write..GzDecoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h07dcc200c018bd9dE.exit.thread17.i" ] ; 9 uses
  %.sroa.7.0.i20.i = phi i64 [ %i.mh, %"_ZN72_$LT$flate2..gz..write..GzDecoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h07dcc200c018bd9dE.exit.thread21.i" ], [ %.sroa.7.0.i.ph16.i, %"_ZN72_$LT$flate2..gz..write..GzDecoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h07dcc200c018bd9dE.exit.thread17.i" ] ; 3 uses
  store i64 1, ptr %i.aa, align 8, !noalias !1999
  store ptr %storemerge.i, ptr %i.dv, align 8, !noalias !1999
  %i.mj = and i64 %.sroa.7.0.i20.i, 3
  switch i64 %i.mj, label %default.unreachable2486 [
    i64 2, label %.split.i46
    i64 3, label %bb.bv
    i64 0, label %.split48.i
    i64 1, label %.split47.i
  ], !prof !1992

"_ZN72_$LT$flate2..gz..write..GzDecoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h07dcc200c018bd9dE.exit.thread.i": ; preds = %.noexc90, %_ZN6flate22gz14GzHeaderParser5parse17ha4aa989ef6312db5E.exit.i.i, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h7a1ecc28b0d839d0E.exit.i.i", %bb.bo, %bb.bn, %"_ZN6flate23zio19Writer$LT$W$C$D$GT$17write_with_status17hae309a0b109f7b3eE.exit.i.i"
  %i.mk = phi i64 [ %.sroa.5.0103.i, %.noexc90 ], [ %i.fp, %bb.bn ], [ %i.fp, %bb.bo ], [ %i.fp, %"_ZN6flate23zio19Writer$LT$W$C$D$GT$17write_with_status17hae309a0b109f7b3eE.exit.i.i" ], [ %i.lt, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h7a1ecc28b0d839d0E.exit.i.i" ], [ %i.mg, %_ZN6flate22gz14GzHeaderParser5parse17ha4aa989ef6312db5E.exit.i.i ] ; 5 uses
  %i.ml = icmp eq i64 %i.mk, 0
  br i1 %i.ml, label %_ZN3std2io5Write9write_all17h35383d8eee26765bE.exit.thread254, label %bb.bt

bb.bt:                                            ; preds = %"_ZN72_$LT$flate2..gz..write..GzDecoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h07dcc200c018bd9dE.exit.thread.i"
  %i.mm = icmp ugt i64 %i.mk, %.sroa.5.0103.i
  br i1 %i.mm, label %.invoke3481, label %bb.bu, !prof !282

bb.bu:                                            ; preds = %bb.bt
  %i.mn = sub nuw i64 %.sroa.5.0103.i, %i.mk
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.0.0105.i, i64 %i.mk
  br label %.noexc92

.split.i46:                                       ; preds = %bb.bs
  %.mask49.i = and i64 %.sroa.7.0.i20.i, -4294967296
  %i.mp = icmp eq i64 %.mask49.i, 17179869184
  br i1 %i.mp, label %.thread.i44, label %_ZN3std2io5Write9write_all17h35383d8eee26765bE.exit

.split48.i:                                       ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  %i.mq = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 16
  %i.mr = load i8, ptr %i.mq, align 8, !range !1993, !noundef !4
  %i.ms = icmp eq i8 %i.mr, 35
  br i1 %i.ms, label %.thread.i44, label %_ZN3std2io5Write9write_all17h35383d8eee26765bE.exit.thread254

.split47.i:                                       ; preds = %bb.bs
  %i.mt = getelementptr i8, ptr %storemerge.i, i64 15
  %i.mu = load i8, ptr %i.mt, align 8, !range !1993, !noundef !4
  %i.mv = icmp eq i8 %i.mu, 35
  br i1 %i.mv, label %.thread.i44, label %_ZN3std2io5Write9write_all17h35383d8eee26765bE.exit.thread254

bb.bv:                                            ; preds = %bb.bs
  %i.mw = icmp ult ptr %storemerge.i, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.mw)
  %.mask.i45 = and i64 %.sroa.7.0.i20.i, -4294967296
  %i.mx = icmp eq i64 %.mask.i45, 150323855360
  br i1 %i.mx, label %.thread.i44, label %_ZN3std2io5Write9write_all17h35383d8eee26765bE.exit

.thread.i44:                                      ; preds = %bb.bv, %.split47.i, %.split48.i, %.split.i46
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h85474bca0acdf2a3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dv)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc92:                                         ; preds = %.thread.i44, %bb.bu
  %.sroa.0.128.i = phi ptr [ %i.mo, %bb.bu ], [ %.sroa.0.0105.i, %.thread.i44 ]
  %.sroa.5.126.i = phi i64 [ %i.mn, %bb.bu ], [ %.sroa.5.0103.i, %.thread.i44 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1999
  %i.my = icmp eq i64 %.sroa.5.126.i, 0
  br i1 %i.my, label %_ZN3std2io5Write9write_all17h35383d8eee26765bE.exit.thread, label %bb.p

bb.bw:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2191)
  %i.mz = icmp eq i64 %i.al, 0
  br i1 %i.mz, label %.loopexit326, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %bb.bw
  %i.na = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.am, i64 40 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 10 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.am, i64 1960 ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.am, i64 2360 ; 5 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.am, i64 2236 ; 10 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.am, i64 1948 ; 7 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.am, i64 1952 ; 10 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.am, i64 1848 ; 10 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.am, i64 2390 ; 28 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.am, i64 2288 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.am, i64 2284 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.am, i64 2652 ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.am, i64 2208 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.am, i64 2016 ; 10 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.am, i64 2356
  %i.nr = getelementptr inbounds nuw i8, ptr %i.am, i64 2056 ; 10 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.am, i64 2204
  %i.nt = getelementptr inbounds nuw i8, ptr %i.am, i64 2096 ; 10 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.am, i64 2296
  %i.nv = getelementptr inbounds nuw i8, ptr %i.am, i64 2040 ; 10 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.am, i64 2080 ; 10 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.am, i64 2120 ; 9 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.am, i64 2232 ; 23 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.am, i64 2200 ; 9 uses
  %.ptr36.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 1792 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.am, i64 1904 ; 6 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.am, i64 1912 ; 6 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.am, i64 2160 ; 7 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.am, i64 2168 ; 7 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.am, i64 2144 ; 6 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.am, i64 2152 ; 6 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.am, i64 1936 ; 25 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.am, i64 2394
  %i.oi = getelementptr inbounds nuw i8, ptr %i.am, i64 1920 ; 8 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.am, i64 1928 ; 8 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.am, i64 1856 ; 4 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.am, i64 1864 ; 4 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.am, i64 2024 ; 10 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.am, i64 2032 ; 9 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.am, i64 2064 ; 10 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.am, i64 2072 ; 9 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.am, i64 2104 ; 10 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.am, i64 2112 ; 9 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.am, i64 2386 ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.am, i64 1944 ; 10 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.am, i64 2292
  %i.ov = getelementptr inbounds nuw i8, ptr %i.am, i64 2280 ; 20 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.am, i64 2216 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.am, i64 2220
  %i.oy = getelementptr inbounds nuw i8, ptr %i.am, i64 2224
  %i.oz = getelementptr inbounds nuw i8, ptr %i.am, i64 2176
  %i.pa = getelementptr inbounds nuw i8, ptr %i.am, i64 2180
  %i.pb = getelementptr inbounds nuw i8, ptr %i.am, i64 2192
  %i.pc = getelementptr inbounds nuw i8, ptr %i.am, i64 2384 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.am, i64 1968 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.am, i64 2385
  %i.pf = getelementptr inbounds nuw i8, ptr %i.am, i64 2136 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.am, i64 2352 ; 13 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.am, i64 2244 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.am, i64 2008 ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN10actix_http8encoding7decoder14ContentDecoder9feed_data17h73412a47fd435263E:bb.a
  br i1 %i.vx, label %.lr.ph35.i.i.i.i, label %.sink.split55.i.i.i.i

bb.df:                                            ; preds = %bb.cv
  %i.vy = load i8, ptr %i.pq, align 4, !alias.scope !2273, !noalias !2274, !noundef !4
  %i.vz = icmp eq i8 %i.vy, 0
  br i1 %i.vz, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %bb.df
  %i.wa = invoke noundef zeroext i1 @_ZN19brotli_decompressor10bit_reader18BrotliSafeReadBits17h7a2d02b9c7a27b35E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.og, i32 noundef 1, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.019.1.i.i.i.i, i64 noundef range(i64 1, 0) %.sroa.24.1.i.i.i.i)
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc126:                                        ; preds = %bb.dg
  br i1 %i.wa, label %bb.dh, label %_ZN19brotli_decompressor6decode21DecodeMetaBlockLength17hd8a092f9c0ca8ba5E.exit.thread.i.i.i

bb.dh:                                            ; preds = %.noexc126
  %i.wb = load i32, ptr %i.d, align 4, !noalias !2271, !noundef !4
  %i.wc = trunc i32 %i.wb to i8
  store i8 %i.wc, ptr %i.pr, align 1, !alias.scope !2273, !noalias !2274
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.df, %bb.cv
  %i.wd = load i32, ptr %i.ov, align 8, !alias.scope !2273, !noalias !2274, !noundef !4
  %i.we = add i32 %i.wd, 1
  store i32 %i.we, ptr %i.ov, align 8, !alias.scope !2273, !noalias !2274
  br label %bb.fr

bb.dj:                                            ; preds = %.noexc123
  %i.wf = load i32, ptr %i.d, align 4, !noalias !2271, !noundef !4
  %i.wg = icmp eq i32 %i.wf, 0
  br i1 %i.wg, label %bb.cn, label %_ZN19brotli_decompressor6decode21DecodeMetaBlockLength17hd8a092f9c0ca8ba5E.exit.thread.i.i.i

bb.dk:                                            ; preds = %.noexc124
  %i.wh = load i32, ptr %i.d, align 4, !noalias !2271, !noundef !4 ; 2 uses
  %i.wi = icmp eq i32 %i.wh, 0
  br i1 %i.wi, label %bb.fr, label %bb.cm

.lr.ph.i44.i.i.i:                                 ; preds = %bb.cy, %bb.dn
  %.sroa.09.032.i.i.i.i = phi i32 [ %i.wk, %bb.dn ], [ %i.uz, %bb.cy ] ; 3 uses
  %i.wj = invoke noundef zeroext i1 @_ZN19brotli_decompressor10bit_reader18BrotliSafeReadBits17h7a2d02b9c7a27b35E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.og, i32 noundef 8, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.019.1.i.i.i.i, i64 noundef range(i64 1, 0) %.sroa.24.1.i.i.i.i)
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc127:                                        ; preds = %.lr.ph.i44.i.i.i
  br i1 %i.wj, label %bb.dl, label %_ZN19brotli_decompressor6decode21DecodeMetaBlockLength17hd8a092f9c0ca8ba5E.exit.thread.sink.split.i.i.i

bb.dl:                                            ; preds = %.noexc127
  %i.wk = add nsw i32 %.sroa.09.032.i.i.i.i, 1    ; 3 uses
  %i.wl = load i8, ptr %i.qb, align 1, !alias.scope !2273, !noalias !2274, !noundef !4 ; 2 uses
  %i.wm = zext i8 %i.wl to i32                    ; 2 uses
  %i.wn = icmp eq i32 %i.wk, %i.wm
  %.pre43.i.i.i.i = load i32, ptr %i.d, align 4, !noalias !2271 ; 2 uses
  br i1 %i.wn, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.wo = icmp ugt i8 %i.wl, 1
  %i.wp = icmp eq i32 %.pre43.i.i.i.i, 0
  %or.cond3.i.i.i.i = select i1 %i.wo, i1 %i.wp, i1 false
  br i1 %or.cond3.i.i.i.i, label %_ZN19brotli_decompressor6decode21DecodeMetaBlockLength17hd8a092f9c0ca8ba5E.exit.thread.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.wq = shl i32 %.sroa.09.032.i.i.i.i, 3
  %i.wr = and i32 %i.wq, 24
  %i.ws = shl i32 %.pre43.i.i.i.i, %i.wr
  %i.wt = load i32, ptr %i.ov, align 8, !alias.scope !2273, !noalias !2274, !noundef !4
  %i.wu = or i32 %i.wt, %i.ws
  store i32 %i.wu, ptr %i.ov, align 8, !alias.scope !2273, !noalias !2274
  %i.wv = icmp slt i32 %i.wk, %i.wm
  br i1 %i.wv, label %.lr.ph.i44.i.i.i, label %.sink.split55.i.i.i.i

_ZN19brotli_decompressor6decode21DecodeMetaBlockLength17hd8a092f9c0ca8ba5E.exit.thread.sink.split.i.i.i: ; preds = %.noexc125, %.noexc127
  %.sroa.04.033.i.lcssa.sink.i.i.i = phi i32 [ %.sroa.09.032.i.i.i.i, %.noexc127 ], [ %.sroa.04.033.i.i.i.i, %.noexc125 ]
  store i32 %.sroa.04.033.i.lcssa.sink.i.i.i, ptr %i.ny, align 8, !alias.scope !2273, !noalias !2274
  br label %_ZN19brotli_decompressor6decode21DecodeMetaBlockLength17hd8a092f9c0ca8ba5E.exit.thread.i.i.i

_ZN19brotli_decompressor6decode21DecodeMetaBlockLength17hd8a092f9c0ca8ba5E.exit.thread.i.i.i: ; preds = %bb.dd, %bb.dm, %_ZN19brotli_decompressor6decode21DecodeMetaBlockLength17hd8a092f9c0ca8ba5E.exit.thread.sink.split.i.i.i, %bb.dj, %.noexc126, %.noexc124, %.noexc123, %.noexc122, %.noexc121, %.noexc120
  %.sroa.0.0.i43.ph.i.i.i = phi i32 [ 2, %_ZN19brotli_decompressor6decode21DecodeMetaBlockLength17hd8a092f9c0ca8ba5E.exit.thread.sink.split.i.i.i ], [ -2, %bb.dj ], [ 2, %.noexc123 ], [ 2, %.noexc122 ], [ 2, %.noexc121 ], [ 2, %.noexc120 ], [ 2, %.noexc126 ], [ 2, %.noexc124 ], [ -3, %bb.dm ], [ -1, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2271
  br label %.backedge212.i.i.i.i.backedge

bb.do:                                            ; preds = %.preheader208.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2214
  store i32 0, ptr %i.n, align 4, !noalias !2214
  %i.ww = invoke noundef zeroext i1 @_ZN19brotli_decompressor10bit_reader18BrotliSafeReadBits17h7a2d02b9c7a27b35E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.og, i32 noundef 6, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.019.1.i.i.i.i, i64 noundef %.sroa.24.1.i.i.i.i)
          to label %.noexc128 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc128:                                        ; preds = %bb.do
  br i1 %i.ww, label %bb.gt, label %bb.gs

bb.dp:                                            ; preds = %.preheader208.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  %i.wx = load i32, ptr %i.ny, align 8, !alias.scope !2278, !noalias !2279, !noundef !4 ; 2 uses
  %.val7.i.i.i.i.i = load i64, ptr %i.oj, align 8, !alias.scope !2278, !noalias !2279, !noundef !4 ; 2 uses
  %i.wy = sext i32 %i.wx to i64                   ; 4 uses
  %i.wz = load i32, ptr %i.nz, align 8, !alias.scope !2278, !noalias !2279, !noundef !4
  %i.xa = zext i32 %i.wz to i64                   ; 5 uses
  %i.xb = icmp ult i64 %i.xa, %i.wy
  %.not.i.i.i.i.i109 = icmp ult i64 %.val7.i.i.i.i.i, %i.xa
  %or.cond.i.i.i.i.i = or i1 %i.xb, %.not.i.i.i.i.i109
  br i1 %or.cond.i.i.i.i.i, label %.invoke3481, label %bb.dq, !prof !2175

bb.dq:                                            ; preds = %bb.dp
  %.val.i.i.i.i.i = load ptr, ptr %i.oi, align 8, !alias.scope !2278, !noalias !2279, !nonnull !4, !align !132, !noundef !4 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.xa
  %i.xd = icmp samesign eq i64 %i.wy, %i.xa
  br i1 %i.xd, label %.loopexit206.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.dq
  %i.xe = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.wy
  br label %bb.dr

bb.dr:                                            ; preds = %bb.ds, %.lr.ph.i.i.i.i.i
  %.sroa.01.010.i.i.i.i.i = phi i32 [ %i.wx, %.lr.ph.i.i.i.i.i ], [ %i.xj, %bb.ds ] ; 2 uses
  %.sroa.05.09.i.i.i.i.i = phi ptr [ %i.xe, %.lr.ph.i.i.i.i.i ], [ %i.xg, %bb.ds ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2281
  store i32 0, ptr %i.k, align 4, !noalias !2281
  %i.xf = invoke noundef zeroext i1 @_ZN19brotli_decompressor10bit_reader18BrotliSafeReadBits17h7a2d02b9c7a27b35E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.og, i32 noundef 2, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.019.1.i.i.i.i, i64 noundef range(i64 1, 0) %.sroa.24.1.i.i.i.i)
          to label %.noexc130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc130:                                        ; preds = %bb.dr
  br i1 %i.xf, label %bb.ds, label %_ZN19brotli_decompressor6decode16ReadContextModes17he7c66f8e1b41e31bE.exit.i.i.i.i, !prof !337

bb.ds:                                            ; preds = %.noexc130
  %i.xg = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i.i.i, i64 1 ; 2 uses
  %i.xh = load i32, ptr %i.k, align 4, !noalias !2281, !noundef !4
  %i.xi = trunc i32 %i.xh to i8
  store i8 %i.xi, ptr %.sroa.05.09.i.i.i.i.i, align 1, !noalias !2247
  %i.xj = add i32 %.sroa.01.010.i.i.i.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2281
  %i.xk = icmp eq ptr %i.xg, %i.xc
  br i1 %i.xk, label %.loopexit206.i.i.i.i, label %bb.dr

_ZN19brotli_decompressor6decode16ReadContextModes17he7c66f8e1b41e31bE.exit.i.i.i.i: ; preds = %.noexc130
  store i32 %.sroa.01.010.i.i.i.i.i, ptr %i.ny, align 8, !alias.scope !2278, !noalias !2279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2281
  br label %.backedge212.i.i.i.i.backedge

bb.dt:                                            ; preds = %.preheader208.i.i.i.i, %.preheader208.i.i.i.i, %.preheader208.i.i.i.i, %.preheader208.i.i.i.i
  %i.xl = invoke fastcc noundef i32 @_ZN19brotli_decompressor6decode23ProcessCommandsInternal17h38ecf3b082ee5c38E(i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(2600) %i.nd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.019.1.i.i.i.i, i64 noundef %.sroa.24.1.i.i.i.i)
          to label %.noexc131 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc131:                                        ; preds = %bb.dt
  %i.xm = icmp eq i32 %i.xl, 2
  br i1 %i.xm, label %bb.gx, label %.backedge212.i.i.i.i.backedge

bb.du:                                            ; preds = %.preheader208.i.i.i.i
  %.pre.i33.i.i.i = load i8, ptr %i.pz, align 8, !range !467, !alias.scope !2282, !noalias !2285
  %.promoted.i = load i64, ptr %i.t, align 8, !noalias !2193
  %.promoted899.i = load i64, ptr %i.u, align 8, !noalias !2193
  br label %bb.dv

bb.dv:                                            ; preds = %.backedge.i37.i.i.i, %bb.du
  %i.xn = phi i64 [ %i.zt, %.backedge.i37.i.i.i ], [ %.promoted899.i, %bb.du ] ; 5 uses
  %i.xo = phi i64 [ %i.zu, %.backedge.i37.i.i.i ], [ %.promoted.i, %bb.du ] ; 4 uses
  %i.xp = phi i8 [ %storemerge.i38.i.i.i, %.backedge.i37.i.i.i ], [ %.pre.i33.i.i.i, %bb.du ]
  %i.xq = trunc nuw i8 %i.xp to i1
  br i1 %i.xq, label %bb.dw, label %bb.ed

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.experimental.noalias.scope.decl(metadata !2291)
  call void @llvm.experimental.noalias.scope.decl(metadata !2294)
  call void @llvm.experimental.noalias.scope.decl(metadata !2296)
  call void @llvm.experimental.noalias.scope.decl(metadata !2298)
  %i.xr = load i32, ptr %i.py, align 8, !alias.scope !2300, !noalias !2301, !noundef !4 ; 4 uses
  %i.xs = load i32, ptr %i.po, align 8, !alias.scope !2300, !noalias !2301, !noundef !4 ; 7 uses
  %..i40.i = call i32 @llvm.smin.i32(i32 %i.xr, i32 %i.xs)
  %.sroa.010.0.i41.i = sext i32 %..i40.i to i64
  %i.xt = load i64, ptr %i.qe, align 8, !alias.scope !2300, !noalias !2301, !noundef !4 ; 2 uses
  %i.xu = sext i32 %i.xs to i64
  %i.xv = mul i64 %i.xt, %i.xu
  %i.xw = add i64 %i.xv, %.sroa.010.0.i41.i
  %i.xx = load i64, ptr %i.qf, align 8, !alias.scope !2300, !noalias !2301, !noundef !4 ; 3 uses
  %i.xy = sub i64 %i.xw, %i.xx                    ; 2 uses
  %spec.store.select.i42.i = call i64 @llvm.umin.i64(i64 %i.xo, i64 %i.xy) ; 5 uses
  %i.xz = load i32, ptr %i.ov, align 8, !alias.scope !2300, !noalias !2301, !noundef !4
  %i.ya = icmp slt i32 %i.xz, 0
  br i1 %i.ya, label %.backedge212.i.i.i.i.backedge, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.yb = load i32, ptr %i.qg, align 4, !alias.scope !2300, !noalias !2301, !noundef !4
  %i.yc = sext i32 %i.yb to i64
  %i.yd = and i64 %i.xx, %i.yc                    ; 4 uses
  %.val21.i43.i = load i64, ptr %i.nj, align 8, !alias.scope !2300, !noalias !2301, !noundef !4 ; 2 uses
  %i.ye = add i64 %i.yd, %spec.store.select.i42.i ; 3 uses
  %i.yf = icmp ult i64 %i.ye, %i.yd
  %.not.i44.i = icmp ugt i64 %i.ye, %.val21.i43.i
  %or.cond.i45.i = or i1 %i.yf, %.not.i44.i
  br i1 %or.cond.i45.i, label %.invoke3481, label %bb.dy, !prof !2175

bb.dy:                                            ; preds = %bb.dx
  %i.yg = add i64 %spec.store.select.i42.i, %i.xn ; 6 uses
  %i.yh = icmp ult i64 %i.yg, %i.xn
  %.not18.i47.i = icmp ugt i64 %i.yg, %.val14.i.i.i
  %or.cond20.i48.i = or i1 %i.yh, %.not18.i47.i
  br i1 %or.cond20.i48.i, label %.invoke3481, label %bb.dz, !prof !2175

bb.dz:                                            ; preds = %bb.dy
  %.val.i46.i = load ptr, ptr %i.px, align 8, !alias.scope !2300, !noalias !2301, !nonnull !4, !align !132, !noundef !4
  %i.yi = getelementptr inbounds nuw i8, ptr %.val.i46.i, i64 %i.yd
  %i.yj = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 %i.xn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yj, ptr nonnull readonly align 1 %i.yi, i64 %spec.store.select.i42.i, i1 false), !alias.scope !2304, !noalias !2308
  store i64 %i.yg, ptr %i.u, align 8, !alias.scope !2294, !noalias !2310
  %i.yk = sub nuw i64 %i.xo, %spec.store.select.i42.i ; 3 uses
  store i64 %i.yk, ptr %i.t, align 8, !alias.scope !2291, !noalias !2311
  %i.yl = add i64 %spec.store.select.i42.i, %i.xx ; 2 uses
  store i64 %i.yl, ptr %i.qf, align 8, !alias.scope !2300, !noalias !2301
  store i64 %i.yl, ptr %i.nc, align 8, !alias.scope !2312, !noalias !2313
  %i.ym = icmp ult i64 %i.xo, %i.xy
  %i.yn = load i32, ptr %i.pg, align 8, !alias.scope !2300, !noalias !2301, !noundef !4
  %i.yo = and i32 %i.yn, 31
  %i.yp = shl nuw i32 1, %i.yo                    ; 3 uses
  br i1 %i.ym, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.yq = icmp ne i32 %i.xs, %i.yp
  %.not19.i49.i = icmp slt i32 %i.xr, %i.xs
  %or.cond22.i50.i = or i1 %.not19.i49.i, %i.yq
  br i1 %or.cond22.i50.i, label %bb.eg, label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  %i.yr = icmp eq i32 %i.xs, %i.yp
  br i1 %i.yr, label %.backedge212.i.i.i.i.backedge, label %bb.eg

bb.ec:                                            ; preds = %bb.ea
  %i.ys = sub i32 %i.xr, %i.xs
  store i32 %i.ys, ptr %i.py, align 8, !alias.scope !2300, !noalias !2301
  %i.yt = add i64 %i.xt, 1
  store i64 %i.yt, ptr %i.qe, align 8, !alias.scope !2300, !noalias !2301
  %i.yu = icmp ne i32 %i.xr, %i.xs
  %i.yv = zext i1 %i.yu to i8
  store i8 %i.yv, ptr %i.pw, align 1, !alias.scope !2300, !noalias !2301
  br label %bb.eg

bb.ed:                                            ; preds = %bb.dv
  %i.yw = load i32, ptr %i.py, align 8, !alias.scope !2282, !noalias !2285, !noundef !4 ; 3 uses
  %.val11.i.i.i.i = load i64, ptr %i.nj, align 8, !alias.scope !2282, !noalias !2285, !noundef !4 ; 4 uses
  %i.yx = sext i32 %i.yw to i64                   ; 4 uses
  %i.yy = icmp ult i64 %.val11.i.i.i.i, %i.yx
  br i1 %i.yy, label %.invoke3481, label %bb.ee, !prof !282

bb.ee:                                            ; preds = %bb.ed
  %i.yz = load i32, ptr %i.ot, align 8, !alias.scope !2282, !noalias !2285, !noundef !4
  %i.za = sub i32 64, %i.yz
  %i.zb = lshr i32 %i.za, 3
  %i.zc = load i32, ptr %i.ni, align 8, !alias.scope !2282, !noalias !2285, !noundef !4
  %i.zd = add i32 %i.zb, %i.zc
  %i.ze = load i32, ptr %i.ov, align 8, !alias.scope !2282, !noalias !2285, !noundef !4
  %spec.select.i34.i.i.i = call i32 @llvm.smin.i32(i32 %i.zd, i32 %i.ze) ; 2 uses
  %i.zf = add i32 %spec.select.i34.i.i.i, %i.yw
  %i.zg = load i32, ptr %i.po, align 8, !alias.scope !2282, !noalias !2285, !noundef !4 ; 2 uses
  %i.zh = icmp sgt i32 %i.zf, %i.zg
  %i.zi = sub i32 %i.zg, %i.yw
  %.sroa.01.1.i35.i.i.i = select i1 %i.zh, i32 %i.zi, i32 %spec.select.i34.i.i.i ; 4 uses
  %.val.i36.i.i.i = load ptr, ptr %i.px, align 8, !alias.scope !2282, !noalias !2285, !nonnull !4, !align !132, !noundef !4
  %i.zj = sub nuw i64 %.val11.i.i.i.i, %i.yx
  %i.zk = getelementptr inbounds nuw i8, ptr %.val.i36.i.i.i, i64 %i.yx
  invoke void @_ZN19brotli_decompressor10bit_reader15BrotliCopyBytes17ha94d021614ae1c95E(ptr noalias noundef nonnull align 1 %i.zk, i64 noundef %i.zj, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.og, i32 noundef %.sroa.01.1.i35.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.019.1.i.i.i.i, i64 noundef range(i64 1, 0) %.sroa.24.1.i.i.i.i)
          to label %.noexc134 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc134:                                        ; preds = %bb.ee
  %i.zl = load i32, ptr %i.py, align 8, !alias.scope !2282, !noalias !2285, !noundef !4
  %i.zm = add i32 %i.zl, %.sroa.01.1.i35.i.i.i    ; 2 uses
  store i32 %i.zm, ptr %i.py, align 8, !alias.scope !2282, !noalias !2285
  %i.zn = load i32, ptr %i.ov, align 8, !alias.scope !2282, !noalias !2285, !noundef !4 ; 2 uses
  %i.zo = sub i32 %i.zn, %.sroa.01.1.i35.i.i.i
  store i32 %i.zo, ptr %i.ov, align 8, !alias.scope !2282, !noalias !2285
  %i.zp = load i32, ptr %i.pg, align 8, !alias.scope !2282, !noalias !2285, !noundef !4
  %i.zq = and i32 %i.zp, 31
  %i.zr = shl nuw i32 1, %i.zq
  %i.zs = icmp slt i32 %i.zm, %i.zr
  br i1 %i.zs, label %bb.ef, label %.backedge.i37.i.i.i

.backedge.i37.i.i.i:                              ; preds = %bb.eh, %bb.eg, %.noexc134
  %i.zt = phi i64 [ %i.xn, %.noexc134 ], [ %i.yg, %bb.eg ], [ %i.yg, %bb.eh ]
  %i.zu = phi i64 [ %i.xo, %.noexc134 ], [ %i.yk, %bb.eg ], [ %i.yk, %bb.eh ]
  %storemerge.i38.i.i.i = phi i8 [ 1, %.noexc134 ], [ 0, %bb.eg ], [ 0, %bb.eh ] ; 2 uses
  store i8 %storemerge.i38.i.i.i, ptr %i.pz, align 8, !alias.scope !2282, !noalias !2285
  br label %bb.dv

bb.ef:                                            ; preds = %.noexc134
  %i.zv = icmp eq i32 %i.zn, %.sroa.01.1.i35.i.i.i
  br i1 %i.zv, label %_ZN19brotli_decompressor6decode29CopyUncompressedBlockToOutput17hdd967421d7da545aE.exit.thread.i.i.i, label %.backedge212.i.i.i.i.backedge

bb.eg:                                            ; preds = %bb.ec, %bb.eb, %bb.ea
  %i.zw = load i32, ptr %i.po, align 8, !alias.scope !2282, !noalias !2285, !noundef !4
  %i.zx = icmp eq i32 %i.zw, %i.yp
  br i1 %i.zx, label %bb.eh, label %.backedge.i37.i.i.i

bb.eh:                                            ; preds = %bb.eg
  %i.zy = load i32, ptr %i.ph, align 4, !alias.scope !2282, !noalias !2285, !noundef !4
  store i32 %i.zy, ptr %i.pp, align 4, !alias.scope !2282, !noalias !2285
  br label %.backedge.i37.i.i.i

bb.ei:                                            ; preds = %.preheader208.i.i.i.i, %.preheader208.i.i.i.i, %.preheader208.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2214
  invoke fastcc void @_ZN19brotli_decompressor6decode15WriteRingBuffer17h2f3086dc3f8a3b90E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t, ptr noalias noundef nonnull align 1 %.val13.i.i.i, i64 %.val14.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.nc, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(2600) %i.nd)
          to label %.noexc136 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc136:                                        ; preds = %bb.ei
  %i.zz = load i32, ptr %i.m, align 8, !range !2222, !noalias !2214, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2214
  %i.aaa = icmp eq i32 %i.zz, 1
  br i1 %i.aaa, label %bb.hg, label %.backedge212.i.i.i.i.backedge

bb.ej:                                            ; preds = %.preheader208.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2314)
  %i.aab = load ptr, ptr %i.oa, align 8, !alias.scope !2317, !noalias !2221, !nonnull !4, !align !132, !noundef !4
  %i.aac = load i64, ptr %i.ob, align 8, !alias.scope !2317, !noalias !2221, !noundef !4 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.oa, align 8, !alias.scope !2317, !noalias !2221
  store i64 0, ptr %i.ob, align 8, !alias.scope !2317, !noalias !2221
  %i.aad = icmp eq i64 %i.aac, 0
  br i1 %i.aad, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i153.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i152.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i152.i.i.i.i": ; preds = %bb.ej
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.aab, i64 noundef %i.aac, i64 noundef 1) #45, !noalias !2318
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i153.i.i.i.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i153.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i152.i.i.i.i", %bb.ej
  %i.aae = load ptr, ptr %i.oi, align 8, !alias.scope !2317, !noalias !2221, !nonnull !4, !align !132, !noundef !4
  %i.aaf = load i64, ptr %i.oj, align 8, !alias.scope !2317, !noalias !2221, !noundef !4 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.oi, align 8, !alias.scope !2317, !noalias !2221
  store i64 0, ptr %i.oj, align 8, !alias.scope !2317, !noalias !2221
  %i.aag = icmp eq i64 %i.aaf, 0
  br i1 %i.aag, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit2.i155.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i154.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i154.i.i.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i153.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.aae, i64 noundef %i.aaf, i64 noundef 1) #45, !noalias !2318
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit2.i155.i.i.i.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit2.i155.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i154.i.i.i.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i153.i.i.i.i"
  %i.aah = load ptr, ptr %i.ok, align 8, !alias.scope !2317, !noalias !2221, !nonnull !4, !align !132, !noundef !4
  %i.aai = load i64, ptr %i.ol, align 8, !alias.scope !2317, !noalias !2221, !noundef !4 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ok, align 8, !alias.scope !2317, !noalias !2221
  store i64 0, ptr %i.ol, align 8, !alias.scope !2317, !noalias !2221
  %i.aaj = icmp eq i64 %i.aai, 0
  br i1 %i.aaj, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit4.i157.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i3.i156.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i3.i156.i.i.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit2.i155.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.aah, i64 noundef %i.aai, i64 noundef 1) #45, !noalias !2318
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit4.i157.i.i.i.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit4.i157.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i3.i156.i.i.i.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit2.i155.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  %i.aak = load ptr, ptr %i.np, align 8, !alias.scope !2322, !noalias !2221, !nonnull !4, !align !131, !noundef !4
  %i.aal = load i64, ptr %i.om, align 8, !alias.scope !2322, !noalias !2221, !noundef !4 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.np, align 8, !alias.scope !2322, !noalias !2221
  store i64 0, ptr %i.om, align 8, !alias.scope !2322, !noalias !2221
  %i.aam = icmp eq i64 %i.aal, 0
  br i1 %i.aam, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i.i159.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i158.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i158.i.i.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit4.i157.i.i.i.i"
  %i.aan = shl nuw nsw i64 %i.aal, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.aak, i64 noundef %i.aan, i64 noundef 4) #45, !noalias !2323
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i.i159.i.i.i.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i.i159.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i158.i.i.i.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit4.i157.i.i.i.i"
  %i.aao = load ptr, ptr %i.on, align 8, !alias.scope !2322, !noalias !2221, !nonnull !4, !align !130, !noundef !4
  %i.aap = load i64, ptr %i.nv, align 8, !alias.scope !2322, !noalias !2221, !noundef !4 ; 2 uses
  store ptr inttoptr (i64 2 to ptr), ptr %i.on, align 8, !alias.scope !2322, !noalias !2221
  store i64 0, ptr %i.nv, align 8, !alias.scope !2322, !noalias !2221
  %i.aaq = icmp eq i64 %i.aap, 0
  br i1 %i.aaq, label %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h7da9438296b9feeaE.exit.i161.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i.i160.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i.i160.i.i.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i.i159.i.i.i.i"
  %i.aar = shl nuw nsw i64 %i.aap, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 2 %i.aao, i64 noundef %i.aar, i64 noundef 2) #45, !noalias !2323
  br label %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h7da9438296b9feeaE.exit.i161.i.i.i.i"

"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h7da9438296b9feeaE.exit.i161.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i.i160.i.i.i.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i.i159.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  %i.aas = load ptr, ptr %i.nr, align 8, !alias.scope !2327, !noalias !2221, !nonnull !4, !align !131, !noundef !4
  %i.aat = load i64, ptr %i.oo, align 8, !alias.scope !2327, !noalias !2221, !noundef !4 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.nr, align 8, !alias.scope !2327, !noalias !2221
  store i64 0, ptr %i.oo, align 8, !alias.scope !2327, !noalias !2221
  %i.aau = icmp eq i64 %i.aat, 0
  br i1 %i.aau, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i6.i163.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i5.i162.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i5.i162.i.i.i.i": ; preds = %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h7da9438296b9feeaE.exit.i161.i.i.i.i"
  %i.aav = shl nuw nsw i64 %i.aat, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.aas, i64 noundef %i.aav, i64 noundef 4) #45, !noalias !2328
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i6.i163.i.i.i.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i6.i163.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i5.i162.i.i.i.i", %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h7da9438296b9feeaE.exit.i161.i.i.i.i"
  %i.aaw = load ptr, ptr %i.op, align 8, !alias.scope !2327, !noalias !2221, !nonnull !4, !align !130, !noundef !4
  %i.aax = load i64, ptr %i.nw, align 8, !alias.scope !2327, !noalias !2221, !noundef !4 ; 2 uses
  store ptr inttoptr (i64 2 to ptr), ptr %i.op, align 8, !alias.scope !2327, !noalias !2221
  store i64 0, ptr %i.nw, align 8, !alias.scope !2327, !noalias !2221
  %i.aay = icmp eq i64 %i.aax, 0
  br i1 %i.aay, label %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h7da9438296b9feeaE.exit8.i165.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i7.i164.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i7.i164.i.i.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i6.i163.i.i.i.i"
  %i.aaz = shl nuw nsw i64 %i.aax, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 2 %i.aaw, i64 noundef %i.aaz, i64 noundef 2) #45, !noalias !2328
  br label %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h7da9438296b9feeaE.exit8.i165.i.i.i.i"

"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h7da9438296b9feeaE.exit8.i165.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i7.i164.i.i.i.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i6.i163.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  %i.aba = load ptr, ptr %i.nt, align 8, !alias.scope !2332, !noalias !2221, !nonnull !4, !align !131, !noundef !4
  %i.abb = load i64, ptr %i.oq, align 8, !alias.scope !2332, !noalias !2221, !noundef !4 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.nt, align 8, !alias.scope !2332, !noalias !2221
  store i64 0, ptr %i.oq, align 8, !alias.scope !2332, !noalias !2221
  %i.abc = icmp eq i64 %i.abb, 0
  br i1 %i.abc, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i10.i167.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i9.i166.i.i.i.i"
end_hunk_3
begin_hunk_4_@_ZN10actix_http8encoding7decoder14ContentDecoder9feed_data17h73412a47fd435263E:bb.a
  store i8 0, ptr %i.avc, align 2, !noalias !2487
  %i.avd = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 4
  store i16 0, ptr %i.avd, align 2, !noalias !2487
  %i.ave = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 6
  store i8 0, ptr %i.ave, align 2, !noalias !2487
  %i.avf = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 8
  store i16 0, ptr %i.avf, align 2, !noalias !2487
  %i.avg = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 10
  store i8 0, ptr %i.avg, align 2, !noalias !2487
  %i.avh = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 12
  store i16 0, ptr %i.avh, align 2, !noalias !2487
  %i.avi = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 14
  store i8 0, ptr %i.avi, align 2, !noalias !2487
  %i.avj = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 16
  store i16 0, ptr %i.avj, align 2, !noalias !2487
  %i.avk = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 18
  store i8 0, ptr %i.avk, align 2, !noalias !2487
  %i.avl = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 20
  store i16 0, ptr %i.avl, align 2, !noalias !2487
  %i.avm = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 22
  store i8 0, ptr %i.avm, align 2, !noalias !2487
  %i.avn = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 24
  store i16 0, ptr %i.avn, align 2, !noalias !2487
  %i.avo = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 26
  store i8 0, ptr %i.avo, align 2, !noalias !2487
  %i.avp = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 28
  store i16 0, ptr %i.avp, align 2, !noalias !2487
  %i.avq = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 30
  store i8 0, ptr %i.avq, align 2, !noalias !2487
  %i.avr = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 32 ; 2 uses
  %niter4604.next.7 = add i64 %niter4604, 8
  %niter4604.ncmp.7 = icmp eq i64 %niter4604, %i.avb
  br i1 %niter4604.ncmp.7, label %.lr.ph.i.i.i.i11.i.epil, label %.lr.ph.i.i.i.i11.i

.lr.ph.i.i.i.i11.i.epil:                          ; preds = %.lr.ph.i.i.i.i11.i, %.lr.ph.i.i.i.i11.i.epil
  %.sroa.0.09.i.i.i.i.i.epil = phi ptr [ %i.avt, %.lr.ph.i.i.i.i11.i.epil ], [ %i.avr, %.lr.ph.i.i.i.i11.i ] ; 4 uses
  %epil.iter4598 = phi i64 [ %epil.iter4598.next, %.lr.ph.i.i.i.i11.i.epil ], [ 0, %.lr.ph.i.i.i.i11.i ]
  store i16 0, ptr %.sroa.0.09.i.i.i.i.i.epil, align 2, !noalias !2487
  %i.avs = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.epil, i64 2
  store i8 0, ptr %i.avs, align 2, !noalias !2487
  %i.avt = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.epil, i64 4 ; 2 uses
  %epil.iter4598.next = add i64 %epil.iter4598, 1 ; 2 uses
  %epil.iter4598.cmp.not = icmp eq i64 %epil.iter4598.next, 7
  br i1 %epil.iter4598.cmp.not, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17ha0eb82244277b92dE.exit.thread9.i.i.i", label %.lr.ph.i.i.i.i11.i.epil, !llvm.loop !2490

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17ha0eb82244277b92dE.exit.thread9.i.i.i": ; preds = %.lr.ph.i.i.i.i11.i.epil
  store i16 0, ptr %i.avt, align 2, !noalias !2487
  %i.avu = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.epil, i64 6
  store i8 0, ptr %i.avu, align 2, !noalias !2487
  br label %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$4init17h677d76bd9fbb556bE.exit.i"

"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$4init17h677d76bd9fbb556bE.exit.i": ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17ha0eb82244277b92dE.exit.thread9.i.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.thread.i.i"
  %.val130.i.i.i.i = phi i64 [ %i.aux, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17ha0eb82244277b92dE.exit.thread9.i.i.i" ], [ 0, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.thread.i.i" ] ; 2 uses
  %.sroa.42.0.copyload.i.i.i.i = phi ptr [ %i.auz, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17ha0eb82244277b92dE.exit.thread9.i.i.i" ], [ inttoptr (i64 2 to ptr), %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.thread.i.i" ]
  store ptr %.sroa.42.0.copyload.i.i.i.i, ptr %i.or, align 8, !alias.scope !2474, !noalias !2422
  store i64 %.val130.i.i.i.i, ptr %i.nx, align 8, !alias.scope !2474, !noalias !2422
  %.val134.i.i.i.i = load i64, ptr %i.nv, align 8, !alias.scope !2220, !noalias !2221, !noundef !4
  %i.avv = icmp eq i64 %.val134.i.i.i.i, 0
  br i1 %i.avv, label %.sink.split.i.i.i.i, label %bb.jk

bb.jk:                                            ; preds = %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$4init17h677d76bd9fbb556bE.exit.i"
  %.val132.i.i.i.i = load i64, ptr %i.nw, align 8, !alias.scope !2220, !noalias !2221, !noundef !4
  %i.avw = icmp eq i64 %.val132.i.i.i.i, 0
  %i.avx = icmp eq i64 %.val130.i.i.i.i, 0
  %or.cond.i = select i1 %i.avw, i1 true, i1 %i.avx
  br i1 %or.cond.i, label %.sink.split.i.i.i.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  store i32 0, ptr %i.ny, align 8, !alias.scope !2220, !noalias !2221
  store i8 23, ptr %i.nk, align 2, !alias.scope !2220, !noalias !2221
  br label %.preheader208.i.i.i.i.backedge

.preheader208.i.i.i.i.backedge:                   ; preds = %bb.jl, %_ZN19brotli_decompressor6decode30DetectTrivialLiteralBlockTypes17hbff685c0e99889f3E.exit.i.i.i.i, %bb.ik, %bb.ig, %bb.ia, %bb.hf, %.loopexit206.i.i.i.i, %bb.gw, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli_decompressor..huffman..HuffmanCode$GT$$GT$17h9906f5c1e10440daE.exit178.i.i.i.i", %bb.fq, %bb.fo, %"_ZN19brotli_decompressor5state47BrotliState$LT$AllocU8$C$AllocU32$C$AllocHC$GT$25BrotliStateMetablockBegin17h5632724e7cea9320E.exit.i.i.i.i"
  %.sroa.0.6.i.i.i.be = phi i64 [ %.sroa.0.6.i.i.i, %bb.fo ], [ %.sroa.0.6.i.i.i, %bb.fq ], [ %.sroa.0.6.i.i.i, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli_decompressor..huffman..HuffmanCode$GT$$GT$17h9906f5c1e10440daE.exit178.i.i.i.i" ], [ %.sroa.0.6.i.i.i, %"_ZN19brotli_decompressor5state47BrotliState$LT$AllocU8$C$AllocU32$C$AllocHC$GT$25BrotliStateMetablockBegin17h5632724e7cea9320E.exit.i.i.i.i" ], [ %.sroa.0.6.i.i.i, %bb.gw ], [ %.sroa.0.6.i.i.i, %.loopexit206.i.i.i.i ], [ %.sroa.0.9.i.i.i, %bb.hf ], [ %.sroa.0.6.i.i.i, %bb.ia ], [ %.sroa.0.6.i.i.i, %bb.ig ], [ %.sroa.0.6.i.i.i, %bb.ik ], [ %.sroa.0.6.i.i.i, %_ZN19brotli_decompressor6decode30DetectTrivialLiteralBlockTypes17hbff685c0e99889f3E.exit.i.i.i.i ], [ %.sroa.0.6.i.i.i, %bb.jl ]
  %.be = phi i64 [ %i.rs, %bb.fo ], [ %i.rs, %bb.fq ], [ %i.rs, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli_decompressor..huffman..HuffmanCode$GT$$GT$17h9906f5c1e10440daE.exit178.i.i.i.i" ], [ %i.rs, %"_ZN19brotli_decompressor5state47BrotliState$LT$AllocU8$C$AllocU32$C$AllocHC$GT$25BrotliStateMetablockBegin17h5632724e7cea9320E.exit.i.i.i.i" ], [ %i.rs, %bb.gw ], [ %i.rs, %.loopexit206.i.i.i.i ], [ %i.alo, %bb.hf ], [ %i.rs, %bb.ia ], [ %i.rs, %bb.ig ], [ %i.rs, %bb.ik ], [ %i.rs, %_ZN19brotli_decompressor6decode30DetectTrivialLiteralBlockTypes17hbff685c0e99889f3E.exit.i.i.i.i ], [ %i.rs, %bb.jl ]
  %.be4178 = phi i8 [ %.neg.i.i.i.i, %bb.fo ], [ 2, %bb.fq ], [ 3, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli_decompressor..huffman..HuffmanCode$GT$$GT$17h9906f5c1e10440daE.exit178.i.i.i.i" ], [ 4, %"_ZN19brotli_decompressor5state47BrotliState$LT$AllocU8$C$AllocU32$C$AllocHC$GT$25BrotliStateMetablockBegin17h5632724e7cea9320E.exit.i.i.i.i" ], [ 6, %bb.gw ], [ 21, %.loopexit206.i.i.i.i ], [ 24, %bb.hf ], [ 18, %bb.ia ], [ 19, %bb.ig ], [ 20, %bb.ik ], [ 22, %_ZN19brotli_decompressor6decode30DetectTrivialLiteralBlockTypes17hbff685c0e99889f3E.exit.i.i.i.i ], [ 23, %bb.jl ]
  %.be4179 = phi i64 [ %i.ru, %bb.fo ], [ %i.ru, %bb.fq ], [ %i.ru, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli_decompressor..huffman..HuffmanCode$GT$$GT$17h9906f5c1e10440daE.exit178.i.i.i.i" ], [ %i.ru, %"_ZN19brotli_decompressor5state47BrotliState$LT$AllocU8$C$AllocU32$C$AllocHC$GT$25BrotliStateMetablockBegin17h5632724e7cea9320E.exit.i.i.i.i" ], [ %i.ru, %bb.gw ], [ %i.ru, %.loopexit206.i.i.i.i ], [ %i.alp, %bb.hf ], [ %i.ru, %bb.ia ], [ %i.ru, %bb.ig ], [ %i.ru, %bb.ik ], [ %i.ru, %_ZN19brotli_decompressor6decode30DetectTrivialLiteralBlockTypes17hbff685c0e99889f3E.exit.i.i.i.i ], [ %i.ru, %bb.jl ]
  %.be4180 = phi i64 [ %i.rv, %bb.fo ], [ %i.rv, %bb.fq ], [ %i.rv, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli_decompressor..huffman..HuffmanCode$GT$$GT$17h9906f5c1e10440daE.exit178.i.i.i.i" ], [ %i.rv, %"_ZN19brotli_decompressor5state47BrotliState$LT$AllocU8$C$AllocU32$C$AllocHC$GT$25BrotliStateMetablockBegin17h5632724e7cea9320E.exit.i.i.i.i" ], [ %i.rv, %bb.gw ], [ %i.rv, %.loopexit206.i.i.i.i ], [ %i.alq, %bb.hf ], [ %i.rv, %bb.ia ], [ %i.rv, %bb.ig ], [ %i.rv, %bb.ik ], [ %i.rv, %_ZN19brotli_decompressor6decode30DetectTrivialLiteralBlockTypes17hbff685c0e99889f3E.exit.i.i.i.i ], [ %i.rv, %bb.jl ]
  %.be4181 = phi i64 [ %i.rw, %bb.fo ], [ %i.rw, %bb.fq ], [ %i.rw, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli_decompressor..huffman..HuffmanCode$GT$$GT$17h9906f5c1e10440daE.exit178.i.i.i.i" ], [ %i.rw, %"_ZN19brotli_decompressor5state47BrotliState$LT$AllocU8$C$AllocU32$C$AllocHC$GT$25BrotliStateMetablockBegin17h5632724e7cea9320E.exit.i.i.i.i" ], [ %i.rw, %bb.gw ], [ %i.rw, %.loopexit206.i.i.i.i ], [ %i.alr, %bb.hf ], [ %i.rw, %bb.ia ], [ %i.rw, %bb.ig ], [ %i.rw, %bb.ik ], [ %i.rw, %_ZN19brotli_decompressor6decode30DetectTrivialLiteralBlockTypes17hbff685c0e99889f3E.exit.i.i.i.i ], [ %i.rw, %bb.jl ]
  %.be4182 = phi i64 [ %i.rx, %bb.fo ], [ %i.rx, %bb.fq ], [ %i.rx, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli_decompressor..huffman..HuffmanCode$GT$$GT$17h9906f5c1e10440daE.exit178.i.i.i.i" ], [ %i.rx, %"_ZN19brotli_decompressor5state47BrotliState$LT$AllocU8$C$AllocU32$C$AllocHC$GT$25BrotliStateMetablockBegin17h5632724e7cea9320E.exit.i.i.i.i" ], [ %i.rx, %bb.gw ], [ %i.rx, %.loopexit206.i.i.i.i ], [ %i.als, %bb.hf ], [ %i.rx, %bb.ia ], [ %i.rx, %bb.ig ], [ %i.rx, %bb.ik ], [ %i.rx, %_ZN19brotli_decompressor6decode30DetectTrivialLiteralBlockTypes17hbff685c0e99889f3E.exit.i.i.i.i ], [ %i.rx, %bb.jl ]
  br label %.preheader208.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %.noexc183, %bb.fd, %bb.jk, %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$4init17h677d76bd9fbb556bE.exit.i", %bb.ca, %bb.bz
  %.sroa.0.7.i.i.i = phi i64 [ %.sroa.0.049.i.i.i, %bb.bz ], [ %.sroa.0.049.i.i.i, %bb.ca ], [ %.sroa.0.6.i.i.i, %bb.jk ], [ %.sroa.0.6.i.i.i, %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$4init17h677d76bd9fbb556bE.exit.i" ], [ %.sroa.0.6.i.i.i, %bb.fd ], [ %.sroa.0.6.i.i.i, %.noexc183 ]
  %i.avy = phi i64 [ %i.qu, %bb.bz ], [ %i.qu, %bb.ca ], [ %i.rs, %bb.jk ], [ %i.rs, %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$4init17h677d76bd9fbb556bE.exit.i" ], [ %i.rs, %bb.fd ], [ %i.rs, %.noexc183 ]
  %.sink.i.i.i.i = phi i32 [ -20, %bb.bz ], [ -20, %bb.ca ], [ -31, %bb.jk ], [ -31, %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$4init17h677d76bd9fbb556bE.exit.i" ], [ 1, %bb.fd ], [ 1, %.noexc183 ]
  %.sroa.0.0.ph.i.i.i.i = phi i32 [ 0, %bb.bz ], [ 0, %bb.ca ], [ 0, %bb.jk ], [ 0, %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$4init17h677d76bd9fbb556bE.exit.i" ], [ 1, %bb.fd ], [ 1, %.noexc183 ]
  store i32 %.sink.i.i.i.i, ptr %i.nf, align 8, !alias.scope !2220, !noalias !2221
  br label %_ZN19brotli_decompressor6decode22BrotliDecompressStream17h48799a520d66ecf6E.exit.i.i.i

bb.jm:                                            ; preds = %_ZN19brotli_decompressor6decode22HuffmanTreeGroupDecode17h514c0b37cd4d8bbbE.exit.thread.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2491)
  %i.avz = load i32, ptr %i.pa, align 4, !alias.scope !2494, !noalias !2393, !noundef !4 ; 4 uses
  %i.awa = zext i32 %i.avz to i64                 ; 4 uses
  %i.awb = shl i32 %i.avz, 6
  %i.awc = zext i32 %i.awb to i64                 ; 4 uses
  store i64 %i.awc, ptr %i.pd, align 8, !alias.scope !2494, !noalias !2393
  %i.awd = lshr i64 %i.awa, 5                     ; 2 uses
  %i.awe = icmp ult i32 %i.avz, 256
  br i1 %i.awe, label %bb.jn, label %.invoke3485

bb.jn:                                            ; preds = %bb.jm
  %i.awf = getelementptr inbounds nuw [4 x i8], ptr %.ptr36.i.i.i.i.i, i64 %i.awd
  %i.awg = load i32, ptr %i.awf, align 4, !alias.scope !2494, !noalias !2393, !noundef !4
  %i.awh = and i32 %i.avz, 31
  %i.awi = lshr i32 %i.awg, %i.awh
  %i.awj = and i32 %i.awi, 1
  store i32 %i.awj, ptr %i.pv, align 8, !alias.scope !2494, !noalias !2393
  %.val9.i.i.i.i = load i64, ptr %i.ob, align 8, !alias.scope !2494, !noalias !2393, !noundef !4 ; 2 uses
  %i.awk = icmp ugt i64 %.val9.i.i.i.i, %i.awc
  br i1 %i.awk, label %bb.jo, label %.invoke3485

bb.jo:                                            ; preds = %bb.jn
  %.val8.i.i.i.i = load ptr, ptr %i.oa, align 8, !alias.scope !2494, !noalias !2393, !nonnull !4, !align !132, !noundef !4
  %i.awl = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i, i64 %i.awc
  %i.awm = load i8, ptr %i.awl, align 1, !noalias !2495, !noundef !4
  store i8 %i.awm, ptr %i.pc, align 8, !alias.scope !2494, !noalias !2393
  %.val7.i.i.i.i = load i64, ptr %i.oj, align 8, !alias.scope !2494, !noalias !2393, !noundef !4 ; 2 uses
  %i.awn = icmp ugt i64 %.val7.i.i.i.i, %i.awa
  br i1 %i.awn, label %_ZN19brotli_decompressor6decode22PrepareLiteralDecoding17hd85a8b922cbb17caE.exit.i.i.i, label %.invoke3485

_ZN19brotli_decompressor6decode22PrepareLiteralDecoding17hd85a8b922cbb17caE.exit.i.i.i: ; preds = %bb.jo
  %.val.i.i.i.i = load ptr, ptr %i.oi, align 8, !alias.scope !2494, !noalias !2393, !nonnull !4, !align !132, !noundef !4
  %i.awo = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.awa
  %i.awp = load i8, ptr %i.awo, align 1, !noalias !2495, !noundef !4
  %i.awq = and i8 %i.awp, 3
  %i.awr = zext nneg i8 %i.awq to i64
  %i.aws = getelementptr inbounds nuw [512 x i8], ptr @_ZN19brotli_decompressor7context14kContextLookup17h8aa6f7a6967ae262E, i64 %i.awr
  store ptr %i.aws, ptr %i.pf, align 8, !alias.scope !2494, !noalias !2393
  store i64 0, ptr %i.pk, align 8, !alias.scope !2220, !noalias !2221
  store i16 0, ptr %i.pl, align 4, !alias.scope !2220, !noalias !2221
  store i8 7, ptr %i.nk, align 2, !alias.scope !2220, !noalias !2221
  br label %.backedge212.i.i.i.i.backedge

bb.jp:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2214
  invoke fastcc void @_ZN19brotli_decompressor6decode15WriteRingBuffer17h2f3086dc3f8a3b90E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t, ptr noalias noundef nonnull align 1 %.val13.i.i.i, i64 %.val14.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.nc, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(2600) %i.nd)
          to label %.noexc183 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc183:                                        ; preds = %bb.jp
  %i.awt = load i32, ptr %i.l, align 8, !range !2222, !noalias !2214, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2214
  %i.awu = icmp eq i32 %i.awt, 1
  br i1 %i.awu, label %.sink.split.i.i.i.i, label %.backedge212.i.i.i.i.backedge

bb.jq:                                            ; preds = %.backedge212.i.i.i.i
  %.val140.i.i.i.i = load i64, ptr %i.nj, align 8, !alias.scope !2220, !noalias !2221, !noundef !4 ; 3 uses
  %i.awv = icmp eq i64 %.val140.i.i.i.i, 0
  br i1 %i.awv, label %_ZN19brotli_decompressor6decode15WriteRingBuffer17h2f3086dc3f8a3b90E.exit.thread.i, label %bb.js

bb.jr:                                            ; preds = %.backedge212.i.i.i.i
  %i.aww = load i32, ptr %i.ng, align 4, !alias.scope !2220, !noalias !2221, !noundef !4
  %i.awx = icmp eq i32 %i.aww, 0
  br i1 %i.awx, label %bb.kk, label %bb.kl

bb.js:                                            ; preds = %bb.jq
  call void @llvm.experimental.noalias.scope.decl(metadata !2496)
  call void @llvm.experimental.noalias.scope.decl(metadata !2499)
  call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  call void @llvm.experimental.noalias.scope.decl(metadata !2503)
  %i.awy = load i32, ptr %i.py, align 8, !alias.scope !2505, !noalias !2506, !noundef !4 ; 4 uses
  %i.awz = load i32, ptr %i.po, align 8, !alias.scope !2505, !noalias !2506, !noundef !4 ; 6 uses
  %..i.i = call i32 @llvm.smin.i32(i32 %i.awy, i32 %i.awz)
  %.sroa.010.0.i.i = sext i32 %..i.i to i64
  %i.axa = load i64, ptr %i.qe, align 8, !alias.scope !2505, !noalias !2506, !noundef !4 ; 2 uses
  %i.axb = sext i32 %i.awz to i64
  %i.axc = mul i64 %i.axa, %i.axb
  %i.axd = add i64 %i.axc, %.sroa.010.0.i.i
  %i.axe = load i64, ptr %i.qf, align 8, !alias.scope !2505, !noalias !2506, !noundef !4 ; 3 uses
  %i.axf = sub i64 %i.axd, %i.axe                 ; 2 uses
  %i.axg = load i64, ptr %i.t, align 8, !alias.scope !2496, !noalias !2509, !noundef !4 ; 3 uses
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.axg, i64 %i.axf) ; 5 uses
  %i.axh = load i32, ptr %i.ov, align 8, !alias.scope !2505, !noalias !2506, !noundef !4
  %i.axi = icmp slt i32 %i.axh, 0
  br i1 %i.axi, label %.loopexit211.i.i.i.i, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.axj = load i32, ptr %i.qg, align 4, !alias.scope !2505, !noalias !2506, !noundef !4
  %i.axk = sext i32 %i.axj to i64
  %i.axl = and i64 %i.axe, %i.axk                 ; 4 uses
  %i.axm = add i64 %i.axl, %spec.store.select.i.i ; 3 uses
  %i.axn = icmp ult i64 %i.axm, %i.axl
  %.not.i.i95 = icmp ugt i64 %i.axm, %.val140.i.i.i.i
  %or.cond.i.i96 = or i1 %i.axn, %.not.i.i95
  br i1 %or.cond.i.i96, label %.invoke3481, label %bb.ju, !prof !2175

bb.ju:                                            ; preds = %bb.jt
  %i.axo = load i64, ptr %i.u, align 8, !alias.scope !2499, !noalias !2510, !noundef !4 ; 4 uses
  %i.axp = add i64 %i.axo, %spec.store.select.i.i ; 4 uses
  %i.axq = icmp ult i64 %i.axp, %i.axo
  %.not18.i.i = icmp ugt i64 %i.axp, %.val14.i.i.i
  %or.cond20.i.i = or i1 %i.axq, %.not18.i.i
  br i1 %or.cond20.i.i, label %.invoke3481, label %bb.jv, !prof !2175

bb.jv:                                            ; preds = %bb.ju
  %.val.i.i = load ptr, ptr %i.px, align 8, !alias.scope !2505, !noalias !2506, !nonnull !4, !align !132, !noundef !4
  %i.axr = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.axl
  %i.axs = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 %i.axo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.axs, ptr nonnull readonly align 1 %i.axr, i64 %spec.store.select.i.i, i1 false), !alias.scope !2511, !noalias !2515
  store i64 %i.axp, ptr %i.u, align 8, !alias.scope !2499, !noalias !2510
  %i.axt = sub nuw i64 %i.axg, %spec.store.select.i.i
  store i64 %i.axt, ptr %i.t, align 8, !alias.scope !2496, !noalias !2509
  %i.axu = add i64 %spec.store.select.i.i, %i.axe ; 2 uses
  store i64 %i.axu, ptr %i.qf, align 8, !alias.scope !2505, !noalias !2506
  store i64 %i.axu, ptr %i.nc, align 8, !alias.scope !2517, !noalias !2518
  %i.axv = icmp ult i64 %i.axg, %i.axf
  br i1 %i.axv, label %_ZN19brotli_decompressor6decode15WriteRingBuffer17h2f3086dc3f8a3b90E.exit.thread.i, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.axw = load i32, ptr %i.pg, align 8, !alias.scope !2505, !noalias !2506, !noundef !4
  %i.axx = and i32 %i.axw, 31
  %i.axy = shl nuw i32 1, %i.axx
  %i.axz = icmp ne i32 %i.awz, %i.axy
  %.not19.i.i = icmp slt i32 %i.awy, %i.awz
  %or.cond22.i.i = or i1 %.not19.i.i, %i.axz
  br i1 %or.cond22.i.i, label %_ZN19brotli_decompressor6decode15WriteRingBuffer17h2f3086dc3f8a3b90E.exit.thread.i, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.aya = sub i32 %i.awy, %i.awz
  store i32 %i.aya, ptr %i.py, align 8, !alias.scope !2505, !noalias !2506
  %i.ayb = add i64 %i.axa, 1
  store i64 %i.ayb, ptr %i.qe, align 8, !alias.scope !2505, !noalias !2506
  %i.ayc = icmp ne i32 %i.awy, %i.awz
  %i.ayd = zext i1 %i.ayc to i8
  store i8 %i.ayd, ptr %i.pw, align 1, !alias.scope !2505, !noalias !2506
  br label %_ZN19brotli_decompressor6decode15WriteRingBuffer17h2f3086dc3f8a3b90E.exit.thread.i

_ZN19brotli_decompressor6decode15WriteRingBuffer17h2f3086dc3f8a3b90E.exit.thread.i: ; preds = %bb.jx, %bb.jw, %bb.jv, %bb.jq
  %i.aye = load i32, ptr %i.ng, align 4, !alias.scope !2220, !noalias !2221, !noundef !4 ; 3 uses
  %i.ayf = icmp eq i32 %i.aye, 0
  br i1 %i.ayf, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %_ZN19brotli_decompressor6decode15WriteRingBuffer17h2f3086dc3f8a3b90E.exit.thread.i
  %i.ayg = load i32, ptr %i.nh, align 4, !alias.scope !2220, !noalias !2221, !noundef !4
  %i.ayh = zext i32 %i.ayg to i64                 ; 3 uses
  %i.ayi = load i32, ptr %i.ni, align 8, !alias.scope !2220, !noalias !2221, !noundef !4 ; 2 uses
  %i.ayj = icmp eq i32 %i.ayi, 0
  br i1 %i.ayj, label %.loopexit211.thread.i.i.i.i, label %.lr.ph394.preheader.i.i.i.i

.lr.ph394.preheader.i.i.i.i:                      ; preds = %bb.jy
  %i.ayk = zext i32 %i.ayi to i64
  %umax.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 1, 0) %.sroa.5.0901.i, i64 %i.ayh) ; 2 uses
  br label %.lr.ph394.i.i.i.i

bb.jz:                                            ; preds = %_ZN19brotli_decompressor6decode15WriteRingBuffer17h2f3086dc3f8a3b90E.exit.thread.i
  %i.ayl = load i32, ptr %i.ni, align 8, !alias.scope !2220, !noalias !2221, !noundef !4
  %i.aym = icmp eq i32 %i.ayl, 0
  br i1 %i.aym, label %bb.kc, label %bb.kd

.lr.ph394.i.i.i.i:                                ; preds = %bb.kb, %.lr.ph394.preheader.i.i.i.i
  %i.ayn = phi i32 [ %i.ayv, %bb.kb ], [ 0, %.lr.ph394.preheader.i.i.i.i ] ; 2 uses
  %storemerge103393.i.i.i.i = phi i64 [ %i.ayx, %bb.kb ], [ %i.ayk, %.lr.ph394.preheader.i.i.i.i ]
  %i.ayo = phi i64 [ %i.ayw, %bb.kb ], [ %i.ayh, %.lr.ph394.preheader.i.i.i.i ] ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ayo, %umax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.invoke3485, label %bb.ka

bb.ka:                                            ; preds = %.lr.ph394.i.i.i.i
  %i.ayp = zext i32 %i.ayn to i64                 ; 2 uses
  %i.ayq = icmp ult i32 %i.ayn, 8
  br i1 %i.ayq, label %bb.kb, label %.invoke3485

bb.kb:                                            ; preds = %bb.ka
  %i.ayr = getelementptr inbounds nuw i8, ptr %.sroa.0.0902.i, i64 %i.ayo
  %i.ays = load i8, ptr %i.ayr, align 1, !alias.scope !2519, !noalias !2520, !noundef !4
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.ayp
  store i8 %i.ays, ptr %i.ayt, align 1, !alias.scope !2220, !noalias !2221
  %i.ayu = load i32, ptr %i.ng, align 4, !alias.scope !2220, !noalias !2221, !noundef !4
  %i.ayv = add i32 %i.ayu, 1                      ; 2 uses
  store i32 %i.ayv, ptr %i.ng, align 4, !alias.scope !2220, !noalias !2221
  %i.ayw = add nuw nsw i64 %i.ayo, 1              ; 2 uses
  %i.ayx = add nsw i64 %storemerge103393.i.i.i.i, -1 ; 2 uses
  %i.ayy = icmp eq i64 %i.ayx, 0
  br i1 %i.ayy, label %.loopexit211.thread.i.i.i.i, label %.lr.ph394.i.i.i.i

bb.kc:                                            ; preds = %bb.jz
  store i32 0, ptr %i.ng, align 4, !alias.scope !2220, !noalias !2221
  %i.ayz = trunc nuw i64 %i.rp to i32
  store i32 %i.ayz, ptr %i.ni, align 8, !alias.scope !2220, !noalias !2221
  %i.aza = trunc i64 %i.ro to i32
  store i32 %i.aza, ptr %i.nh, align 4, !alias.scope !2220, !noalias !2221
  br label %.backedge212.i.i.i.i.backedge

bb.kd:                                            ; preds = %bb.jz
  %i.azb = icmp eq i64 %i.rr, 0
  br i1 %i.azb, label %.thread204.i.i.i.i, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.azc = icmp ult i64 %i.rq, %.sroa.5.0901.i
  br i1 %i.azc, label %bb.kf, label %.invoke3485

.loopexit211.thread.i.i.i.i:                      ; preds = %bb.kb, %bb.jy
  %.sroa.0.4.i.i.i = phi i64 [ %i.ayh, %bb.jy ], [ %i.ayw, %bb.kb ]
  store i64 0, ptr %i.v, align 8, !alias.scope !2207, !noalias !2388
  br label %.thread204.i.i.i.i

.loopexit211.i.i.i.i:                             ; preds = %bb.js, %bb.kn, %bb.kl
  %.sroa.0.5.i.i.i = phi i64 [ %i.baj, %bb.kn ], [ %.sroa.0.150.i.i.i, %bb.kl ], [ %.sroa.0.150.i.i.i, %bb.js ]
  %i.azd = phi i64 [ %i.bai, %bb.kn ], [ %i.rn, %bb.kl ], [ %i.rn, %bb.js ]
  %.sroa.01.8.i.i.i.i = phi i32 [ %.sroa.01.1.i.i.i.i, %bb.kn ], [ %.sroa.01.1.i.i.i.i, %bb.kl ], [ -9, %bb.js ] ; 3 uses
  store i32 %.sroa.01.8.i.i.i.i, ptr %i.nf, align 8, !alias.scope !2220, !noalias !2221
  %switch.tableidx.i.i.i.i = add nsw i32 %.sroa.01.8.i.i.i.i, -1
  %i.aze = icmp ult i32 %switch.tableidx.i.i.i.i, 3
  %spec.select.i.i.i.i = select i1 %i.aze, i32 %.sroa.01.8.i.i.i.i, i32 0
  br label %_ZN19brotli_decompressor6decode22BrotliDecompressStream17h48799a520d66ecf6E.exit.i.i.i

bb.kf:                                            ; preds = %bb.ke
  %i.azf = getelementptr inbounds nuw i8, ptr %.sroa.0.0902.i, i64 %i.rq
  %i.azg = load i8, ptr %i.azf, align 1, !alias.scope !2519, !noalias !2520, !noundef !4 ; 3 uses
  store i8 %i.azg, ptr %i.q, align 1, !noalias !2214
  %i.azh = zext i32 %i.aye to i64                 ; 2 uses
  %i.azi = icmp ult i32 %i.aye, 8
  br i1 %i.azi, label %bb.kg, label %.invoke3485

bb.kg:                                            ; preds = %bb.kf
  %i.azj = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.azh
  store i8 %i.azg, ptr %i.azj, align 1, !alias.scope !2220, !noalias !2221
  %i.azk = load i32, ptr %i.ng, align 4, !alias.scope !2220, !noalias !2221, !noundef !4 ; 3 uses
  %i.azl = zext i32 %i.azk to i64                 ; 3 uses
  %i.azm = icmp ult i32 %i.azk, 8
  br i1 %i.azm, label %bb.kh, label %.invoke3485

bb.kh:                                            ; preds = %bb.kg
  %i.azn = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.azl
  %i.azo = load i8, ptr %i.azn, align 1, !noalias !2214, !noundef !4
  %i.azp = icmp eq i8 %i.azo, %i.azg
  br i1 %i.azp, label %bb.kj, label %bb.ki, !prof !337

bb.ki:                                            ; preds = %bb.kh
  %i.azq = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.azl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2214
  store ptr null, ptr %i.p, align 8, !noalias !2214
  invoke void @_ZN4core9panicking13assert_failed17h2fdafc6f10d655e6E(i8 noundef 0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.azq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @431) #46
          to label %.noexc191 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc191:                                        ; preds = %bb.ki
  unreachable

bb.kj:                                            ; preds = %bb.kh
  %i.azr = add nuw nsw i32 %i.azk, 1              ; 2 uses
  store i32 %i.azr, ptr %i.ng, align 4, !alias.scope !2220, !noalias !2221
  store i32 %i.azr, ptr %i.ni, align 8, !alias.scope !2220, !noalias !2221
  %i.azs = add nuw i64 %i.rq, 1                   ; 3 uses
  %i.azt = add nsw i64 %i.rr, -1                  ; 4 uses
  store i64 %i.azt, ptr %i.v, align 8, !alias.scope !2207, !noalias !2388
  br label %.backedge212.i.i.i.i.backedge

bb.kk:                                            ; preds = %bb.jr
  %i.azu = load i32, ptr %i.ot, align 8, !alias.scope !2220, !noalias !2221, !noundef !4 ; 2 uses
  %i.azv = sub i32 64, %i.azu                     ; 3 uses
  %i.azw = lshr i32 %i.azv, 3                     ; 2 uses
  %i.azx = and i32 %i.azv, -8                     ; 2 uses
  %i.azy = load i32, ptr %i.ni, align 8, !alias.scope !2220, !noalias !2221, !noundef !4
  %i.azz = add i32 %i.azw, %i.azy                 ; 2 uses
  store i32 %i.azz, ptr %i.ni, align 8, !alias.scope !2220, !noalias !2221
  %i.baa = load i32, ptr %i.nh, align 4, !alias.scope !2220, !noalias !2221, !noundef !4
  %i.bab = sub i32 %i.baa, %i.azw                 ; 2 uses
  store i32 %i.bab, ptr %i.nh, align 4, !alias.scope !2220, !noalias !2221
  %i.bac = icmp eq i32 %i.azx, 64
  br i1 %i.bac, label %bb.kn, label %bb.km

bb.kl:                                            ; preds = %bb.jr
  store i32 0, ptr %i.ng, align 4, !alias.scope !2220, !noalias !2221
  br label %.loopexit211.i.i.i.i

bb.km:                                            ; preds = %bb.kk
  %i.bad = load i64, ptr %i.og, align 8, !alias.scope !2220, !noalias !2221, !noundef !4
  %i.bae = and i32 %i.azv, 56
  %i.baf = zext nneg i32 %i.bae to i64
  %i.bag = shl i64 %i.bad, %i.baf
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %bb.kk
  %storemerge.i.i.i.i = phi i64 [ %i.bag, %bb.km ], [ 0, %bb.kk ]
  store i64 %storemerge.i.i.i.i, ptr %i.og, align 8, !alias.scope !2220, !noalias !2221
  %i.bah = add i32 %i.azx, %i.azu
  store i32 %i.bah, ptr %i.ot, align 8, !alias.scope !2220, !noalias !2221
  %i.bai = zext i32 %i.azz to i64                 ; 2 uses
  store i64 %i.bai, ptr %i.v, align 8, !alias.scope !2207, !noalias !2388
  %i.baj = zext i32 %i.bab to i64
  br label %.loopexit211.i.i.i.i

.thread204.i.i.i.i:                               ; preds = %bb.kd, %.loopexit211.thread.i.i.i.i
  %.sroa.0.3.i.i.i = phi i64 [ %.sroa.0.4.i.i.i, %.loopexit211.thread.i.i.i.i ], [ %.sroa.0.150.i.i.i, %bb.kd ]
  %i.bak = phi i64 [ 0, %.loopexit211.thread.i.i.i.i ], [ %i.rn, %bb.kd ]
  store i32 2, ptr %i.nf, align 8, !alias.scope !2220, !noalias !2221
  br label %_ZN19brotli_decompressor6decode22BrotliDecompressStream17h48799a520d66ecf6E.exit.i.i.i

_ZN19brotli_decompressor6decode22BrotliDecompressStream17h48799a520d66ecf6E.exit.i.i.i: ; preds = %.thread204.i.i.i.i, %.loopexit211.i.i.i.i, %.sink.split.i.i.i.i, %bb.by
  %.sroa.0.10.i.i.i = phi i64 [ %.sroa.0.049.i.i.i, %bb.by ], [ %.sroa.0.7.i.i.i, %.sink.split.i.i.i.i ], [ %.sroa.0.5.i.i.i, %.loopexit211.i.i.i.i ], [ %.sroa.0.3.i.i.i, %.thread204.i.i.i.i ] ; 2 uses
  %i.bal = phi i64 [ %i.qu, %bb.by ], [ %i.avy, %.sink.split.i.i.i.i ], [ %i.azd, %.loopexit211.i.i.i.i ], [ %i.bak, %.thread204.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i = phi i32 [ 0, %bb.by ], [ %.sroa.0.0.ph.i.i.i.i, %.sink.split.i.i.i.i ], [ %spec.select.i.i.i.i, %.loopexit211.i.i.i.i ], [ 2, %.thread204.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2204
  %i.bam = load ptr, ptr %i.am, align 8, !alias.scope !2205, !noalias !2206, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bam, null
  br i1 %.not.i.i.i, label %.lr.ph.i._crit_edge.i.invoke, label %bb.ko, !prof !282

bb.ko:                                            ; preds = %_ZN19brotli_decompressor6decode22BrotliDecompressStream17h48799a520d66ecf6E.exit.i.i.i
  %.val.i.i.i97 = load ptr, ptr %i.na, align 8, !alias.scope !2205, !noalias !2206, !nonnull !4, !align !132, !noundef !4
  %.val10.i.i.i = load i64, ptr %i.nb, align 8, !alias.scope !2205, !noalias !2206, !noundef !4 ; 2 uses
  %i.ban = load i64, ptr %i.u, align 8, !noalias !2204, !noundef !4 ; 9 uses
end_hunk_4
begin_hunk_5_@"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hb314d7bb5ae5d43cE":bb.a
  %i.ip = sub nuw i64 %4, %i.ik
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3589)
  %i.iq = icmp ugt i64 %i.ip, 7
  br i1 %i.iq, label %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17hdc2713facd0f94faE.exit.i7.i", label %bb.ba, !prof !337

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3592
  store ptr @230, ptr %i.d, align 8, !noalias !3592
  %i.ir = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.ir, align 8, !noalias !3592
  %i.is = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.is, align 8, !noalias !3592
  %i.it = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.it, align 8, !noalias !3592
  %i.iu = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.iu, align 8, !noalias !3592
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @868) #46, !noalias !3592
  unreachable

"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17hdc2713facd0f94faE.exit.i7.i": ; preds = %bb.az
  %i.iv = getelementptr inbounds nuw i8, ptr %3, i64 %i.ik
  %.sroa.0.0.copyload.i.i8.i26 = load i64, ptr %i.iv, align 1, !alias.scope !3595, !noalias !3599
  %i.iw = mul i64 %.sroa.0.0.copyload.i.i8.i26, 3866266742567714048
  %i.ix = lshr i64 %i.iw, 44
  %i.iy = lshr i64 %i.ij, 3
  %i.iz = and i64 %i.iy, 3
  %i.ja = add nuw nsw i64 %i.ix, %i.iz            ; 3 uses
  %i.jb = icmp ugt i64 %.val7, %i.ja
  br i1 %i.jb, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h0d216ecdce576932E.exit9.i", label %bb.bb

bb.bb:                                            ; preds = %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17hdc2713facd0f94faE.exit.i7.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ja, i64 noundef %.val7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #46, !noalias !3588
  unreachable

"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h0d216ecdce576932E.exit9.i": ; preds = %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17hdc2713facd0f94faE.exit.i7.i"
  %i.jc = trunc nuw i64 %i.ij to i32
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.val6, i64 %i.ja
  store i32 %i.jc, ptr %i.jd, align 4, !noalias !3588
  %i.je = add nsw i64 %2, -1                      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3601)
  %i.jf = and i64 %5, %i.je                       ; 3 uses
  %.not.i10.i27 = icmp ugt i64 %i.jf, %4
  br i1 %.not.i10.i27, label %bb.bc, label %bb.bd, !prof !282

bb.bc:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h0d216ecdce576932E.exit9.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3604
  store ptr @230, ptr %i.c, align 8, !noalias !3604
  %i.jg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.jg, align 8, !noalias !3604
  %i.jh = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.jh, align 8, !noalias !3604
  %i.ji = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ji, align 8, !noalias !3604
  %i.jj = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.jj, align 8, !noalias !3604
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #46, !noalias !3604
  unreachable

bb.bd:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h0d216ecdce576932E.exit9.i"
  %i.jk = sub nuw i64 %4, %i.jf
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3605)
  %i.jl = icmp ugt i64 %i.jk, 7
  br i1 %i.jl, label %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17hdc2713facd0f94faE.exit.i11.i", label %bb.be, !prof !337

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3608
  store ptr @230, ptr %i.b, align 8, !noalias !3608
  %i.jm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.jm, align 8, !noalias !3608
  %i.jn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.jn, align 8, !noalias !3608
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.jo, align 8, !noalias !3608
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.jp, align 8, !noalias !3608
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @868) #46, !noalias !3608
  unreachable

"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17hdc2713facd0f94faE.exit.i11.i": ; preds = %bb.bd
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 %i.jf
  %.sroa.0.0.copyload.i.i12.i28 = load i64, ptr %i.jq, align 1, !alias.scope !3611, !noalias !3615
  %i.jr = mul i64 %.sroa.0.0.copyload.i.i12.i28, 3866266742567714048
  %i.js = lshr i64 %i.jr, 44
  %i.jt = lshr i64 %i.je, 3
  %i.ju = and i64 %i.jt, 3
  %i.jv = add nuw nsw i64 %i.js, %i.ju            ; 3 uses
  %i.jw = icmp ugt i64 %.val7, %i.jv
  br i1 %i.jw, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h0d216ecdce576932E.exit13.i", label %bb.bf

bb.bf:                                            ; preds = %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17hdc2713facd0f94faE.exit.i11.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.jv, i64 noundef %.val7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #46, !noalias !3604
  unreachable

"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h0d216ecdce576932E.exit13.i": ; preds = %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17hdc2713facd0f94faE.exit.i11.i"
  %i.jx = trunc nuw i64 %i.je to i32
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.val6, i64 %i.jv
  store i32 %i.jx, ptr %i.jy, align 4, !noalias !3604
  br label %_ZN6brotli3enc19backward_references29StitchToPreviousBlockInternal17h7f40bbd54a6ff0f5E.exit

bb.bg:                                            ; preds = %bb.a
  %i.jz = icmp samesign ugt i64 %1, 2
  %i.ka = icmp samesign ugt i64 %2, 2
  %or.cond.i29 = and i1 %i.jz, %i.ka
  br i1 %or.cond.i29, label %bb.bh, label %_ZN6brotli3enc19backward_references29StitchToPreviousBlockInternal17h7f40bbd54a6ff0f5E.exit

bb.bh:                                            ; preds = %bb.bg
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.kc = add nsw i64 %2, -3
  tail call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h1173392bf0ad7a48E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.kb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i64 noundef %i.kc)
  %i.kd = add nsw i64 %2, -2
  tail call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h1173392bf0ad7a48E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.kb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i64 noundef %i.kd)
  %i.ke = add nsw i64 %2, -1
  tail call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h1173392bf0ad7a48E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.kb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i64 noundef %i.ke)
  br label %_ZN6brotli3enc19backward_references29StitchToPreviousBlockInternal17h7f40bbd54a6ff0f5E.exit

bb.bi:                                            ; preds = %bb.a
  %i.kf = icmp samesign ugt i64 %1, 2
  %i.kg = icmp samesign ugt i64 %2, 2
  %or.cond.i30 = and i1 %i.kf, %i.kg
  br i1 %or.cond.i30, label %bb.bj, label %_ZN6brotli3enc19backward_references29StitchToPreviousBlockInternal17h7f40bbd54a6ff0f5E.exit

bb.bj:                                            ; preds = %bb.bi
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ki = add nsw i64 %2, -3
  tail call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h7478efab3b8895edE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.kh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i64 noundef %i.ki)
  %i.kj = add nsw i64 %2, -2
  tail call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h7478efab3b8895edE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.kh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i64 noundef %i.kj)
  %i.kk = add nsw i64 %2, -1
  tail call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h7478efab3b8895edE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.kh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i64 noundef %i.kk)
  br label %_ZN6brotli3enc19backward_references29StitchToPreviousBlockInternal17h7f40bbd54a6ff0f5E.exit

bb.bk:                                            ; preds = %bb.a
  %i.kl = icmp samesign ugt i64 %1, 2
  %i.km = icmp samesign ugt i64 %2, 2
  %or.cond.i31 = and i1 %i.kl, %i.km
  br i1 %or.cond.i31, label %bb.bl, label %_ZN6brotli3enc19backward_references29StitchToPreviousBlockInternal17h7f40bbd54a6ff0f5E.exit

bb.bl:                                            ; preds = %bb.bk
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ko = add nsw i64 %2, -3
  tail call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h890e4523566867b4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.kn, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i64 noundef %i.ko)
  %i.kp = add nsw i64 %2, -2
  tail call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h890e4523566867b4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.kn, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i64 noundef %i.kp)
  %i.kq = add nsw i64 %2, -1
  tail call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h890e4523566867b4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.kn, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i64 noundef %i.kq)
  br label %_ZN6brotli3enc19backward_references29StitchToPreviousBlockInternal17h7f40bbd54a6ff0f5E.exit

bb.bm:                                            ; preds = %bb.a
  %i.kr = icmp samesign ugt i64 %1, 6
  %i.ks = icmp samesign ugt i64 %2, 2
  %or.cond.i32 = and i1 %i.kr, %i.ks
  br i1 %or.cond.i32, label %bb.bn, label %_ZN6brotli3enc19backward_references29StitchToPreviousBlockInternal17h7f40bbd54a6ff0f5E.exit

bb.bn:                                            ; preds = %bb.bm
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ku = add nsw i64 %2, -3
  tail call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h3bfbc7a8a8e25ba5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(112) %i.kt, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i64 noundef %i.ku)
  %i.kv = add nsw i64 %2, -2
  tail call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h3bfbc7a8a8e25ba5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(112) %i.kt, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i64 noundef %i.kv)
  %i.kw = add nsw i64 %2, -1
  tail call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h3bfbc7a8a8e25ba5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(112) %i.kt, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i64 noundef %i.kw)
  br label %_ZN6brotli3enc19backward_references29StitchToPreviousBlockInternal17h7f40bbd54a6ff0f5E.exit

bb.bo:                                            ; preds = %bb.a
  %i.kx = icmp samesign ugt i64 %1, 2
  %i.ky = icmp samesign ugt i64 %2, 2
  %or.cond.i33 = and i1 %i.kx, %i.ky
  br i1 %or.cond.i33, label %bb.bp, label %_ZN6brotli3enc19backward_references29StitchToPreviousBlockInternal17h7f40bbd54a6ff0f5E.exit

bb.bp:                                            ; preds = %bb.bo
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.la = add nsw i64 %2, -3
  tail call fastcc void @"_ZN113_$LT$brotli..enc..backward_references..H9$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h5550931a7ee766cdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.kz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i64 noundef %i.la)
  %i.lb = add nsw i64 %2, -2
  tail call fastcc void @"_ZN113_$LT$brotli..enc..backward_references..H9$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h5550931a7ee766cdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.kz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i64 noundef %i.lb)
  %i.lc = add nsw i64 %2, -1
  tail call fastcc void @"_ZN113_$LT$brotli..enc..backward_references..H9$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h5550931a7ee766cdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.kz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i64 noundef %i.lc)
  br label %_ZN6brotli3enc19backward_references29StitchToPreviousBlockInternal17h7f40bbd54a6ff0f5E.exit

bb.bq:                                            ; preds = %bb.a
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.lf = load i64, ptr %i.le, align 8, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3617)
  %i.lg = icmp samesign ugt i64 %1, 2
  %i.lh = icmp samesign ugt i64 %2, 127
  %or.cond.i34 = select i1 %i.lg, i1 %i.lh, i1 false
  br i1 %or.cond.i34, label %.lr.ph.i, label %_ZN6brotli3enc19backward_references29StitchToPreviousBlockInternal17h7f40bbd54a6ff0f5E.exit

.lr.ph.i:                                         ; preds = %bb.bq
  %i.li = add nsw i64 %2, -128                    ; 2 uses
  %i.lj = add nuw nsw i64 %i.li, %1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.lj, i64 range(i64 0, 4294967296) %2)
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ll = load i64, ptr %i.lk, align 8, !alias.scope !3617, !noalias !3620, !noundef !4
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.lr.ph.i
  %.sroa.01.05.i = phi i64 [ %i.li, %.lr.ph.i ], [ %i.lm, %bb.br ] ; 3 uses
  %i.lm = add nuw nsw i64 %.sroa.01.05.i, 1       ; 2 uses
  %i.ln = sub nuw nsw i64 %2, %.sroa.01.05.i
  %.sroa.0.0.i4.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ln, i64 15)
  %i.lo = sub i64 %i.ll, %.sroa.0.0.i4.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3622
  store i64 0, ptr %i.a, align 8, !noalias !3622
  %i.lp = call fastcc noundef i64 @_ZN6brotli3enc19backward_references19hash_to_binary_tree22StoreAndFindMatchesH1017h6da75ee1bd1869baE(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.ld, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef %.sroa.01.05.i, i64 noundef range(i64 0, 4294967296) %5, i64 noundef %i.lf, i64 noundef 128, i64 noundef %i.lo, ptr noalias noundef align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 inttoptr (i64 8 to ptr), i64 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3622
  %i.lq = icmp samesign ult i64 %i.lm, %.sroa.0.0.i.i
  br i1 %i.lq, label %bb.br, label %_ZN6brotli3enc19backward_references29StitchToPreviousBlockInternal17h7f40bbd54a6ff0f5E.exit

_ZN6brotli3enc19backward_references29StitchToPreviousBlockInternal17h7f40bbd54a6ff0f5E.exit: ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h0d216ecdce576932E.exit13.i", %bb.as, %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h574fdf7cee0670d3E.exit13.i", %bb.ae, %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h0d9bc9ede4a55776E.exit13.i", %bb.q, %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h13a9c5a4adae9074E.exit13.i", %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17hd450f9d9dde91f54E"(ptr noalias noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext %1, i64 noundef range(i64 0, 4294967296) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = load i64, ptr %0, align 8, !range !3411, !noundef !4
  switch i64 %i.h, label %default.unreachable225 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.k
    i64 3, label %bb.s
    i64 4, label %bb.aa
    i64 5, label %bb.ai
    i64 6, label %bb.as
    i64 7, label %bb.bc
    i64 8, label %bb.bm
    i64 9, label %bb.bx
    i64 10, label %bb.bz
  ], !prof !3412

default.unreachable225:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std9panicking11begin_panic17h3ae8d44fd2c8c89bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @300, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3626)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !alias.scope !3623, !noalias !3626, !noundef !4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h5e6f7c77d92641c6E.exit"

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ult i64 %2, 2049
  %or.cond.i = select i1 %1, i1 %i.m, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.d
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %.loopexit17.i, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.preheader.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val13.i = load i64, ptr %i.n, align 8, !alias.scope !3623, !noalias !3626 ; 2 uses
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !3623, !noalias !3626, !nonnull !4, !align !131
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 7)
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !3623, !noalias !3626, !noundef !4 ; 2 uses
  %i.q = icmp eq i64 %.val15.i, 0
  br i1 %i.q, label %.loopexit17.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %.idx.i = shl i64 %.val15.i, 2
  %.val14.i = load ptr, ptr %i.i, align 8, !alias.scope !3623, !noalias !3626, !nonnull !4, !align !131, !noundef !4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %.val14.i, i8 0, i64 %.idx.i, i1 false), !noalias !3628
  br label %.loopexit17.i

.loopexit17.i:                                    ; preds = %.loopexit.i, %.lr.ph.preheader.i, %bb.e, %.preheader.i
  store i32 1, ptr %i.j, align 8, !alias.scope !3623, !noalias !3626
  br label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h5e6f7c77d92641c6E.exit"

bb.f:                                             ; preds = %.loopexit.i, %.lr.ph25.i
  %.sroa.05.024.i = phi i64 [ 0, %.lr.ph25.i ], [ %i.r, %.loopexit.i ] ; 5 uses
  %i.r = add nuw nsw i64 %.sroa.05.024.i, 1       ; 2 uses
  %i.s = icmp ugt i64 %.sroa.05.024.i, %4
  br i1 %i.s, label %bb.i, label %bb.g, !prof !282

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3629)
  %exitcond.not.i = icmp eq i64 %.sroa.05.024.i, %i.o
  br i1 %exitcond.not.i, label %bb.h, label %"_ZN127_$LT$brotli..enc..backward_references..H2Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h77569bf77d33d0eaE.exit.i", !prof !282

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3632
  store ptr @230, ptr %i.g, align 8, !noalias !3632
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.t, align 8, !noalias !3632
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.u, align 8, !noalias !3632
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !3632
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.w, align 8, !noalias !3632
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @868) #46, !noalias !3632
  unreachable

"_ZN127_$LT$brotli..enc..backward_references..H2Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h77569bf77d33d0eaE.exit.i": ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.05.024.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.x, align 1, !alias.scope !3635, !noalias !3639
  %i.y = mul i64 %.sroa.0.0.copyload.i.i, -4819355556693147648
  %i.z = lshr i64 %i.y, 48                        ; 4 uses
  %.not12.not.i = icmp ugt i64 %.val13.i, %i.z
  br i1 %.not12.not.i, label %.loopexit.i, label %bb.j, !prof !337

bb.i:                                             ; preds = %bb.f
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.05.024.i, i64 noundef %4, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @293) #46, !noalias !3628
  unreachable

.loopexit.i:                                      ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H2Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h77569bf77d33d0eaE.exit.i"
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.z
  store i32 0, ptr %i.aa, align 4, !noalias !3628
  %exitcond31.not.i = icmp eq i64 %i.r, %2
  br i1 %exitcond31.not.i, label %.loopexit17.i, label %bb.f

bb.j:                                             ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H2Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h77569bf77d33d0eaE.exit.i"
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.z, i64 noundef %i.ab, i64 noundef %.val13.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @292) #46, !noalias !3628
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3644)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !alias.scope !3641, !noalias !3644, !noundef !4
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.l, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h5e6f7c77d92641c6E.exit"

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp samesign ult i64 %2, 2049
  %or.cond.i1 = select i1 %1, i1 %i.ag, i1 false
  br i1 %or.cond.i1, label %.preheader.i7, label %bb.m

.preheader.i7:                                    ; preds = %bb.l
  %.not.i8 = icmp eq i64 %2, 0
  br i1 %.not.i8, label %.loopexit17.i6, label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.preheader.i7
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val13.i9 = load i64, ptr %i.ah, align 8, !alias.scope !3641, !noalias !3644 ; 2 uses
  %.val.i10 = load ptr, ptr %i.ac, align 8, !alias.scope !3641, !noalias !3644, !nonnull !4, !align !131
  %i.ai = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 7)
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val15.i2 = load i64, ptr %i.aj, align 8, !alias.scope !3641, !noalias !3644, !noundef !4 ; 2 uses
  %i.ak = icmp eq i64 %.val15.i2, 0
  br i1 %i.ak, label %.loopexit17.i6, label %.lr.ph.preheader.i3

.lr.ph.preheader.i3:                              ; preds = %bb.m
  %.idx.i4 = shl i64 %.val15.i2, 2
  %.val14.i5 = load ptr, ptr %i.ac, align 8, !alias.scope !3641, !noalias !3644, !nonnull !4, !align !131, !noundef !4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %.val14.i5, i8 0, i64 %.idx.i4, i1 false), !noalias !3646
  br label %.loopexit17.i6

.loopexit17.i6:                                   ; preds = %.loopexit.i13, %.lr.ph.preheader.i3, %bb.m, %.preheader.i7
  store i32 1, ptr %i.ad, align 8, !alias.scope !3641, !noalias !3644
  br label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h5e6f7c77d92641c6E.exit"

bb.n:                                             ; preds = %.loopexit.i13, %.lr.ph26.i
  %.sroa.05.025.i = phi i64 [ 0, %.lr.ph26.i ], [ %i.al, %.loopexit.i13 ] ; 5 uses
  %i.al = add nuw nsw i64 %.sroa.05.025.i, 1      ; 2 uses
  %i.am = icmp ugt i64 %.sroa.05.025.i, %4
  br i1 %i.am, label %bb.q, label %bb.o, !prof !282

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3647)
  %exitcond.not.i11 = icmp eq i64 %.sroa.05.025.i, %i.ai
  br i1 %exitcond.not.i11, label %bb.p, label %"_ZN127_$LT$brotli..enc..backward_references..H3Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h7ac77290323ce089E.exit.i", !prof !282

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3650
  store ptr @230, ptr %i.f, align 8, !noalias !3650
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.an, align 8, !noalias !3650
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.ao, align 8, !noalias !3650
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ap, align 8, !noalias !3650
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.aq, align 8, !noalias !3650
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @868) #46, !noalias !3650
  unreachable

end_hunk_5
begin_hunk_6_@_ZN19brotli_decompressor6decode15ReadHuffmanCode17h2548961c9831ea9eE:bb.a
  br i1 %i.ie, label %bb.b, label %bb.au

bb.au:                                            ; preds = %.preheader64.15, %.preheader64.14, %.preheader64.13, %.preheader64.12, %.preheader64.11, %.preheader64.10, %.preheader64.9, %.preheader64.8, %.preheader64.7, %.preheader64.6, %.preheader64.5, %.preheader64.4, %.preheader64.3, %.preheader64.2, %.preheader64.1, %_ZN19brotli_decompressor6decode25ReadCodeLengthCodeLengths17h07bb97429f460dcbE.exit
  %.lcssa156 = phi i64 [ %i.fg, %_ZN19brotli_decompressor6decode25ReadCodeLengthCodeLengths17h07bb97429f460dcbE.exit ], [ %i.fl, %.preheader64.1 ], [ %i.fq, %.preheader64.2 ], [ %i.fv, %.preheader64.3 ], [ %i.ga, %.preheader64.4 ], [ %i.gf, %.preheader64.5 ], [ %i.gk, %.preheader64.6 ], [ %i.gp, %.preheader64.7 ], [ %i.gu, %.preheader64.8 ], [ %i.gz, %.preheader64.9 ], [ %i.he, %.preheader64.10 ], [ %i.hj, %.preheader64.11 ], [ %i.ho, %.preheader64.12 ], [ %i.ht, %.preheader64.13 ], [ %i.hy, %.preheader64.14 ], [ %i.id, %.preheader64.15 ]
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.lcssa156, i64 noundef 720, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #46
  unreachable

bb.av:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4271
  %.pre182 = load i32, ptr %i.t, align 4, !alias.scope !4274, !noalias !4277
  call void @llvm.experimental.noalias.scope.decl(metadata !4274)
  %i.if = icmp ult i32 %.pre182, %1
  br i1 %i.if, label %.lr.ph.i46, label %.loopexit

.lr.ph.i46:                                       ; preds = %.thread247, %bb.av
  %i.ig = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %.backedge.i, %.lr.ph.i46
  %i.ih = load i32, ptr %i.l, align 4, !noundef !4
  %.not.i47 = icmp eq i32 %i.ih, 0
  br i1 %.not.i47, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ii = load i32, ptr %i.o, align 8, !alias.scope !4274, !noalias !4277, !noundef !4 ; 5 uses
  %i.ij = sub i32 64, %i.ii                       ; 2 uses
  %i.ik = icmp eq i32 %i.ii, 64
  br i1 %i.ik, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.il = load i64, ptr %i.n, align 8, !alias.scope !4274, !noalias !4277, !noundef !4
  %i.im = and i32 %i.ii, 63
  %i.in = zext nneg i32 %i.im to i64
  %i.io = lshr i64 %i.il, %i.in
  %i.ip = trunc i64 %i.io to i32
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.03.0.i = phi i32 [ 0, %bb.ax ], [ %i.ip, %bb.ay ] ; 2 uses
  %i.iq = and i32 %.sroa.03.0.i, 31
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ir ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 2
  %i.iu = load i8, ptr %i.it, align 2, !alias.scope !4274, !noalias !4277, !noundef !4 ; 2 uses
  %i.iv = zext i8 %i.iu to i32                    ; 3 uses
  %i.iw = icmp ult i32 %i.ij, %i.iv
  br i1 %i.iw, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ix = load i16, ptr %i.is, align 4, !alias.scope !4274, !noalias !4277, !noundef !4 ; 3 uses
  %i.iy = zext i16 %i.ix to i32                   ; 3 uses
  %i.iz = icmp ult i16 %i.ix, 16
  br i1 %i.iz, label %bb.bd, label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.ja = call noundef zeroext i1 @_ZN19brotli_decompressor10bit_reader14BrotliPullByte17ha5d4e37a7757a6aaE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7, i64 noundef range(i64 1, 0) %8)
  br i1 %i.ja, label %.backedge.i, label %_ZN19brotli_decompressor6decode24ReadSimpleHuffmanSymbols17hef5991b62d915a8bE.exit

bb.bc:                                            ; preds = %bb.ba
  %i.jb = add nsw i32 %i.iy, -14                  ; 2 uses
  %i.jc = zext nneg i32 %i.jb to i64              ; 2 uses
  %i.jd = icmp ult i16 %i.ix, 47
  br i1 %i.jd, label %bb.be, label %bb.bf

bb.bd:                                            ; preds = %bb.ba
  %i.je = add i32 %i.ii, %i.iv
  store i32 %i.je, ptr %i.o, align 8, !alias.scope !4274, !noalias !4277
  %i.jf = load i64, ptr %i.r, align 8, !alias.scope !4274, !noalias !4277, !noundef !4
  call void @_ZN19brotli_decompressor6decode23ProcessSingleCodeLength17h9c27a27930f756f7E(i32 noundef %i.iy, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.t, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.l, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.u, ptr noalias noundef nonnull align 2 %i.s, i64 noundef 720, i64 noundef %i.jf, ptr noalias noundef nonnull align 2 %i.q, i64 noundef 16, ptr noalias noundef nonnull align 4 %i.ig, i64 noundef 32)
  br label %.backedge.i

bb.be:                                            ; preds = %bb.bc
  %i.jg = add nuw nsw i32 %i.jb, %i.iv            ; 2 uses
  %i.jh = icmp ult i32 %i.ij, %i.jg
  br i1 %i.jh, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.jc, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @395) #46
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.ji = and i8 %i.iu, 31
  %i.jj = zext nneg i8 %i.ji to i32
  %i.jk = lshr i32 %.sroa.03.0.i, %i.jj
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr @394, i64 %i.jc
  %i.jm = load i32, ptr %i.jl, align 4, !noalias !4279, !noundef !4
  %i.jn = and i32 %i.jm, %i.jk
  %i.jo = add i32 %i.jg, %i.ii
  store i32 %i.jo, ptr %i.o, align 8, !alias.scope !4274, !noalias !4277
  %i.jp = load i64, ptr %i.r, align 8, !alias.scope !4274, !noalias !4277, !noundef !4
  call void @_ZN19brotli_decompressor6decode25ProcessRepeatedCodeLength17h7f373f909d18212eE(i32 noundef %i.iy, i32 noundef %i.jn, i32 noundef %1, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.t, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.l, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.u, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.v, ptr noalias noundef nonnull align 2 %i.s, i64 noundef 720, i64 noundef %i.jp, ptr noalias noundef nonnull align 2 %i.q, i64 noundef 16, ptr noalias noundef nonnull align 4 %i.ig, i64 noundef 32)
  br label %.backedge.i

bb.bh:                                            ; preds = %bb.be
  %i.jq = call noundef zeroext i1 @_ZN19brotli_decompressor10bit_reader14BrotliPullByte17ha5d4e37a7757a6aaE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7, i64 noundef range(i64 1, 0) %8)
  br i1 %i.jq, label %.backedge.i, label %_ZN19brotli_decompressor6decode24ReadSimpleHuffmanSymbols17hef5991b62d915a8bE.exit

.backedge.i:                                      ; preds = %bb.bh, %bb.bg, %bb.bd, %bb.bb
  %i.jr = load i32, ptr %i.t, align 4, !alias.scope !4274, !noalias !4277, !noundef !4
  %i.js = icmp ult i32 %i.jr, %1
  br i1 %i.js, label %bb.aw, label %.loopexit

.loopexit:                                        ; preds = %.backedge.i, %_ZN19brotli_decompressor6decode21ReadSymbolCodeLengths17h24d8fcbb87a2c084E.exit.thread51, %bb.av
  %.pr = load i32, ptr %i.l, align 4
  %i.jt = icmp eq i32 %.pr, 0
  br i1 %i.jt, label %.thread, label %_ZN19brotli_decompressor6decode24ReadSimpleHuffmanSymbols17hef5991b62d915a8bE.exit

.thread:                                          ; preds = %bb.aw, %.loopexit
  %i.ju = icmp ugt i64 %4, %3
  br i1 %i.ju, label %bb.bj, label %bb.bi, !prof !282

bb.bi:                                            ; preds = %.thread
  %i.jv = sub nuw i64 %3, %4
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %4
  %i.jx = load i64, ptr %i.r, align 8, !noundef !4
  %i.jy = call noundef i32 @_ZN19brotli_decompressor7huffman23BrotliBuildHuffmanTable17h39600782e68cae4bE(ptr noalias noundef nonnull align 2 %i.jw, i64 noundef %i.jv, i32 noundef 8, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.s, i64 noundef 720, i64 noundef %i.jx, ptr noalias noundef nonnull align 2 %i.q, i64 noundef 16)
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.bl, label %bb.bk

bb.bj:                                            ; preds = %.thread
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %4, i64 noundef %3, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #46
  unreachable

bb.bk:                                            ; preds = %bb.bi
  store i32 %i.jy, ptr %5, align 4
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bi
  store i8 0, ptr %i.j, align 8
  br label %_ZN19brotli_decompressor6decode24ReadSimpleHuffmanSymbols17hef5991b62d915a8bE.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN19brotli_decompressor6decode15WriteRingBuffer17h2f3086dc3f8a3b90E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull writeonly align 1 captures(none) %2, i64 %3, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %5, i1 noundef zeroext %6, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(2600) %7) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 2176 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 2192
  %i.d = load i32, ptr %i.c, align 8, !noundef !4 ; 7 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.d)
  %.sroa.010.0 = sext i32 %. to i64
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 1920 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = sext i32 %i.d to i64
  %i.h = mul i64 %i.f, %i.g
  %i.i = add i64 %i.h, %.sroa.010.0
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 1928 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 3 uses
  %i.l = sub i64 %i.i, %i.k                       ; 2 uses
  %i.m = load i64, ptr %1, align 8, !noundef !4   ; 3 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.l) ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 2216
  %i.o = load i32, ptr %i.n, align 8, !noundef !4
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 2196
  %i.r = load i32, ptr %i.q, align 4, !noundef !4
  %i.s = sext i32 %i.r to i64
  %i.t = and i64 %i.k, %i.s                       ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 1784
  %.val21 = load i64, ptr %i.u, align 8, !noundef !4 ; 2 uses
  %i.v = add i64 %i.t, %spec.store.select         ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.t
  %.not = icmp ugt i64 %i.v, %.val21
  %or.cond = or i1 %i.w, %.not
  br i1 %or.cond, label %bb.e, label %bb.d, !prof !2175

bb.c:                                             ; preds = %bb.a
  store i32 -9, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.y, align 8
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 1776
  %.val = load ptr, ptr %i.z, align 8, !nonnull !4, !align !132, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 %i.t ; 3 uses
  %i.ab = load i64, ptr %4, align 8, !noundef !4  ; 4 uses
  %i.ac = add i64 %i.ab, %spec.store.select       ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %.not18 = icmp ugt i64 %i.ac, %3
  %or.cond20 = select i1 %i.ad, i1 true, i1 %.not18, !prof !2175
  br i1 %or.cond20, label %bb.g, label %bb.f, !prof !2175

bb.e:                                             ; preds = %bb.b
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.t, i64 noundef %i.v, i64 noundef %.val21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @404) #46
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %i.aa, i64 %spec.store.select, i1 false), !alias.scope !4280, !noalias !4284
  store i64 %i.ac, ptr %4, align 8
  %i.af = sub nuw i64 %i.m, %spec.store.select
  store i64 %i.af, ptr %1, align 8
  %i.ag = add i64 %spec.store.select, %i.k        ; 2 uses
  store i64 %i.ag, ptr %i.j, align 8
  store i64 %i.ag, ptr %5, align 8
  %i.ah = icmp ult i64 %i.m, %i.l
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 2288
  %i.aj = load i32, ptr %i.ai, align 8, !noundef !4
  %i.ak = and i32 %i.aj, 31
  %i.al = shl nuw i32 1, %i.ak                    ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ab, i64 noundef %i.ac, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @403) #46
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.am = icmp ne i32 %i.d, %i.al
  %.not19 = icmp slt i32 %i.b, %i.d
  %or.cond22 = or i1 %.not19, %i.am
  br i1 %or.cond22, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.an = icmp eq i32 %i.d, %i.al
  %brmerge = or i1 %6, %i.an
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %brmerge, label %bb.n, label %bb.m

bb.j:                                             ; preds = %bb.h, %bb.k
  store i32 1, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.store.select, ptr %i.ar, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.as = sub i32 %i.b, %i.d
  store i32 %i.as, ptr %i.a, align 8
  %i.at = add i64 %i.f, 1
  store i64 %i.at, ptr %i.e, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 2589
  %i.av = icmp ne i32 %i.b, %i.d
  %i.aw = zext i1 %i.av to i8
  store i8 %i.aw, ptr %i.au, align 1
  br label %bb.j

bb.l:                                             ; preds = %bb.c, %bb.n, %bb.m, %bb.j
  ret void

bb.m:                                             ; preds = %bb.i
  store i32 1, ptr %0, align 8
  store ptr %i.aa, ptr %i.ao, align 8
  store i64 %spec.store.select, ptr %i.ap, align 8
  br label %bb.l

bb.n:                                             ; preds = %bb.i
  store i32 3, ptr %0, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ao, align 8
  store i64 0, ptr %i.ap, align 8
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 -31, 4) i32 @_ZN19brotli_decompressor6decode16DecodeContextMap17hb9b49cd6d3e852fcE(i64 noundef range(i64 0, 274877906881) %0, i1 noundef zeroext %1, ptr noalias noundef nonnull align 8 dereferenceable(2600) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 9 uses
  %i.c = alloca [4 x i8], align 4                 ; 8 uses
  %i.d = alloca [4 x i8], align 4                 ; 6 uses
  %i.e = alloca [4 x i8], align 4                 ; 9 uses
  %i.f = alloca [48 x i8], align 8                ; 3 uses
  %i.g = alloca [48 x i8], align 8                ; 3 uses
  %i.h = alloca [1 x i8], align 1                 ; 3 uses
  %i.i = zext i1 %1 to i8
  store i8 %i.i, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2326
  %i.k = load i8, ptr %i.j, align 2, !range !2236, !noundef !4
  switch i8 %i.k, label %bb.b [
    i8 21, label %bb.c
    i8 22, label %bb.d
  ], !prof !4286

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @409, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @410) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %1, label %bb.e, label %.critedge4, !prof !282

bb.d:                                             ; preds = %bb.a
  br i1 %1, label %.critedge4, label %bb.f, !prof !337

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr null, ptr %i.g, align 8
  call void @_ZN4core9panicking13assert_failed17h9a5027e928cffd89E(i8 noundef 0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.h, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) @405, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @406) #46
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr null, ptr %i.f, align 8
  call void @_ZN4core9panicking13assert_failed17h9a5027e928cffd89E(i8 noundef 0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.h, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) @407, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @408) #46
  unreachable

.critedge4:                                       ; preds = %bb.d, %bb.c
  %.sink = phi i64 [ 2292, %bb.c ], [ 2232, %bb.d ]
  %.sink90 = phi i64 [ 1840, %bb.c ], [ 1792, %bb.d ]
  %.sink89 = phi i64 [ 1848, %bb.c ], [ 1800, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.sink
  %.sroa.0.0 = load i32, ptr %i.l, align 4, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.sink90 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !align !132, !noundef !4 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %.sink89 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 9 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.m, align 8
  store i64 0, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %.sroa.0.0, ptr %i.e, align 4
  %i.q = trunc i64 %0 to i32                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4290)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 2329 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 2272 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 2276 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 2280 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 1808 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 1816 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 1872 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 1880 ; 2 uses
  %i.z = and i64 %0, 4294967295                   ; 5 uses
  %i.aa = icmp eq i32 %i.q, 0                     ; 2 uses
  %.pre.i = load i8, ptr %i.r, align 1, !range !4292, !alias.scope !4290, !noalias !4293
  switch i8 %.pre.i, label %default.unreachable [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %._crit_edge
    i8 3, label %._crit_edge61
    i8 4, label %bb.l
  ]

._crit_edge61:                                    ; preds = %.critedge4
  %.pre62 = load i32, ptr %i.u, align 8, !alias.scope !4290, !noalias !4293
  br label %bb.k

._crit_edge:                                      ; preds = %.critedge4
  %.pre60 = load i32, ptr %i.t, align 4, !alias.scope !4290, !noalias !4293
  br label %bb.v

._crit_edge.loopexit.i:                           ; preds = %.backedge.i, %bb.k
  store i8 4, ptr %i.r, align 1, !alias.scope !4290, !noalias !4293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4296
  br label %bb.l

bb.g:                                             ; preds = %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli_decompressor..huffman..HuffmanCode$GT$$GT$17h9906f5c1e10440daE.exit62.i"
  store i32 65535, ptr %i.u, align 8, !alias.scope !4290, !noalias !4293
  store i8 3, ptr %i.r, align 1, !alias.scope !4290, !noalias !4293
  br label %bb.k

bb.h:                                             ; preds = %bb.q
  store i8 1, ptr %i.r, align 1, !alias.scope !4290, !noalias !4293
  br label %bb.j

default.unreachable:                              ; preds = %.critedge4
  unreachable

bb.i:                                             ; preds = %.critedge4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 2330
  %i.ac = invoke noundef i32 @_ZN19brotli_decompressor6decode17DecodeVarLenUint817h29656053b588301eE(ptr noalias noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef range(i64 1, 0) %4)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.i
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.m, label %_ZN19brotli_decompressor6decode21DecodeContextMapInner17hbaebf013cfa2b08bE.exit

bb.j:                                             ; preds = %bb.h, %.critedge4
  %.sroa.12.5 = phi i64 [ %i.z, %bb.h ], [ %i.p, %.critedge4 ] ; 3 uses
  %.sroa.0.5 = phi ptr [ %i.aq, %bb.h ], [ %i.n, %.critedge4 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4296
  store i32 0, ptr %i.d, align 4, !noalias !4296
  %i.ae = invoke noundef zeroext i1 @_ZN19brotli_decompressor10bit_reader17BrotliSafeGetBits17hf10373635963314dE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, i32 noundef 5, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef range(i64 1, 0) %4)
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %bb.j
  br i1 %i.ae, label %bb.t, label %bb.s

bb.k:                                             ; preds = %._crit_edge61, %bb.g
  %i.af = phi i32 [ 65535, %bb.g ], [ %.pre62, %._crit_edge61 ] ; 2 uses
  %.sroa.12.3 = phi i64 [ %.sroa.12.4, %bb.g ], [ %i.p, %._crit_edge61 ] ; 8 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.4, %bb.g ], [ %i.n, %._crit_edge61 ] ; 7 uses
  %i.ag = load i32, ptr %i.s, align 8, !alias.scope !4290, !noalias !4293, !noundef !4 ; 2 uses
  %i.ah = load i32, ptr %i.t, align 4, !alias.scope !4290, !noalias !4293, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4296
  store i32 %i.af, ptr %i.c, align 4, !noalias !4296
  %i.ai = icmp ne i32 %i.af, 65535                ; 2 uses
  %i.aj = icmp ult i32 %i.ag, %i.q
  %or.cond120.i = or i1 %i.aj, %i.ai
  br i1 %or.cond120.i, label %.lr.ph.i, label %._crit_edge.loopexit.i

bb.l:                                             ; preds = %._crit_edge.loopexit.i, %.critedge4
end_hunk_6
begin_hunk_7_@_ZN19brotli_decompressor6decode16DecodeContextMap17hb9b49cd6d3e852fcE:bb.a
  %.sroa.0.2 = phi ptr [ %.sroa.0.3, %._crit_edge.loopexit.i ], [ %i.n, %.critedge4 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4296
  store i32 0, ptr %i.a, align 4, !noalias !4296
  %i.ak = invoke noundef zeroext i1 @_ZN19brotli_decompressor10bit_reader18BrotliSafeReadBits17h7a2d02b9c7a27b35E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, i32 noundef 1, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef range(i64 1, 0) %4)
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.l
  br i1 %i.ak, label %bb.am, label %.sink.split.i

bb.m:                                             ; preds = %.noexc
  %i.al = load i32, ptr %i.e, align 4, !alias.scope !4287, !noalias !4297, !noundef !4
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.e, align 4, !alias.scope !4287, !noalias !4297
  store i32 0, ptr %i.s, align 8, !alias.scope !4290, !noalias !4293
  br i1 %i.aa, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h2ace46120d02d522E.exit.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !4298
  %i.an = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.z, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !4298 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = ptrtoint ptr %i.an to i64
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h2ace46120d02d522E.exit.i"

bb.p:                                             ; preds = %bb.n
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %bb.p
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h2ace46120d02d522E.exit.i": ; preds = %bb.o, %bb.m
  %.sroa.10.0.i.i.i = phi i64 [ %i.ap, %bb.o ], [ 1, %bb.m ]
  %i.aq = inttoptr i64 %.sroa.10.0.i.i.i to ptr   ; 5 uses
  %i.ar = icmp eq i64 %i.p, 0
  br i1 %i.ar, label %bb.q, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h2ace46120d02d522E.exit.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.p, i64 noundef 1) #45, !noalias !4304
  br label %bb.q

bb.q:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h2ace46120d02d522E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  %i.as = load i32, ptr %i.e, align 4, !alias.scope !4287, !noalias !4297, !noundef !4
  %i.at = icmp ult i32 %i.as, 2
  br i1 %i.at, label %bb.r, label %bb.h

bb.r:                                             ; preds = %bb.q
  br i1 %i.aa, label %_ZN19brotli_decompressor6decode21DecodeContextMapInner17hbaebf013cfa2b08bE.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aq, i8 0, i64 %i.z, i1 false), !alias.scope !4305, !noalias !4304
  br label %_ZN19brotli_decompressor6decode21DecodeContextMapInner17hbaebf013cfa2b08bE.exit

bb.s:                                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4296
  br label %_ZN19brotli_decompressor6decode21DecodeContextMapInner17hbaebf013cfa2b08bE.exit

bb.t:                                             ; preds = %.noexc12
  %i.au = load i32, ptr %i.d, align 4, !noalias !4296, !noundef !4 ; 2 uses
  %i.av = and i32 %i.au, 1
  %i.aw = icmp eq i32 %i.av, 0                    ; 2 uses
  %i.ax = lshr i32 %i.au, 1
  %i.ay = add nuw i32 %i.ax, 1
  %.sink.i = select i1 %i.aw, i32 0, i32 %i.ay    ; 2 uses
  %.sink170.i = select i1 %i.aw, i32 1, i32 5
  store i32 %.sink.i, ptr %i.t, align 4, !alias.scope !4290, !noalias !4293
  %i.az = load i32, ptr %i.y, align 8, !alias.scope !4290, !noalias !4293, !noundef !4
  %i.ba = add i32 %.sink170.i, %i.az
  store i32 %i.ba, ptr %i.y, align 8, !alias.scope !4290, !noalias !4293
  store i8 2, ptr %i.r, align 1, !alias.scope !4290, !noalias !4293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4296
  %.pre = load i32, ptr %i.e, align 4, !alias.scope !4287, !noalias !4297
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = icmp eq i64 %i.bh, 0
  br i1 %i.bc, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i60.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i60.i": ; preds = %bb.u
  %i.bd = shl nuw nsw i64 %i.bh, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bg, i64 noundef %i.bd, i64 noundef 2) #45, !noalias !4304
  br label %.body

bb.v:                                             ; preds = %._crit_edge, %bb.t
  %i.be = phi i32 [ %.sink.i, %bb.t ], [ %.pre60, %._crit_edge ]
  %i.bf = phi i32 [ %.pre, %bb.t ], [ %.sroa.0.0, %._crit_edge ]
  %.sroa.12.4 = phi i64 [ %.sroa.12.5, %bb.t ], [ %i.p, %._crit_edge ] ; 4 uses
  %.sroa.0.4 = phi ptr [ %.sroa.0.5, %bb.t ], [ %i.n, %._crit_edge ] ; 4 uses
  %i.bg = load ptr, ptr %i.v, align 8, !alias.scope !4290, !noalias !4293, !nonnull !4, !align !130, !noundef !4 ; 3 uses
  %i.bh = load i64, ptr %i.w, align 8, !alias.scope !4290, !noalias !4293, !noundef !4 ; 4 uses
  store ptr inttoptr (i64 2 to ptr), ptr %i.v, align 8, !alias.scope !4290, !noalias !4293
  store i64 0, ptr %i.w, align 8, !alias.scope !4290, !noalias !4293
  %i.bi = add i32 %i.be, %i.bf                    ; 2 uses
  %i.bj = invoke fastcc noundef i32 @_ZN19brotli_decompressor6decode15ReadHuffmanCode17h2548961c9831ea9eE(i32 noundef %i.bi, i32 noundef %i.bi, ptr noalias noundef nonnull align 2 %i.bg, i64 noundef %i.bh, i64 noundef 0, ptr noalias noundef align 4 dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(2600) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef range(i64 1, 0) %4)
          to label %bb.w unwind label %bb.u, !noalias !4304 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.bk = load ptr, ptr %i.v, align 8, !alias.scope !4290, !noalias !4293, !nonnull !4, !align !130, !noundef !4
  %i.bl = load i64, ptr %i.w, align 8, !alias.scope !4290, !noalias !4293, !noundef !4 ; 2 uses
  store ptr %i.bg, ptr %i.v, align 8, !alias.scope !4290, !noalias !4293
  store i64 %i.bh, ptr %i.w, align 8, !alias.scope !4290, !noalias !4293
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli_decompressor..huffman..HuffmanCode$GT$$GT$17h9906f5c1e10440daE.exit62.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i61.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i61.i": ; preds = %bb.w
  %i.bn = shl nuw nsw i64 %i.bl, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bk, i64 noundef %i.bn, i64 noundef 2) #45, !noalias !4304
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli_decompressor..huffman..HuffmanCode$GT$$GT$17h9906f5c1e10440daE.exit62.i"

"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli_decompressor..huffman..HuffmanCode$GT$$GT$17h9906f5c1e10440daE.exit62.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i61.i", %bb.w
  %i.bo = icmp eq i32 %i.bj, 1
  br i1 %i.bo, label %bb.g, label %_ZN19brotli_decompressor6decode21DecodeContextMapInner17hbaebf013cfa2b08bE.exit

.lr.ph.i:                                         ; preds = %bb.k, %.backedge.i
  %.sroa.06.0122.i = phi i32 [ %.sroa.06.0.be.i, %.backedge.i ], [ %i.ag, %bb.k ] ; 7 uses
  %.sroa.027.0121.i = phi i1 [ false, %.backedge.i ], [ %i.ai, %bb.k ]
  br i1 %.sroa.027.0121.i, label %.lr.ph._crit_edge.i, label %bb.x

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i
  %.pre143.i = load i32, ptr %i.c, align 4, !noalias !4296
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph.i
  %.val54.i = load ptr, ptr %i.v, align 8, !alias.scope !4290, !noalias !4293, !nonnull !4, !align !130, !noundef !4
  %.val55.i = load i64, ptr %i.w, align 8, !alias.scope !4290, !noalias !4293, !noundef !4
  %i.bp = invoke noundef zeroext i1 @_ZN19brotli_decompressor6decode14SafeReadSymbol17hbedaff246cf8163aE(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %.val54.i, i64 noundef %.val55.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef range(i64 1, 0) %4)
          to label %.noexc15 unwind label %.loopexit

.noexc15:                                         ; preds = %bb.x
  br i1 %i.bp, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.ad, %.lr.ph._crit_edge.i
  %i.bq = phi i32 [ %.pre143.i, %.lr.ph._crit_edge.i ], [ %i.bt, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4296
  store i32 0, ptr %i.b, align 4, !noalias !4296
  %i.br = invoke noundef zeroext i1 @_ZN19brotli_decompressor10bit_reader18BrotliSafeReadBits17h7a2d02b9c7a27b35E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, i32 noundef %i.bq, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef range(i64 1, 0) %4)
          to label %.noexc16 unwind label %.loopexit

.noexc16:                                         ; preds = %bb.y
  %i.bs = load i32, ptr %i.c, align 4, !noalias !4296, !noundef !4 ; 2 uses
  br i1 %i.br, label %bb.aj, label %bb.ai

bb.z:                                             ; preds = %.noexc15
  store i32 65535, ptr %i.u, align 8, !alias.scope !4290, !noalias !4293
  store i32 %.sroa.06.0122.i, ptr %i.s, align 8, !alias.scope !4290, !noalias !4293
  br label %bb.ab

bb.aa:                                            ; preds = %.noexc15
  %i.bt = load i32, ptr %i.c, align 4, !noalias !4296, !noundef !4 ; 4 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %.loopexit.i, %bb.z
  %.sroa.0.1.i = phi i32 [ %.sroa.0.2.i, %.loopexit.i ], [ 2, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4296
  br label %_ZN19brotli_decompressor6decode21DecodeContextMapInner17hbaebf013cfa2b08bE.exit

bb.ac:                                            ; preds = %bb.aa
  %i.bv = zext i32 %.sroa.06.0122.i to i64        ; 3 uses
  %i.bw = icmp ugt i64 %.sroa.12.3, %i.bv
  br i1 %i.bw, label %bb.ae, label %.invoke

bb.ad:                                            ; preds = %bb.aa
  %i.bx = icmp ugt i32 %i.bt, %i.ah
  br i1 %i.bx, label %bb.ag, label %bb.y

bb.ae:                                            ; preds = %bb.ac
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.3, i64 %i.bv
  store i8 0, ptr %i.by, align 1, !noalias !4304
  br label %bb.af

.invoke:                                          ; preds = %bb.ag, %bb.ac, %.preheader.i
  %i.bz = phi i64 [ %i.cn, %.preheader.i ], [ %i.bv, %bb.ac ], [ %i.cc, %bb.ag ]
  %i.ca = phi ptr [ @419, %.preheader.i ], [ @417, %bb.ac ], [ @418, %bb.ag ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bz, i64 noundef %.sroa.12.3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca) #46
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.af:                                            ; preds = %bb.ah, %bb.ae
  %.sroa.06.1.i = add i32 %.sroa.06.0122.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.al, %bb.af
  %.sroa.06.0.be.i = phi i32 [ %i.cq, %bb.al ], [ %.sroa.06.1.i, %bb.af ] ; 2 uses
  %i.cb = icmp ult i32 %.sroa.06.0.be.i, %i.q
  br i1 %i.cb, label %.lr.ph.i, label %._crit_edge.loopexit.i

bb.ag:                                            ; preds = %bb.ad
  %i.cc = zext i32 %.sroa.06.0122.i to i64        ; 3 uses
  %i.cd = icmp ugt i64 %.sroa.12.3, %i.cc
  br i1 %i.cd, label %bb.ah, label %.invoke

bb.ah:                                            ; preds = %bb.ag
  %i.ce = sub nuw i32 %i.bt, %i.ah
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.3, i64 %i.cc
  %i.cg = trunc i32 %i.ce to i8
  store i8 %i.cg, ptr %i.cf, align 1, !noalias !4304
  br label %bb.af

bb.ai:                                            ; preds = %.noexc16
  store i32 %i.bs, ptr %i.u, align 8, !alias.scope !4290, !noalias !4293
  store i32 %.sroa.06.0122.i, ptr %i.s, align 8, !alias.scope !4290, !noalias !4293
  br label %.loopexit.i

bb.aj:                                            ; preds = %.noexc16
  %i.ch = and i32 %i.bs, 31
  %i.ci = shl nuw i32 1, %i.ch
  %i.cj = load i32, ptr %i.b, align 4, !noalias !4296, !noundef !4
  %i.ck = add i32 %i.ci, %i.cj                    ; 2 uses
  store i32 %i.ck, ptr %i.b, align 4, !noalias !4296
  %i.cl = add i32 %i.ck, %.sroa.06.0122.i
  %i.cm = icmp ugt i32 %i.cl, %i.q
  br i1 %i.cm, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %bb.aj, %bb.ai
  %.sroa.0.2.i = phi i32 [ 2, %bb.ai ], [ -8, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4296
  br label %bb.ab

.preheader.i:                                     ; preds = %bb.aj, %bb.ak
  %.sroa.06.2.i = phi i32 [ %i.cq, %bb.ak ], [ %.sroa.06.0122.i, %bb.aj ] ; 2 uses
  %i.cn = zext i32 %.sroa.06.2.i to i64           ; 3 uses
  %i.co = icmp ugt i64 %.sroa.12.3, %i.cn
  br i1 %i.co, label %bb.ak, label %.invoke

bb.ak:                                            ; preds = %.preheader.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.3, i64 %i.cn
  store i8 0, ptr %i.cp, align 1, !noalias !4304
  %i.cq = add i32 %.sroa.06.2.i, 1                ; 2 uses
  %i.cr = load i32, ptr %i.b, align 4, !noalias !4296, !noundef !4
  %i.cs = add i32 %i.cr, -1                       ; 2 uses
  store i32 %i.cs, ptr %i.b, align 4, !noalias !4296
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.al, label %.preheader.i

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4296
  br label %.backedge.i

bb.am:                                            ; preds = %.noexc13
  %i.cu = load i32, ptr %i.a, align 4, !noalias !4296, !noundef !4
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %.sink.split.i, label %bb.ao

.sink.split.i:                                    ; preds = %bb.ap, %bb.am, %.noexc13
  %.sink171.i = phi i8 [ 4, %.noexc13 ], [ 0, %bb.am ], [ 0, %bb.ap ]
  %.sroa.0.3.ph.i = phi i32 [ 2, %.noexc13 ], [ 1, %bb.am ], [ 1, %bb.ap ]
  store i8 %.sink171.i, ptr %i.r, align 1, !alias.scope !4290, !noalias !4293
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %.sink.split.i
  %.sroa.0.3.i = phi i32 [ -31, %bb.ao ], [ %.sroa.0.3.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4296
  br label %_ZN19brotli_decompressor6decode21DecodeContextMapInner17hbaebf013cfa2b08bE.exit

bb.ao:                                            ; preds = %bb.am
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 2331
  %i.cx = load i8, ptr %i.cw, align 1, !range !467, !alias.scope !4290, !noalias !4293, !noundef !4
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.an, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 2332
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2) ]
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 2284
  invoke void @_ZN19brotli_decompressor6decode27InverseMoveToFrontTransform17ha333215beaca0d82E(ptr noalias noundef nonnull align 1 %.sroa.0.2, i64 noundef %.sroa.12.2, i32 noundef %i.q, ptr noalias noundef nonnull align 1 dereferenceable(256) %i.cz, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.da)
          to label %.sink.split.i unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.x, %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke, %bb.i, %bb.j, %bb.l, %bb.p, %bb.ap
  %.sroa.12.0.ph = phi i64 [ %.sroa.12.5, %bb.j ], [ %i.p, %bb.i ], [ %.sroa.12.2, %bb.ap ], [ %.sroa.12.3, %.invoke ], [ %i.p, %bb.p ], [ %.sroa.12.2, %bb.l ]
  %.sroa.0.037.ph = phi ptr [ %.sroa.0.5, %bb.j ], [ %i.n, %bb.i ], [ %.sroa.0.2, %bb.ap ], [ %.sroa.0.3, %.invoke ], [ %i.n, %bb.p ], [ %.sroa.0.2, %bb.l ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.u, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i60.i"
  %.sroa.12.6 = phi i64 [ %.sroa.12.4, %bb.u ], [ %.sroa.12.4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i60.i" ], [ %.sroa.12.3, %.loopexit ], [ %.sroa.12.0.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.0.6 = phi ptr [ %.sroa.0.4, %bb.u ], [ %.sroa.0.4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i60.i" ], [ %.sroa.0.3, %.loopexit ], [ %.sroa.0.037.ph, %.loopexit.split-lp ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.bb, %bb.u ], [ %i.bb, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i60.i" ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.db = icmp eq i64 %.sroa.12.6, 0
  br i1 %i.db, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.6) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.6, i64 noundef %.sroa.12.6, i64 noundef 1) #45
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit"

_ZN19brotli_decompressor6decode21DecodeContextMapInner17hbaebf013cfa2b08bE.exit: ; preds = %bb.an, %bb.ab, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli_decompressor..huffman..HuffmanCode$GT$$GT$17h9906f5c1e10440daE.exit62.i", %bb.s, %.lr.ph.preheader.i.i, %bb.r, %.noexc
  %.sroa.12.7 = phi i64 [ 0, %bb.r ], [ %i.z, %.lr.ph.preheader.i.i ], [ %.sroa.12.3, %bb.ab ], [ %.sroa.12.2, %bb.an ], [ %.sroa.12.4, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli_decompressor..huffman..HuffmanCode$GT$$GT$17h9906f5c1e10440daE.exit62.i" ], [ %.sroa.12.5, %bb.s ], [ %i.p, %.noexc ] ; 2 uses
  %.sroa.0.7 = phi ptr [ %i.aq, %bb.r ], [ %i.aq, %.lr.ph.preheader.i.i ], [ %.sroa.0.3, %bb.ab ], [ %.sroa.0.2, %bb.an ], [ %.sroa.0.4, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli_decompressor..huffman..HuffmanCode$GT$$GT$17h9906f5c1e10440daE.exit62.i" ], [ %.sroa.0.5, %bb.s ], [ %i.n, %.noexc ] ; 2 uses
  %.sroa.0.0.i = phi i32 [ 1, %bb.r ], [ 1, %.lr.ph.preheader.i.i ], [ %.sroa.0.1.i, %bb.ab ], [ %.sroa.0.3.i, %bb.an ], [ %i.bj, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli_decompressor..huffman..HuffmanCode$GT$$GT$17h9906f5c1e10440daE.exit62.i" ], [ 2, %bb.s ], [ %i.ac, %.noexc ]
  %i.dc = load i32, ptr %i.e, align 4, !noundef !4 ; 2 uses
  br i1 %1, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN19brotli_decompressor6decode21DecodeContextMapInner17hbaebf013cfa2b08bE.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 2292
  store i32 %i.dc, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 1840 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !4, !align !132, !noundef !4
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 1848 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !4 ; 2 uses
  store ptr %.sroa.0.7, ptr %i.de, align 8
  store i64 %.sroa.12.7, ptr %i.dg, align 8
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit24", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i21"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i21": ; preds = %bb.aq
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.df, i64 noundef %i.dh, i64 noundef 1) #45
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit24"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit24": ; preds = %bb.ar, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i25", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i21", %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i32 %.sroa.0.0.i

bb.ar:                                            ; preds = %_ZN19brotli_decompressor6decode21DecodeContextMapInner17hbaebf013cfa2b08bE.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 2232
  store i32 %i.dc, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 1792 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !4, !align !132, !noundef !4
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 1800 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !4 ; 2 uses
  store ptr %.sroa.0.7, ptr %i.dk, align 8
  store i64 %.sroa.12.7, ptr %i.dm, align 8
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit24", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i25"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i25": ; preds = %bb.ar
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dl, i64 noundef %i.dn, i64 noundef 1) #45
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit24"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 -31, 3) i32 @_ZN19brotli_decompressor6decode23ProcessCommandsInternal17h38ecf3b082ee5c38E(i1 noundef zeroext %0, ptr noalias noundef nonnull align 8 dereferenceable(2600) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 6 uses
  %i.e = alloca [4 x i8], align 4                 ; 7 uses
  %i.f = alloca [4096 x i8], align 8              ; 9 uses
  %i.g = alloca [4096 x i8], align 8              ; 9 uses
  %i.h = alloca [4096 x i8], align 8              ; 9 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [4 x i8], align 4                 ; 6 uses
  %i.m = alloca [4 x i8], align 4                 ; 6 uses
  %i.n = alloca [4 x i8], align 4                 ; 8 uses
  %i.o = alloca [4 x i8], align 4                 ; 8 uses
  %i.p = alloca [4096 x i8], align 8              ; 6 uses
  %i.q = alloca [4096 x i8], align 8              ; 6 uses
  %i.r = alloca [4096 x i8], align 8              ; 7 uses
  %i.s = alloca [40 x i8], align 8                ; 14 uses
  %i.t = alloca [40 x i8], align 8                ; 14 uses
  %i.u = alloca [40 x i8], align 8                ; 13 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1888 ; 38 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp ugt i32 %i.w, 27
  %or.cond136 = select i1 %0, i1 true, i1 %i.x, !prof !4308
  br i1 %or.cond136, label %bb.b, label %bb.c, !prof !4308

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1872 ; 63 uses
  %i.z = tail call noundef zeroext i1 @_ZN19brotli_decompressor6decode15WarmupBitReader17hb99baa2046621bbaE(i1 noundef zeroext %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
  br i1 %i.z, label %bb.d, label %bb.c, !prof !337

.sink.split.sink.split:                           ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i332", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i286"
  %.val1.i333.sink = phi i64 [ %.val1.i285, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i286" ], [ %.val1.i333, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i332" ]
  %.sink1456 = phi ptr [ %.val.i287, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i286" ], [ inttoptr (i64 2 to ptr), %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i332" ]
  %.sroa.0.0.ph.ph = phi i32 [ -16, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i286" ], [ %.sroa.041.1, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i332" ]
  %i.aa = shl nuw nsw i64 %.val1.i333.sink, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink1456, i64 noundef %i.aa, i64 noundef 2) #45, !noalias !4
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i332", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i284"
  %.sroa.0.0.ph = phi i32 [ %.sroa.041.1, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i332" ], [ -16, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i284" ], [ %.sroa.0.0.ph.ph, %.sink.split.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.sroa.0.0 = phi i32 [ 2, %bb.a ], [ 2, %bb.b ], [ %.sroa.0.0.ph, %.sink.split ]
  ret i32 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 2176 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !noundef !4 ; 5 uses
end_hunk_7
begin_hunk_8_@_ZN3std2io5Write9write_all17hfa7febf594b8b493E:bb.a
  %.val162.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !5176, !noalias !5177, !noundef !4 ; 4 uses
  %i.ahl = load i64, ptr %i.aq, align 8, !noalias !5174, !noundef !4 ; 2 uses
  %i.ahm = lshr i64 %i.ahl, 3                     ; 5 uses
  %i.ahn = icmp ult i64 %i.ahm, %.val162.i.i.i.i
  br i1 %i.ahn, label %bb.hz, label %bb.ia

bb.hy:                                            ; preds = %bb.eh
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.um, i64 noundef %.val126.i.i.i.i, i64 noundef %.val126.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1202) #46, !noalias !5190
  unreachable

bb.hz:                                            ; preds = %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h3bc364bcac3249c2E.exit.i.i.i.i
  %i.aho = add nuw nsw i64 %i.ahm, 1              ; 3 uses
  %i.ahp = icmp ult i64 %i.aho, %.val162.i.i.i.i
  br i1 %i.ahp, label %bb.ib, label %bb.if

bb.ia:                                            ; preds = %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h3bc364bcac3249c2E.exit.i.i.i.i
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ahm, i64 noundef %.val162.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1197) #46, !noalias !5190
  unreachable

bb.ib:                                            ; preds = %bb.hz
  %i.ahq = getelementptr inbounds nuw i8, ptr %.val161.i.i.i.i, i64 %i.ahm
  %i.ahr = load i8, ptr %i.ahq, align 1, !noalias !5190, !noundef !4
  %i.ahs = zext i8 %i.ahr to i16
  %i.aht = getelementptr inbounds nuw i8, ptr %.val161.i.i.i.i, i64 %i.aho
  %i.ahu = load i8, ptr %i.aht, align 1, !noalias !5190, !noundef !4
  %i.ahv = zext i8 %i.ahu to i16
  %i.ahw = shl nuw i16 %i.ahv, 8
  %i.ahx = or disjoint i16 %i.ahw, %i.ahs
  store i16 %i.ahx, ptr %i.br, align 8, !alias.scope !5176, !noalias !5177
  %i.ahy = trunc i64 %i.ahl to i8
  %i.ahz = and i8 %i.ahy, 7
  store i8 %i.ahz, ptr %i.bn, align 2, !alias.scope !5176, !noalias !5177
  %i.aia = load i64, ptr %i.bf, align 8, !alias.scope !5176, !noalias !5177, !noundef !4 ; 6 uses
  store i64 %i.aia, ptr %i.bo, align 8, !alias.scope !5176, !noalias !5177
  %i.aib = load i64, ptr %i.bg, align 8, !alias.scope !5390, !noalias !5177, !noundef !4 ; 2 uses
  %i.aic = trunc i64 %i.aib to i32                ; 3 uses
  %i.aid = icmp ugt i64 %i.aib, 3221225471
  br i1 %i.aid, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.id, %bb.ib
  %.sroa.0.0.i202.i.i.i.i = phi i32 [ %i.ail, %bb.id ], [ %i.aic, %bb.ib ]
  %i.aie = trunc i64 %i.aia to i32                ; 5 uses
  %i.aif = icmp ugt i64 %i.aia, 3221225471
  br i1 %i.aif, label %bb.ie, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit204.i.i.i.i"

bb.id:                                            ; preds = %bb.ib
  %i.aig = and i32 %i.aic, 1073741823
  %i.aih = shl i32 %i.aic, 1
  %i.aii = ashr exact i32 %i.aih, 1
  %i.aij = and i32 %i.aii, -1073741824
  %i.aik = or disjoint i32 %i.aij, %i.aig
  %i.ail = xor i32 %i.aik, -2147483648
  br label %bb.ic

bb.ie:                                            ; preds = %bb.ic
  %i.aim = and i32 %i.aie, 1073741823
  %i.ain = shl i32 %i.aie, 1
  %i.aio = ashr exact i32 %i.ain, 1
  %i.aip = and i32 %i.aio, -1073741824
  %i.aiq = or disjoint i32 %i.aip, %i.aim
  %i.air = xor i32 %i.aiq, -2147483648
  br label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit204.i.i.i.i"

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit204.i.i.i.i": ; preds = %bb.ie, %bb.ic
  %.sroa.02.0.i203.i.i.i.i = phi i32 [ %i.air, %bb.ie ], [ %i.aie, %bb.ic ]
  store i64 %i.aia, ptr %i.bg, align 8, !alias.scope !5390, !noalias !5177
  %i.ais = icmp ult i32 %.sroa.02.0.i203.i.i.i.i, %.sroa.0.0.i202.i.i.i.i
  br i1 %i.ais, label %bb.ih, label %bb.ig

bb.if:                                            ; preds = %bb.hz
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aho, i64 noundef %.val162.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1198) #46, !noalias !5190
  unreachable

bb.ig:                                            ; preds = %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i", %bb.ih, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit204.i.i.i.i"
  %.val158.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !5176, !noalias !5177, !noundef !4 ; 4 uses
  %i.ait = load i64, ptr %i.cb, align 8, !alias.scope !5176, !noalias !5177, !noundef !4 ; 4 uses
  %i.aiu = icmp ugt i64 %i.ait, %.val158.i.i.i.i
  br i1 %i.aiu, label %bb.il, label %bb.ik, !prof !282

bb.ih:                                            ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit204.i.i.i.i"
  %i.aiv = load i64, ptr %i.ba, align 8, !range !3411, !alias.scope !5176, !noalias !5177, !noundef !4
  switch i64 %i.aiv, label %default.unreachable [
    i64 0, label %bb.ig
    i64 10, label %bb.ij
    i64 1, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"
    i64 2, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"
    i64 3, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"
    i64 4, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"
    i64 5, label %bb.ii
    i64 6, label %bb.ii
    i64 7, label %bb.ii
    i64 8, label %bb.ii
    i64 9, label %bb.ii
  ], !prof !5223

bb.ii:                                            ; preds = %bb.ih, %bb.ih, %bb.ih, %bb.ih, %bb.ih
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"

bb.ij:                                            ; preds = %bb.ih
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"

"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i": ; preds = %bb.ij, %bb.ii, %bb.ih, %bb.ih, %bb.ih, %bb.ih
  %.sink.i.i.i = phi i64 [ 56, %bb.ij ], [ 24, %bb.ih ], [ 24, %bb.ih ], [ 24, %bb.ih ], [ 24, %bb.ih ], [ 40, %bb.ii ]
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sink.i.i.i
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 40
  store i32 0, ptr %i.aix, align 8, !alias.scope !5123, !noalias !5124
  br label %bb.ig

bb.ik:                                            ; preds = %bb.ig
  %.val157.i.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !5176, !noalias !5177, !nonnull !4, !align !132, !noundef !4
  %i.aiy = sub nuw i64 %.val158.i.i.i.i, %i.ait   ; 4 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %.val157.i.i.i.i, i64 %i.ait ; 2 uses
  %.not122.i.i.i.i = icmp eq i64 %i.aia, 0
  br i1 %.not122.i.i.i.i, label %.thread12.i.i.i.i, label %bb.im

bb.il:                                            ; preds = %bb.ig
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ait, i64 noundef %.val158.i.i.i.i, i64 noundef %.val158.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1201) #46, !noalias !5190
  unreachable

bb.im:                                            ; preds = %bb.ik
  %i.aja = add i32 %i.aie, -1
  %i.ajb = and i32 %i.aja, %i.jj
  %i.ajc = zext i32 %i.ajb to i64                 ; 3 uses
  %i.ajd = icmp ugt i64 %i.aiy, %i.ajc
  br i1 %i.ajd, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aiz, i64 %i.ajc
  %i.ajf = load i8, ptr %i.aje, align 1, !noalias !5190, !noundef !4
  store i8 %i.ajf, ptr %i.cd, align 1, !alias.scope !5176, !noalias !5177
  %.not13.i.i.i.i = icmp eq i64 %i.aia, 1
  br i1 %.not13.i.i.i.i, label %.thread12.i.i.i.i, label %bb.ip

bb.io:                                            ; preds = %bb.im
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ajc, i64 noundef %i.aiy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1199) #46, !noalias !5190
  unreachable

bb.ip:                                            ; preds = %bb.in
  %i.ajg = add i32 %i.aie, -2
  %i.ajh = and i32 %i.ajg, %i.jj
  %i.aji = zext i32 %i.ajh to i64                 ; 3 uses
  %i.ajj = icmp ugt i64 %i.aiy, %i.aji
  br i1 %i.ajj, label %bb.iq, label %bb.ir

.thread12.i.i.i.i:                                ; preds = %bb.iq, %bb.in, %bb.ik
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i8 0, i64 16, i1 false), !alias.scope !5176, !noalias !5177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cp, i64 16, i1 false), !alias.scope !5393, !noalias !5397
  store i32 0, ptr %i.bv, align 8, !alias.scope !5176, !noalias !5177
  store i32 0, ptr %i.bw, align 4, !alias.scope !5176, !noalias !5177
  br label %bb.iu

bb.iq:                                            ; preds = %bb.ip
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aiz, i64 %i.aji
  %i.ajl = load i8, ptr %i.ajk, align 1, !noalias !5190, !noundef !4
  store i8 %i.ajl, ptr %i.ce, align 8, !alias.scope !5176, !noalias !5177
  br label %.thread12.i.i.i.i

bb.ir:                                            ; preds = %bb.ip
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aji, i64 noundef %i.aiy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1200) #46, !noalias !5190
  unreachable

bb.is:                                            ; preds = %.invoke.i.i.i.i
  %i.ajm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajn = icmp eq i64 %i.qc, 0
  br i1 %i.ajn, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i205.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i205.i.i.i.i": ; preds = %bb.is
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %i.qd, i64 noundef 4) #45, !noalias !5190
  br label %common.resume

bb.it:                                            ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !5174
  store i64 0, ptr %i.bi, align 8, !alias.scope !5150, !noalias !5151
  br label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17ha90c855cbaf522e7E.exit.i.i"

bb.iu:                                            ; preds = %bb.ea, %.thread12.i.i.i.i, %bb.eg, %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit", %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit.i.i", %bb.cl
  %.sroa.0.01.i.i.i = phi i64 [ %storemerge.i.i.i.i, %bb.cl ], [ %.sroa.011.2.i.i.i.i, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit.i.i" ], [ %i.ahm, %.thread12.i.i.i.i ], [ %.sroa.011.2.i.i.i.i, %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit" ], [ %.sroa.011.2.i.i.i.i, %bb.ea ], [ %.sroa.011.2.i.i.i.i, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !5174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !5174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !5174
  store i64 %.sroa.0.01.i.i.i, ptr %i.bi, align 8, !alias.scope !5150, !noalias !5151
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %bb.iw, %bb.iu, %bb.ag
  %.pre = load i8, ptr %i.fn, align 1, !range !467, !alias.scope !5156, !noalias !5135
  br label %bb.t

bb.iv:                                            ; preds = %bb.al
  store i32 0, ptr %i.bc, align 8, !alias.scope !5150, !noalias !5151
  store i32 2, ptr %i.bv, align 8, !alias.scope !5150, !noalias !5151
  br label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17ha90c855cbaf522e7E.exit.i.i"

bb.iw:                                            ; preds = %bb.ai
  %.sroa.0.0.i23.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.it, i64 %.sroa.0.0.i.i.i.i) ; 3 uses
  %i.ajo = sub nuw i64 %2, %i.iv
  %i.ajp = getelementptr inbounds nuw i8, ptr %1, i64 %i.iv
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25copy_input_to_ring_buffer17h28b5f2c796b98b89E"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ba, i64 noundef %.sroa.0.0.i23.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ajp, i64 noundef %i.ajo), !noalias !5399
  %i.ajq = add i64 %i.iv, %.sroa.0.0.i23.i.i.i
  store i64 %i.ajq, ptr %i.au, align 8, !alias.scope !5130, !noalias !5170
  %i.ajr = sub nuw i64 %i.it, %.sroa.0.0.i23.i.i.i
  store i64 %i.ajr, ptr %i.av, align 8, !alias.scope !5128, !noalias !5169
  br label %.backedge.i.i.i

bb.ix:                                            ; preds = %bb.ai
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.iv, i64 noundef range(i64 1, 0) %2, i64 noundef range(i64 1, 0) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1209) #46, !noalias !5135
  unreachable

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17ha90c855cbaf522e7E.exit.i.i": ; preds = %bb.aj, %bb.iv, %bb.it, %bb.al, %bb.s, %bb.p, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h976450b2f254cc2bE.exit43"
  %.sroa.0.0.i.i.i = phi i1 [ false, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h976450b2f254cc2bE.exit43" ], [ true, %bb.iv ], [ true, %bb.al ], [ false, %bb.p ], [ false, %bb.it ], [ %i.hf, %bb.s ], [ true, %bb.aj ]
  %i.ajs = load i64, ptr %i.at, align 8, !noalias !5120, !noundef !4 ; 9 uses
  %.not.i.i = icmp eq i64 %i.ajs, 0
  br i1 %.not.i.i, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17ha90c855cbaf522e7E.exit.i.i"
  %i.ajt = load ptr, ptr %i.fk, align 8, !alias.scope !5123, !noalias !5124, !noundef !4 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ajt, null
  br i1 %.not7.i.i, label %bb.jb, label %bb.ja, !prof !282

bb.iz:                                            ; preds = %bb.jf, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17ha90c855cbaf522e7E.exit.i.i"
  br i1 %.sroa.0.0.i.i.i, label %bb.jh, label %bb.jg

bb.ja:                                            ; preds = %bb.iy
  %.val.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !5123, !noalias !5124, !nonnull !4, !align !132, !noundef !4
  %.val11.i.i = load i64, ptr %i.az, align 8, !alias.scope !5123, !noalias !5124, !noundef !4 ; 2 uses
  %.not8.i.i = icmp ugt i64 %i.ajs, %.val11.i.i
  br i1 %.not8.i.i, label %bb.je, label %.lr.ph.split.us.i.i.i, !prof !2175

bb.jb:                                            ; preds = %bb.iy
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @378) #46
  unreachable

.lr.ph.split.us.i.i.i:                            ; preds = %bb.ja
  call void @llvm.experimental.noalias.scope.decl(metadata !5400)
  call void @llvm.experimental.noalias.scope.decl(metadata !5403)
  call void @llvm.experimental.noalias.scope.decl(metadata !5406)
  call void @llvm.experimental.noalias.scope.decl(metadata !5409)
  %i.aju = load i64, ptr %i.fl, align 8, !alias.scope !5412, !noalias !5413, !noundef !4 ; 2 uses
  %i.ajv = load i64, ptr %i.fm, align 8, !alias.scope !5412, !noalias !5413, !noundef !4
  %i.ajw = sub i64 %i.ajv, %i.aju
  %.not.i.i.i.us.i.i.i = icmp ugt i64 %i.ajs, %i.ajw
  br i1 %.not.i.i.i.us.i.i.i, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.ajx = call noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fk, i64 noundef range(i64 1, 0) %i.ajs, i1 noundef zeroext true), !noalias !5418 ; 0 uses
  %.pre.i.i.i.us.i.i.i = load i64, ptr %i.fl, align 8, !alias.scope !5412, !noalias !5413
  %.pre.i.i = load ptr, ptr %i.fk, align 8, !alias.scope !5412, !noalias !5413
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %.lr.ph.split.us.i.i.i
  %i.ajy = phi ptr [ %i.ajt, %.lr.ph.split.us.i.i.i ], [ %.pre.i.i, %bb.jc ]
  %i.ajz = phi i64 [ %i.aju, %.lr.ph.split.us.i.i.i ], [ %.pre.i.i.i.us.i.i.i, %bb.jc ]
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajy, i64 %i.ajz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aka, ptr noundef nonnull readonly align 1 dereferenceable(1) %.val.i.i, i64 range(i64 1, 0) %i.ajs, i1 false)
  %i.akb = load i64, ptr %i.fm, align 8, !alias.scope !5412, !noalias !5413, !noundef !4
  %i.akc = load i64, ptr %i.fl, align 8, !alias.scope !5412, !noalias !5413, !noundef !4 ; 2 uses
  %i.akd = sub i64 %i.akb, %i.akc                 ; 2 uses
  %i.ake = icmp ugt i64 %i.ajs, %i.akd
  br i1 %i.ake, label %.split.us.i.i.i, label %bb.jf, !prof !282

.split.us.i.i.i:                                  ; preds = %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5419
  store i64 %i.ajs, ptr %i.a, align 8, !noalias !5419
  %i.akf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.akd, ptr %i.akf, align 8, !noalias !5419
  call void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #46, !noalias !5418
  unreachable

bb.je:                                            ; preds = %bb.ja
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.ajs, i64 noundef %.val11.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @380) #46
  unreachable

bb.jf:                                            ; preds = %bb.jd
  %i.akg = add i64 %i.akc, %i.ajs
  store i64 %i.akg, ptr %i.fl, align 8, !alias.scope !5412, !noalias !5413
  br label %bb.iz

bb.jg:                                            ; preds = %bb.iz
  %i.akh = load ptr, ptr %i.fu, align 8, !alias.scope !5123, !noalias !5124, !noundef !4 ; 10 uses
  store ptr null, ptr %i.fu, align 8, !alias.scope !5123, !noalias !5124
  %.not10.i.i = icmp eq ptr %i.akh, null
  br i1 %.not10.i.i, label %bb.ji, label %bb.jj, !prof !282

bb.jh:                                            ; preds = %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !5120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5120
  %.pr.i.i = load i64, ptr %i.av, align 8, !noalias !5120
  %i.aki = icmp eq i64 %.pr.i.i, 0
  br i1 %i.aki, label %.thread1449, label %bb.c

bb.ji:                                            ; preds = %bb.jg
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #46
  unreachable

.loopexit.sink.split:                             ; preds = %.split73, %.split72, %.split, %bb.jk, %.thread1449
  %.sroa.05.0.ph = phi ptr [ null, %.thread1449 ], [ %i.akh, %bb.jk ], [ %i.akh, %.split ], [ %i.akh, %.split72 ], [ %i.akh, %.split73 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.a
  %.sroa.05.0 = phi ptr [ %.sroa.05.0.ph, %.loopexit.sink.split ], [ null, %bb.a ]
  ret ptr %.sroa.05.0

bb.jj:                                            ; preds = %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !5120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5120
  store i64 1, ptr %i.aw, align 8
  store ptr %i.akh, ptr %i.fv, align 8
  %i.akj = ptrtoint ptr %i.akh to i64             ; 3 uses
  %i.akk = and i64 %i.akj, 3
  switch i64 %i.akk, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.jk
    i64 0, label %.split73
    i64 1, label %.split72
  ], !prof !1992

.thread1449:                                      ; preds = %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5120
  br label %.loopexit.sink.split

.split:                                           ; preds = %bb.jj
  %.mask74 = and i64 %i.akj, -4294967296
  %i.akl = icmp eq i64 %.mask74, 17179869184
  br i1 %i.akl, label %bb.jl, label %.loopexit.sink.split

.split73:                                         ; preds = %bb.jj
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akh, i64 16
  %i.akn = load i8, ptr %i.akm, align 8, !range !1993, !noundef !4
  %i.ako = icmp eq i8 %i.akn, 35
  br i1 %i.ako, label %bb.jl, label %.loopexit.sink.split

.split72:                                         ; preds = %bb.jj
  %i.akp = getelementptr i8, ptr %i.akh, i64 15
  %i.akq = load i8, ptr %i.akp, align 8, !range !1993, !noundef !4
  %i.akr = icmp eq i8 %i.akq, 35
  br i1 %i.akr, label %bb.jl, label %.loopexit.sink.split

bb.jk:                                            ; preds = %bb.jj
  %i.aks = icmp ult ptr %i.akh, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.aks)
  %.mask = and i64 %i.akj, -4294967296
  %i.akt = icmp eq i64 %.mask, 150323855360
  br i1 %i.akt, label %bb.jl, label %.loopexit.sink.split

bb.jl:                                            ; preds = %.split73, %.split72, %.split, %bb.jk
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h85474bca0acdf2a3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN3std2io5Write9write_fmt17ha7f7a287cc9fb0ebE(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5420
  store ptr %0, ptr %i.b, align 8, !noalias !5420
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store ptr null, ptr %i.d, align 8, !noalias !5420
  %i.e = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @513, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.d, align 8, !alias.scope !5424, !noalias !5420, !noundef !4
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %"_ZN4core3ptr128drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$actix_http..helpers..MutWriter$LT$bytes..bytes_mut..BytesMut$GT$$GT$$GT$17h23c1ad3b84bca1c3E.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h85474bca0acdf2a3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d)
          to label %"_ZN4core3ptr128drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$actix_http..helpers..MutWriter$LT$bytes..bytes_mut..BytesMut$GT$$GT$$GT$17h23c1ad3b84bca1c3E.exit.i" unwind label %bb.j, !noalias !5429

bb.d:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.d, align 8, !noalias !5420, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null                ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i, label %bb.h, label %_ZN3std2io17default_write_fmt17h655aa1b2ce0a4febE.exit, !prof !282

bb.f:                                             ; preds = %bb.d
  br i1 %.not.i, label %_ZN3std2io17default_write_fmt17h655aa1b2ce0a4febE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h85474bca0acdf2a3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d), !noalias !5429
  br label %_ZN3std2io17default_write_fmt17h655aa1b2ce0a4febE.exit

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5420
  store ptr @510, ptr %i.a, align 8, !noalias !5420
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.j, align 8, !noalias !5420
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
end_hunk_8
begin_hunk_9_@"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_insert217he0936424fb9ea1b6E":bb.a
  %i.dw = icmp ult i64 %i.dv, 88686269585142076
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17hdd730520bc6ad14cE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, i16 noundef range(i16 0, -32768) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
  br i1 %i.dx, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %.noexc
  %i.dy = load ptr, ptr %i.m, align 8, !alias.scope !7345, !noalias !7348, !nonnull !4, !align !130, !noundef !4
  %i.dz = load i64, ptr %i.n, align 8, !alias.scope !7345, !noalias !7348, !noundef !4 ; 2 uses
  %i.ea = trunc i64 %i.dv to i16
  %.not166 = icmp eq i64 %i.dz, 0
  br label %.outer

.outer:                                           ; preds = %bb.ab, %bb.z
  %.sroa.07.0.i.ph = phi i64 [ %i.eh, %bb.ab ], [ 0, %bb.z ] ; 2 uses
  %.sroa.6.0.i.ph = phi i16 [ %i.ei, %bb.ab ], [ %i.h, %bb.z ] ; 2 uses
  %.sroa.04.0.i.ph = phi i16 [ %i.ed, %bb.ab ], [ %i.ea, %bb.z ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ %i.ej, %bb.ab ], [ %.sroa.04.0.ph.mux, %bb.z ] ; 2 uses
  %i.eb = icmp ult i64 %.sroa.01.0.i.ph, %i.dz    ; 2 uses
  %.not166.not = xor i1 %.not166, true
  %brmerge182 = or i1 %i.eb, %.not166.not
  %.sroa.01.0.i.ph.mux = select i1 %i.eb, i64 %.sroa.01.0.i.ph, i64 0 ; 2 uses
  br i1 %brmerge182, label %.loopexit164, label %infloop181

.loopexit164:                                     ; preds = %.outer
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.sroa.01.0.i.ph.mux ; 4 uses
  %i.ed = load i16, ptr %i.ec, align 2, !noalias !7348, !noundef !4 ; 2 uses
  %i.ee = icmp eq i16 %i.ed, -1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 2 ; 3 uses
  br i1 %i.ee, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.loopexit164
  store i16 %.sroa.04.0.i.ph, ptr %i.ec, align 2, !noalias !7348
  store i16 %.sroa.6.0.i.ph, ptr %i.ef, align 2, !noalias !7348
  %i.eg = icmp ugt i64 %.sroa.07.0.i.ph, 127
  %or.cond.i = or i1 %.sroa.015.0, %i.eg
  br i1 %or.cond.i, label %bb.ac, label %.thread

bb.ab:                                            ; preds = %.loopexit164
  %i.eh = add i64 %.sroa.07.0.i.ph, 1
  %i.ei = load i16, ptr %i.ef, align 2, !noalias !7348, !noundef !4
  store i16 %.sroa.04.0.i.ph, ptr %i.ec, align 2, !noalias !7348
  store i16 %.sroa.6.0.i.ph, ptr %i.ef, align 2, !noalias !7348
  %i.ej = add nuw i64 %.sroa.01.0.i.ph.mux, 1
  br label %.outer

bb.ac:                                            ; preds = %bb.aa
  %i.ek = load i64, ptr %1, align 8, !range !372, !alias.scope !7345, !noalias !7348, !noundef !4
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  store i64 1, ptr %1, align 8, !alias.scope !7345, !noalias !7348
  br label %.thread

.thread:                                          ; preds = %bb.ac, %bb.ad, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit.critedge"

bb.ae:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit"

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit.critedge": ; preds = %.thread, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.018, i64 32, i1 false)
  %.sroa.527.0..sroa_idx.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %.sroa.527.0..sroa_idx.c, align 8
  %.sroa.6.0..sroa_idx.c = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.c, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8, i64 7, i1 false)
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit"

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit": ; preds = %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit.critedge", %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit", %bb.ah, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.thread", %bb.af, %bb.x
  ret void

bb.af:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !7351)
  call void @llvm.experimental.noalias.scope.decl(metadata !7354)
  call void @llvm.experimental.noalias.scope.decl(metadata !7357)
  call void @llvm.experimental.noalias.scope.decl(metadata !7360)
  %i.em = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !noalias !7363, !nonnull !4, !noundef !4
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = load ptr, ptr %i.s, align 8, !alias.scope !7363, !noundef !4
  %i.eq = load i64, ptr %i.t, align 8, !alias.scope !7363, !noundef !4
  call void %i.en(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef %i.ep, i64 noundef %i.eq), !inline_history !1433
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit"

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit": ; preds = %bb.g, %bb.ae
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 3, ptr %i.er, align 8
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit"

bb.ag:                                            ; preds = %bb.d
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.thread": ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7367)
  %i.et = load ptr, ptr %2, align 8, !alias.scope !7370, !noundef !4 ; 2 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit", label %bb.ah

bb.ah:                                            ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.thread"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7380)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !noalias !7383, !nonnull !4, !noundef !4
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !alias.scope !7383, !noundef !4
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !7383, !noundef !4
  tail call void %i.ew(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef %i.ez, i64 noundef %i.fb), !inline_history !1433
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit"

bb.ai:                                            ; preds = %bb.a, %bb.q
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7390)
  %i.fc = load ptr, ptr %3, align 8, !alias.scope !7393, !nonnull !4, !align !350, !noundef !4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !7393, !nonnull !4, !noundef !4
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !7393, !noundef !4
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !7393, !noundef !4
  invoke void %i.fe(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ff, ptr noundef %i.fh, i64 noundef %i.fj)
          to label %bb.ak unwind label %bb.aj, !inline_history !798

bb.aj:                                            ; preds = %bb.al, %bb.ai
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit57": ; preds = %bb.ak, %bb.al
  resume { ptr, i32 } %.pn.ph

bb.ak:                                            ; preds = %bb.ag, %bb.s, %bb.ai
  %.pn.ph = phi { ptr, i32 } [ %lpad.phi.i, %bb.s ], [ %i.es, %bb.ag ], [ %lpad.thr_comm, %bb.ai ]
  call void @llvm.experimental.noalias.scope.decl(metadata !7394)
  call void @llvm.experimental.noalias.scope.decl(metadata !7397)
  %i.fl = load ptr, ptr %2, align 8, !alias.scope !7400, !noundef !4 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit57", label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !7401)
  call void @llvm.experimental.noalias.scope.decl(metadata !7404)
  call void @llvm.experimental.noalias.scope.decl(metadata !7407)
  call void @llvm.experimental.noalias.scope.decl(metadata !7410)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !7413, !nonnull !4, !noundef !4
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !7413, !noundef !4
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !alias.scope !7413, !noundef !4
  invoke void %i.fo(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef %i.fr, i64 noundef %i.ft)
          to label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit57" unwind label %bb.aj, !inline_history !677

infloop:                                          ; preds = %.outer146, %infloop
  br label %infloop

infloop181:                                       ; preds = %.outer, %infloop181
  br label %infloop181
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17hfc460cfa010b52f2E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.d = icmp ult i64 %i.c, 88686269585142076
  tail call void @llvm.assume(i1 %i.d)
  %i.e = load i64, ptr %0, align 8, !range !372, !noundef !4
  %i.f = icmp eq i64 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 7 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = uitofp nneg i64 %i.c to float
  %i.j = uitofp i64 %i.h to float
  %i.k = fdiv float %i.i, %i.j
  %i.l = fcmp ult float %i.k, 2.000000e-01
  br i1 %i.l, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = lshr i64 %i.h, 2
  %i.o = sub nuw i64 %i.h, %i.n
  %i.p = icmp eq i64 %i.c, %i.o
  br i1 %i.p, label %bb.m, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17hdfda038a80c88a65E.exit"

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_ZN4http6header3map6Danger6to_red17had389a5facc4e722E(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !align !130, !noundef !4 ; 5 uses
  %i.s = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %.idx = shl i64 %i.s, 2                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.v = add i64 %.idx, -4                        ; 2 uses
  %i.w = lshr exact i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 28
  br i1 %min.iters.check, label %.lr.ph.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.x, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2
  %i.z = getelementptr i8, ptr %i.r, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.aa
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.aa
  %next.gep35 = getelementptr i8, ptr %i.ab, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep35, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !7414

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader40

.lr.ph.preheader40:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.09.018.ph = phi ptr [ %i.r, %.lr.ph.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph

bb.e:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8
  %i.ad = shl i64 %i.h, 1
  %i.ae = tail call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$8try_grow17hd41d0f9b55b36867E"(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %i.ad)
  br i1 %i.ae, label %bb.t, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17hdfda038a80c88a65E.exit"

.lr.ph:                                           ; preds = %.lr.ph.preheader40, %.lr.ph
  %.sroa.09.018 = phi ptr [ %i.af, %.lr.ph ], [ %.sroa.09.018.ph, %.lr.ph.preheader40 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.018, i64 4 ; 2 uses
  store i16 -1, ptr %.sroa.09.018, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.018, i64 2
  store i16 0, ptr %i.ag, align 2
  %i.ah = icmp eq ptr %i.af, %i.t
  br i1 %i.ah, label %._crit_edge, label %.lr.ph, !llvm.loop !7415

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7416)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !7416, !nonnull !4, !noundef !4 ; 2 uses
  %i.ak = load i64, ptr %i.b, align 8, !alias.scope !7416, !noundef !4 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ak, 104
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17hdfda038a80c88a65E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ao = load i16, ptr %i.an, align 8, !alias.scope !7416 ; 3 uses
  %i.ap = load ptr, ptr %i.q, align 8, !alias.scope !7416, !nonnull !4, !align !130 ; 3 uses
  %i.aq = load i64, ptr %i.g, align 8, !alias.scope !7416 ; 4 uses
  %i.ar = zext i16 %i.ao to i64
  %.not = icmp eq i64 %i.aq, 0
  %.not46 = icmp eq i64 %i.aq, 0
  br label %bb.f

bb.f:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.0.035.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.as, %.backedge.i ] ; 3 uses
  %.sroa.7.034.i = phi i64 [ 0, %.lr.ph.i ], [ %i.at, %.backedge.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.035.i, i64 104 ; 2 uses
  %i.at = add nuw nsw i64 %.sroa.7.034.i, 1
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.035.i, i64 64
  %i.av = tail call fastcc noundef i16 @_ZN4http6header3map15hash_elem_using17h9537a80642263a08E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull align 8 %i.au) ; 4 uses
  %i.aw = and i16 %i.av, %i.ao
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.035.i, i64 96
  store i16 %i.av, ptr %i.ay, align 8, !noalias !7416
  br label %.outer36

.outer36:                                         ; preds = %bb.i, %bb.f
  %.sroa.010.0.i.ph = phi i64 [ %i.bo, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %.sroa.04.0.i.ph = phi i64 [ %i.bp, %bb.i ], [ %i.ax, %bb.f ] ; 2 uses
  %i.az = icmp ult i64 %.sroa.04.0.i.ph, %i.aq    ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.az, %.not.not
  %.sroa.04.0.i.ph.mux = select i1 %i.az, i64 %.sroa.04.0.i.ph, i64 0 ; 5 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer36
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.sroa.04.0.i.ph.mux ; 3 uses
  %i.bb = load i16, ptr %i.ba, align 2, !noalias !7416, !noundef !4
  %.not22.i = icmp eq i16 %i.bb, -1
  br i1 %.not22.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !7416, !noundef !4
  %i.be = and i16 %i.bd, %i.ao
  %i.bf = zext i16 %i.be to i64
  %i.bg = sub i64 %.sroa.04.0.i.ph.mux, %i.bf
  %i.bh = and i64 %i.bg, %i.ar
  %i.bi = icmp samesign ult i64 %i.bh, %.sroa.010.0.i.ph
  br i1 %i.bi, label %bb.j, label %bb.i

bb.h:                                             ; preds = %.loopexit
  %i.bj = trunc i64 %.sroa.7.034.i to i16
  store i16 %i.bj, ptr %i.ba, align 2, !noalias !7416
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.k, %bb.h
  %i.bk = phi i64 [ %.sroa.04.0.i.ph.mux, %bb.h ], [ %.sroa.013.0.i.ph.mux, %bb.k ]
  %.sink.i = phi i16 [ %i.av, %bb.h ], [ %.sroa.618.0.i.ph, %bb.k ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store i16 %.sink.i, ptr %i.bm, align 2, !noalias !7416
  %i.bn = icmp eq ptr %i.as, %i.al
  br i1 %i.bn, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17hdfda038a80c88a65E.exit", label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.bo = add nuw nsw i64 %.sroa.010.0.i.ph, 1
  %i.bp = add nuw i64 %.sroa.04.0.i.ph.mux, 1
  br label %.outer36

bb.j:                                             ; preds = %bb.g
  %i.bq = trunc i64 %.sroa.7.034.i to i16
  br label %.outer

.outer:                                           ; preds = %bb.l, %bb.j
  %.sroa.013.0.i.ph = phi i64 [ %i.bx, %bb.l ], [ %.sroa.04.0.i.ph.mux, %bb.j ] ; 2 uses
  %.sroa.016.0.i.ph = phi i16 [ %i.bt, %bb.l ], [ %i.bq, %bb.j ] ; 2 uses
  %.sroa.618.0.i.ph = phi i16 [ %i.bw, %bb.l ], [ %i.av, %bb.j ] ; 2 uses
  %i.br = icmp ult i64 %.sroa.013.0.i.ph, %i.aq   ; 2 uses
  %.not46.not = xor i1 %.not46, true
  %brmerge51 = or i1 %i.br, %.not46.not
  %.sroa.013.0.i.ph.mux = select i1 %i.br, i64 %.sroa.013.0.i.ph, i64 0 ; 3 uses
  br i1 %brmerge51, label %.loopexit45, label %infloop50

.loopexit45:                                      ; preds = %.outer
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.sroa.013.0.i.ph.mux ; 4 uses
  %i.bt = load i16, ptr %i.bs, align 2, !noalias !7416, !noundef !4 ; 2 uses
  %i.bu = icmp eq i16 %i.bt, -1
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit45
  store i16 %.sroa.016.0.i.ph, ptr %i.bs, align 2, !noalias !7416
  br label %.backedge.i

bb.l:                                             ; preds = %.loopexit45
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 2 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !noalias !7416, !noundef !4
  store i16 %.sroa.016.0.i.ph, ptr %i.bs, align 2, !noalias !7416
  store i16 %.sroa.618.0.i.ph, ptr %i.bv, align 2, !noalias !7416
  %i.bx = add nuw i64 %.sroa.013.0.i.ph.mux, 1
  br label %.outer

"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17hdfda038a80c88a65E.exit": ; preds = %.backedge.i, %._crit_edge, %bb.p, %bb.s, %bb.c, %bb.e
  br label %bb.t

bb.m:                                             ; preds = %bb.c
  %i.by = icmp eq i64 %i.c, 0
  br i1 %i.by, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 7, ptr %i.bz, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !7419
  %i.ca = tail call noundef align 2 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 9) 2) #45, !noalias !7419 ; 4 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.o, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.n
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %i.ca, align 2, !noalias !7427
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %i.cc, align 2, !noalias !7427
  %i.cd = icmp eq i64 %i.h, 0
  br i1 %i.cd, label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @564) #46, !noalias !7430
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %.lr.ph.i.i.preheader
  %.val = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.ce = shl nuw nsw i64 %i.h, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ce, i64 noundef 2) #45
end_hunk_9
begin_hunk_10_@_ZN6brotli3enc17brotli_bit_stream21process_command_queue17h62f11272e56078b0E:bb.a
bb.s:                                             ; preds = %bb.p
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @960, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @961) #46
  unreachable

bb.t:                                             ; preds = %bb.p
  %i.ff = icmp eq i64 %i.ej, 0
  br i1 %i.ff, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit, %bb.t
  %.sroa.023.1 = phi i64 [ %.sroa.023.0219, %bb.t ], [ %i.gi, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit ] ; 6 uses
  %.sroa.016.2 = phi i32 [ %.sroa.016.1222, %bb.t ], [ %i.gk, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit ]
  %.sroa.04.1 = phi i64 [ %.sroa.04.0225, %bb.t ], [ %.sroa.04.2.lcssa, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit ]
  %i.fg = icmp ugt i64 %.sroa.050.0, %.sroa.0.0.i113
  br i1 %i.fg, label %bb.aw, label %bb.av

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %.sroa.037.0.copyload, ptr %i.ah, align 8
  store <2 x i64> %i.eh, ptr %.sroa.5.0..sroa_idx39, align 8
  store ptr %.sroa.643.0.copyload, ptr %.sroa.643.0..sroa_idx44, align 8
  store <2 x i64> %i.ei, ptr %.sroa.7.0..sroa_idx46, align 8
  %i.fh = zext i32 %.sroa.016.1222 to i64         ; 3 uses
  %i.fi = icmp ugt i64 %i.ej, %i.fh
  br i1 %i.fi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.v
  br i1 %.not110, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.ah
  %i.fj = phi i64 [ %i.fz, %bb.ah ], [ %i.fh, %.lr.ph ]
  %.sroa.04.2203.us = phi i64 [ %i.fq, %bb.ah ], [ %.sroa.04.0225, %.lr.ph ]
  %.sroa.023.2202.us = phi i64 [ %i.fp, %bb.ah ], [ %.sroa.023.0219, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, i64 noundef %i.fj)
  %.sroa.0.0.copyload.us = load i64, ptr %i.af, align 16 ; 2 uses
  %.sroa.6.0.copyload136.us = load i64, ptr %.sroa.6.0..sroa_idx135, align 8 ; 4 uses
  %.sroa.10.sroa.0.0.copyload260 = load i64, ptr %.sroa.10.0..sroa_idx, align 16 ; 2 uses
  %.sroa.10.sroa.9.0.copyload262 = load i64, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx261, align 8 ; 2 uses
  %.sroa.13.0.copyload.us = load i64, ptr %.sroa.13.0..sroa_idx, align 16 ; 5 uses
  %.sroa.17.0.copyload.us = load i64, ptr %.sroa.17.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 16 dereferenceable(48) %i.bz, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.fk = add i64 %.sroa.13.0.copyload.us, %.sroa.6.0.copyload136.us ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit125.us, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.us
  %i.fm = icmp eq i64 %.sroa.6.0.copyload136.us, 0 ; 2 uses
  br i1 %i.ce, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.fm, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9855
  store i64 %.sroa.0.0.copyload.us, ptr %i.cf, align 8, !noalias !9859
  store i64 %.sroa.6.0.copyload136.us, ptr %.sroa.6.0..sroa_idx141, align 8, !noalias !9859
  store i64 %.sroa.10.sroa.0.0.copyload260, ptr %.sroa.10.0..sroa_idx148, align 8, !noalias !9859
  store i8 1, ptr %.sroa.4.0..sroa_idx.i129, align 8, !noalias !9855
  store i8 2, ptr %i.c, align 8, !noalias !9855
  call fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h5fb6e1b76f9dbe7cE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.c), !noalias !9860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9855
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fn = icmp eq i64 %.sroa.13.0.copyload.us, 0
  br i1 %i.fn, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit125.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9855
  store i64 %.sroa.10.sroa.9.0.copyload262, ptr %i.cg, align 8, !noalias !9859
  store i64 %.sroa.13.0.copyload.us, ptr %.sroa.13.24..sroa_idx153, align 8, !noalias !9859
  store i64 %.sroa.17.0.copyload.us, ptr %.sroa.17.24..sroa_idx160, align 8, !noalias !9859
  store i8 1, ptr %.sroa.42.0..sroa_idx.i130, align 8, !noalias !9855
  store i8 2, ptr %i.b, align 8, !noalias !9855
  call fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h5fb6e1b76f9dbe7cE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.b), !noalias !9860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9855
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit125.us

bb.ab:                                            ; preds = %bb.w
  br i1 %i.fm, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9861
  store i64 %.sroa.0.0.copyload.us, ptr %i.ch, align 8, !noalias !9865
  store i64 %.sroa.6.0.copyload136.us, ptr %.sroa.6.0..sroa_idx139, align 8, !noalias !9865
  store i64 %.sroa.10.sroa.0.0.copyload260, ptr %.sroa.10.0..sroa_idx147, align 8, !noalias !9865
  store i8 0, ptr %.sroa.4.0..sroa_idx.i126, align 8, !noalias !9861
  store i8 2, ptr %i.e, align 8, !noalias !9861
  call fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h5fb6e1b76f9dbe7cE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.e), !noalias !9866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9861
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fo = icmp eq i64 %.sroa.13.0.copyload.us, 0
  br i1 %i.fo, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit125.us, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9861
  store i64 %.sroa.10.sroa.9.0.copyload262, ptr %i.ci, align 8, !noalias !9865
  store i64 %.sroa.13.0.copyload.us, ptr %.sroa.13.24..sroa_idx151, align 8, !noalias !9865
  store i64 %.sroa.17.0.copyload.us, ptr %.sroa.17.24..sroa_idx158, align 8, !noalias !9865
  store i8 0, ptr %.sroa.42.0..sroa_idx.i127, align 8, !noalias !9861
  store i8 2, ptr %i.d, align 8, !noalias !9861
  call fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h5fb6e1b76f9dbe7cE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.d), !noalias !9866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9861
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit125.us

_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit125.us: ; preds = %bb.ae, %bb.ad, %bb.aa, %bb.z, %.lr.ph.split.us
  %i.fp = sub i64 %.sroa.023.2202.us, %i.fk       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false)
  %i.fq = add i64 %.sroa.04.2203.us, 1            ; 7 uses
  %i.fr = icmp ugt i64 %i.ck, %i.fq
  br i1 %i.fr, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit125.us
  %i.fs = icmp ult i64 %i.fq, %i.cm
  br i1 %i.fs, label %bb.ag, label %.split.us

bb.ag:                                            ; preds = %bb.af
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.fq
  %i.fu = load i32, ptr %i.ft, align 4, !noundef !4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.fq
  %i.fw = load i8, ptr %i.fv, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9867
  store i8 %i.fw, ptr %i.cq, align 1, !noalias !9867
  store i8 0, ptr %i.cr, align 2, !noalias !9867
  store i8 4, ptr %i.a, align 8, !noalias !9867
  call fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h5fb6e1b76f9dbe7cE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9867
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit125.us
  %.sroa.016.5.us = phi i32 [ %i.fu, %bb.ag ], [ -2147483648, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit125.us ] ; 2 uses
  %.pr.us = load i64, ptr %.sroa.7.0..sroa_idx46, align 8 ; 2 uses
  %i.fx = load i64, ptr %.sroa.5.0..sroa_idx39, align 8, !noundef !4 ; 2 uses
  %i.fy = add i64 %i.fx, %.pr.us                  ; 2 uses
  %i.fz = zext i32 %.sroa.016.5.us to i64         ; 2 uses
  %i.ga = icmp ugt i64 %i.fy, %i.fz
  br i1 %i.ga, label %.lr.ph.split.us, label %._crit_edge

._crit_edge:                                      ; preds = %bb.cl, %bb.ah, %bb.v
  %.lcssa174 = phi i64 [ %.sroa.7.0.copyload, %bb.v ], [ %.pr.us, %bb.ah ], [ %.pr, %bb.cl ] ; 3 uses
  %.sroa.023.2.lcssa = phi i64 [ %.sroa.023.0219, %bb.v ], [ %i.fp, %bb.ah ], [ %i.jj, %bb.cl ]
  %.sroa.016.3.lcssa = phi i32 [ %.sroa.016.1222, %bb.v ], [ %.sroa.016.5.us, %bb.ah ], [ %.sroa.016.5, %bb.cl ]
  %.sroa.04.2.lcssa = phi i64 [ %.sroa.04.0225, %bb.v ], [ %i.fq, %bb.ah ], [ %i.jk, %bb.cl ]
  %.lcssa169 = phi i64 [ %.sroa.5.0.copyload, %bb.v ], [ %i.fx, %bb.ah ], [ %i.jp, %bb.cl ]
  %.lcssa = phi i64 [ %i.ej, %bb.v ], [ %i.fy, %bb.ah ], [ %i.jq, %bb.cl ] ; 2 uses
  %i.gb = icmp eq i64 %.lcssa169, 0               ; 3 uses
  br i1 %.not110, label %bb.am, label %bb.ai

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.cl
  %i.gc = phi i64 [ %i.jr, %bb.cl ], [ %i.fh, %.lr.ph ]
  %.sroa.04.2203 = phi i64 [ %i.jk, %bb.cl ], [ %.sroa.04.0225, %.lr.ph ]
  %.sroa.023.2202 = phi i64 [ %i.jj, %bb.cl ], [ %.sroa.023.0219, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, i64 noundef %i.gc)
  %.sroa.6.0.copyload136 = load i64, ptr %.sroa.6.0..sroa_idx135, align 8 ; 2 uses
  %i.gd = load <2 x i64>, ptr %i.af, align 16
  %.sroa.10.sroa.0.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 16
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 16 ; 2 uses
  %i.ge = load <2 x i64>, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.17.0.copyload = load i64, ptr %.sroa.17.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 16 dereferenceable(48) %i.bz, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.gf = add i64 %.sroa.13.0.copyload, %.sroa.6.0.copyload136 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit125, label %bb.cg

bb.ai:                                            ; preds = %._crit_edge
  br i1 %i.gb, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !9870
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ah, i64 24, i1 false), !noalias !9874
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9870
  store i8 2, ptr %i.o, align 8, !noalias !9870
  call fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h5fb6e1b76f9dbe7cE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.o), !noalias !9875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9870
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gh = icmp eq i64 %.lcssa174, 0
  br i1 %i.gh, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9870
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44, i64 24, i1 false), !noalias !9874
  store i8 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !9870
  store i8 2, ptr %i.n, align 8, !noalias !9870
  call fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h5fb6e1b76f9dbe7cE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.n), !noalias !9875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9870
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit

bb.am:                                            ; preds = %._crit_edge
  br i1 %i.ce, label %bb.an, label %bb.ar

_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit: ; preds = %bb.au, %bb.at, %bb.aq, %bb.ap, %bb.al, %bb.ak
  %i.gi = sub i64 %.sroa.023.2.lcssa, %.lcssa
  %i.gj = trunc nuw i64 %.lcssa to i32
  %i.gk = sub nuw i32 %.sroa.016.3.lcssa, %i.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.u

bb.an:                                            ; preds = %bb.am
  br i1 %i.gb, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ah, i64 24, i1 false), !noalias !9880
  store i8 0, ptr %.sroa.4.0..sroa_idx.i114, align 8, !noalias !9876
  store i8 2, ptr %i.m, align 8, !noalias !9876
  call fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h5fb6e1b76f9dbe7cE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.m), !noalias !9881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9876
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gl = icmp eq i64 %.lcssa174, 0
  br i1 %i.gl, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !9876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44, i64 24, i1 false), !noalias !9880
  store i8 0, ptr %.sroa.42.0..sroa_idx.i115, align 8, !noalias !9876
  store i8 2, ptr %i.l, align 8, !noalias !9876
  call fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h5fb6e1b76f9dbe7cE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.l), !noalias !9881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9876
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit

bb.ar:                                            ; preds = %bb.am
  br i1 %i.gb, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ah, i64 24, i1 false), !noalias !9886
  store i8 1, ptr %.sroa.4.0..sroa_idx.i117, align 8, !noalias !9882
  store i8 2, ptr %i.k, align 8, !noalias !9882
  call fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h5fb6e1b76f9dbe7cE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.k), !noalias !9887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9882
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gm = icmp eq i64 %.lcssa174, 0
  br i1 %i.gm, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44, i64 24, i1 false), !noalias !9886
  store i8 1, ptr %.sroa.42.0..sroa_idx.i118, align 8, !noalias !9882
  store i8 2, ptr %i.j, align 8, !noalias !9882
  call fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h5fb6e1b76f9dbe7cE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.j), !noalias !9887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9882
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit

bb.av:                                            ; preds = %bb.u
  %.sroa.0.0.i119 = call noundef i64 @llvm.umin.i64(i64 %i.fa, i64 %.sroa.023.1) ; 5 uses
  %i.gn = icmp eq i64 %.sroa.0.0.i119, 0
  br i1 %i.gn, label %bb.ay, label %bb.ax

bb.aw:                                            ; preds = %bb.u
  %i.go = icmp ugt i32 %i.et, 3
  br i1 %i.go, label %bb.bc, label %bb.bb, !prof !337

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.gp = trunc i64 %.sroa.050.0 to i32
  %i.gq = trunc nuw i64 %.sroa.0.0.i119 to i32
  store i32 %i.gp, ptr %i.cy, align 4
  store i32 %i.gq, ptr %i.cz, align 8
  store i8 0, ptr %i.v, align 8
  call fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h5fb6e1b76f9dbe7cE"(ptr noalias noundef align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.ax
  %i.gr = sub nuw i64 %.sroa.023.1, %.sroa.0.0.i119 ; 2 uses
  %i.gs = icmp eq i64 %i.ev, 1
  %i.gt = icmp eq i64 %i.ew, 0
  %or.cond = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.da, ptr noundef nonnull align 4 dereferenceable(12) %i.u, i64 12, i1 false)
  %i.gu = trunc i64 %.sroa.050.0 to i32
  store i32 %i.gu, ptr %i.u, align 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.bp
  %.sroa.054.0 = phi i64 [ %i.hs, %bb.bp ], [ %.sroa.0.0.i119, %bb.ay ], [ %.sroa.0.0.i119, %bb.az ]
  %.sroa.023.4 = phi i64 [ %.sroa.023.5, %bb.bp ], [ %i.gr, %bb.ay ], [ %i.gr, %bb.az ]
  %i.gv = add i32 %.sroa.019.1221, -1             ; 2 uses
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.bu, label %bb.by

bb.bb:                                            ; preds = %bb.aw
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @962, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @963) #46
  unreachable

bb.bc:                                            ; preds = %bb.aw
  %i.gx = icmp ult i32 %i.et, 25
  br i1 %i.gx, label %bb.be, label %bb.bd, !prof !337

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @964, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @965) #46
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.gy = xor i64 %.sroa.0.0.i113, -1
  %i.gz = add i64 %.sroa.050.0, %i.gy             ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr @444, i64 %i.fa
  %i.hb = load i8, ptr %i.ha, align 1, !noundef !4
  %i.hc = and i8 %i.hb, 63
  %i.hd = zext nneg i8 %i.hc to i64               ; 2 uses
  %i.he = lshr i64 %i.gz, %i.hd                   ; 2 uses
  %notmask = shl nsw i64 -1, %i.hd
  %i.hf = xor i64 %notmask, -1
  %i.hg = and i64 %i.gz, %i.hf                    ; 2 uses
  %i.hh = mul i64 %i.hg, %i.fa
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr @443, i64 %i.fa
  %i.hj = load i32, ptr %i.hi, align 4, !noundef !4
  %i.hk = zext i32 %i.hj to i64
  %i.hl = add i64 %i.hh, %i.hk                    ; 4 uses
  %i.hm = add i64 %i.hl, %i.fa                    ; 3 uses
  %i.hn = icmp uge i64 %i.hm, %i.hl
  %i.ho = icmp ult i64 %i.hm, 122785
  %or.cond112 = and i1 %i.hn, %i.ho
  br i1 %or.cond112, label %bb.bg, label %bb.bf, !prof !2223

bb.bf:                                            ; preds = %bb.be
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.hl, i64 noundef %i.hm, i64 noundef 122784, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @971) #46
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.hp = getelementptr inbounds nuw i8, ptr @_ZN19brotli_decompressor10dictionary17kBrotliDictionary17h143067f04a26e6e4E, i64 %i.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.ae, i8 0, i64 38, i1 false)
  %i.hq = trunc i64 %i.he to i32
  %i.hr = call noundef i32 @_ZN19brotli_decompressor9transform23TransformDictionaryWord17he8c22d3ef35a6ad0E(ptr noalias noundef nonnull align 1 %i.ae, i64 noundef 38, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hp, i64 noundef %i.fa, i32 noundef %i.et, i32 noundef %i.hq) ; 3 uses
  %i.hs = sext i32 %i.hr to i64                   ; 5 uses
  %.not111 = icmp ult i64 %.sroa.023.1, %i.hs
  br i1 %.not111, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ht = icmp eq i64 %.sroa.023.1, 0
  br i1 %i.ht, label %bb.bp, label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.hu = trunc nuw nsw i32 %i.et to i8
  %i.hv = trunc i64 %i.he to i8
  %i.hw = trunc i32 %i.hr to i8
  %i.hx = trunc i64 %i.hg to i32
  store i32 %i.hx, ptr %i.db, align 4
  store i8 %i.hu, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.hv, ptr %.sroa.564.0..sroa_idx, align 1
  store i8 %i.hw, ptr %.sroa.665.0..sroa_idx, align 2
  store i8 0, ptr %.sroa.766.0..sroa_idx, align 1
  store i8 1, ptr %i.ad, align 8
  call fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h5fb6e1b76f9dbe7cE"(ptr noalias noundef align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.hy = sub nuw i64 %.sroa.023.1, %i.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.hz = icmp ult i32 %i.hr, 39
  br i1 %i.hz, label %bb.br, label %bb.bq, !prof !337

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, i64 noundef %.sroa.023.1)
  call void @llvm.experimental.noalias.scope.decl(metadata !9888)
  %i.ia = load i64, ptr %i.dd, align 8, !alias.scope !9888, !noalias !9891, !noundef !4
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.z, i64 24, i1 false), !noalias !9891
  store i8 0, ptr %.sroa.4.0..sroa_idx.i120, align 8, !noalias !9893
  store i8 2, ptr %i.i, align 8, !noalias !9893
  call fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h5fb6e1b76f9dbe7cE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.i), !noalias !9888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9893
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ic = load i64, ptr %i.df, align 8, !alias.scope !9888, !noalias !9891, !noundef !4
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit122, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dg, i64 24, i1 false), !noalias !9891
  store i8 0, ptr %.sroa.42.0..sroa_idx.i121, align 8, !noalias !9893
  store i8 2, ptr %i.h, align 8, !noalias !9893
  call fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h5fb6e1b76f9dbe7cE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.h), !noalias !9888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9893
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit122

_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit122: ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.ae, ptr %i.y, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.474.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %i.di, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.477.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, i64 noundef 0)
  %i.ie = call noundef zeroext i1 @"_ZN75_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha719365bd820edd4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x)
  br i1 %i.ie, label %bb.bo, label %bb.bn, !prof !337

bb.bn:                                            ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr null, ptr %i.w, align 8
  call void @_ZN4core9panicking13assert_failed17ha55082e04b90c138E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @966) #46
  unreachable

bb.bo:                                            ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h1b9a42eede87769aE.exit122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bh, %bb.bt
  %.sroa.023.5 = phi i64 [ %i.hy, %bb.bt ], [ 0, %bb.bh ], [ 0, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ba

bb.bq:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr @230, ptr %i.q, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 1, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 0, ptr %i.ii, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @967) #46
  unreachable

bb.br:                                            ; preds = %bb.bi
  store ptr %i.ae, ptr %i.ac, align 8
  store i64 %i.hs, ptr %.sroa.468.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.569.0..sroa_idx, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.dc, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.471.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, i64 noundef %i.hs)
  %i.ij = call noundef zeroext i1 @"_ZN75_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha719365bd820edd4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab)
  br i1 %i.ij, label %bb.bt, label %bb.bs, !prof !337

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr null, ptr %i.aa, align 8
  call void @_ZN4core9panicking13assert_failed17ha55082e04b90c138E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @968) #46
  unreachable

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.bp

bb.bu:                                            ; preds = %bb.ba
  %i.ik = add i64 %.sroa.08.0224, 1               ; 7 uses
  %i.il = icmp ugt i64 %i.dk, %i.ik
  br i1 %i.il, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.im = icmp ult i64 %i.ik, %i.dm
  br i1 %i.im, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ik, i64 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @969) #46
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ik
  %i.io = load i32, ptr %i.in, align 4, !noundef !4
end_hunk_10
begin_hunk_11_@_ZN6brotli3enc17brotli_bit_stream21process_command_queue17h677e3e8b64af3eb2E:bb.a
bb.s:                                             ; preds = %bb.p
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @960, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @961) #46
  unreachable

bb.t:                                             ; preds = %bb.p
  %i.ff = icmp eq i64 %i.ej, 0
  br i1 %i.ff, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit, %bb.t
  %.sroa.023.1 = phi i64 [ %.sroa.023.0219, %bb.t ], [ %i.gi, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit ] ; 6 uses
  %.sroa.016.2 = phi i32 [ %.sroa.016.1222, %bb.t ], [ %i.gk, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit ]
  %.sroa.04.1 = phi i64 [ %.sroa.04.0225, %bb.t ], [ %.sroa.04.2.lcssa, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit ]
  %i.fg = icmp ugt i64 %.sroa.050.0, %.sroa.0.0.i113
  br i1 %i.fg, label %bb.aw, label %bb.av

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %.sroa.037.0.copyload, ptr %i.ah, align 8
  store <2 x i64> %i.eh, ptr %.sroa.5.0..sroa_idx39, align 8
  store ptr %.sroa.643.0.copyload, ptr %.sroa.643.0..sroa_idx44, align 8
  store <2 x i64> %i.ei, ptr %.sroa.7.0..sroa_idx46, align 8
  %i.fh = zext i32 %.sroa.016.1222 to i64         ; 3 uses
  %i.fi = icmp ugt i64 %i.ej, %i.fh
  br i1 %i.fi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.v
  br i1 %.not110, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.ah
  %i.fj = phi i64 [ %i.fz, %bb.ah ], [ %i.fh, %.lr.ph ]
  %.sroa.04.2203.us = phi i64 [ %i.fq, %bb.ah ], [ %.sroa.04.0225, %.lr.ph ]
  %.sroa.023.2202.us = phi i64 [ %i.fp, %bb.ah ], [ %.sroa.023.0219, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, i64 noundef %i.fj)
  %.sroa.0.0.copyload.us = load i64, ptr %i.af, align 16 ; 2 uses
  %.sroa.6.0.copyload136.us = load i64, ptr %.sroa.6.0..sroa_idx135, align 8 ; 4 uses
  %.sroa.10.sroa.0.0.copyload260 = load i64, ptr %.sroa.10.0..sroa_idx, align 16 ; 2 uses
  %.sroa.10.sroa.9.0.copyload262 = load i64, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx261, align 8 ; 2 uses
  %.sroa.13.0.copyload.us = load i64, ptr %.sroa.13.0..sroa_idx, align 16 ; 5 uses
  %.sroa.17.0.copyload.us = load i64, ptr %.sroa.17.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 16 dereferenceable(48) %i.bz, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.fk = add i64 %.sroa.13.0.copyload.us, %.sroa.6.0.copyload136.us ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit125.us, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.us
  %i.fm = icmp eq i64 %.sroa.6.0.copyload136.us, 0 ; 2 uses
  br i1 %i.ce, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.fm, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9903
  store i64 %.sroa.0.0.copyload.us, ptr %i.cf, align 8, !noalias !9907
  store i64 %.sroa.6.0.copyload136.us, ptr %.sroa.6.0..sroa_idx141, align 8, !noalias !9907
  store i64 %.sroa.10.sroa.0.0.copyload260, ptr %.sroa.10.0..sroa_idx148, align 8, !noalias !9907
  store i8 1, ptr %.sroa.4.0..sroa_idx.i129, align 8, !noalias !9903
  store i8 2, ptr %i.c, align 8, !noalias !9903
  call fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h81848e09d7042e96E"(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.c), !noalias !9908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9903
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fn = icmp eq i64 %.sroa.13.0.copyload.us, 0
  br i1 %i.fn, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit125.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9903
  store i64 %.sroa.10.sroa.9.0.copyload262, ptr %i.cg, align 8, !noalias !9907
  store i64 %.sroa.13.0.copyload.us, ptr %.sroa.13.24..sroa_idx153, align 8, !noalias !9907
  store i64 %.sroa.17.0.copyload.us, ptr %.sroa.17.24..sroa_idx160, align 8, !noalias !9907
  store i8 1, ptr %.sroa.42.0..sroa_idx.i130, align 8, !noalias !9903
  store i8 2, ptr %i.b, align 8, !noalias !9903
  call fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h81848e09d7042e96E"(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.b), !noalias !9908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9903
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit125.us

bb.ab:                                            ; preds = %bb.w
  br i1 %i.fm, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9909
  store i64 %.sroa.0.0.copyload.us, ptr %i.ch, align 8, !noalias !9913
  store i64 %.sroa.6.0.copyload136.us, ptr %.sroa.6.0..sroa_idx139, align 8, !noalias !9913
  store i64 %.sroa.10.sroa.0.0.copyload260, ptr %.sroa.10.0..sroa_idx147, align 8, !noalias !9913
  store i8 0, ptr %.sroa.4.0..sroa_idx.i126, align 8, !noalias !9909
  store i8 2, ptr %i.e, align 8, !noalias !9909
  call fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h81848e09d7042e96E"(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.e), !noalias !9914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9909
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fo = icmp eq i64 %.sroa.13.0.copyload.us, 0
  br i1 %i.fo, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit125.us, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9909
  store i64 %.sroa.10.sroa.9.0.copyload262, ptr %i.ci, align 8, !noalias !9913
  store i64 %.sroa.13.0.copyload.us, ptr %.sroa.13.24..sroa_idx151, align 8, !noalias !9913
  store i64 %.sroa.17.0.copyload.us, ptr %.sroa.17.24..sroa_idx158, align 8, !noalias !9913
  store i8 0, ptr %.sroa.42.0..sroa_idx.i127, align 8, !noalias !9909
  store i8 2, ptr %i.d, align 8, !noalias !9909
  call fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h81848e09d7042e96E"(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.d), !noalias !9914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9909
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit125.us

_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit125.us: ; preds = %bb.ae, %bb.ad, %bb.aa, %bb.z, %.lr.ph.split.us
  %i.fp = sub i64 %.sroa.023.2202.us, %i.fk       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false)
  %i.fq = add i64 %.sroa.04.2203.us, 1            ; 7 uses
  %i.fr = icmp ugt i64 %i.ck, %i.fq
  br i1 %i.fr, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit125.us
  %i.fs = icmp ult i64 %i.fq, %i.cm
  br i1 %i.fs, label %bb.ag, label %.split.us

bb.ag:                                            ; preds = %bb.af
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.fq
  %i.fu = load i32, ptr %i.ft, align 4, !noundef !4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.fq
  %i.fw = load i8, ptr %i.fv, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9915
  store i8 %i.fw, ptr %i.cq, align 1, !noalias !9915
  store i8 0, ptr %i.cr, align 2, !noalias !9915
  store i8 4, ptr %i.a, align 8, !noalias !9915
  call fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h81848e09d7042e96E"(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9915
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit125.us
  %.sroa.016.5.us = phi i32 [ %i.fu, %bb.ag ], [ -2147483648, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit125.us ] ; 2 uses
  %.pr.us = load i64, ptr %.sroa.7.0..sroa_idx46, align 8 ; 2 uses
  %i.fx = load i64, ptr %.sroa.5.0..sroa_idx39, align 8, !noundef !4 ; 2 uses
  %i.fy = add i64 %i.fx, %.pr.us                  ; 2 uses
  %i.fz = zext i32 %.sroa.016.5.us to i64         ; 2 uses
  %i.ga = icmp ugt i64 %i.fy, %i.fz
  br i1 %i.ga, label %.lr.ph.split.us, label %._crit_edge

._crit_edge:                                      ; preds = %bb.cl, %bb.ah, %bb.v
  %.lcssa174 = phi i64 [ %.sroa.7.0.copyload, %bb.v ], [ %.pr.us, %bb.ah ], [ %.pr, %bb.cl ] ; 3 uses
  %.sroa.023.2.lcssa = phi i64 [ %.sroa.023.0219, %bb.v ], [ %i.fp, %bb.ah ], [ %i.jj, %bb.cl ]
  %.sroa.016.3.lcssa = phi i32 [ %.sroa.016.1222, %bb.v ], [ %.sroa.016.5.us, %bb.ah ], [ %.sroa.016.5, %bb.cl ]
  %.sroa.04.2.lcssa = phi i64 [ %.sroa.04.0225, %bb.v ], [ %i.fq, %bb.ah ], [ %i.jk, %bb.cl ]
  %.lcssa169 = phi i64 [ %.sroa.5.0.copyload, %bb.v ], [ %i.fx, %bb.ah ], [ %i.jp, %bb.cl ]
  %.lcssa = phi i64 [ %i.ej, %bb.v ], [ %i.fy, %bb.ah ], [ %i.jq, %bb.cl ] ; 2 uses
  %i.gb = icmp eq i64 %.lcssa169, 0               ; 3 uses
  br i1 %.not110, label %bb.am, label %bb.ai

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.cl
  %i.gc = phi i64 [ %i.jr, %bb.cl ], [ %i.fh, %.lr.ph ]
  %.sroa.04.2203 = phi i64 [ %i.jk, %bb.cl ], [ %.sroa.04.0225, %.lr.ph ]
  %.sroa.023.2202 = phi i64 [ %i.jj, %bb.cl ], [ %.sroa.023.0219, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, i64 noundef %i.gc)
  %.sroa.6.0.copyload136 = load i64, ptr %.sroa.6.0..sroa_idx135, align 8 ; 2 uses
  %i.gd = load <2 x i64>, ptr %i.af, align 16
  %.sroa.10.sroa.0.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 16
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 16 ; 2 uses
  %i.ge = load <2 x i64>, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.17.0.copyload = load i64, ptr %.sroa.17.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 16 dereferenceable(48) %i.bz, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.gf = add i64 %.sroa.13.0.copyload, %.sroa.6.0.copyload136 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit125, label %bb.cg

bb.ai:                                            ; preds = %._crit_edge
  br i1 %i.gb, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !9918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ah, i64 24, i1 false), !noalias !9922
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9918
  store i8 2, ptr %i.o, align 8, !noalias !9918
  call fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h81848e09d7042e96E"(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.o), !noalias !9923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9918
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gh = icmp eq i64 %.lcssa174, 0
  br i1 %i.gh, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44, i64 24, i1 false), !noalias !9922
  store i8 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !9918
  store i8 2, ptr %i.n, align 8, !noalias !9918
  call fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h81848e09d7042e96E"(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.n), !noalias !9923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9918
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit

bb.am:                                            ; preds = %._crit_edge
  br i1 %i.ce, label %bb.an, label %bb.ar

_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit: ; preds = %bb.au, %bb.at, %bb.aq, %bb.ap, %bb.al, %bb.ak
  %i.gi = sub i64 %.sroa.023.2.lcssa, %.lcssa
  %i.gj = trunc nuw i64 %.lcssa to i32
  %i.gk = sub nuw i32 %.sroa.016.3.lcssa, %i.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.u

bb.an:                                            ; preds = %bb.am
  br i1 %i.gb, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ah, i64 24, i1 false), !noalias !9928
  store i8 0, ptr %.sroa.4.0..sroa_idx.i114, align 8, !noalias !9924
  store i8 2, ptr %i.m, align 8, !noalias !9924
  call fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h81848e09d7042e96E"(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.m), !noalias !9929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9924
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gl = icmp eq i64 %.lcssa174, 0
  br i1 %i.gl, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !9924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44, i64 24, i1 false), !noalias !9928
  store i8 0, ptr %.sroa.42.0..sroa_idx.i115, align 8, !noalias !9924
  store i8 2, ptr %i.l, align 8, !noalias !9924
  call fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h81848e09d7042e96E"(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.l), !noalias !9929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9924
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit

bb.ar:                                            ; preds = %bb.am
  br i1 %i.gb, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ah, i64 24, i1 false), !noalias !9934
  store i8 1, ptr %.sroa.4.0..sroa_idx.i117, align 8, !noalias !9930
  store i8 2, ptr %i.k, align 8, !noalias !9930
  call fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h81848e09d7042e96E"(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.k), !noalias !9935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9930
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gm = icmp eq i64 %.lcssa174, 0
  br i1 %i.gm, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44, i64 24, i1 false), !noalias !9934
  store i8 1, ptr %.sroa.42.0..sroa_idx.i118, align 8, !noalias !9930
  store i8 2, ptr %i.j, align 8, !noalias !9930
  call fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h81848e09d7042e96E"(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.j), !noalias !9935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9930
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit

bb.av:                                            ; preds = %bb.u
  %.sroa.0.0.i119 = call noundef i64 @llvm.umin.i64(i64 %i.fa, i64 %.sroa.023.1) ; 5 uses
  %i.gn = icmp eq i64 %.sroa.0.0.i119, 0
  br i1 %i.gn, label %bb.ay, label %bb.ax

bb.aw:                                            ; preds = %bb.u
  %i.go = icmp ugt i32 %i.et, 3
  br i1 %i.go, label %bb.bc, label %bb.bb, !prof !337

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.gp = trunc i64 %.sroa.050.0 to i32
  %i.gq = trunc nuw i64 %.sroa.0.0.i119 to i32
  store i32 %i.gp, ptr %i.cy, align 4
  store i32 %i.gq, ptr %i.cz, align 8
  store i8 0, ptr %i.v, align 8
  call fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h81848e09d7042e96E"(ptr noalias noundef align 8 dereferenceable(240) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.ax
  %i.gr = sub nuw i64 %.sroa.023.1, %.sroa.0.0.i119 ; 2 uses
  %i.gs = icmp eq i64 %i.ev, 1
  %i.gt = icmp eq i64 %i.ew, 0
  %or.cond = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.da, ptr noundef nonnull align 4 dereferenceable(12) %i.u, i64 12, i1 false)
  %i.gu = trunc i64 %.sroa.050.0 to i32
  store i32 %i.gu, ptr %i.u, align 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.bp
  %.sroa.054.0 = phi i64 [ %i.hs, %bb.bp ], [ %.sroa.0.0.i119, %bb.ay ], [ %.sroa.0.0.i119, %bb.az ]
  %.sroa.023.4 = phi i64 [ %.sroa.023.5, %bb.bp ], [ %i.gr, %bb.ay ], [ %i.gr, %bb.az ]
  %i.gv = add i32 %.sroa.019.1221, -1             ; 2 uses
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.bu, label %bb.by

bb.bb:                                            ; preds = %bb.aw
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @962, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @963) #46
  unreachable

bb.bc:                                            ; preds = %bb.aw
  %i.gx = icmp ult i32 %i.et, 25
  br i1 %i.gx, label %bb.be, label %bb.bd, !prof !337

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @964, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @965) #46
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.gy = xor i64 %.sroa.0.0.i113, -1
  %i.gz = add i64 %.sroa.050.0, %i.gy             ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr @444, i64 %i.fa
  %i.hb = load i8, ptr %i.ha, align 1, !noundef !4
  %i.hc = and i8 %i.hb, 63
  %i.hd = zext nneg i8 %i.hc to i64               ; 2 uses
  %i.he = lshr i64 %i.gz, %i.hd                   ; 2 uses
  %notmask = shl nsw i64 -1, %i.hd
  %i.hf = xor i64 %notmask, -1
  %i.hg = and i64 %i.gz, %i.hf                    ; 2 uses
  %i.hh = mul i64 %i.hg, %i.fa
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr @443, i64 %i.fa
  %i.hj = load i32, ptr %i.hi, align 4, !noundef !4
  %i.hk = zext i32 %i.hj to i64
  %i.hl = add i64 %i.hh, %i.hk                    ; 4 uses
  %i.hm = add i64 %i.hl, %i.fa                    ; 3 uses
  %i.hn = icmp uge i64 %i.hm, %i.hl
  %i.ho = icmp ult i64 %i.hm, 122785
  %or.cond112 = and i1 %i.hn, %i.ho
  br i1 %or.cond112, label %bb.bg, label %bb.bf, !prof !2223

bb.bf:                                            ; preds = %bb.be
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.hl, i64 noundef %i.hm, i64 noundef 122784, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @971) #46
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.hp = getelementptr inbounds nuw i8, ptr @_ZN19brotli_decompressor10dictionary17kBrotliDictionary17h143067f04a26e6e4E, i64 %i.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.ae, i8 0, i64 38, i1 false)
  %i.hq = trunc i64 %i.he to i32
  %i.hr = call noundef i32 @_ZN19brotli_decompressor9transform23TransformDictionaryWord17he8c22d3ef35a6ad0E(ptr noalias noundef nonnull align 1 %i.ae, i64 noundef 38, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hp, i64 noundef %i.fa, i32 noundef %i.et, i32 noundef %i.hq) ; 3 uses
  %i.hs = sext i32 %i.hr to i64                   ; 5 uses
  %.not111 = icmp ult i64 %.sroa.023.1, %i.hs
  br i1 %.not111, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ht = icmp eq i64 %.sroa.023.1, 0
  br i1 %i.ht, label %bb.bp, label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.hu = trunc nuw nsw i32 %i.et to i8
  %i.hv = trunc i64 %i.he to i8
  %i.hw = trunc i32 %i.hr to i8
  %i.hx = trunc i64 %i.hg to i32
  store i32 %i.hx, ptr %i.db, align 4
  store i8 %i.hu, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.hv, ptr %.sroa.564.0..sroa_idx, align 1
  store i8 %i.hw, ptr %.sroa.665.0..sroa_idx, align 2
  store i8 0, ptr %.sroa.766.0..sroa_idx, align 1
  store i8 1, ptr %i.ad, align 8
  call fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h81848e09d7042e96E"(ptr noalias noundef align 8 dereferenceable(240) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.hy = sub nuw i64 %.sroa.023.1, %i.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.hz = icmp ult i32 %i.hr, 39
  br i1 %i.hz, label %bb.br, label %bb.bq, !prof !337

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, i64 noundef %.sroa.023.1)
  call void @llvm.experimental.noalias.scope.decl(metadata !9936)
  %i.ia = load i64, ptr %i.dd, align 8, !alias.scope !9936, !noalias !9939, !noundef !4
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.z, i64 24, i1 false), !noalias !9939
  store i8 0, ptr %.sroa.4.0..sroa_idx.i120, align 8, !noalias !9941
  store i8 2, ptr %i.i, align 8, !noalias !9941
  call fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h81848e09d7042e96E"(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.i), !noalias !9936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9941
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ic = load i64, ptr %i.df, align 8, !alias.scope !9936, !noalias !9939, !noundef !4
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit122, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dg, i64 24, i1 false), !noalias !9939
  store i8 0, ptr %.sroa.42.0..sroa_idx.i121, align 8, !noalias !9941
  store i8 2, ptr %i.h, align 8, !noalias !9941
  call fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h81848e09d7042e96E"(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.h), !noalias !9936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9941
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit122

_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit122: ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.ae, ptr %i.y, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.474.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %i.di, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.477.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, i64 noundef 0)
  %i.ie = call noundef zeroext i1 @"_ZN75_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha719365bd820edd4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x)
  br i1 %i.ie, label %bb.bo, label %bb.bn, !prof !337

bb.bn:                                            ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr null, ptr %i.w, align 8
  call void @_ZN4core9panicking13assert_failed17ha55082e04b90c138E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @966) #46
  unreachable

bb.bo:                                            ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h7d28f58a2372e0ccE.exit122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bh, %bb.bt
  %.sroa.023.5 = phi i64 [ %i.hy, %bb.bt ], [ 0, %bb.bh ], [ 0, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ba

bb.bq:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr @230, ptr %i.q, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 1, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 0, ptr %i.ii, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @967) #46
  unreachable

bb.br:                                            ; preds = %bb.bi
  store ptr %i.ae, ptr %i.ac, align 8
  store i64 %i.hs, ptr %.sroa.468.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.569.0..sroa_idx, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.dc, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.471.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, i64 noundef %i.hs)
  %i.ij = call noundef zeroext i1 @"_ZN75_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha719365bd820edd4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab)
  br i1 %i.ij, label %bb.bt, label %bb.bs, !prof !337

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr null, ptr %i.aa, align 8
  call void @_ZN4core9panicking13assert_failed17ha55082e04b90c138E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @968) #46
  unreachable

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.bp

bb.bu:                                            ; preds = %bb.ba
  %i.ik = add i64 %.sroa.08.0224, 1               ; 7 uses
  %i.il = icmp ugt i64 %i.dk, %i.ik
  br i1 %i.il, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.im = icmp ult i64 %i.ik, %i.dm
  br i1 %i.im, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ik, i64 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @969) #46
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ik
  %i.io = load i32, ptr %i.in, align 4, !noundef !4
end_hunk_11
begin_hunk_12_@_ZN6brotli3enc17brotli_bit_stream21process_command_queue17h7f9e8856ad452ed6E:bb.a
bb.s:                                             ; preds = %bb.p
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @960, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @961) #46
  unreachable

bb.t:                                             ; preds = %bb.p
  %i.ff = icmp eq i64 %i.ej, 0
  br i1 %i.ff, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit, %bb.t
  %.sroa.023.1 = phi i64 [ %.sroa.023.0219, %bb.t ], [ %i.gi, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit ] ; 6 uses
  %.sroa.016.2 = phi i32 [ %.sroa.016.1222, %bb.t ], [ %i.gk, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit ]
  %.sroa.04.1 = phi i64 [ %.sroa.04.0225, %bb.t ], [ %.sroa.04.2.lcssa, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit ]
  %i.fg = icmp ugt i64 %.sroa.050.0, %.sroa.0.0.i113
  br i1 %i.fg, label %bb.aw, label %bb.av

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %.sroa.037.0.copyload, ptr %i.ah, align 8
  store <2 x i64> %i.eh, ptr %.sroa.5.0..sroa_idx39, align 8
  store ptr %.sroa.643.0.copyload, ptr %.sroa.643.0..sroa_idx44, align 8
  store <2 x i64> %i.ei, ptr %.sroa.7.0..sroa_idx46, align 8
  %i.fh = zext i32 %.sroa.016.1222 to i64         ; 3 uses
  %i.fi = icmp ugt i64 %i.ej, %i.fh
  br i1 %i.fi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.v
  br i1 %.not110, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.ah
  %i.fj = phi i64 [ %i.fz, %bb.ah ], [ %i.fh, %.lr.ph ]
  %.sroa.04.2203.us = phi i64 [ %i.fq, %bb.ah ], [ %.sroa.04.0225, %.lr.ph ]
  %.sroa.023.2202.us = phi i64 [ %i.fp, %bb.ah ], [ %.sroa.023.0219, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, i64 noundef %i.fj)
  %.sroa.0.0.copyload.us = load i64, ptr %i.af, align 16 ; 2 uses
  %.sroa.6.0.copyload136.us = load i64, ptr %.sroa.6.0..sroa_idx135, align 8 ; 4 uses
  %.sroa.10.sroa.0.0.copyload260 = load i64, ptr %.sroa.10.0..sroa_idx, align 16 ; 2 uses
  %.sroa.10.sroa.9.0.copyload262 = load i64, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx261, align 8 ; 2 uses
  %.sroa.13.0.copyload.us = load i64, ptr %.sroa.13.0..sroa_idx, align 16 ; 5 uses
  %.sroa.17.0.copyload.us = load i64, ptr %.sroa.17.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 16 dereferenceable(48) %i.bz, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.fk = add i64 %.sroa.13.0.copyload.us, %.sroa.6.0.copyload136.us ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit125.us, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.us
  %i.fm = icmp eq i64 %.sroa.6.0.copyload136.us, 0 ; 2 uses
  br i1 %i.ce, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.fm, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9951
  store i64 %.sroa.0.0.copyload.us, ptr %i.cf, align 8, !noalias !9955
  store i64 %.sroa.6.0.copyload136.us, ptr %.sroa.6.0..sroa_idx141, align 8, !noalias !9955
  store i64 %.sroa.10.sroa.0.0.copyload260, ptr %.sroa.10.0..sroa_idx148, align 8, !noalias !9955
  store i8 1, ptr %.sroa.4.0..sroa_idx.i129, align 8, !noalias !9951
  store i8 2, ptr %i.c, align 8, !noalias !9951
  call fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hddadbec000589963E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.c), !noalias !9956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9951
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fn = icmp eq i64 %.sroa.13.0.copyload.us, 0
  br i1 %i.fn, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit125.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9951
  store i64 %.sroa.10.sroa.9.0.copyload262, ptr %i.cg, align 8, !noalias !9955
  store i64 %.sroa.13.0.copyload.us, ptr %.sroa.13.24..sroa_idx153, align 8, !noalias !9955
  store i64 %.sroa.17.0.copyload.us, ptr %.sroa.17.24..sroa_idx160, align 8, !noalias !9955
  store i8 1, ptr %.sroa.42.0..sroa_idx.i130, align 8, !noalias !9951
  store i8 2, ptr %i.b, align 8, !noalias !9951
  call fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hddadbec000589963E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.b), !noalias !9956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9951
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit125.us

bb.ab:                                            ; preds = %bb.w
  br i1 %i.fm, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9957
  store i64 %.sroa.0.0.copyload.us, ptr %i.ch, align 8, !noalias !9961
  store i64 %.sroa.6.0.copyload136.us, ptr %.sroa.6.0..sroa_idx139, align 8, !noalias !9961
  store i64 %.sroa.10.sroa.0.0.copyload260, ptr %.sroa.10.0..sroa_idx147, align 8, !noalias !9961
  store i8 0, ptr %.sroa.4.0..sroa_idx.i126, align 8, !noalias !9957
  store i8 2, ptr %i.e, align 8, !noalias !9957
  call fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hddadbec000589963E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.e), !noalias !9962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9957
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fo = icmp eq i64 %.sroa.13.0.copyload.us, 0
  br i1 %i.fo, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit125.us, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9957
  store i64 %.sroa.10.sroa.9.0.copyload262, ptr %i.ci, align 8, !noalias !9961
  store i64 %.sroa.13.0.copyload.us, ptr %.sroa.13.24..sroa_idx151, align 8, !noalias !9961
  store i64 %.sroa.17.0.copyload.us, ptr %.sroa.17.24..sroa_idx158, align 8, !noalias !9961
  store i8 0, ptr %.sroa.42.0..sroa_idx.i127, align 8, !noalias !9957
  store i8 2, ptr %i.d, align 8, !noalias !9957
  call fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hddadbec000589963E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.d), !noalias !9962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9957
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit125.us

_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit125.us: ; preds = %bb.ae, %bb.ad, %bb.aa, %bb.z, %.lr.ph.split.us
  %i.fp = sub i64 %.sroa.023.2202.us, %i.fk       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false)
  %i.fq = add i64 %.sroa.04.2203.us, 1            ; 7 uses
  %i.fr = icmp ugt i64 %i.ck, %i.fq
  br i1 %i.fr, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit125.us
  %i.fs = icmp ult i64 %i.fq, %i.cm
  br i1 %i.fs, label %bb.ag, label %.split.us

bb.ag:                                            ; preds = %bb.af
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.fq
  %i.fu = load i32, ptr %i.ft, align 4, !noundef !4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.fq
  %i.fw = load i8, ptr %i.fv, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9963
  store i8 %i.fw, ptr %i.cq, align 1, !noalias !9963
  store i8 0, ptr %i.cr, align 2, !noalias !9963
  store i8 4, ptr %i.a, align 8, !noalias !9963
  call fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hddadbec000589963E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9963
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit125.us
  %.sroa.016.5.us = phi i32 [ %i.fu, %bb.ag ], [ -2147483648, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit125.us ] ; 2 uses
  %.pr.us = load i64, ptr %.sroa.7.0..sroa_idx46, align 8 ; 2 uses
  %i.fx = load i64, ptr %.sroa.5.0..sroa_idx39, align 8, !noundef !4 ; 2 uses
  %i.fy = add i64 %i.fx, %.pr.us                  ; 2 uses
  %i.fz = zext i32 %.sroa.016.5.us to i64         ; 2 uses
  %i.ga = icmp ugt i64 %i.fy, %i.fz
  br i1 %i.ga, label %.lr.ph.split.us, label %._crit_edge

._crit_edge:                                      ; preds = %bb.cl, %bb.ah, %bb.v
  %.lcssa174 = phi i64 [ %.sroa.7.0.copyload, %bb.v ], [ %.pr.us, %bb.ah ], [ %.pr, %bb.cl ] ; 3 uses
  %.sroa.023.2.lcssa = phi i64 [ %.sroa.023.0219, %bb.v ], [ %i.fp, %bb.ah ], [ %i.jj, %bb.cl ]
  %.sroa.016.3.lcssa = phi i32 [ %.sroa.016.1222, %bb.v ], [ %.sroa.016.5.us, %bb.ah ], [ %.sroa.016.5, %bb.cl ]
  %.sroa.04.2.lcssa = phi i64 [ %.sroa.04.0225, %bb.v ], [ %i.fq, %bb.ah ], [ %i.jk, %bb.cl ]
  %.lcssa169 = phi i64 [ %.sroa.5.0.copyload, %bb.v ], [ %i.fx, %bb.ah ], [ %i.jp, %bb.cl ]
  %.lcssa = phi i64 [ %i.ej, %bb.v ], [ %i.fy, %bb.ah ], [ %i.jq, %bb.cl ] ; 2 uses
  %i.gb = icmp eq i64 %.lcssa169, 0               ; 3 uses
  br i1 %.not110, label %bb.am, label %bb.ai

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.cl
  %i.gc = phi i64 [ %i.jr, %bb.cl ], [ %i.fh, %.lr.ph ]
  %.sroa.04.2203 = phi i64 [ %i.jk, %bb.cl ], [ %.sroa.04.0225, %.lr.ph ]
  %.sroa.023.2202 = phi i64 [ %i.jj, %bb.cl ], [ %.sroa.023.0219, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, i64 noundef %i.gc)
  %.sroa.6.0.copyload136 = load i64, ptr %.sroa.6.0..sroa_idx135, align 8 ; 2 uses
  %i.gd = load <2 x i64>, ptr %i.af, align 16
  %.sroa.10.sroa.0.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 16
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 16 ; 2 uses
  %i.ge = load <2 x i64>, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.17.0.copyload = load i64, ptr %.sroa.17.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 16 dereferenceable(48) %i.bz, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.gf = add i64 %.sroa.13.0.copyload, %.sroa.6.0.copyload136 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit125, label %bb.cg

bb.ai:                                            ; preds = %._crit_edge
  br i1 %i.gb, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !9966
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ah, i64 24, i1 false), !noalias !9970
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9966
  store i8 2, ptr %i.o, align 8, !noalias !9966
  call fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hddadbec000589963E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.o), !noalias !9971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9966
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gh = icmp eq i64 %.lcssa174, 0
  br i1 %i.gh, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9966
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44, i64 24, i1 false), !noalias !9970
  store i8 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !9966
  store i8 2, ptr %i.n, align 8, !noalias !9966
  call fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hddadbec000589963E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.n), !noalias !9971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9966
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit

bb.am:                                            ; preds = %._crit_edge
  br i1 %i.ce, label %bb.an, label %bb.ar

_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit: ; preds = %bb.au, %bb.at, %bb.aq, %bb.ap, %bb.al, %bb.ak
  %i.gi = sub i64 %.sroa.023.2.lcssa, %.lcssa
  %i.gj = trunc nuw i64 %.lcssa to i32
  %i.gk = sub nuw i32 %.sroa.016.3.lcssa, %i.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.u

bb.an:                                            ; preds = %bb.am
  br i1 %i.gb, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ah, i64 24, i1 false), !noalias !9976
  store i8 0, ptr %.sroa.4.0..sroa_idx.i114, align 8, !noalias !9972
  store i8 2, ptr %i.m, align 8, !noalias !9972
  call fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hddadbec000589963E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.m), !noalias !9977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9972
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gl = icmp eq i64 %.lcssa174, 0
  br i1 %i.gl, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !9972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44, i64 24, i1 false), !noalias !9976
  store i8 0, ptr %.sroa.42.0..sroa_idx.i115, align 8, !noalias !9972
  store i8 2, ptr %i.l, align 8, !noalias !9972
  call fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hddadbec000589963E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.l), !noalias !9977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9972
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit

bb.ar:                                            ; preds = %bb.am
  br i1 %i.gb, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9978
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ah, i64 24, i1 false), !noalias !9982
  store i8 1, ptr %.sroa.4.0..sroa_idx.i117, align 8, !noalias !9978
  store i8 2, ptr %i.k, align 8, !noalias !9978
  call fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hddadbec000589963E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.k), !noalias !9983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9978
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gm = icmp eq i64 %.lcssa174, 0
  br i1 %i.gm, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9978
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44, i64 24, i1 false), !noalias !9982
  store i8 1, ptr %.sroa.42.0..sroa_idx.i118, align 8, !noalias !9978
  store i8 2, ptr %i.j, align 8, !noalias !9978
  call fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hddadbec000589963E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.j), !noalias !9983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9978
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit

bb.av:                                            ; preds = %bb.u
  %.sroa.0.0.i119 = call noundef i64 @llvm.umin.i64(i64 %i.fa, i64 %.sroa.023.1) ; 5 uses
  %i.gn = icmp eq i64 %.sroa.0.0.i119, 0
  br i1 %i.gn, label %bb.ay, label %bb.ax

bb.aw:                                            ; preds = %bb.u
  %i.go = icmp ugt i32 %i.et, 3
  br i1 %i.go, label %bb.bc, label %bb.bb, !prof !337

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.gp = trunc i64 %.sroa.050.0 to i32
  %i.gq = trunc nuw i64 %.sroa.0.0.i119 to i32
  store i32 %i.gp, ptr %i.cy, align 4
  store i32 %i.gq, ptr %i.cz, align 8
  store i8 0, ptr %i.v, align 8
  call fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hddadbec000589963E"(ptr noalias noundef align 8 dereferenceable(296) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.ax
  %i.gr = sub nuw i64 %.sroa.023.1, %.sroa.0.0.i119 ; 2 uses
  %i.gs = icmp eq i64 %i.ev, 1
  %i.gt = icmp eq i64 %i.ew, 0
  %or.cond = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.da, ptr noundef nonnull align 4 dereferenceable(12) %i.u, i64 12, i1 false)
  %i.gu = trunc i64 %.sroa.050.0 to i32
  store i32 %i.gu, ptr %i.u, align 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.bp
  %.sroa.054.0 = phi i64 [ %i.hs, %bb.bp ], [ %.sroa.0.0.i119, %bb.ay ], [ %.sroa.0.0.i119, %bb.az ]
  %.sroa.023.4 = phi i64 [ %.sroa.023.5, %bb.bp ], [ %i.gr, %bb.ay ], [ %i.gr, %bb.az ]
  %i.gv = add i32 %.sroa.019.1221, -1             ; 2 uses
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.bu, label %bb.by

bb.bb:                                            ; preds = %bb.aw
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @962, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @963) #46
  unreachable

bb.bc:                                            ; preds = %bb.aw
  %i.gx = icmp ult i32 %i.et, 25
  br i1 %i.gx, label %bb.be, label %bb.bd, !prof !337

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @964, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @965) #46
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.gy = xor i64 %.sroa.0.0.i113, -1
  %i.gz = add i64 %.sroa.050.0, %i.gy             ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr @444, i64 %i.fa
  %i.hb = load i8, ptr %i.ha, align 1, !noundef !4
  %i.hc = and i8 %i.hb, 63
  %i.hd = zext nneg i8 %i.hc to i64               ; 2 uses
  %i.he = lshr i64 %i.gz, %i.hd                   ; 2 uses
  %notmask = shl nsw i64 -1, %i.hd
  %i.hf = xor i64 %notmask, -1
  %i.hg = and i64 %i.gz, %i.hf                    ; 2 uses
  %i.hh = mul i64 %i.hg, %i.fa
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr @443, i64 %i.fa
  %i.hj = load i32, ptr %i.hi, align 4, !noundef !4
  %i.hk = zext i32 %i.hj to i64
  %i.hl = add i64 %i.hh, %i.hk                    ; 4 uses
  %i.hm = add i64 %i.hl, %i.fa                    ; 3 uses
  %i.hn = icmp uge i64 %i.hm, %i.hl
  %i.ho = icmp ult i64 %i.hm, 122785
  %or.cond112 = and i1 %i.hn, %i.ho
  br i1 %or.cond112, label %bb.bg, label %bb.bf, !prof !2223

bb.bf:                                            ; preds = %bb.be
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.hl, i64 noundef %i.hm, i64 noundef 122784, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @971) #46
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.hp = getelementptr inbounds nuw i8, ptr @_ZN19brotli_decompressor10dictionary17kBrotliDictionary17h143067f04a26e6e4E, i64 %i.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.ae, i8 0, i64 38, i1 false)
  %i.hq = trunc i64 %i.he to i32
  %i.hr = call noundef i32 @_ZN19brotli_decompressor9transform23TransformDictionaryWord17he8c22d3ef35a6ad0E(ptr noalias noundef nonnull align 1 %i.ae, i64 noundef 38, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hp, i64 noundef %i.fa, i32 noundef %i.et, i32 noundef %i.hq) ; 3 uses
  %i.hs = sext i32 %i.hr to i64                   ; 5 uses
  %.not111 = icmp ult i64 %.sroa.023.1, %i.hs
  br i1 %.not111, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ht = icmp eq i64 %.sroa.023.1, 0
  br i1 %i.ht, label %bb.bp, label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.hu = trunc nuw nsw i32 %i.et to i8
  %i.hv = trunc i64 %i.he to i8
  %i.hw = trunc i32 %i.hr to i8
  %i.hx = trunc i64 %i.hg to i32
  store i32 %i.hx, ptr %i.db, align 4
  store i8 %i.hu, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.hv, ptr %.sroa.564.0..sroa_idx, align 1
  store i8 %i.hw, ptr %.sroa.665.0..sroa_idx, align 2
  store i8 0, ptr %.sroa.766.0..sroa_idx, align 1
  store i8 1, ptr %i.ad, align 8
  call fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hddadbec000589963E"(ptr noalias noundef align 8 dereferenceable(296) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.hy = sub nuw i64 %.sroa.023.1, %i.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.hz = icmp ult i32 %i.hr, 39
  br i1 %i.hz, label %bb.br, label %bb.bq, !prof !337

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, i64 noundef %.sroa.023.1)
  call void @llvm.experimental.noalias.scope.decl(metadata !9984)
  %i.ia = load i64, ptr %i.dd, align 8, !alias.scope !9984, !noalias !9987, !noundef !4
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.z, i64 24, i1 false), !noalias !9987
  store i8 0, ptr %.sroa.4.0..sroa_idx.i120, align 8, !noalias !9989
  store i8 2, ptr %i.i, align 8, !noalias !9989
  call fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hddadbec000589963E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.i), !noalias !9984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9989
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ic = load i64, ptr %i.df, align 8, !alias.scope !9984, !noalias !9987, !noundef !4
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit122, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dg, i64 24, i1 false), !noalias !9987
  store i8 0, ptr %.sroa.42.0..sroa_idx.i121, align 8, !noalias !9989
  store i8 2, ptr %i.h, align 8, !noalias !9989
  call fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hddadbec000589963E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.h), !noalias !9984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9989
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit122

_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit122: ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.ae, ptr %i.y, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.474.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %i.di, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.477.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, i64 noundef 0)
  %i.ie = call noundef zeroext i1 @"_ZN75_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha719365bd820edd4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x)
  br i1 %i.ie, label %bb.bo, label %bb.bn, !prof !337

bb.bn:                                            ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr null, ptr %i.w, align 8
  call void @_ZN4core9panicking13assert_failed17ha55082e04b90c138E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @966) #46
  unreachable

bb.bo:                                            ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h87c0e7a65203aa6cE.exit122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bh, %bb.bt
  %.sroa.023.5 = phi i64 [ %i.hy, %bb.bt ], [ 0, %bb.bh ], [ 0, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ba

bb.bq:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr @230, ptr %i.q, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 1, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 0, ptr %i.ii, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @967) #46
  unreachable

bb.br:                                            ; preds = %bb.bi
  store ptr %i.ae, ptr %i.ac, align 8
  store i64 %i.hs, ptr %.sroa.468.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.569.0..sroa_idx, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.dc, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.471.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, i64 noundef %i.hs)
  %i.ij = call noundef zeroext i1 @"_ZN75_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha719365bd820edd4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab)
  br i1 %i.ij, label %bb.bt, label %bb.bs, !prof !337

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr null, ptr %i.aa, align 8
  call void @_ZN4core9panicking13assert_failed17ha55082e04b90c138E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @968) #46
  unreachable

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.bp

bb.bu:                                            ; preds = %bb.ba
  %i.ik = add i64 %.sroa.08.0224, 1               ; 7 uses
  %i.il = icmp ugt i64 %i.dk, %i.ik
  br i1 %i.il, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.im = icmp ult i64 %i.ik, %i.dm
  br i1 %i.im, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ik, i64 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @969) #46
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ik
  %i.io = load i32, ptr %i.in, align 4, !noundef !4
end_hunk_12
begin_hunk_13_@_ZN6brotli3enc17brotli_bit_stream21process_command_queue17hea235fff7741707bE:bb.a
bb.s:                                             ; preds = %bb.p
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @960, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @961) #46
  unreachable

bb.t:                                             ; preds = %bb.p
  %i.ff = icmp eq i64 %i.ej, 0
  br i1 %i.ff, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit, %bb.t
  %.sroa.023.1 = phi i64 [ %.sroa.023.0219, %bb.t ], [ %i.gi, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit ] ; 6 uses
  %.sroa.016.2 = phi i32 [ %.sroa.016.1222, %bb.t ], [ %i.gk, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit ]
  %.sroa.04.1 = phi i64 [ %.sroa.04.0225, %bb.t ], [ %.sroa.04.2.lcssa, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit ]
  %i.fg = icmp ugt i64 %.sroa.050.0, %.sroa.0.0.i113
  br i1 %i.fg, label %bb.aw, label %bb.av

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %.sroa.037.0.copyload, ptr %i.ah, align 8
  store <2 x i64> %i.eh, ptr %.sroa.5.0..sroa_idx39, align 8
  store ptr %.sroa.643.0.copyload, ptr %.sroa.643.0..sroa_idx44, align 8
  store <2 x i64> %i.ei, ptr %.sroa.7.0..sroa_idx46, align 8
  %i.fh = zext i32 %.sroa.016.1222 to i64         ; 3 uses
  %i.fi = icmp ugt i64 %i.ej, %i.fh
  br i1 %i.fi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.v
  br i1 %.not110, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.ah
  %i.fj = phi i64 [ %i.fz, %bb.ah ], [ %i.fh, %.lr.ph ]
  %.sroa.04.2203.us = phi i64 [ %i.fq, %bb.ah ], [ %.sroa.04.0225, %.lr.ph ]
  %.sroa.023.2202.us = phi i64 [ %i.fp, %bb.ah ], [ %.sroa.023.0219, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, i64 noundef %i.fj)
  %.sroa.0.0.copyload.us = load i64, ptr %i.af, align 16 ; 2 uses
  %.sroa.6.0.copyload136.us = load i64, ptr %.sroa.6.0..sroa_idx135, align 8 ; 4 uses
  %.sroa.10.sroa.0.0.copyload260 = load i64, ptr %.sroa.10.0..sroa_idx, align 16 ; 2 uses
  %.sroa.10.sroa.9.0.copyload262 = load i64, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx261, align 8 ; 2 uses
  %.sroa.13.0.copyload.us = load i64, ptr %.sroa.13.0..sroa_idx, align 16 ; 5 uses
  %.sroa.17.0.copyload.us = load i64, ptr %.sroa.17.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 16 dereferenceable(48) %i.bz, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.fk = add i64 %.sroa.13.0.copyload.us, %.sroa.6.0.copyload136.us ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit125.us, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.us
  %i.fm = icmp eq i64 %.sroa.6.0.copyload136.us, 0 ; 2 uses
  br i1 %i.ce, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.fm, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9999
  store i64 %.sroa.0.0.copyload.us, ptr %i.cf, align 8, !noalias !10003
  store i64 %.sroa.6.0.copyload136.us, ptr %.sroa.6.0..sroa_idx141, align 8, !noalias !10003
  store i64 %.sroa.10.sroa.0.0.copyload260, ptr %.sroa.10.0..sroa_idx148, align 8, !noalias !10003
  store i8 1, ptr %.sroa.4.0..sroa_idx.i129, align 8, !noalias !9999
  store i8 2, ptr %i.c, align 8, !noalias !9999
  call fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hf4bf864d2a49dd70E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.c), !noalias !10004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9999
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fn = icmp eq i64 %.sroa.13.0.copyload.us, 0
  br i1 %i.fn, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit125.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9999
  store i64 %.sroa.10.sroa.9.0.copyload262, ptr %i.cg, align 8, !noalias !10003
  store i64 %.sroa.13.0.copyload.us, ptr %.sroa.13.24..sroa_idx153, align 8, !noalias !10003
  store i64 %.sroa.17.0.copyload.us, ptr %.sroa.17.24..sroa_idx160, align 8, !noalias !10003
  store i8 1, ptr %.sroa.42.0..sroa_idx.i130, align 8, !noalias !9999
  store i8 2, ptr %i.b, align 8, !noalias !9999
  call fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hf4bf864d2a49dd70E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.b), !noalias !10004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9999
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit125.us

bb.ab:                                            ; preds = %bb.w
  br i1 %i.fm, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10005
  store i64 %.sroa.0.0.copyload.us, ptr %i.ch, align 8, !noalias !10009
  store i64 %.sroa.6.0.copyload136.us, ptr %.sroa.6.0..sroa_idx139, align 8, !noalias !10009
  store i64 %.sroa.10.sroa.0.0.copyload260, ptr %.sroa.10.0..sroa_idx147, align 8, !noalias !10009
  store i8 0, ptr %.sroa.4.0..sroa_idx.i126, align 8, !noalias !10005
  store i8 2, ptr %i.e, align 8, !noalias !10005
  call fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hf4bf864d2a49dd70E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.e), !noalias !10010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10005
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fo = icmp eq i64 %.sroa.13.0.copyload.us, 0
  br i1 %i.fo, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit125.us, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10005
  store i64 %.sroa.10.sroa.9.0.copyload262, ptr %i.ci, align 8, !noalias !10009
  store i64 %.sroa.13.0.copyload.us, ptr %.sroa.13.24..sroa_idx151, align 8, !noalias !10009
  store i64 %.sroa.17.0.copyload.us, ptr %.sroa.17.24..sroa_idx158, align 8, !noalias !10009
  store i8 0, ptr %.sroa.42.0..sroa_idx.i127, align 8, !noalias !10005
  store i8 2, ptr %i.d, align 8, !noalias !10005
  call fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hf4bf864d2a49dd70E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.d), !noalias !10010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10005
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit125.us

_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit125.us: ; preds = %bb.ae, %bb.ad, %bb.aa, %bb.z, %.lr.ph.split.us
  %i.fp = sub i64 %.sroa.023.2202.us, %i.fk       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false)
  %i.fq = add i64 %.sroa.04.2203.us, 1            ; 7 uses
  %i.fr = icmp ugt i64 %i.ck, %i.fq
  br i1 %i.fr, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit125.us
  %i.fs = icmp ult i64 %i.fq, %i.cm
  br i1 %i.fs, label %bb.ag, label %.split.us

bb.ag:                                            ; preds = %bb.af
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.fq
  %i.fu = load i32, ptr %i.ft, align 4, !noundef !4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.fq
  %i.fw = load i8, ptr %i.fv, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10011
  store i8 %i.fw, ptr %i.cq, align 1, !noalias !10011
  store i8 0, ptr %i.cr, align 2, !noalias !10011
  store i8 4, ptr %i.a, align 8, !noalias !10011
  call fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hf4bf864d2a49dd70E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10011
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit125.us
  %.sroa.016.5.us = phi i32 [ %i.fu, %bb.ag ], [ -2147483648, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit125.us ] ; 2 uses
  %.pr.us = load i64, ptr %.sroa.7.0..sroa_idx46, align 8 ; 2 uses
  %i.fx = load i64, ptr %.sroa.5.0..sroa_idx39, align 8, !noundef !4 ; 2 uses
  %i.fy = add i64 %i.fx, %.pr.us                  ; 2 uses
  %i.fz = zext i32 %.sroa.016.5.us to i64         ; 2 uses
  %i.ga = icmp ugt i64 %i.fy, %i.fz
  br i1 %i.ga, label %.lr.ph.split.us, label %._crit_edge

._crit_edge:                                      ; preds = %bb.cl, %bb.ah, %bb.v
  %.lcssa174 = phi i64 [ %.sroa.7.0.copyload, %bb.v ], [ %.pr.us, %bb.ah ], [ %.pr, %bb.cl ] ; 3 uses
  %.sroa.023.2.lcssa = phi i64 [ %.sroa.023.0219, %bb.v ], [ %i.fp, %bb.ah ], [ %i.jj, %bb.cl ]
  %.sroa.016.3.lcssa = phi i32 [ %.sroa.016.1222, %bb.v ], [ %.sroa.016.5.us, %bb.ah ], [ %.sroa.016.5, %bb.cl ]
  %.sroa.04.2.lcssa = phi i64 [ %.sroa.04.0225, %bb.v ], [ %i.fq, %bb.ah ], [ %i.jk, %bb.cl ]
  %.lcssa169 = phi i64 [ %.sroa.5.0.copyload, %bb.v ], [ %i.fx, %bb.ah ], [ %i.jp, %bb.cl ]
  %.lcssa = phi i64 [ %i.ej, %bb.v ], [ %i.fy, %bb.ah ], [ %i.jq, %bb.cl ] ; 2 uses
  %i.gb = icmp eq i64 %.lcssa169, 0               ; 3 uses
  br i1 %.not110, label %bb.am, label %bb.ai

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.cl
  %i.gc = phi i64 [ %i.jr, %bb.cl ], [ %i.fh, %.lr.ph ]
  %.sroa.04.2203 = phi i64 [ %i.jk, %bb.cl ], [ %.sroa.04.0225, %.lr.ph ]
  %.sroa.023.2202 = phi i64 [ %i.jj, %bb.cl ], [ %.sroa.023.0219, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, i64 noundef %i.gc)
  %.sroa.6.0.copyload136 = load i64, ptr %.sroa.6.0..sroa_idx135, align 8 ; 2 uses
  %i.gd = load <2 x i64>, ptr %i.af, align 16
  %.sroa.10.sroa.0.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 16
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 16 ; 2 uses
  %i.ge = load <2 x i64>, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.17.0.copyload = load i64, ptr %.sroa.17.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 16 dereferenceable(48) %i.bz, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.gf = add i64 %.sroa.13.0.copyload, %.sroa.6.0.copyload136 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit125, label %bb.cg

bb.ai:                                            ; preds = %._crit_edge
  br i1 %i.gb, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ah, i64 24, i1 false), !noalias !10018
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10014
  store i8 2, ptr %i.o, align 8, !noalias !10014
  call fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hf4bf864d2a49dd70E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.o), !noalias !10019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10014
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gh = icmp eq i64 %.lcssa174, 0
  br i1 %i.gh, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44, i64 24, i1 false), !noalias !10018
  store i8 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !10014
  store i8 2, ptr %i.n, align 8, !noalias !10014
  call fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hf4bf864d2a49dd70E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.n), !noalias !10019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10014
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit

bb.am:                                            ; preds = %._crit_edge
  br i1 %i.ce, label %bb.an, label %bb.ar

_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit: ; preds = %bb.au, %bb.at, %bb.aq, %bb.ap, %bb.al, %bb.ak
  %i.gi = sub i64 %.sroa.023.2.lcssa, %.lcssa
  %i.gj = trunc nuw i64 %.lcssa to i32
  %i.gk = sub nuw i32 %.sroa.016.3.lcssa, %i.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.u

bb.an:                                            ; preds = %bb.am
  br i1 %i.gb, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10020
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ah, i64 24, i1 false), !noalias !10024
  store i8 0, ptr %.sroa.4.0..sroa_idx.i114, align 8, !noalias !10020
  store i8 2, ptr %i.m, align 8, !noalias !10020
  call fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hf4bf864d2a49dd70E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.m), !noalias !10025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10020
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gl = icmp eq i64 %.lcssa174, 0
  br i1 %i.gl, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10020
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44, i64 24, i1 false), !noalias !10024
  store i8 0, ptr %.sroa.42.0..sroa_idx.i115, align 8, !noalias !10020
  store i8 2, ptr %i.l, align 8, !noalias !10020
  call fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hf4bf864d2a49dd70E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.l), !noalias !10025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10020
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit

bb.ar:                                            ; preds = %bb.am
  br i1 %i.gb, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ah, i64 24, i1 false), !noalias !10030
  store i8 1, ptr %.sroa.4.0..sroa_idx.i117, align 8, !noalias !10026
  store i8 2, ptr %i.k, align 8, !noalias !10026
  call fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hf4bf864d2a49dd70E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.k), !noalias !10031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10026
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gm = icmp eq i64 %.lcssa174, 0
  br i1 %i.gm, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44, i64 24, i1 false), !noalias !10030
  store i8 1, ptr %.sroa.42.0..sroa_idx.i118, align 8, !noalias !10026
  store i8 2, ptr %i.j, align 8, !noalias !10026
  call fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hf4bf864d2a49dd70E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.j), !noalias !10031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10026
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit

bb.av:                                            ; preds = %bb.u
  %.sroa.0.0.i119 = call noundef i64 @llvm.umin.i64(i64 %i.fa, i64 %.sroa.023.1) ; 5 uses
  %i.gn = icmp eq i64 %.sroa.0.0.i119, 0
  br i1 %i.gn, label %bb.ay, label %bb.ax

bb.aw:                                            ; preds = %bb.u
  %i.go = icmp ugt i32 %i.et, 3
  br i1 %i.go, label %bb.bc, label %bb.bb, !prof !337

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.gp = trunc i64 %.sroa.050.0 to i32
  %i.gq = trunc nuw i64 %.sroa.0.0.i119 to i32
  store i32 %i.gp, ptr %i.cy, align 4
  store i32 %i.gq, ptr %i.cz, align 8
  store i8 0, ptr %i.v, align 8
  call fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hf4bf864d2a49dd70E"(ptr noalias noundef align 8 dereferenceable(920) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.ax
  %i.gr = sub nuw i64 %.sroa.023.1, %.sroa.0.0.i119 ; 2 uses
  %i.gs = icmp eq i64 %i.ev, 1
  %i.gt = icmp eq i64 %i.ew, 0
  %or.cond = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.da, ptr noundef nonnull align 4 dereferenceable(12) %i.u, i64 12, i1 false)
  %i.gu = trunc i64 %.sroa.050.0 to i32
  store i32 %i.gu, ptr %i.u, align 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.bp
  %.sroa.054.0 = phi i64 [ %i.hs, %bb.bp ], [ %.sroa.0.0.i119, %bb.ay ], [ %.sroa.0.0.i119, %bb.az ]
  %.sroa.023.4 = phi i64 [ %.sroa.023.5, %bb.bp ], [ %i.gr, %bb.ay ], [ %i.gr, %bb.az ]
  %i.gv = add i32 %.sroa.019.1221, -1             ; 2 uses
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.bu, label %bb.by

bb.bb:                                            ; preds = %bb.aw
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @962, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @963) #46
  unreachable

bb.bc:                                            ; preds = %bb.aw
  %i.gx = icmp ult i32 %i.et, 25
  br i1 %i.gx, label %bb.be, label %bb.bd, !prof !337

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @964, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @965) #46
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.gy = xor i64 %.sroa.0.0.i113, -1
  %i.gz = add i64 %.sroa.050.0, %i.gy             ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr @444, i64 %i.fa
  %i.hb = load i8, ptr %i.ha, align 1, !noundef !4
  %i.hc = and i8 %i.hb, 63
  %i.hd = zext nneg i8 %i.hc to i64               ; 2 uses
  %i.he = lshr i64 %i.gz, %i.hd                   ; 2 uses
  %notmask = shl nsw i64 -1, %i.hd
  %i.hf = xor i64 %notmask, -1
  %i.hg = and i64 %i.gz, %i.hf                    ; 2 uses
  %i.hh = mul i64 %i.hg, %i.fa
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr @443, i64 %i.fa
  %i.hj = load i32, ptr %i.hi, align 4, !noundef !4
  %i.hk = zext i32 %i.hj to i64
  %i.hl = add i64 %i.hh, %i.hk                    ; 4 uses
  %i.hm = add i64 %i.hl, %i.fa                    ; 3 uses
  %i.hn = icmp uge i64 %i.hm, %i.hl
  %i.ho = icmp ult i64 %i.hm, 122785
  %or.cond112 = and i1 %i.hn, %i.ho
  br i1 %or.cond112, label %bb.bg, label %bb.bf, !prof !2223

bb.bf:                                            ; preds = %bb.be
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.hl, i64 noundef %i.hm, i64 noundef 122784, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @971) #46
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.hp = getelementptr inbounds nuw i8, ptr @_ZN19brotli_decompressor10dictionary17kBrotliDictionary17h143067f04a26e6e4E, i64 %i.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.ae, i8 0, i64 38, i1 false)
  %i.hq = trunc i64 %i.he to i32
  %i.hr = call noundef i32 @_ZN19brotli_decompressor9transform23TransformDictionaryWord17he8c22d3ef35a6ad0E(ptr noalias noundef nonnull align 1 %i.ae, i64 noundef 38, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hp, i64 noundef %i.fa, i32 noundef %i.et, i32 noundef %i.hq) ; 3 uses
  %i.hs = sext i32 %i.hr to i64                   ; 5 uses
  %.not111 = icmp ult i64 %.sroa.023.1, %i.hs
  br i1 %.not111, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ht = icmp eq i64 %.sroa.023.1, 0
  br i1 %i.ht, label %bb.bp, label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.hu = trunc nuw nsw i32 %i.et to i8
  %i.hv = trunc i64 %i.he to i8
  %i.hw = trunc i32 %i.hr to i8
  %i.hx = trunc i64 %i.hg to i32
  store i32 %i.hx, ptr %i.db, align 4
  store i8 %i.hu, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.hv, ptr %.sroa.564.0..sroa_idx, align 1
  store i8 %i.hw, ptr %.sroa.665.0..sroa_idx, align 2
  store i8 0, ptr %.sroa.766.0..sroa_idx, align 1
  store i8 1, ptr %i.ad, align 8
  call fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hf4bf864d2a49dd70E"(ptr noalias noundef align 8 dereferenceable(920) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.hy = sub nuw i64 %.sroa.023.1, %i.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.hz = icmp ult i32 %i.hr, 39
  br i1 %i.hz, label %bb.br, label %bb.bq, !prof !337

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, i64 noundef %.sroa.023.1)
  call void @llvm.experimental.noalias.scope.decl(metadata !10032)
  %i.ia = load i64, ptr %i.dd, align 8, !alias.scope !10032, !noalias !10035, !noundef !4
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.z, i64 24, i1 false), !noalias !10035
  store i8 0, ptr %.sroa.4.0..sroa_idx.i120, align 8, !noalias !10037
  store i8 2, ptr %i.i, align 8, !noalias !10037
  call fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hf4bf864d2a49dd70E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.i), !noalias !10032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10037
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ic = load i64, ptr %i.df, align 8, !alias.scope !10032, !noalias !10035, !noundef !4
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit122, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dg, i64 24, i1 false), !noalias !10035
  store i8 0, ptr %.sroa.42.0..sroa_idx.i121, align 8, !noalias !10037
  store i8 2, ptr %i.h, align 8, !noalias !10037
  call fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hf4bf864d2a49dd70E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.h), !noalias !10032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10037
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit122

_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit122: ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.ae, ptr %i.y, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.474.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %i.di, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.477.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, i64 noundef 0)
  %i.ie = call noundef zeroext i1 @"_ZN75_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha719365bd820edd4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x)
  br i1 %i.ie, label %bb.bo, label %bb.bn, !prof !337

bb.bn:                                            ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr null, ptr %i.w, align 8
  call void @_ZN4core9panicking13assert_failed17ha55082e04b90c138E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @966) #46
  unreachable

bb.bo:                                            ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17he9e8c69418b761a3E.exit122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bh, %bb.bt
  %.sroa.023.5 = phi i64 [ %i.hy, %bb.bt ], [ 0, %bb.bh ], [ 0, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ba

bb.bq:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr @230, ptr %i.q, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 1, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 0, ptr %i.ii, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @967) #46
  unreachable

bb.br:                                            ; preds = %bb.bi
  store ptr %i.ae, ptr %i.ac, align 8
  store i64 %i.hs, ptr %.sroa.468.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.569.0..sroa_idx, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.dc, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.471.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, i64 noundef %i.hs)
  %i.ij = call noundef zeroext i1 @"_ZN75_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha719365bd820edd4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab)
  br i1 %i.ij, label %bb.bt, label %bb.bs, !prof !337

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr null, ptr %i.aa, align 8
  call void @_ZN4core9panicking13assert_failed17ha55082e04b90c138E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @968) #46
  unreachable

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.bp

bb.bu:                                            ; preds = %bb.ba
  %i.ik = add i64 %.sroa.08.0224, 1               ; 7 uses
  %i.il = icmp ugt i64 %i.dk, %i.ik
  br i1 %i.il, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.im = icmp ult i64 %i.ik, %i.dm
  br i1 %i.im, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ik, i64 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @969) #46
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ik
  %i.io = load i32, ptr %i.in, align 4, !noundef !4
end_hunk_13
begin_hunk_14_@_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17h9537dc85f6507ba5E:bb.a
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4
  %i.bx = add i64 %i.h, 1
  %exitcond49.not = icmp eq i64 %i.h, %2
  br i1 %exitcond49.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc26compress_fragment_two_pass26compress_fragment_two_pass17h8b6af29289feb42eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noalias noundef nonnull align 4 %4, i64 noundef %5, ptr noalias noundef nonnull align 1 %6, i64 noundef %7, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef %10, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [8 x i8], align 8                 ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [8 x i8], align 8                ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 6 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [8 x i8], align 8                ; 5 uses
  %i.af = alloca [8 x i8], align 8                ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 5 uses
  %i.aj = alloca [8 x i8], align 8                ; 6 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [8 x i8], align 8                ; 5 uses
  %i.an = alloca [8 x i8], align 8                ; 6 uses
  %i.ao = load i64, ptr %11, align 8, !noundef !4 ; 2 uses
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %10, i1 false)
  switch i64 %i.ap, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36 [
    i64 55, label %.preheader
    i64 54, label %.preheader1
    i64 53, label %.preheader3
    i64 52, label %.preheader5
    i64 51, label %.preheader7
    i64 50, label %.preheader9
    i64 49, label %.preheader11
    i64 48, label %.preheader13
    i64 47, label %.preheader15
    i64 46, label %.preheader17
  ]

.preheader17:                                     ; preds = %bb.a
  %.not.i29 = icmp eq i64 %2, 0
  br i1 %.not.i29, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  br label %bb.bd

.preheader15:                                     ; preds = %bb.a
  %.not.i332 = icmp eq i64 %2, 0
  br i1 %.not.i332, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %.lr.ph35

.lr.ph35:                                         ; preds = %.preheader15
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  br label %bb.ax

.preheader13:                                     ; preds = %bb.a
  %.not.i736 = icmp eq i64 %2, 0
  br i1 %.not.i736, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %.lr.ph39

.lr.ph39:                                         ; preds = %.preheader13
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %bb.ar

.preheader11:                                     ; preds = %bb.a
  %.not.i1140 = icmp eq i64 %2, 0
  br i1 %.not.i1140, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %bb.al

.preheader9:                                      ; preds = %bb.a
  %.not.i1544 = icmp eq i64 %2, 0
  br i1 %.not.i1544, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %.lr.ph47

.lr.ph47:                                         ; preds = %.preheader9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  br label %bb.af

.preheader7:                                      ; preds = %bb.a
  %.not.i1948 = icmp eq i64 %2, 0
  br i1 %.not.i1948, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %.lr.ph51

.lr.ph51:                                         ; preds = %.preheader7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.z

.preheader5:                                      ; preds = %bb.a
  %.not.i2352 = icmp eq i64 %2, 0
  br i1 %.not.i2352, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %.lr.ph55

.lr.ph55:                                         ; preds = %.preheader5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %bb.t

.preheader3:                                      ; preds = %bb.a
  %.not.i2756 = icmp eq i64 %2, 0
  br i1 %.not.i2756, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %.lr.ph59

.lr.ph59:                                         ; preds = %.preheader3
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.n

.preheader1:                                      ; preds = %bb.a
  %.not.i3160 = icmp eq i64 %2, 0
  br i1 %.not.i3160, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.h

.preheader:                                       ; preds = %bb.a
  %.not.i3564 = icmp eq i64 %2, 0
  br i1 %.not.i3564, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %.lr.ph67

.lr.ph67:                                         ; preds = %.preheader
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %bb.g
  %.sroa.0.0.i3466 = phi i64 [ %2, %.lr.ph67 ], [ %i.bs, %bb.g ] ; 3 uses
  %.sroa.04.0.i3365 = phi i64 [ 0, %.lr.ph67 ], [ %i.br, %bb.g ] ; 6 uses
  %.sroa.0.0.i37 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i3466, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11386
  store i64 0, ptr %i.d, align 8, !noalias !11386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11386
  store i64 0, ptr %i.c, align 8, !noalias !11386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11386
  store ptr %6, ptr %i.b, align 8, !noalias !11386
  store i64 %7, ptr %i.bi, align 8, !noalias !11386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11386
  store ptr %4, ptr %i.a, align 8, !noalias !11386
  store i64 %5, ptr %i.bj, align 8, !noalias !11386
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i3365, i64 noundef %.sroa.0.0.i37, i64 noundef %.sroa.0.0.i3466, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 8, i64 noundef 4, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11386
  %i.bk = icmp ugt i64 %.sroa.04.0.i3365, %1
  br i1 %i.bk, label %bb.d, label %bb.c, !prof !282

bb.c:                                             ; preds = %bb.b
  %i.bl = sub nuw i64 %1, %.sroa.04.0.i3365       ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i3365 ; 2 uses
  %i.bn = load i64, ptr %i.d, align 8, !noalias !11386, !noundef !4
  %i.bo = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bm, i64 noundef %i.bl, i64 noundef %.sroa.0.0.i37, i64 noundef %i.bn)
  br i1 %i.bo, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i3365, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1157) #46
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i37, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.bp = load i64, ptr %i.d, align 8, !noalias !11386, !noundef !4
  %i.bq = load i64, ptr %i.c, align 8, !noalias !11386, !noundef !4
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17h9537dc85f6507ba5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.bp, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.bq, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bm, i64 noundef %i.bl, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.br = add i64 %.sroa.0.0.i37, %.sroa.04.0.i3365
  %i.bs = sub nuw i64 %.sroa.0.0.i3466, %.sroa.0.0.i37 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11386
  %.not.i35 = icmp eq i64 %i.bs, 0
  br i1 %.not.i35, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %bb.b

bb.h:                                             ; preds = %.lr.ph63, %bb.m
  %.sroa.0.0.i3062 = phi i64 [ %2, %.lr.ph63 ], [ %i.cb, %bb.m ] ; 3 uses
  %.sroa.04.0.i2961 = phi i64 [ 0, %.lr.ph63 ], [ %i.ca, %bb.m ] ; 6 uses
  %.sroa.0.0.i38 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i3062, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11395
  store i64 0, ptr %i.h, align 8, !noalias !11395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11395
  store i64 0, ptr %i.g, align 8, !noalias !11395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11395
  store ptr %6, ptr %i.f, align 8, !noalias !11395
  store i64 %7, ptr %i.bg, align 8, !noalias !11395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11395
  store ptr %4, ptr %i.e, align 8, !noalias !11395
  store i64 %5, ptr %i.bh, align 8, !noalias !11395
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i2961, i64 noundef %.sroa.0.0.i38, i64 noundef %.sroa.0.0.i3062, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 9, i64 noundef 4, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11395
  %i.bt = icmp ugt i64 %.sroa.04.0.i2961, %1
  br i1 %i.bt, label %bb.j, label %bb.i, !prof !282

bb.i:                                             ; preds = %bb.h
  %i.bu = sub nuw i64 %1, %.sroa.04.0.i2961       ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i2961 ; 2 uses
  %i.bw = load i64, ptr %i.h, align 8, !noalias !11395, !noundef !4
  %i.bx = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.bu, i64 noundef %.sroa.0.0.i38, i64 noundef %i.bw)
  br i1 %i.bx, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i2961, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1157) #46
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i38, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.by = load i64, ptr %i.h, align 8, !noalias !11395, !noundef !4
  %i.bz = load i64, ptr %i.g, align 8, !noalias !11395, !noundef !4
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17h9537dc85f6507ba5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.by, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.bz, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.bu, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ca = add i64 %.sroa.0.0.i38, %.sroa.04.0.i2961
  %i.cb = sub nuw i64 %.sroa.0.0.i3062, %.sroa.0.0.i38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11395
  %.not.i31 = icmp eq i64 %i.cb, 0
  br i1 %.not.i31, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %bb.h

bb.n:                                             ; preds = %.lr.ph59, %bb.s
  %.sroa.0.0.i2658 = phi i64 [ %2, %.lr.ph59 ], [ %i.ck, %bb.s ] ; 3 uses
  %.sroa.04.0.i2557 = phi i64 [ 0, %.lr.ph59 ], [ %i.cj, %bb.s ] ; 6 uses
  %.sroa.0.0.i39 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i2658, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11404
  store i64 0, ptr %i.l, align 8, !noalias !11404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !11404
  store i64 0, ptr %i.k, align 8, !noalias !11404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11404
  store ptr %6, ptr %i.j, align 8, !noalias !11404
  store i64 %7, ptr %i.be, align 8, !noalias !11404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11404
  store ptr %4, ptr %i.i, align 8, !noalias !11404
  store i64 %5, ptr %i.bf, align 8, !noalias !11404
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i2557, i64 noundef %.sroa.0.0.i39, i64 noundef %.sroa.0.0.i2658, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 10, i64 noundef 4, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11404
  %i.cc = icmp ugt i64 %.sroa.04.0.i2557, %1
  br i1 %i.cc, label %bb.p, label %bb.o, !prof !282

bb.o:                                             ; preds = %bb.n
  %i.cd = sub nuw i64 %1, %.sroa.04.0.i2557       ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i2557 ; 2 uses
  %i.cf = load i64, ptr %i.l, align 8, !noalias !11404, !noundef !4
  %i.cg = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ce, i64 noundef %i.cd, i64 noundef %.sroa.0.0.i39, i64 noundef %i.cf)
  br i1 %i.cg, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i2557, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1157) #46
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i39, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.ch = load i64, ptr %i.l, align 8, !noalias !11404, !noundef !4
  %i.ci = load i64, ptr %i.k, align 8, !noalias !11404, !noundef !4
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17h9537dc85f6507ba5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.ch, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ce, i64 noundef %i.cd, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cj = add i64 %.sroa.0.0.i39, %.sroa.04.0.i2557
  %i.ck = sub nuw i64 %.sroa.0.0.i2658, %.sroa.0.0.i39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11404
  %.not.i27 = icmp eq i64 %i.ck, 0
  br i1 %.not.i27, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %bb.n

bb.t:                                             ; preds = %.lr.ph55, %bb.y
  %.sroa.0.0.i2254 = phi i64 [ %2, %.lr.ph55 ], [ %i.ct, %bb.y ] ; 3 uses
  %.sroa.04.0.i2153 = phi i64 [ 0, %.lr.ph55 ], [ %i.cs, %bb.y ] ; 6 uses
  %.sroa.0.0.i40 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i2254, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !11413
  store i64 0, ptr %i.p, align 8, !noalias !11413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11413
  store i64 0, ptr %i.o, align 8, !noalias !11413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11413
  store ptr %6, ptr %i.n, align 8, !noalias !11413
  store i64 %7, ptr %i.bc, align 8, !noalias !11413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11413
  store ptr %4, ptr %i.m, align 8, !noalias !11413
  store i64 %5, ptr %i.bd, align 8, !noalias !11413
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i2153, i64 noundef %.sroa.0.0.i40, i64 noundef %.sroa.0.0.i2254, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 11, i64 noundef 4, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11413
  %i.cl = icmp ugt i64 %.sroa.04.0.i2153, %1
  br i1 %i.cl, label %bb.v, label %bb.u, !prof !282

bb.u:                                             ; preds = %bb.t
  %i.cm = sub nuw i64 %1, %.sroa.04.0.i2153       ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i2153 ; 2 uses
  %i.co = load i64, ptr %i.p, align 8, !noalias !11413, !noundef !4
  %i.cp = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cn, i64 noundef %i.cm, i64 noundef %.sroa.0.0.i40, i64 noundef %i.co)
  br i1 %i.cp, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i2153, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1157) #46
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i40, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.cq = load i64, ptr %i.p, align 8, !noalias !11413, !noundef !4
  %i.cr = load i64, ptr %i.o, align 8, !noalias !11413, !noundef !4
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17h9537dc85f6507ba5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.cq, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.cr, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cn, i64 noundef %i.cm, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cs = add i64 %.sroa.0.0.i40, %.sroa.04.0.i2153
  %i.ct = sub nuw i64 %.sroa.0.0.i2254, %.sroa.0.0.i40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11413
  %.not.i23 = icmp eq i64 %i.ct, 0
  br i1 %.not.i23, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %bb.t

bb.z:                                             ; preds = %.lr.ph51, %bb.ae
  %.sroa.0.0.i1850 = phi i64 [ %2, %.lr.ph51 ], [ %i.dc, %bb.ae ] ; 3 uses
  %.sroa.04.0.i1749 = phi i64 [ 0, %.lr.ph51 ], [ %i.db, %bb.ae ] ; 6 uses
  %.sroa.0.0.i41 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i1850, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !11422
  store i64 0, ptr %i.t, align 8, !noalias !11422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !11422
  store i64 0, ptr %i.s, align 8, !noalias !11422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !11422
  store ptr %6, ptr %i.r, align 8, !noalias !11422
  store i64 %7, ptr %i.ba, align 8, !noalias !11422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !11422
  store ptr %4, ptr %i.q, align 8, !noalias !11422
  store i64 %5, ptr %i.bb, align 8, !noalias !11422
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i1749, i64 noundef %.sroa.0.0.i41, i64 noundef %.sroa.0.0.i1850, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 12, i64 noundef 4, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11422
  %i.cu = icmp ugt i64 %.sroa.04.0.i1749, %1
  br i1 %i.cu, label %bb.ab, label %bb.aa, !prof !282

bb.aa:                                            ; preds = %bb.z
  %i.cv = sub nuw i64 %1, %.sroa.04.0.i1749       ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i1749 ; 2 uses
  %i.cx = load i64, ptr %i.t, align 8, !noalias !11422, !noundef !4
  %i.cy = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cw, i64 noundef %i.cv, i64 noundef %.sroa.0.0.i41, i64 noundef %i.cx)
  br i1 %i.cy, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.z
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i1749, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1157) #46
  unreachable

bb.ac:                                            ; preds = %bb.aa
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i41, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.cz = load i64, ptr %i.t, align 8, !noalias !11422, !noundef !4
  %i.da = load i64, ptr %i.s, align 8, !noalias !11422, !noundef !4
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17h9537dc85f6507ba5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.da, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cw, i64 noundef %i.cv, i64 noundef %.sroa.0.0.i41, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.db = add i64 %.sroa.0.0.i41, %.sroa.04.0.i1749
  %i.dc = sub nuw i64 %.sroa.0.0.i1850, %.sroa.0.0.i41 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !11422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !11422
  %.not.i19 = icmp eq i64 %i.dc, 0
  br i1 %.not.i19, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %bb.z

bb.af:                                            ; preds = %.lr.ph47, %bb.ak
  %.sroa.0.0.i1446 = phi i64 [ %2, %.lr.ph47 ], [ %i.dl, %bb.ak ] ; 3 uses
  %.sroa.04.0.i1345 = phi i64 [ 0, %.lr.ph47 ], [ %i.dk, %bb.ak ] ; 6 uses
  %.sroa.0.0.i42 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i1446, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !11431
  store i64 0, ptr %i.x, align 8, !noalias !11431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !11431
  store i64 0, ptr %i.w, align 8, !noalias !11431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !11431
  store ptr %6, ptr %i.v, align 8, !noalias !11431
  store i64 %7, ptr %i.ay, align 8, !noalias !11431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !11431
  store ptr %4, ptr %i.u, align 8, !noalias !11431
  store i64 %5, ptr %i.az, align 8, !noalias !11431
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i1345, i64 noundef %.sroa.0.0.i42, i64 noundef %.sroa.0.0.i1446, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 13, i64 noundef 4, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !11431
  %i.dd = icmp ugt i64 %.sroa.04.0.i1345, %1
  br i1 %i.dd, label %bb.ah, label %bb.ag, !prof !282

bb.ag:                                            ; preds = %bb.af
  %i.de = sub nuw i64 %1, %.sroa.04.0.i1345       ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i1345 ; 2 uses
  %i.dg = load i64, ptr %i.x, align 8, !noalias !11431, !noundef !4
  %i.dh = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.df, i64 noundef %i.de, i64 noundef %.sroa.0.0.i42, i64 noundef %i.dg)
  br i1 %i.dh, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.af
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i1345, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1157) #46
  unreachable

bb.ai:                                            ; preds = %bb.ag
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i42, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.di = load i64, ptr %i.x, align 8, !noalias !11431, !noundef !4
  %i.dj = load i64, ptr %i.w, align 8, !noalias !11431, !noundef !4
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17h9537dc85f6507ba5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.di, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.dj, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.df, i64 noundef %i.de, i64 noundef %.sroa.0.0.i42, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dk = add i64 %.sroa.0.0.i42, %.sroa.04.0.i1345
  %i.dl = sub nuw i64 %.sroa.0.0.i1446, %.sroa.0.0.i42 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !11431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !11431
  %.not.i15 = icmp eq i64 %i.dl, 0
  br i1 %.not.i15, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %bb.af

bb.al:                                            ; preds = %.lr.ph43, %bb.aq
  %.sroa.0.0.i1042 = phi i64 [ %2, %.lr.ph43 ], [ %i.du, %bb.aq ] ; 3 uses
  %.sroa.04.0.i941 = phi i64 [ 0, %.lr.ph43 ], [ %i.dt, %bb.aq ] ; 6 uses
  %.sroa.0.0.i43 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i1042, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !11440
  store i64 0, ptr %i.ab, align 8, !noalias !11440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !11440
  store i64 0, ptr %i.aa, align 8, !noalias !11440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !11440
  store ptr %6, ptr %i.z, align 8, !noalias !11440
  store i64 %7, ptr %i.aw, align 8, !noalias !11440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !11440
  store ptr %4, ptr %i.y, align 8, !noalias !11440
  store i64 %5, ptr %i.ax, align 8, !noalias !11440
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i941, i64 noundef %.sroa.0.0.i43, i64 noundef %.sroa.0.0.i1042, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 14, i64 noundef 4, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !11440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !11440
  %i.dm = icmp ugt i64 %.sroa.04.0.i941, %1
  br i1 %i.dm, label %bb.an, label %bb.am, !prof !282

bb.am:                                            ; preds = %bb.al
  %i.dn = sub nuw i64 %1, %.sroa.04.0.i941        ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i941 ; 2 uses
  %i.dp = load i64, ptr %i.ab, align 8, !noalias !11440, !noundef !4
  %i.dq = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.do, i64 noundef %i.dn, i64 noundef %.sroa.0.0.i43, i64 noundef %i.dp)
  br i1 %i.dq, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.al
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i941, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1157) #46
  unreachable

bb.ao:                                            ; preds = %bb.am
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i43, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.dr = load i64, ptr %i.ab, align 8, !noalias !11440, !noundef !4
  %i.ds = load i64, ptr %i.aa, align 8, !noalias !11440, !noundef !4
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17h9537dc85f6507ba5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.dr, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.ds, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.do, i64 noundef %i.dn, i64 noundef %.sroa.0.0.i43, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dt = add i64 %.sroa.0.0.i43, %.sroa.04.0.i941
  %i.du = sub nuw i64 %.sroa.0.0.i1042, %.sroa.0.0.i43 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !11440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !11440
  %.not.i11 = icmp eq i64 %i.du, 0
  br i1 %.not.i11, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %bb.al

bb.ar:                                            ; preds = %.lr.ph39, %bb.aw
  %.sroa.0.0.i638 = phi i64 [ %2, %.lr.ph39 ], [ %i.ed, %bb.aw ] ; 3 uses
  %.sroa.04.0.i537 = phi i64 [ 0, %.lr.ph39 ], [ %i.ec, %bb.aw ] ; 6 uses
  %.sroa.0.0.i44 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i638, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !11449
  store i64 0, ptr %i.af, align 8, !noalias !11449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !11449
  store i64 0, ptr %i.ae, align 8, !noalias !11449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !11449
  store ptr %6, ptr %i.ad, align 8, !noalias !11449
  store i64 %7, ptr %i.au, align 8, !noalias !11449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !11449
  store ptr %4, ptr %i.ac, align 8, !noalias !11449
  store i64 %5, ptr %i.av, align 8, !noalias !11449
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i537, i64 noundef %.sroa.0.0.i44, i64 noundef %.sroa.0.0.i638, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 15, i64 noundef 6, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !11449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !11449
  %i.dv = icmp ugt i64 %.sroa.04.0.i537, %1
  br i1 %i.dv, label %bb.at, label %bb.as, !prof !282

bb.as:                                            ; preds = %bb.ar
  %i.dw = sub nuw i64 %1, %.sroa.04.0.i537        ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i537 ; 2 uses
  %i.dy = load i64, ptr %i.af, align 8, !noalias !11449, !noundef !4
  %i.dz = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dx, i64 noundef %i.dw, i64 noundef %.sroa.0.0.i44, i64 noundef %i.dy)
  br i1 %i.dz, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.ar
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i537, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1157) #46
  unreachable

bb.au:                                            ; preds = %bb.as
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i44, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.ea = load i64, ptr %i.af, align 8, !noalias !11449, !noundef !4
  %i.eb = load i64, ptr %i.ae, align 8, !noalias !11449, !noundef !4
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17h9537dc85f6507ba5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.ea, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.eb, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.aw

bb.av:                                            ; preds = %bb.as
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dx, i64 noundef %i.dw, i64 noundef %.sroa.0.0.i44, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ec = add i64 %.sroa.0.0.i44, %.sroa.04.0.i537
  %i.ed = sub nuw i64 %.sroa.0.0.i638, %.sroa.0.0.i44 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !11449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !11449
  %.not.i7 = icmp eq i64 %i.ed, 0
  br i1 %.not.i7, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %bb.ar

bb.ax:                                            ; preds = %.lr.ph35, %bb.bc
  %.sroa.0.0.i234 = phi i64 [ %2, %.lr.ph35 ], [ %i.em, %bb.bc ] ; 3 uses
  %.sroa.04.0.i133 = phi i64 [ 0, %.lr.ph35 ], [ %i.el, %bb.bc ] ; 6 uses
  %.sroa.0.0.i45 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i234, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !11458
  store i64 0, ptr %i.aj, align 8, !noalias !11458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !11458
  store i64 0, ptr %i.ai, align 8, !noalias !11458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !11458
  store ptr %6, ptr %i.ah, align 8, !noalias !11458
  store i64 %7, ptr %i.as, align 8, !noalias !11458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !11458
  store ptr %4, ptr %i.ag, align 8, !noalias !11458
  store i64 %5, ptr %i.at, align 8, !noalias !11458
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i133, i64 noundef %.sroa.0.0.i45, i64 noundef %.sroa.0.0.i234, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 16, i64 noundef 6, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !11458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !11458
  %i.ee = icmp ugt i64 %.sroa.04.0.i133, %1
  br i1 %i.ee, label %bb.az, label %bb.ay, !prof !282

bb.ay:                                            ; preds = %bb.ax
  %i.ef = sub nuw i64 %1, %.sroa.04.0.i133        ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i133 ; 2 uses
  %i.eh = load i64, ptr %i.aj, align 8, !noalias !11458, !noundef !4
  %i.ei = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.eg, i64 noundef %i.ef, i64 noundef %.sroa.0.0.i45, i64 noundef %i.eh)
  br i1 %i.ei, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.ax
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i133, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1157) #46
  unreachable

bb.ba:                                            ; preds = %bb.ay
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i45, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.ej = load i64, ptr %i.aj, align 8, !noalias !11458, !noundef !4
  %i.ek = load i64, ptr %i.ai, align 8, !noalias !11458, !noundef !4
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17h9537dc85f6507ba5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.ej, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.ek, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ay
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.eg, i64 noundef %i.ef, i64 noundef %.sroa.0.0.i45, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.el = add i64 %.sroa.0.0.i45, %.sroa.04.0.i133
  %i.em = sub nuw i64 %.sroa.0.0.i234, %.sroa.0.0.i45 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !11458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !11458
  %.not.i3 = icmp eq i64 %i.em, 0
  br i1 %.not.i3, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %bb.ax

bb.bd:                                            ; preds = %.lr.ph, %bb.bi
  %.sroa.0.0.i31 = phi i64 [ %2, %.lr.ph ], [ %i.ev, %bb.bi ] ; 3 uses
  %.sroa.04.0.i30 = phi i64 [ 0, %.lr.ph ], [ %i.eu, %bb.bi ] ; 6 uses
  %.sroa.0.0.i46 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i31, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !11467
  store i64 0, ptr %i.an, align 8, !noalias !11467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !11467
  store i64 0, ptr %i.am, align 8, !noalias !11467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !11467
  store ptr %6, ptr %i.al, align 8, !noalias !11467
  store i64 %7, ptr %i.aq, align 8, !noalias !11467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !11467
  store ptr %4, ptr %i.ak, align 8, !noalias !11467
  store i64 %5, ptr %i.ar, align 8, !noalias !11467
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i30, i64 noundef %.sroa.0.0.i46, i64 noundef %.sroa.0.0.i31, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 17, i64 noundef 6, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !11467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !11467
  %i.en = icmp ugt i64 %.sroa.04.0.i30, %1
  br i1 %i.en, label %bb.bf, label %bb.be, !prof !282

bb.be:                                            ; preds = %bb.bd
  %i.eo = sub nuw i64 %1, %.sroa.04.0.i30         ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i30 ; 2 uses
  %i.eq = load i64, ptr %i.an, align 8, !noalias !11467, !noundef !4
  %i.er = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ep, i64 noundef %i.eo, i64 noundef %.sroa.0.0.i46, i64 noundef %i.eq)
  br i1 %i.er, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i30, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1157) #46
  unreachable

bb.bg:                                            ; preds = %bb.be
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i46, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.es = load i64, ptr %i.an, align 8, !noalias !11467, !noundef !4
  %i.et = load i64, ptr %i.am, align 8, !noalias !11467, !noundef !4
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17h9537dc85f6507ba5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.es, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.et, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.bi

bb.bh:                                            ; preds = %bb.be
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ep, i64 noundef %i.eo, i64 noundef %.sroa.0.0.i46, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.eu = add i64 %.sroa.0.0.i46, %.sroa.04.0.i30
  %i.ev = sub nuw i64 %.sroa.0.0.i31, %.sroa.0.0.i46 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !11467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !11467
  %.not.i = icmp eq i64 %i.ev, 0
  br i1 %.not.i, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, label %bb.bd

_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36: ; preds = %bb.bi, %bb.bc, %bb.aw, %bb.aq, %bb.ak, %bb.ae, %bb.y, %bb.s, %bb.m, %bb.g, %.preheader17, %.preheader15, %.preheader13, %.preheader11, %.preheader9, %.preheader7, %.preheader5, %.preheader3, %.preheader1, %.preheader, %bb.a
  %i.ew = load i64, ptr %11, align 8, !noundef !4
  %i.ex = sub i64 %i.ew, %i.ao
  %i.ey = shl i64 %2, 3
  %i.ez = add i64 %i.ey, 31
  %i.fa = icmp ugt i64 %i.ex, %i.ez
  br i1 %i.fa, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36
  call void @_ZN6brotli3enc26compress_fragment_two_pass17RewindBitPosition17hee65fa66ffec5be7E(i64 noundef %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h8e8179a20c9b9d35E.exit36, %bb.bj
  br i1 %3, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bm, %bb.bk
  ret void

bb.bm:                                            ; preds = %bb.bk
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.fb = load i64, ptr %11, align 8, !noundef !4
  %i.fc = add i64 %i.fb, 7
  %i.fd = and i64 %i.fc, 4294967288
  store i64 %i.fd, ptr %11, align 8
  br label %bb.bl
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc6encode12InitializeH617h2339958f2d379adaE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = and i32 %i.b, 63
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.f = load i32, ptr %i.e, align 4, !noundef !4 ; 4 uses
  %i.g = and i32 %i.f, 63                         ; 3 uses
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = shl nuw i64 1, %i.h                      ; 2 uses
  %i.j = shl i64 %i.i, %i.d                       ; 5 uses
  %i.k = shl i64 %i.j, 2                          ; 5 uses
  %i.l = icmp ugt i64 %i.j, 4611686018427387903
  %i.m = icmp ugt i64 %i.k, 9223372036854775804
  %or.cond.i.i.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !1121

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !11476
  %i.o = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !11476 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = ptrtoint ptr %i.o to i64
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit"

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 4, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !11481
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.c
  %.sroa.10.0.i.i = phi i64 [ %i.q, %bb.c ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ]
  %i.r = inttoptr i64 %.sroa.10.0.i.i to ptr      ; 3 uses
  %i.s = icmp samesign ult i64 %i.j, 2305843009213693952
  tail call void @llvm.assume(i1 %i.s)
  %i.t = shl i64 2, %i.h                          ; 3 uses
  %i.u = icmp eq i32 %i.g, 63
  %i.v = icmp ugt i64 %i.t, 9223372036854775806
  %or.cond.i.i.i.i23 = or i1 %i.u, %i.v
  br i1 %or.cond.i.i.i.i23, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i24, !prof !1121

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i24: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !11482
  %i.w = tail call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.t, i64 noundef range(i64 1, -9223372036854775807) 2) #45, !noalias !11482 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i24, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit"
  %.sroa.4.0.ph.i.i26 = phi i64 [ 2, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i24 ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i26, i64 %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = icmp eq i64 %i.j, 0
  br i1 %i.z, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef %i.k, i64 noundef 4) #45
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit"

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i24
  %i.aa = icmp samesign ult i32 %i.g, 62
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ac = load i32, ptr %i.ab, align 4, !noundef !4 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  %. = select i1 %i.ad, i32 540, i32 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.06.0.copyload = load i32, ptr %i.ae, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.410.0.copyload = load i32, ptr %.sroa.410.0..sroa_idx, align 4 ; 2 uses
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.512.0.copyload = load i64, ptr %.sroa.512.0..sroa_idx, align 8
  %i.af = and i32 %i.f, 31
  %i.ag = shl nuw i32 1, %i.af
  %notmask = shl nsw i64 -1, %i.d
  %i.ah = trunc i64 %notmask to i32
  %i.ai = xor i32 %i.ah, -1
  %.neg = mul i32 %.sroa.410.0.copyload, 56
  %i.aj = and i32 %.neg, 56
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = lshr i64 -1, %i.ak
  %i.am = sub i32 64, %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.an, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.06.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.0.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.f, ptr %.sroa.7.sroa.0.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.7.sroa.0.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.b, ptr %.sroa.7.sroa.0.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.0.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.410.0.copyload, ptr %.sroa.7.sroa.0.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.512.0.copyload, ptr %.sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store i32 1, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.al, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.am, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.ag, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx, align 4
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.ai, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.b, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %., ptr %.sroa.9.0..sroa_idx, align 8
  store i64 8, ptr %0, align 8
  ret void

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %bb.f
  resume { ptr, i32 } %i.y
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc6encode12hasher_setup17h216158525b9a03eeE(ptr noalias noundef nonnull align 8 dereferenceable(120) %0, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i64 noundef range(i64 0, 4294967296) %6, i1 noundef zeroext %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 86 uses
  %i.b = icmp eq i64 %5, 0
  %i.c = load i64, ptr %0, align 8, !range !3411, !noundef !4
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.e, label %bb.ap

bb.d:                                             ; preds = %bb.b
  %i.e = tail call fastcc noundef zeroext i1 @"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17hd450f9d9dde91f54E"(ptr noalias noundef align 8 dereferenceable(120) %0, i1 noundef zeroext %7, i64 noundef %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  br i1 %i.e, label %bb.al, label %bb.aq

bb.e:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN6brotli3enc6encode12ChooseHasher17hbdc88c51e80d42b4E(ptr noalias noundef nonnull align 8 dereferenceable(112) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11490)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 11 uses
  %i.g = load i32, ptr %i.f, align 8, !alias.scope !11490, !noalias !11487, !noundef !4
  switch i32 %i.g, label %bb.ak [
    i32 2, label %bb.f
end_hunk_14
begin_hunk_15_@"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$20compress_stream_fast17h7c30335cc7899e40E":bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4736
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 5504
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4992
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 5520 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 124
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %bb.u, %bb.m
  %.ph278 = phi i64 [ %i.bu, %bb.u ], [ %.promoted192, %bb.m ] ; 9 uses
  %.ph279 = phi i64 [ %i.bv, %bb.u ], [ %i.h, %bb.m ] ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %bb.n
  %i.bk = invoke fastcc noundef zeroext i1 @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$27inject_flush_or_push_output17hc8af9be3c325611bE"(ptr noalias noundef align 8 dereferenceable(5584) %0, ptr noalias noundef align 8 dereferenceable(8) %6, ptr noalias noundef nonnull align 1 %7, i64 noundef %8, ptr noalias noundef align 8 dereferenceable(8) %9, ptr noalias noundef align 8 dereferenceable(16) %10)
          to label %bb.n unwind label %.loopexit.loopexit

bb.n:                                             ; preds = %.backedge
  br i1 %i.bk, label %.backedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %i.aq, align 8, !noundef !4
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.p, label %bb.ao

bb.p:                                             ; preds = %bb.o
  %i.bn = load i32, ptr %i.ar, align 8, !range !5152, !noundef !4
  %i.bo = icmp ne i32 %i.bn, 0
  %i.bp = icmp eq i64 %.ph279, 0                  ; 2 uses
  %or.cond4 = and i1 %i.as, %i.bp
  %or.cond193 = select i1 %i.bo, i1 true, i1 %or.cond4
  br i1 %or.cond193, label %bb.ao, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.i123 = call noundef i64 @llvm.umin.i64(i64 %.ph279, i64 %i.g) ; 6 uses
  %i.bq = icmp ule i64 %.ph279, %i.g              ; 2 uses
  %.sroa.06.0 = and i1 %i.at, %i.bq               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.br = load i8, ptr %i.au, align 2, !noundef !4
  %i.bs = zext i8 %i.br to i64
  store i64 %i.bs, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %or.cond = and i1 %i.av, %i.bp
  br i1 %or.cond, label %.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.sroa.09.0 = phi i1 [ %i.av, %bb.r ], [ false, %bb.q ]
  %.sroa.011.0.in = shl i64 %.sroa.0.0.i123, 1
  %.sroa.011.0 = add i64 %.sroa.011.0.in, 503     ; 8 uses
  %i.bt = load i64, ptr %6, align 8, !noundef !4  ; 2 uses
  %.not = icmp ugt i64 %.sroa.011.0, %i.bt        ; 2 uses
  br i1 %.not, label %bb.v, label %bb.y

bb.t:                                             ; preds = %condstore.split
  %spec.select = select i1 %.sroa.06.0, i32 2, i32 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.t
  %spec.select.sink = phi i32 [ %spec.select, %bb.t ], [ 1, %bb.r ]
  %.ph = phi i64 [ %i.dc, %bb.t ], [ %.ph278, %bb.r ]
  %.ph275 = phi i64 [ %i.dd, %bb.t ], [ 0, %bb.r ]
  store i32 %spec.select.sink, ptr %i.ar, align 8
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %condstore.split
  %i.bu = phi i64 [ %i.dc, %condstore.split ], [ %.ph, %.sink.split ]
  %i.bv = phi i64 [ %i.dd, %condstore.split ], [ %.ph275, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.backedge.outer

bb.v:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !11627)
  %i.bw = load i64, ptr %i.aw, align 8, !alias.scope !11627, !noundef !4
  %i.bx = icmp ult i64 %i.bw, %.sroa.011.0
  %.val63.pre = load ptr, ptr %i.ax, align 8      ; 2 uses
  %.val64.pre = load i64, ptr %i.ay, align 8      ; 3 uses
  br i1 %i.bx, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  store ptr inttoptr (i64 1 to ptr), ptr %i.ax, align 8, !alias.scope !11627
  store i64 0, ptr %i.ay, align 8, !alias.scope !11627
  %i.by = icmp eq i64 %.val64.pre, 0
  br i1 %i.by, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.w
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %.val63.pre, i64 noundef %.val64.pre, i64 noundef 1) #45, !noalias !11627
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.w
  %i.bz = icmp slt i64 %.sroa.011.0, 0
  br i1 %i.bz, label %bb.x, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !1121

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !11630
  %i.ca = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %.sroa.011.0, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !11630 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.x, label %.thread242

bb.x:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i"
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.011.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc124 unwind label %.loopexit.split-lp

.noexc124:                                        ; preds = %bb.x
  unreachable

.thread242:                                       ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  store ptr %i.ca, ptr %i.ax, align 8, !alias.scope !11627
  store i64 %.sroa.011.0, ptr %i.ay, align 8, !alias.scope !11627
  store i64 %.sroa.011.0, ptr %i.aw, align 8, !alias.scope !11627
  br label %bb.ab

bb.y:                                             ; preds = %bb.s
  %i.cc = load i64, ptr %9, align 8, !noundef !4  ; 4 uses
  %i.cd = icmp ugt i64 %i.cc, %8
  br i1 %i.cd, label %.invoke, label %bb.aa, !prof !282

bb.z:                                             ; preds = %bb.v, %bb.aa
  %.sroa.15.0 = phi i64 [ %i.ce, %bb.aa ], [ %.val64.pre, %bb.v ] ; 2 uses
  %.sroa.016.0 = phi ptr [ %i.cf, %bb.aa ], [ %.val63.pre, %bb.v ]
  %.not57 = icmp eq i64 %.sroa.15.0, 0
  br i1 %.not57, label %.invoke271, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ce = sub nuw i64 %8, %i.cc
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 %i.cc
  br label %bb.z

.invoke:                                          ; preds = %bb.af, %bb.ae, %bb.y
  %i.cg = phi i64 [ %.ph278, %bb.ae ], [ %i.cc, %bb.y ], [ %.ph278, %bb.af ]
  %i.ch = phi i64 [ %4, %bb.ae ], [ %8, %bb.y ], [ %4, %bb.af ] ; 2 uses
  %i.ci = phi ptr [ @1215, %bb.ae ], [ @1219, %bb.y ], [ @1218, %bb.af ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.cg, i64 noundef %i.ch, i64 noundef %i.ch, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ci) #46
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ab:                                            ; preds = %.thread242, %bb.z
  %.sroa.016.0247 = phi ptr [ %i.ca, %.thread242 ], [ %.sroa.016.0, %bb.z ] ; 6 uses
  %.sroa.15.0246 = phi i64 [ %.sroa.011.0, %.thread242 ], [ %.sroa.15.0, %bb.z ] ; 7 uses
  %i.cj = load i16, ptr %i.az, align 8, !noundef !4
  %i.ck = trunc i16 %i.cj to i8
  store i8 %i.ck, ptr %.sroa.016.0247, align 1
  %.not58 = icmp eq i64 %.sroa.15.0246, 1
  br i1 %.not58, label %.invoke271, label %bb.ac

.invoke271:                                       ; preds = %bb.an, %bb.al, %bb.ab, %bb.z
  %i.cl = phi i64 [ %i.df, %bb.al ], [ 0, %bb.z ], [ 1, %bb.ab ], [ %i.dr, %bb.an ]
  %i.cm = phi i64 [ %.sroa.15.0246, %bb.al ], [ 0, %bb.z ], [ 1, %bb.ab ], [ %.sroa.15.0246, %bb.an ]
  %i.cn = phi ptr [ @1216, %bb.al ], [ @1213, %bb.z ], [ @1214, %bb.ab ], [ @1217, %bb.an ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cl, i64 noundef %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cn) #46
          to label %.cont272 unwind label %.loopexit.split-lp

.cont272:                                         ; preds = %.invoke271
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.co = load i16, ptr %i.az, align 8, !noundef !4
  %i.cp = lshr i16 %i.co, 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.016.0247, i64 1
  %i.cr = trunc nuw i16 %i.cp to i8
  store i8 %i.cr, ptr %i.cq, align 1
  %i.cs = load i32, ptr %i.i, align 8, !noundef !4
  %i.ct = invoke fastcc { ptr, i64 } @_ZN6brotli3enc6encode20GetHashTableInternal17hba825535b521f96bE(ptr noalias noundef align 4 dereferenceable(4096) %i.ba, ptr noalias noundef align 8 dereferenceable(16) %i.bb, i32 noundef %i.cs, i64 noundef %.sroa.0.0.i123, ptr noalias noundef align 8 dereferenceable(8) %i.a)
          to label %bb.ad unwind label %.loopexit.loopexit.split-lp ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cu = extractvalue { ptr, i64 } %i.ct, 0      ; 2 uses
  %i.cv = extractvalue { ptr, i64 } %i.ct, 1      ; 2 uses
  %i.cw = load i32, ptr %i.i, align 8, !noundef !4
  %i.cx = icmp eq i32 %i.cw, 0
  %i.cy = icmp ugt i64 %.ph278, %4                ; 2 uses
  br i1 %i.cx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.cy, label %.invoke, label %bb.ag, !prof !282

bb.af:                                            ; preds = %bb.ad
  br i1 %i.cy, label %.invoke, label %bb.ai, !prof !282

bb.ag:                                            ; preds = %bb.ae
  %i.cz = sub nuw i64 %4, %.ph278
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 %.ph278
  %i.db = load i64, ptr %i.a, align 8, !noundef !4
  invoke fastcc void @_ZN6brotli3enc17compress_fragment22compress_fragment_fast17haf5d90f6c7bad72eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.da, i64 noundef %i.cz, i64 noundef %.sroa.0.0.i123, i1 noundef zeroext %.sroa.06.0, ptr noalias noundef nonnull align 4 %i.cu, i64 noundef %i.cv, i64 noundef %i.db, ptr noalias noundef nonnull align 1 %i.bc, ptr noalias noundef nonnull align 2 %i.bd, ptr noalias noundef align 8 dereferenceable(8) %i.be, ptr noalias noundef nonnull align 1 %i.bf, ptr noalias noundef align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 1 %.sroa.016.0247, i64 noundef %.sroa.15.0246)
          to label %bb.ah unwind label %.loopexit.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag, %bb.ai
  %i.dc = add i64 %.ph278, %.sroa.0.0.i123        ; 3 uses
  store i64 %i.dc, ptr %5, align 8
  %i.dd = sub nuw i64 %.ph279, %.sroa.0.0.i123    ; 3 uses
  store i64 %i.dd, ptr %2, align 8
  %i.de = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.df = lshr i64 %i.de, 3                       ; 8 uses
  br i1 %.not, label %bb.aj, label %bb.ak

bb.ai:                                            ; preds = %bb.af
  %i.dg = sub nuw i64 %4, %.ph278
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 %.ph278
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0150.1) ]
  %i.di = load i64, ptr %i.a, align 8, !noundef !4
  invoke fastcc void @_ZN6brotli3enc26compress_fragment_two_pass26compress_fragment_two_pass17h8b6af29289feb42eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dh, i64 noundef %i.dg, i64 noundef %.sroa.0.0.i123, i1 noundef zeroext %.sroa.06.0, ptr noalias noundef nonnull align 4 %.sroa.0.1, i64 noundef %.sroa.18.1, ptr noalias noundef nonnull align 1 %.sroa.0150.1, i64 noundef %.sroa.17.1, ptr noalias noundef nonnull align 4 %i.cu, i64 noundef %i.cv, i64 noundef %i.di, ptr noalias noundef align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 1 %.sroa.016.0247, i64 noundef %.sroa.15.0246)
          to label %bb.ah unwind label %.loopexit.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ah
  store i32 0, ptr %i.bi, align 8
  store i32 0, ptr %i.bj, align 4
  store i64 %i.df, ptr %i.aq, align 8
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %i.dj = load i64, ptr %9, align 8, !noundef !4
  %i.dk = add i64 %i.dj, %i.df
  store i64 %i.dk, ptr %9, align 8
  %i.dl = sub i64 %i.bt, %i.df
  store i64 %i.dl, ptr %6, align 8
  %i.dm = load i64, ptr %i.bg, align 8, !noundef !4
  %i.dn = add i64 %i.dm, %i.df                    ; 2 uses
  store i64 %i.dn, ptr %i.bg, align 8
  %i.do = load i64, ptr %10, align 8, !range !1392, !noundef !4
  %i.dp = trunc nuw i64 %i.do to i1
  br i1 %i.dp, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak, %bb.aj
  %i.dq = icmp ult i64 %i.df, %.sroa.15.0246
  br i1 %i.dq, label %bb.an, label %.invoke271

bb.am:                                            ; preds = %bb.ak
  store i64 %i.dn, ptr %i.bh, align 8
  br label %bb.al

bb.an:                                            ; preds = %bb.al
  %i.dr = add nuw nsw i64 %i.df, 1                ; 3 uses
  %i.ds = icmp ult i64 %i.dr, %.sroa.15.0246
  br i1 %i.ds, label %condstore.split, label %.invoke271

condstore.split:                                  ; preds = %bb.an
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.016.0247, i64 %i.df
  %i.du = load i8, ptr %i.dt, align 1, !noundef !4
  %i.dv = zext i8 %i.du to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.016.0247, i64 %i.dr
  %i.dx = load i8, ptr %i.dw, align 1, !noundef !4
  %i.dy = zext i8 %i.dx to i16
  %i.dz = shl nuw i16 %i.dy, 8
  %i.ea = or disjoint i16 %i.dz, %i.dv
  store i16 %i.ea, ptr %i.az, align 8
  %i.eb = trunc i64 %i.de to i8
  %i.ec = and i8 %i.eb, 7
  store i8 %i.ec, ptr %i.au, align 2
  %i.ed = or i1 %.sroa.06.0, %.sroa.09.0
  br i1 %i.ed, label %bb.t, label %bb.u

bb.ao:                                            ; preds = %bb.p, %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1) ]
  switch i64 %.sroa.18.1, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i" [
    i64 131072, label %bb.ap
    i64 0, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit"
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %.val94 = load i64, ptr %i.ee, align 8, !noundef !4
  %i.ef = icmp eq i64 %.val94, 0
  br i1 %i.ef, label %bb.aq, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

bb.aq:                                            ; preds = %bb.ap
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %.sroa.0.1, ptr %i.eg, align 8
  store i64 131072, ptr %i.ee, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0150.1) ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %.val70 = load i64, ptr %i.ei, align 8, !noundef !4 ; 2 uses
  %i.ej = icmp eq i64 %.val70, 0
  br i1 %i.ej, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit128", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i127"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i127": ; preds = %bb.aq
  %.val69 = load ptr, ptr %i.eh, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val69, i64 noundef %.val70, i64 noundef 1) #45
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit128"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit128": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i127", %bb.aq
  store ptr %.sroa.0150.1, ptr %i.eh, align 8
  store i64 %.sroa.17.1, ptr %i.ei, align 8
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i129", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit128"
  %.sroa.17.2 = phi i64 [ 0, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit128" ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit" ], [ %.sroa.17.1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i129" ] ; 2 uses
  %.sroa.0150.2 = phi ptr [ inttoptr (i64 1 to ptr), %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit128" ], [ %.sroa.0150.1, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit" ], [ %.sroa.0150.1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i129" ]
  %.sroa.18.2 = phi i64 [ 0, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit128" ], [ %.sroa.18.1, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit" ], [ %.sroa.18.1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i129" ] ; 2 uses
  %.sroa.0.2 = phi ptr [ inttoptr (i64 4 to ptr), %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit128" ], [ %.sroa.0.1, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit" ], [ %.sroa.0.1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i129" ]
  %.sroa.037.3 = phi i1 [ true, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit128" ], [ false, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit" ], [ false, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i129" ]
  %i.ek = load i64, ptr %i.aq, align 8, !noundef !4
  %i.el = load i32, ptr %i.ar, align 8, !range !5152, !noundef !4
  %i.em = icmp eq i32 %i.el, 1
  %i.en = icmp eq i64 %i.ek, 0
  %or.cond5 = and i1 %i.en, %i.em
  br i1 %or.cond5, label %bb.ar, label %bb.as

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.ao, %bb.ap
  %i.eo = shl nuw nsw i64 %.sroa.18.1, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.0.1, i64 noundef %i.eo, i64 noundef 4) #45
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit": ; preds = %bb.ao, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0150.1) ]
  %i.ep = icmp eq i64 %.sroa.17.1, 0
  br i1 %i.ep, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i129"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i129": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %.sroa.0150.1, i64 noundef %.sroa.17.1, i64 noundef 1) #45
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit"

bb.ar:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit"
  store i32 0, ptr %i.ar, align 8
  store i32 2, ptr %i.bi, align 8
  br label %bb.as

bb.as:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit", %bb.ar
  br i1 %.sroa.037.3, label %bb.at, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit134"

bb.at:                                            ; preds = %bb.as
  %i.eq = icmp eq i64 %.sroa.17.2, 0
  br i1 %i.eq, label %.thread165, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i131"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i131": ; preds = %bb.at
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0150.2, i64 noundef %.sroa.17.2, i64 noundef 1) #45
  br label %.thread165

.thread165:                                       ; preds = %bb.at, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i131"
  %i.er = icmp eq i64 %.sroa.18.2, 0
  br i1 %i.er, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit134", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i133"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i133": ; preds = %.thread165
  %i.es = shl nuw nsw i64 %.sroa.18.2, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.es, i64 noundef 4) #45
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit134"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit134": ; preds = %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i133", %.thread165, %bb.as
  ret i1 %switch

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i135": ; preds = %.loopexit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0150.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0150.0, i64 noundef %.sroa.17.0, i64 noundef 1) #45
  br label %.thread

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit140": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i139", %.thread
  resume { ptr, i32 } %lpad.phi

.thread:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i135", %.loopexit
  %i.et = icmp eq i64 %.sroa.18.0, 0
  br i1 %i.et, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit140", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i139"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i139": ; preds = %.thread
  %i.eu = shl nuw nsw i64 %.sroa.18.0, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0159) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0159, i64 noundef %i.eu, i64 noundef 4) #45
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit140"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25copy_input_to_ring_buffer17h28b5f2c796b98b89E"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h976450b2f254cc2bE"(ptr noalias noundef align 8 dereferenceable(5584) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11636)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 6 uses
  %i.c = load i32, ptr %i.b, align 4, !alias.scope !11636, !noalias !11639, !noundef !4 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !alias.scope !11636, !noalias !11639 ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ult i64 %1, %i.g
  %or.cond.i = select i1 %i.d, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = trunc nuw i64 %1 to i32                  ; 2 uses
  store i32 %i.i, ptr %i.b, align 4, !alias.scope !11636, !noalias !11639
  tail call fastcc void @_ZN6brotli3enc6encode20RingBufferInitBuffer17h06dd7ab504e5b515E(i32 noundef %i.i, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a), !noalias !11639
  %.val66.i = load ptr, ptr %i.a, align 8, !alias.scope !11636, !noalias !11639, !nonnull !4, !align !132, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val67.i = load i64, ptr %i.j, align 8, !alias.scope !11636, !noalias !11639, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !11636, !noalias !11639, !noundef !4 ; 4 uses
  %i.m = add i64 %i.l, %1                         ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %.not46.i = icmp ugt i64 %i.m, %.val67.i
  %or.cond48.i = or i1 %i.n, %.not46.i
  br i1 %or.cond48.i, label %bb.e, label %bb.d, !prof !2175
end_hunk_15
begin_hunk_16_@"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25copy_input_to_ring_buffer17h28b5f2c796b98b89E":bb.a
  %i.co = load i64, ptr %i.cn, align 8, !noundef !4
  %i.cp = add i64 %i.co, %1
  store i64 %i.cp, ptr %i.cn, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.cr = load i32, ptr %i.cq, align 4, !noundef !4
  %.not = icmp ugt i32 %i.cm, %i.cr
  br i1 %.not, label %.loopexit, label %bb.aq

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN6brotli3enc6encode15RingBufferWrite17h06d64c9177b6f034E.exit
  ret void

bb.aq:                                            ; preds = %_ZN6brotli3enc6encode15RingBufferWrite17h06d64c9177b6f034E.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !4
  %i.cu = zext i32 %i.cm to i64
  %i.cv = add i64 %i.ct, %i.cu                    ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val5 = load i64, ptr %i.cw, align 8, !noundef !4 ; 2 uses
  %i.cx = add i64 %i.cv, 7                        ; 2 uses
  %i.cy = icmp ugt i64 %i.cv, -8
  %.not4 = icmp ugt i64 %i.cx, %.val5
  %or.cond = or i1 %i.cy, %.not4
  br i1 %or.cond, label %bb.ar, label %.loopexit.loopexit, !prof !2175

.loopexit.loopexit:                               ; preds = %bb.aq
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !132, !noundef !4
  %i.cz = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.cz, i8 0, i64 7, i1 false)
  br label %.loopexit

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.cv, i64 noundef %i.cx, i64 noundef %.val5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1220) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$27inject_flush_or_push_output17hc8af9be3c325611bE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull writeonly align 1 captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5560
  %i.b = load i32, ptr %i.a, align 8, !range !5152, !noundef !4
  %i.c = icmp ne i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5574 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2               ; 7 uses
  %i.f = icmp eq i8 %i.e, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5512 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = load i64, ptr %1, align 8                ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  %or.cond5 = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5568 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8, !alias.scope !11679, !noundef !4
  %i.n = zext i16 %i.m to i32
  store i16 0, ptr %i.l, align 8, !alias.scope !11679
  store i8 0, ptr %i.d, align 2, !alias.scope !11679
  %i.o = and i8 %i.e, 31
  %i.p = zext nneg i8 %i.o to i32
  %i.q = shl i32 6, %i.p                          ; 2 uses
  %i.r = or i32 %i.q, %i.n                        ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !range !1856, !alias.scope !11679, !noundef !4
  %i.u = icmp eq i32 %i.t, 2
  br i1 %i.u, label %.thread29.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val.i = load ptr, ptr %i.v, align 8, !alias.scope !11679, !nonnull !4, !align !132, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.val23.i = load i64, ptr %i.w, align 8, !alias.scope !11679, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5528
  %i.y = tail call { ptr, i64 } @_ZN6brotli3enc6encode18GetNextOutInternal17h163bd09a2afd3dd7E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.s, ptr noalias noundef nonnull align 1 %.val.i, i64 noundef %.val23.i, ptr noalias noundef nonnull align 1 dereferenceable(16) %i.x) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 1        ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5512
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !11679, !noundef !4 ; 5 uses
  %i.ac = icmp ugt i64 %i.ab, %i.z
  br i1 %i.ac, label %bb.e, label %bb.f, !prof !282

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ab, i64 noundef %i.z, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1221) #46
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ad = extractvalue { ptr, i64 } %i.y, 0       ; 2 uses
  %i.ae = sub nuw i64 %i.z, %i.ab                 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %.not.i = icmp eq i64 %i.z, %i.ab
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = trunc i32 %i.r to i8
  store i8 %i.ag, ptr %i.af, align 1
  %i.ah = icmp ugt i8 %i.e, 2
  br i1 %i.ah, label %bb.i, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hdbc13d3da5307604E.exit"

.thread29.i:                                      ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 5528 ; 2 uses
  store i32 1, ptr %i.s, align 8, !alias.scope !11679
  store i32 0, ptr %i.ai, align 4, !alias.scope !11679
  %i.ak = trunc i32 %i.r to i8
  store i8 %i.ak, ptr %i.aj, align 8, !alias.scope !11679
  %i.al = icmp ugt i8 %i.e, 2
  br i1 %i.al, label %.thread45.i, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hdbc13d3da5307604E.exit"

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #46
  unreachable

bb.i:                                             ; preds = %bb.g
  %.not22.i = icmp eq i64 %i.ae, 1
  br i1 %.not22.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = lshr i32 %i.r, 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ao = trunc i32 %i.am to i8
  store i8 %i.ao, ptr %i.an, align 1
  %i.ap = icmp ugt i8 %i.e, 10
  br i1 %i.ap, label %bb.l, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hdbc13d3da5307604E.exit"

.thread45.i:                                      ; preds = %.thread29.i
  %i.aq = lshr i32 %i.r, 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5529
  %i.as = trunc i32 %i.aq to i8
  store i8 %i.as, ptr %i.ar, align 1, !alias.scope !11679
  %i.at = icmp ugt i8 %i.e, 10
  br i1 %i.at, label %.thread50.i, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hdbc13d3da5307604E.exit"

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1223) #46
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.au = icmp ugt i64 %i.ae, 2
  br i1 %i.au, label %.thread50.i, label %bb.m

.thread50.i:                                      ; preds = %bb.l, %.thread45.i
  %.sroa.09.02833414853.i = phi ptr [ %i.af, %bb.l ], [ %i.aj, %.thread45.i ]
  %i.av = lshr i32 %i.q, 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.09.02833414853.i, i64 2
  %i.ax = trunc i32 %i.av to i8
  store i8 %i.ax, ptr %i.aw, align 1
  br label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hdbc13d3da5307604E.exit"

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 2, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1224) #46
  unreachable

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hdbc13d3da5307604E.exit": ; preds = %bb.g, %.thread29.i, %bb.j, %.thread45.i, %.thread50.i
  %i.ay = zext i8 %i.e to i64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 5512 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !11679, !noundef !4
  %i.bb = add nuw nsw i64 %i.ay, 13
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add i64 %i.ba, %i.bc
  store i64 %i.bd, ptr %i.az, align 8, !alias.scope !11679
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %bb.u, %bb.b, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hdbc13d3da5307604E.exit"
  %.sroa.0.0 = phi i1 [ true, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hdbc13d3da5307604E.exit" ], [ false, %bb.b ], [ true, %bb.u ], [ true, %bb.t ]
  ret i1 %.sroa.0.0

bb.o:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 %i.h) ; 8 uses
  %i.be = load i64, ptr %4, align 8, !noundef !4  ; 4 uses
  %i.bf = add i64 %i.be, %.sroa.0.0.i             ; 4 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %.not = icmp ugt i64 %i.bf, %3
  %or.cond14 = or i1 %i.bg, %.not
  br i1 %or.cond14, label %bb.q, label %bb.p, !prof !2175

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val = load ptr, ptr %i.bi, align 8, !nonnull !4, !align !132, !noundef !4
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.val15 = load i64, ptr %i.bj, align 8, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5528
  %i.bl = tail call { ptr, i64 } @_ZN6brotli3enc6encode18GetNextOutInternal17h163bd09a2afd3dd7E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.bh, ptr noalias noundef nonnull align 1 %.val, i64 noundef %.val15, ptr noalias noundef nonnull align 1 dereferenceable(16) %i.bk) ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %i.bl, 1      ; 2 uses
  %.not13 = icmp ugt i64 %.sroa.0.0.i, %i.bm
  br i1 %.not13, label %bb.s, label %bb.r, !prof !2175

bb.q:                                             ; preds = %bb.o
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.be, i64 noundef %i.bf, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1226) #46
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bn = extractvalue { ptr, i64 } %i.bl, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %i.be
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr nonnull readonly align 1 %i.bn, i64 %.sroa.0.0.i, i1 false), !alias.scope !11682, !noalias !11686
  store i64 %i.bf, ptr %4, align 8
  %i.bp = sub nuw i64 %i.j, %.sroa.0.0.i
  store i64 %i.bp, ptr %1, align 8
  %i.bq = load i32, ptr %i.bh, align 8, !range !1856, !noundef !4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.bs = icmp eq i32 %i.bq, 2
  br i1 %i.bs, label %bb.t, label %.sink.split

bb.s:                                             ; preds = %bb.p
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.0.0.i, i64 noundef %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1225) #46
  unreachable

.sink.split:                                      ; preds = %bb.r
  %i.bt = trunc i64 %.sroa.0.0.i to i32
  %i.bu = load i32, ptr %i.br, align 4, !noundef !4
  %i.bv = add i32 %i.bu, %i.bt
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %.sink.split
  %.sroa.6.0 = phi i32 [ undef, %bb.r ], [ %i.bv, %.sink.split ]
  store i32 %.sroa.6.0, ptr %i.br, align 4
  %i.bw = load i64, ptr %i.g, align 8, !noundef !4
  %i.bx = sub i64 %i.bw, %.sroa.0.0.i
  store i64 %i.bx, ptr %i.g, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 5520 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !noundef !4
  %i.ca = add i64 %i.bz, %.sroa.0.0.i             ; 2 uses
  store i64 %i.ca, ptr %i.by, align 8
  %i.cb = load i64, ptr %5, align 8, !range !1392, !noundef !4
  %i.cc = trunc nuw i64 %i.cb to i1
  br i1 %i.cc, label %bb.u, label %bb.n

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ca, ptr %i.cd, align 8
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN6brotli3enc6writer64CompressorWriterCustomIo$LT$ErrType$C$W$C$BufferType$C$Alloc$GT$14flush_or_close17h8a3a9b66814490d8E"(ptr noalias noundef nonnull align 8 dereferenceable(5664) %0, i8 noundef range(i8 1, 3) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 4                ; 9 uses
  %i.d = alloca [984 x i8], align 8               ; 24 uses
  %i.e = alloca [984 x i8], align 8               ; 23 uses
  %i.f = alloca [984 x i8], align 8               ; 23 uses
  %i.g = alloca [152 x i8], align 8               ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [11272 x i8], align 4             ; 6 uses
  %i.k = alloca [280 x i8], align 2               ; 5 uses
  %i.l = alloca [140 x i8], align 1               ; 5 uses
  %i.m = alloca [1408 x i8], align 2              ; 5 uses
  %i.n = alloca [704 x i8], align 1               ; 5 uses
  %i.o = alloca [512 x i8], align 2               ; 5 uses
  %i.p = alloca [256 x i8], align 1               ; 5 uses
  %i.q = alloca [2192 x i8], align 8              ; 6 uses
  %i.r = alloca [2832 x i8], align 8              ; 6 uses
  %i.s = alloca [1040 x i8], align 8              ; 6 uses
  %i.t = alloca [152 x i8], align 8               ; 22 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [48 x i8], align 8                ; 7 uses
  %i.w = alloca [280 x i8], align 2               ; 5 uses
  %i.x = alloca [140 x i8], align 1               ; 5 uses
  %i.y = alloca [1408 x i8], align 2              ; 5 uses
  %i.z = alloca [704 x i8], align 1               ; 5 uses
  %i.aa = alloca [512 x i8], align 2              ; 5 uses
  %i.ab = alloca [256 x i8], align 1              ; 5 uses
  %i.ac = alloca [2192 x i8], align 8             ; 7 uses
  %i.ad = alloca [2832 x i8], align 8             ; 7 uses
  %i.ae = alloca [1040 x i8], align 8             ; 7 uses
  %i.af = alloca [512 x i8], align 2              ; 5 uses
  %i.ag = alloca [256 x i8], align 1              ; 5 uses
  %i.ah = alloca [1024 x i8], align 4             ; 5 uses
  %i.ai = alloca [152 x i8], align 8              ; 22 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [264 x i8], align 8              ; 43 uses
  %i.an = alloca [112 x i8], align 8              ; 10 uses
  %i.ao = alloca [8 x i8], align 8                ; 6 uses
  %i.ap = alloca [4 x i8], align 4                ; 5 uses
  %i.aq = alloca [8 x i8], align 8                ; 60 uses
  %i.ar = alloca [4 x i8], align 4                ; 7 uses
  %i.as = alloca [8 x i8], align 8                ; 7 uses
  %i.at = alloca [8 x i8], align 8                ; 6 uses
  %i.au = alloca [8 x i8], align 8                ; 7 uses
  %i.av = alloca [8 x i8], align 8                ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 5608 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 5580
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 5576 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 246 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 11 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 11 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 5528 ; 5 uses
  %i.bh = icmp eq i8 %1, 2
  %i.bi = icmp eq i8 %1, 1                        ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5586 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5590 ; 11 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 15 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 15 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 5584 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5589 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 12 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 5588
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 5560 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 5591 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 5592 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 12 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 5568 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 5593
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 6 uses
  %.sroa.7.0..sroa_idx.i23.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %.sroa.732.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 80 ; 2 uses
  %.sroa.737.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 128 ; 2 uses
  %.sroa.4.0..sroa_idx.i24.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i25.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %.sroa.429.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 56 ; 2 uses
  %.sroa.530.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %.sroa.631.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 72 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.am, i64 96 ; 2 uses
  %.sroa.434.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 104 ; 2 uses
  %.sroa.535.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 112 ; 2 uses
  %.sroa.636.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 120 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.am, i64 144 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.am, i64 152 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.am, i64 224
  %i.cy = getelementptr inbounds nuw i8, ptr %i.am, i64 160 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.am, i64 168 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.am, i64 232
  %i.db = getelementptr inbounds nuw i8, ptr %i.am, i64 176 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.am, i64 184 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.am, i64 240 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.am, i64 192 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.am, i64 200 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.am, i64 248
  %i.dh = getelementptr inbounds nuw i8, ptr %i.am, i64 208 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.am, i64 216 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.am, i64 256 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.dm = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %i.an, i64 97
  %i.dr = getelementptr inbounds nuw i8, ptr %i.an, i64 98
  %i.ds = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.16.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.sroa.4.0..sroa_idx.i30.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i31.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.sroa.6.0..sroa_idx.i32.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %.sroa.7.0..sroa_idx.i33.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 6 uses
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 6 uses
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 6 uses
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 6 uses
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.13.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 4 uses
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.2015.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 960 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 968 ; 9 uses
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 976 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %.sroa.1629.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.417.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.518.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.619.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.sroa.720.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 4 uses
  %.sroa.821.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  %.sroa.922.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 4 uses
  %.sroa.1023.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 4 uses
end_hunk_16
begin_hunk_17_@"_ZN6brotli3enc6writer64CompressorWriterCustomIo$LT$ErrType$C$W$C$BufferType$C$Alloc$GT$14flush_or_close17h8a3a9b66814490d8E":bb.a
  %.val160.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !11711, !noalias !11712, !nonnull !4, !align !132, !noundef !4 ; 2 uses
  %.val161.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !11711, !noalias !11712, !noundef !4 ; 4 uses
  %i.aey = load i64, ptr %i.aq, align 8, !noalias !11709, !noundef !4 ; 2 uses
  %i.aez = lshr i64 %i.aey, 3                     ; 5 uses
  %i.afa = icmp ult i64 %i.aez, %.val161.i.i
  br i1 %i.afa, label %bb.hh, label %bb.hi

bb.hg:                                            ; preds = %bb.dj
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.rw, i64 noundef %.val125.i.i, i64 noundef %.val125.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1202) #46, !noalias !11712
  unreachable

bb.hh:                                            ; preds = %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h4959d936469cbf0aE.exit.i.i
  %i.afb = add nuw nsw i64 %i.aez, 1              ; 3 uses
  %i.afc = icmp ult i64 %i.afb, %.val161.i.i
  br i1 %i.afc, label %bb.hj, label %bb.hn

bb.hi:                                            ; preds = %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h4959d936469cbf0aE.exit.i.i
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aez, i64 noundef %.val161.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1197) #46, !noalias !11712
  unreachable

bb.hj:                                            ; preds = %bb.hh
  %i.afd = getelementptr inbounds nuw i8, ptr %.val160.i.i, i64 %i.aez
  %i.afe = load i8, ptr %i.afd, align 1, !noalias !11712, !noundef !4
  %i.aff = zext i8 %i.afe to i16
  %i.afg = getelementptr inbounds nuw i8, ptr %.val160.i.i, i64 %i.afb
  %i.afh = load i8, ptr %i.afg, align 1, !noalias !11712, !noundef !4
  %i.afi = zext i8 %i.afh to i16
  %i.afj = shl nuw i16 %i.afi, 8
  %i.afk = or disjoint i16 %i.afj, %i.aff
  store i16 %i.afk, ptr %i.br, align 8, !alias.scope !11711, !noalias !11712
  %i.afl = trunc i64 %i.aey to i8
  %i.afm = and i8 %i.afl, 7
  store i8 %i.afm, ptr %i.bn, align 2, !alias.scope !11711, !noalias !11712
  %i.afn = load i64, ptr %i.bd, align 8, !alias.scope !11711, !noalias !11712, !noundef !4 ; 6 uses
  store i64 %i.afn, ptr %i.bo, align 8, !alias.scope !11711, !noalias !11712
  %i.afo = load i64, ptr %i.be, align 8, !alias.scope !11924, !noalias !11712, !noundef !4 ; 2 uses
  %i.afp = trunc i64 %i.afo to i32                ; 3 uses
  %i.afq = icmp ugt i64 %i.afo, 3221225471
  br i1 %i.afq, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hl, %bb.hj
  %.sroa.0.0.i202.i.i = phi i32 [ %i.afy, %bb.hl ], [ %i.afp, %bb.hj ]
  %i.afr = trunc i64 %i.afn to i32                ; 5 uses
  %i.afs = icmp ugt i64 %i.afn, 3221225471
  br i1 %i.afs, label %bb.hm, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit204.i.i"

bb.hl:                                            ; preds = %bb.hj
  %i.aft = and i32 %i.afp, 1073741823
  %i.afu = shl i32 %i.afp, 1
  %i.afv = ashr exact i32 %i.afu, 1
  %i.afw = and i32 %i.afv, -1073741824
  %i.afx = or disjoint i32 %i.afw, %i.aft
  %i.afy = xor i32 %i.afx, -2147483648
  br label %bb.hk

bb.hm:                                            ; preds = %bb.hk
  %i.afz = and i32 %i.afr, 1073741823
  %i.aga = shl i32 %i.afr, 1
  %i.agb = ashr exact i32 %i.aga, 1
  %i.agc = and i32 %i.agb, -1073741824
  %i.agd = or disjoint i32 %i.agc, %i.afz
  %i.age = xor i32 %i.agd, -2147483648
  br label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit204.i.i"

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit204.i.i": ; preds = %bb.hm, %bb.hk
  %.sroa.02.0.i203.i.i = phi i32 [ %i.age, %bb.hm ], [ %i.afr, %bb.hk ]
  store i64 %i.afn, ptr %i.be, align 8, !alias.scope !11924, !noalias !11712
  %i.agf = icmp ult i32 %.sroa.02.0.i203.i.i, %.sroa.0.0.i202.i.i
  br i1 %i.agf, label %bb.hp, label %bb.ho

bb.hn:                                            ; preds = %bb.hh
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.afb, i64 noundef %.val161.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1198) #46, !noalias !11712
  unreachable

bb.ho:                                            ; preds = %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i", %bb.hp, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit204.i.i"
  %.val157.i.i = load i64, ptr %i.ca, align 8, !alias.scope !11711, !noalias !11712, !noundef !4 ; 4 uses
  %i.agg = load i64, ptr %i.cb, align 8, !alias.scope !11711, !noalias !11712, !noundef !4 ; 4 uses
  %i.agh = icmp ugt i64 %i.agg, %.val157.i.i
  br i1 %i.agh, label %bb.ht, label %bb.hs, !prof !282

bb.hp:                                            ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit204.i.i"
  %i.agi = load i64, ptr %i.ay, align 8, !range !3411, !alias.scope !11711, !noalias !11712, !noundef !4
  switch i64 %i.agi, label %default.unreachable [
    i64 0, label %bb.ho
    i64 10, label %bb.hr
    i64 1, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"
    i64 2, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"
    i64 3, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"
    i64 4, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"
    i64 5, label %bb.hq
    i64 6, label %bb.hq
    i64 7, label %bb.hq
    i64 8, label %bb.hq
    i64 9, label %bb.hq
  ], !prof !5223

bb.hq:                                            ; preds = %bb.hp, %bb.hp, %bb.hp, %bb.hp, %bb.hp
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"

bb.hr:                                            ; preds = %bb.hp
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"

"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i": ; preds = %bb.hr, %bb.hq, %bb.hp, %bb.hp, %bb.hp, %bb.hp
  %.sink.i.i.i = phi i64 [ 56, %bb.hr ], [ 24, %bb.hp ], [ 24, %bb.hp ], [ 24, %bb.hp ], [ 24, %bb.hp ], [ 40, %bb.hq ]
  %i.agj = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sink.i.i.i
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 40
  store i32 0, ptr %i.agk, align 8, !alias.scope !11711, !noalias !11712
  br label %bb.ho

bb.hs:                                            ; preds = %bb.ho
  %.val156.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !11711, !noalias !11712, !nonnull !4, !align !132, !noundef !4
  %i.agl = sub nuw i64 %.val157.i.i, %i.agg       ; 4 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %.val156.i.i, i64 %i.agg ; 2 uses
  %.not122.i.i = icmp eq i64 %i.afn, 0
  br i1 %.not122.i.i, label %.thread14.i.i, label %bb.hu

bb.ht:                                            ; preds = %bb.ho
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.agg, i64 noundef %.val157.i.i, i64 noundef %.val157.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1201) #46, !noalias !11712
  unreachable

bb.hu:                                            ; preds = %bb.hs
  %i.agn = add i32 %i.afr, -1
  %i.ago = and i32 %i.agn, %i.gq
  %i.agp = zext i32 %i.ago to i64                 ; 3 uses
  %i.agq = icmp ugt i64 %i.agl, %i.agp
  br i1 %i.agq, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.agp
  %i.ags = load i8, ptr %i.agr, align 1, !noalias !11712, !noundef !4
  store i8 %i.ags, ptr %i.cd, align 1, !alias.scope !11711, !noalias !11712
  %.not15.i.i = icmp eq i64 %i.afn, 1
  br i1 %.not15.i.i, label %.thread14.i.i, label %bb.hx

bb.hw:                                            ; preds = %bb.hu
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.agp, i64 noundef %i.agl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1199) #46, !noalias !11712
  unreachable

bb.hx:                                            ; preds = %bb.hv
  %i.agt = add i32 %i.afr, -2
  %i.agu = and i32 %i.agt, %i.gq
  %i.agv = zext i32 %i.agu to i64                 ; 3 uses
  %i.agw = icmp ugt i64 %i.agl, %i.agv
  br i1 %i.agw, label %bb.hy, label %bb.hz

.thread14.i.i:                                    ; preds = %bb.hy, %bb.hv, %bb.hs
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i8 0, i64 16, i1 false), !alias.scope !11711, !noalias !11712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cp, i64 16, i1 false), !alias.scope !11927, !noalias !11931
  store i32 0, ptr %i.bv, align 8, !alias.scope !11711, !noalias !11712
  store i32 0, ptr %i.bw, align 4, !alias.scope !11711, !noalias !11712
  br label %bb.ic

bb.hy:                                            ; preds = %bb.hx
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.agv
  %i.agy = load i8, ptr %i.agx, align 1, !noalias !11712, !noundef !4
  store i8 %i.agy, ptr %i.ce, align 8, !alias.scope !11711, !noalias !11712
  br label %.thread14.i.i

bb.hz:                                            ; preds = %bb.hx
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.agv, i64 noundef %i.agl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1200) #46, !noalias !11712
  unreachable

bb.ia:                                            ; preds = %.invoke.i.i
  %i.agz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aha = icmp eq i64 %i.nk, 0
  br i1 %i.aha, label %common.resume.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i205.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i205.i.i": ; preds = %bb.ia
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i, i64 noundef %i.nl, i64 noundef 4) #45, !noalias !11712
  br label %common.resume.i.i

bb.ib:                                            ; preds = %bb.o, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !11709
  store i64 0, ptr %i.bg, align 8, !alias.scope !11688, !noalias !11695
  br label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17hfa542ba2c4e9bbd1E.exit"

bb.ic:                                            ; preds = %bb.db, %.thread14.i.i, %bb.di, %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit", %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit", %bb.bl
  %.sroa.0.01.i = phi i64 [ %storemerge.i.i, %bb.bl ], [ %i.aez, %.thread14.i.i ], [ %.sroa.011.2.i.i, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit" ], [ %.sroa.011.2.i.i, %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit" ], [ %.sroa.011.2.i.i, %bb.db ], [ %.sroa.011.2.i.i, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !11709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !11709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !11709
  store i64 %.sroa.0.01.i, ptr %i.bg, align 8, !alias.scope !11688, !noalias !11695
  %i.ahb = or i1 %.sroa.05.0.i, %.sroa.03.0.i
  br i1 %i.ahb, label %bb.id, label %.backedge.i.backedge

bb.id:                                            ; preds = %bb.ic
  %spec.select23.i = select i1 %.sroa.03.0.i, i32 2, i32 1
  store i32 %spec.select23.i, ptr %i.ba, align 8, !alias.scope !11688, !noalias !11695
  br label %.backedge.i.backedge

bb.ie:                                            ; preds = %bb.k
  store i32 0, ptr %i.ba, align 8, !alias.scope !11688, !noalias !11695
  store i32 2, ptr %i.bv, align 8, !alias.scope !11688, !noalias !11695
  br label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17hfa542ba2c4e9bbd1E.exit"

bb.if:                                            ; preds = %bb.i
  %.sroa.0.0.i24.i = call noundef i64 @llvm.umin.i64(i64 %i.gc, i64 %.sroa.0.0.i.i) ; 3 uses
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25copy_input_to_ring_buffer17h28b5f2c796b98b89E"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ay, i64 noundef %.sroa.0.0.i24.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !noalias !11695
  store i64 %.sroa.0.0.i24.i, ptr %i.au, align 8, !alias.scope !11693, !noalias !11705
  %i.ahc = sub nuw i64 %i.gc, %.sroa.0.0.i24.i
  store i64 %i.ahc, ptr %i.av, align 8, !alias.scope !11691, !noalias !11704
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.if, %bb.id, %bb.ic, %bb.g
  br label %.backedge.i

bb.ig:                                            ; preds = %bb.i
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ge, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1209) #46, !noalias !11695
  unreachable

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17hfa542ba2c4e9bbd1E.exit": ; preds = %bb.k, %bb.j, %bb.c, %bb.b, %bb.f, %bb.ib, %bb.ie
  %.sroa.0.0.i = phi i1 [ false, %bb.b ], [ true, %bb.ie ], [ %i.ft, %bb.f ], [ false, %bb.c ], [ false, %bb.ib ], [ true, %bb.j ], [ true, %bb.k ]
  %i.ahd = load i64, ptr %i.as, align 8, !noundef !4 ; 9 uses
  %.not = icmp eq i64 %i.ahd, 0
  br i1 %.not, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17hfa542ba2c4e9bbd1E.exit"
  %i.ahe = load ptr, ptr %i.fk, align 8, !noundef !4 ; 2 uses
  %.not8 = icmp eq ptr %i.ahe, null
  br i1 %.not8, label %bb.ik, label %bb.ij, !prof !282

bb.ii:                                            ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17hfa542ba2c4e9bbd1E.exit", %bb.io
  br i1 %.sroa.0.0.i, label %bb.iq, label %bb.ip

bb.ij:                                            ; preds = %bb.ih
  %.val = load ptr, ptr %i.aw, align 8, !nonnull !4, !align !132, !noundef !4
  %.val13 = load i64, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %.not9 = icmp ugt i64 %i.ahd, %.val13
  br i1 %.not9, label %bb.in, label %.lr.ph.split.us.i, !prof !2175

bb.ik:                                            ; preds = %bb.ih
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1230) #46
  unreachable

.lr.ph.split.us.i:                                ; preds = %bb.ij
  call void @llvm.experimental.noalias.scope.decl(metadata !11933)
  call void @llvm.experimental.noalias.scope.decl(metadata !11936)
  call void @llvm.experimental.noalias.scope.decl(metadata !11939)
  call void @llvm.experimental.noalias.scope.decl(metadata !11942)
  %i.ahf = load i64, ptr %i.fl, align 8, !alias.scope !11945, !noalias !11946, !noundef !4 ; 2 uses
  %i.ahg = load i64, ptr %i.fm, align 8, !alias.scope !11945, !noalias !11946, !noundef !4
  %i.ahh = sub i64 %i.ahg, %i.ahf
  %.not.i.i.i.us.i = icmp ugt i64 %i.ahd, %i.ahh
  br i1 %.not.i.i.i.us.i, label %bb.il, label %bb.im

bb.il:                                            ; preds = %.lr.ph.split.us.i
  %i.ahi = call noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fk, i64 noundef range(i64 1, 0) %i.ahd, i1 noundef zeroext true), !noalias !11946 ; 0 uses
  %.pre.i.i.i.us.i = load i64, ptr %i.fl, align 8, !alias.scope !11945, !noalias !11946
  %.pre = load ptr, ptr %i.fk, align 8, !alias.scope !11945, !noalias !11946
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %.lr.ph.split.us.i
  %i.ahj = phi ptr [ %i.ahe, %.lr.ph.split.us.i ], [ %.pre, %bb.il ]
  %i.ahk = phi i64 [ %i.ahf, %.lr.ph.split.us.i ], [ %.pre.i.i.i.us.i, %bb.il ]
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahj, i64 %i.ahk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ahl, ptr noundef nonnull readonly align 1 dereferenceable(1) %.val, i64 range(i64 1, 0) %i.ahd, i1 false)
  %i.ahm = load i64, ptr %i.fm, align 8, !alias.scope !11945, !noalias !11946, !noundef !4
  %i.ahn = load i64, ptr %i.fl, align 8, !alias.scope !11945, !noalias !11946, !noundef !4 ; 2 uses
  %i.aho = sub i64 %i.ahm, %i.ahn                 ; 2 uses
  %i.ahp = icmp ugt i64 %i.ahd, %i.aho
  br i1 %i.ahp, label %.split.us.i, label %bb.io, !prof !282

.split.us.i:                                      ; preds = %bb.im
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11951
  store i64 %i.ahd, ptr %i.a, align 8, !noalias !11951
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aho, ptr %i.ahq, align 8, !noalias !11951
  call void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #46, !noalias !11946
  unreachable

bb.in:                                            ; preds = %bb.ij
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.ahd, i64 noundef %.val13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1232) #46
  unreachable

bb.io:                                            ; preds = %bb.im
  %i.ahr = add i64 %i.ahn, %i.ahd
  store i64 %i.ahr, ptr %i.fl, align 8, !alias.scope !11945, !noalias !11946
  br label %bb.ii

bb.ip:                                            ; preds = %bb.ii
  %i.ahs = getelementptr inbounds nuw i8, ptr %0, i64 5648 ; 2 uses
  %i.aht = load ptr, ptr %i.ahs, align 8, !noundef !4 ; 2 uses
  store ptr null, ptr %i.ahs, align 8
  %.not11 = icmp eq ptr %i.aht, null
  br i1 %.not11, label %bb.ir, label %.loopexit, !prof !282

bb.iq:                                            ; preds = %bb.ii
  br i1 %i.bi, label %bb.is, label %bb.it

bb.ir:                                            ; preds = %bb.ip
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1231) #46
  unreachable

.loopexit:                                        ; preds = %bb.iu, %bb.is, %bb.ip
  %.sroa.0.0 = phi ptr [ %i.aht, %bb.ip ], [ null, %bb.is ], [ null, %bb.iu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  ret ptr %.sroa.0.0

bb.is:                                            ; preds = %bb.iq
  %i.ahu = load i64, ptr %i.bg, align 8, !noundef !4
  %i.ahv = icmp eq i64 %i.ahu, 0
  br i1 %i.ahv, label %.loopexit, label %.backedge

bb.it:                                            ; preds = %bb.iq
  %i.ahw = load i32, ptr %i.ba, align 8, !range !5152, !noundef !4
  %i.ahx = icmp eq i32 %i.ahw, 2
  br i1 %i.ahx, label %bb.iu, label %.backedge

.backedge:                                        ; preds = %bb.is, %bb.iu, %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.b

bb.iu:                                            ; preds = %bb.it
  %i.ahy = load i64, ptr %i.bg, align 8, !noundef !4
  %.not12 = icmp eq i64 %i.ahy, 0
  br i1 %.not12, label %.loopexit, label %.backedge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 257) i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h525836e2a4691d74E(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 4 captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 4 captures(none) %4, i64 noundef %5, ptr noalias nofree noundef nonnull align 4 captures(none) %6, i64 noundef %7, ptr noalias nofree noundef nonnull align 4 captures(none) %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef range(i64 64, 257) %12, i64 noundef %13) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.not84.not = icmp eq i64 %10, 0
  br i1 %.not84.not, label %.outer._crit_edge, label %.preheader4

.loopexit5:                                       ; preds = %bb.al, %.preheader4
  %i.c = icmp ult i64 %.sroa.055.163, %10
  %i.d = add i64 %.sroa.055.163, 1
  br i1 %i.c, label %.preheader4, label %.preheader3

.preheader4:                                      ; preds = %bb.a, %.loopexit5
  %.sroa.055.163 = phi i64 [ %i.d, %.loopexit5 ], [ 1, %bb.a ] ; 6 uses
  %.sroa.055.062 = phi i64 [ %.sroa.055.163, %.loopexit5 ], [ 0, %bb.a ] ; 3 uses
  %i.e = icmp ult i64 %.sroa.055.163, %10
  br i1 %i.e, label %.lr.ph, label %.loopexit5

.lr.ph:                                           ; preds = %.preheader4
  %i.f = icmp ult i64 %.sroa.055.062, %7
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.055.062
  br i1 %i.f, label %.lr.ph.split.preheader, label %bb.ak

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.055.163, i64 %7) ; 2 uses
  br label %.lr.ph.split

.preheader3:                                      ; preds = %.loopexit5
  %.not256 = icmp eq i64 %10, 1
  br i1 %.not256, label %.outer._crit_edge, label %.lr.ph76.lr.ph

.lr.ph76.lr.ph:                                   ; preds = %.preheader3
  %.not = icmp eq i64 %9, 0
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.not85 = icmp eq i64 %11, 0
  br i1 %.not, label %bb.c, label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %.lr.ph76.lr.ph
  %i.k = add i64 %5, 1
  %i.l = add i64 %7, 1
  %i.m = add i64 %11, -1
  %i.n = tail call i64 @llvm.umin.i64(i64 %5, i64 %i.m)
  %i.o = add i64 %i.n, 1                          ; 3 uses
  %min.iters.check337 = icmp ult i64 %i.o, 9
  %i.p = and i64 %i.o, 7                          ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 8, i64 %i.p
  %n.vec339 = sub i64 %i.o, %i.r                  ; 3 uses
  %i.s = add i64 %n.vec339, 1
  br label %.lr.ph76

.outer.loopexit:                                  ; preds = %bb.b
  %i.t = icmp ugt i64 %.sroa.0.075, %12
  br i1 %i.t, label %.lr.ph76, label %.outer._crit_edge

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %.outer.loopexit
  %.sroa.0.0.ph82 = phi i64 [ %.sroa.0.075, %.outer.loopexit ], [ %10, %.lr.ph76.preheader ] ; 3 uses
  %.sroa.09.0.ph81 = phi float [ f0x7E967699, %.outer.loopexit ], [ 0.000000e+00, %.lr.ph76.preheader ]
  %.sroa.010.0.ph80 = phi i64 [ %12, %.outer.loopexit ], [ 1, %.lr.ph76.preheader ] ; 2 uses
  %i.u = add i64 %.sroa.0.0.ph82, -2
  br label %bb.b

.loopexit:                                        ; preds = %bb.p
  %i.v = icmp ugt i64 %i.di, %.sroa.010.0.ph80
  %indvar.next = add i64 %indvar, 1
  br i1 %i.v, label %bb.b, label %.outer._crit_edge.loopexit

.outer._crit_edge.loopexit:                       ; preds = %.loopexit
  %i.w = add i64 %.sroa.0.0.ph82, -1
  %umin.le = tail call i64 @llvm.umin.i64(i64 %.sroa.010.0.ph80, i64 %i.w)
  br label %.outer._crit_edge
end_hunk_17
begin_hunk_18_@_ZN6brotli3enc7cluster27BrotliCompareAndPushToQueue17h959faa3a681f16e6E:bb.a
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e
  %i.k = load i32, ptr %i.j, align 4, !noundef !4 ; 3 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = add nuw nsw i64 %i.l, %i.i               ; 3 uses
  %i.n = uitofp i32 %i.h to float                 ; 2 uses
  %i.o = icmp ult i32 %i.h, 256
  br i1 %i.o, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call nnan float @llvm.log2.f32(float %i.n)
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.0.0.i = phi float [ %i.t, %bb.h ], [ %i.p, %bb.f ]
  %i.q = uitofp i32 %i.k to float                 ; 2 uses
  %i.r = icmp ult i32 %i.k, 256
  br i1 %i.r, label %bb.k, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.i
  %i.t = load float, ptr %i.s, align 4, !noundef !4
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.u = tail call nnan float @llvm.log2.f32(float %i.q)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.01.0.i = phi float [ %i.y, %bb.k ], [ %i.u, %bb.i ]
  %i.v = uitofp nneg i64 %i.m to float            ; 2 uses
  %i.w = icmp samesign ult i64 %i.m, 256
  br i1 %i.w, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.l
  %i.y = load float, ptr %i.x, align 4, !noundef !4
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.z = tail call nnan float @llvm.log2.f32(float %i.v)
  br label %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit

bb.m:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.m
  %i.ab = load float, ptr %i.aa, align 4, !noundef !4
  br label %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit

_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit: ; preds = %bb.l, %bb.m
  %.sroa.02.0.i = phi float [ %i.ab, %bb.m ], [ %i.z, %bb.l ]
  %i.ac = fmul float %.sroa.0.0.i, %i.n
  %i.ad = fmul float %.sroa.01.0.i, %i.q
  %i.ae = fadd float %i.ac, %i.ad
  %i.af = fmul float %.sroa.02.0.i, %i.v
  %i.ag = fsub float %i.ae, %i.af
  %i.ah = icmp ugt i64 %1, %i.c
  br i1 %i.ah, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1273) #46
  unreachable

bb.o:                                             ; preds = %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit
  %i.ai = getelementptr inbounds nuw [2832 x i8], ptr %0, i64 %i.c ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2824
  %i.ak = load float, ptr %i.aj, align 8, !alias.scope !12033, !noundef !4 ; 2 uses
  %i.al = icmp ugt i64 %1, %i.e
  br i1 %i.al, label %bb.q, label %bb.r

bb.p:                                             ; preds = %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.c, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1274) #46
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.am = fmul float %i.ag, 5.000000e-01
  %i.an = fsub float %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw [2832 x i8], ptr %0, i64 %i.e ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2824
  %i.aq = load float, ptr %i.ap, align 8, !alias.scope !12036, !noundef !4 ; 2 uses
  %i.ar = fsub float %i.an, %i.aq                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 2816
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !12039, !noundef !4
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.q
  %.pre = load i64, ptr %9, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1275) #46
  unreachable

bb.s:                                             ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbae568b48856083eE.exit, %._crit_edge, %bb.t
  %i.av = phi i64 [ %.pre2, %bb.t ], [ %.pre, %._crit_edge ], [ %.pre2, %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbae568b48856083eE.exit ] ; 11 uses
  %.sroa.10.0 = phi float [ %i.ak, %bb.t ], [ %i.aq, %._crit_edge ], [ %i.br, %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbae568b48856083eE.exit ] ; 3 uses
  %i.aw = fadd float %i.ar, %.sroa.10.0           ; 4 uses
  %.not55 = icmp eq i64 %i.av, 0
  br i1 %.not55, label %bb.z, label %bb.y

bb.t:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 2816
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !12042, !noundef !4 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  %.pre2 = load i64, ptr %9, align 8              ; 3 uses
  br i1 %i.az, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = icmp eq i64 %.pre2, 0
  br i1 %i.ba, label %vector.ph, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not = icmp eq i64 %8, 0
  br i1 %.not, label %bb.x, label %bb.w

vector.ph:                                        ; preds = %bb.u, %bb.w
  %.sroa.030.0 = phi float [ %i.bw, %bb.w ], [ f0x7E967699, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(2832) %i.ai, i64 2832, i1 false), !alias.scope !12045
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 2816 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !12049, !noalias !12052, !noundef !4
  %i.bd = add i64 %i.bc, %i.ay
  store i64 %i.bd, ptr %i.bb, align 8, !alias.scope !12055
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.be, align 8
  %wide.load18 = load <4 x i32>, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load19 = load <4 x i32>, ptr %i.bg, align 8
  %wide.load20 = load <4 x i32>, ptr %i.bh, align 8
  %i.bi = add <4 x i32> %wide.load19, %wide.load
  %i.bj = add <4 x i32> %wide.load20, %wide.load18
  store <4 x i32> %i.bi, ptr %i.be, align 8
  store <4 x i32> %i.bj, ptr %i.bf, align 8
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index.next ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.bk, align 8
  %wide.load18.1 = load <4 x i32>, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index.next ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load19.1 = load <4 x i32>, ptr %i.bm, align 8
  %wide.load20.1 = load <4 x i32>, ptr %i.bn, align 8
  %i.bo = add <4 x i32> %wide.load19.1, %wide.load.1
  %i.bp = add <4 x i32> %wide.load20.1, %wide.load18.1
  store <4 x i32> %i.bo, ptr %i.bk, align 8
  store <4 x i32> %i.bp, ptr %i.bl, align 8
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.bq = icmp eq i64 %index.next.1, 704
  br i1 %i.bq, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbae568b48856083eE.exit, label %vector.body, !llvm.loop !12058

_ZN6brotli3enc9histogram21HistogramAddHistogram17hbae568b48856083eE.exit: ; preds = %vector.body
  %i.br = call fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h3fde20e01ca068a5E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2832) %i.a) ; 2 uses
  %i.bs = fsub float %.sroa.030.0, %i.ar
  %i.bt = fcmp olt float %i.br, %i.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.bt, label %bb.s, label %bb.al

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bv = load float, ptr %i.bu, align 4, !noundef !4
  %i.bw = tail call float @llvm.maxnum.f32(float %i.bv, float 0.000000e+00)
  br label %vector.ph

bb.x:                                             ; preds = %bb.v
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1276) #46
  unreachable

bb.y:                                             ; preds = %bb.s
  %.not56 = icmp eq i64 %8, 0
  br i1 %.not56, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %.split, %bb.s, %bb.ac
  %i.bx = icmp ult i64 %i.av, %6
  br i1 %i.bx, label %bb.ae, label %bb.al

bb.aa:                                            ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !noundef !4 ; 2 uses
  %i.ca = fcmp une float %i.bz, %i.aw
  br i1 %i.ca, label %.split, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1277) #46
  unreachable

.split:                                           ; preds = %bb.aa
  %i.cb = fcmp ogt float %i.bz, %i.aw
  br i1 %i.cb, label %bb.ad, label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !noundef !4
  %i.ce = load i32, ptr %7, align 4, !noundef !4
  %i.cf = sub i32 %i.cd, %i.ce
  %i.cg = sub nuw i32 %spec.select, %spec.select57
  %i.ch = icmp ugt i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.ad, label %bb.z

bb.ad:                                            ; preds = %.split, %bb.ac
  %i.ci = icmp ult i64 %i.av, %6
  br i1 %i.ci, label %bb.ah, label %bb.ak

bb.ae:                                            ; preds = %bb.z
  %i.cj = icmp ult i64 %i.av, %8
  br i1 %i.cj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.av ; 4 uses
  store i32 %spec.select57, ptr %i.ck, align 4
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %spec.select, ptr %.sroa.434.0..sroa_idx, align 4
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store float %.sroa.10.0, ptr %.sroa.535.0..sroa_idx, align 4
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store float %i.aw, ptr %.sroa.636.0..sroa_idx, align 4
  %i.cl = add nuw i64 %i.av, 1
  store i64 %i.cl, ptr %9, align 8
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.av, i64 noundef %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1278) #46
  unreachable

bb.ah:                                            ; preds = %bb.ad
  %i.cm = icmp ult i64 %i.av, %8
  br i1 %i.cm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cn, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false)
  %i.co = add nuw i64 %i.av, 1
  store i64 %i.co, ptr %9, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.av, i64 noundef %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1279) #46
  unreachable

bb.ak:                                            ; preds = %bb.ai, %bb.ad
  store i32 %spec.select57, ptr %7, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %spec.select, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 4
  store float %i.aw, ptr %i.by, align 4
  br label %bb.al

bb.al:                                            ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbae568b48856083eE.exit, %bb.ak, %bb.z, %bb.af, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc7cluster27BrotliCompareAndPushToQueue17hb193f59a3e384497E(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull align 4 captures(none) %7, i64 noundef %8, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %9) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1040 x i8], align 8              ; 7 uses
  %i.b = icmp eq i32 %4, %5
  br i1 %i.b, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = tail call i32 @llvm.umax.i32(i32 %5, i32 %4) ; 4 uses
  %spec.select57 = tail call i32 @llvm.umin.i32(i32 %5, i32 %4) ; 4 uses
  %i.c = zext i32 %spec.select57 to i64           ; 6 uses
  %i.d = icmp ugt i64 %3, %i.c
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = zext i32 %spec.select to i64             ; 6 uses
  %i.f = icmp ugt i64 %3, %i.e
  br i1 %i.f, label %bb.e, label %bb.n

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.c, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1272) #46
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.c
  %i.h = load i32, ptr %i.g, align 4, !noundef !4 ; 3 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e
  %i.k = load i32, ptr %i.j, align 4, !noundef !4 ; 3 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = add nuw nsw i64 %i.l, %i.i               ; 3 uses
  %i.n = uitofp i32 %i.h to float                 ; 2 uses
  %i.o = icmp ult i32 %i.h, 256
  br i1 %i.o, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call nnan float @llvm.log2.f32(float %i.n)
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.0.0.i = phi float [ %i.t, %bb.h ], [ %i.p, %bb.f ]
  %i.q = uitofp i32 %i.k to float                 ; 2 uses
  %i.r = icmp ult i32 %i.k, 256
  br i1 %i.r, label %bb.k, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.i
  %i.t = load float, ptr %i.s, align 4, !noundef !4
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.u = tail call nnan float @llvm.log2.f32(float %i.q)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.01.0.i = phi float [ %i.y, %bb.k ], [ %i.u, %bb.i ]
  %i.v = uitofp nneg i64 %i.m to float            ; 2 uses
  %i.w = icmp samesign ult i64 %i.m, 256
  br i1 %i.w, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.l
  %i.y = load float, ptr %i.x, align 4, !noundef !4
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.z = tail call nnan float @llvm.log2.f32(float %i.v)
  br label %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit

bb.m:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.m
  %i.ab = load float, ptr %i.aa, align 4, !noundef !4
  br label %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit

_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit: ; preds = %bb.l, %bb.m
  %.sroa.02.0.i = phi float [ %i.ab, %bb.m ], [ %i.z, %bb.l ]
  %i.ac = fmul float %.sroa.0.0.i, %i.n
  %i.ad = fmul float %.sroa.01.0.i, %i.q
  %i.ae = fadd float %i.ac, %i.ad
  %i.af = fmul float %.sroa.02.0.i, %i.v
  %i.ag = fsub float %i.ae, %i.af
  %i.ah = icmp ugt i64 %1, %i.c
  br i1 %i.ah, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1273) #46
  unreachable

bb.o:                                             ; preds = %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit
  %i.ai = getelementptr inbounds nuw [1040 x i8], ptr %0, i64 %i.c ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1032
  %i.ak = load float, ptr %i.aj, align 8, !alias.scope !12059, !noundef !4 ; 2 uses
  %i.al = icmp ugt i64 %1, %i.e
  br i1 %i.al, label %bb.q, label %bb.r

bb.p:                                             ; preds = %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.c, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1274) #46
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.am = fmul float %i.ag, 5.000000e-01
  %i.an = fsub float %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw [1040 x i8], ptr %0, i64 %i.e ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1032
  %i.aq = load float, ptr %i.ap, align 8, !alias.scope !12062, !noundef !4 ; 2 uses
  %i.ar = fsub float %i.an, %i.aq                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 1024
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !12065, !noundef !4
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.q
  %.pre = load i64, ptr %9, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1275) #46
  unreachable

bb.s:                                             ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit, %._crit_edge, %bb.t
  %i.av = phi i64 [ %.pre2, %bb.t ], [ %.pre, %._crit_edge ], [ %.pre2, %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit ] ; 11 uses
  %.sroa.10.0 = phi float [ %i.ak, %bb.t ], [ %i.aq, %._crit_edge ], [ %i.br, %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit ] ; 3 uses
  %i.aw = fadd float %i.ar, %.sroa.10.0           ; 4 uses
  %.not55 = icmp eq i64 %i.av, 0
  br i1 %.not55, label %bb.z, label %bb.y

bb.t:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 1024
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !12068, !noundef !4 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  %.pre2 = load i64, ptr %9, align 8              ; 3 uses
  br i1 %i.az, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = icmp eq i64 %.pre2, 0
  br i1 %i.ba, label %vector.ph, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not = icmp eq i64 %8, 0
  br i1 %.not, label %bb.x, label %bb.w

vector.ph:                                        ; preds = %bb.u, %bb.w
  %.sroa.030.0 = phi float [ %i.bw, %bb.w ], [ f0x7E967699, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(1040) %i.ai, i64 1040, i1 false), !alias.scope !12071
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !12075, !noalias !12078, !noundef !4
  %i.bd = add i64 %i.bc, %i.ay
  store i64 %i.bd, ptr %i.bb, align 8, !alias.scope !12081
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.be, align 8
  %wide.load18 = load <4 x i32>, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load19 = load <4 x i32>, ptr %i.bg, align 8
  %wide.load20 = load <4 x i32>, ptr %i.bh, align 8
  %i.bi = add <4 x i32> %wide.load19, %wide.load
  %i.bj = add <4 x i32> %wide.load20, %wide.load18
  store <4 x i32> %i.bi, ptr %i.be, align 8
  store <4 x i32> %i.bj, ptr %i.bf, align 8
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index.next ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.bk, align 8
  %wide.load18.1 = load <4 x i32>, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index.next ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load19.1 = load <4 x i32>, ptr %i.bm, align 8
  %wide.load20.1 = load <4 x i32>, ptr %i.bn, align 8
  %i.bo = add <4 x i32> %wide.load19.1, %wide.load.1
  %i.bp = add <4 x i32> %wide.load20.1, %wide.load18.1
  store <4 x i32> %i.bo, ptr %i.bk, align 8
  store <4 x i32> %i.bp, ptr %i.bl, align 8
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.bq = icmp eq i64 %index.next.1, 256
  br i1 %i.bq, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit, label %vector.body, !llvm.loop !12084

_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit: ; preds = %vector.body
  %i.br = call fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17hb5e57a0624b7a234E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.a) ; 2 uses
  %i.bs = fsub float %.sroa.030.0, %i.ar
  %i.bt = fcmp olt float %i.br, %i.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.bt, label %bb.s, label %bb.al

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bv = load float, ptr %i.bu, align 4, !noundef !4
  %i.bw = tail call float @llvm.maxnum.f32(float %i.bv, float 0.000000e+00)
  br label %vector.ph

bb.x:                                             ; preds = %bb.v
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1276) #46
  unreachable

bb.y:                                             ; preds = %bb.s
  %.not56 = icmp eq i64 %8, 0
  br i1 %.not56, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %.split, %bb.s, %bb.ac
  %i.bx = icmp ult i64 %i.av, %6
  br i1 %i.bx, label %bb.ae, label %bb.al

bb.aa:                                            ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !noundef !4 ; 2 uses
  %i.ca = fcmp une float %i.bz, %i.aw
  br i1 %i.ca, label %.split, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1277) #46
  unreachable

.split:                                           ; preds = %bb.aa
  %i.cb = fcmp ogt float %i.bz, %i.aw
  br i1 %i.cb, label %bb.ad, label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !noundef !4
  %i.ce = load i32, ptr %7, align 4, !noundef !4
  %i.cf = sub i32 %i.cd, %i.ce
  %i.cg = sub nuw i32 %spec.select, %spec.select57
  %i.ch = icmp ugt i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.ad, label %bb.z

bb.ad:                                            ; preds = %.split, %bb.ac
  %i.ci = icmp ult i64 %i.av, %6
  br i1 %i.ci, label %bb.ah, label %bb.ak

bb.ae:                                            ; preds = %bb.z
  %i.cj = icmp ult i64 %i.av, %8
  br i1 %i.cj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.av ; 4 uses
  store i32 %spec.select57, ptr %i.ck, align 4
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %spec.select, ptr %.sroa.434.0..sroa_idx, align 4
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store float %.sroa.10.0, ptr %.sroa.535.0..sroa_idx, align 4
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store float %i.aw, ptr %.sroa.636.0..sroa_idx, align 4
  %i.cl = add nuw i64 %i.av, 1
  store i64 %i.cl, ptr %9, align 8
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.av, i64 noundef %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1278) #46
  unreachable

bb.ah:                                            ; preds = %bb.ad
  %i.cm = icmp ult i64 %i.av, %8
  br i1 %i.cm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cn, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false)
  %i.co = add nuw i64 %i.av, 1
  store i64 %i.co, ptr %9, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.av, i64 noundef %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1279) #46
  unreachable

bb.ak:                                            ; preds = %bb.ai, %bb.ad
  store i32 %spec.select57, ptr %7, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %spec.select, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 4
  store float %i.aw, ptr %i.by, align 4
  br label %bb.al

bb.al:                                            ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit, %bb.ak, %bb.z, %bb.af, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc7cluster27BrotliCompareAndPushToQueue17hb7a593ee4123fb2dE(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull align 4 captures(none) %7, i64 noundef %8, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %9) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2192 x i8], align 8              ; 7 uses
  %i.b = icmp eq i32 %4, %5
  br i1 %i.b, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = tail call i32 @llvm.umax.i32(i32 %5, i32 %4) ; 4 uses
  %spec.select57 = tail call i32 @llvm.umin.i32(i32 %5, i32 %4) ; 4 uses
  %i.c = zext i32 %spec.select57 to i64           ; 6 uses
  %i.d = icmp ugt i64 %3, %i.c
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = zext i32 %spec.select to i64             ; 6 uses
  %i.f = icmp ugt i64 %3, %i.e
  br i1 %i.f, label %bb.e, label %bb.n

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.c, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1272) #46
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.c
  %i.h = load i32, ptr %i.g, align 4, !noundef !4 ; 3 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e
  %i.k = load i32, ptr %i.j, align 4, !noundef !4 ; 3 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = add nuw nsw i64 %i.l, %i.i               ; 3 uses
  %i.n = uitofp i32 %i.h to float                 ; 2 uses
  %i.o = icmp ult i32 %i.h, 256
  br i1 %i.o, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call nnan float @llvm.log2.f32(float %i.n)
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.0.0.i = phi float [ %i.t, %bb.h ], [ %i.p, %bb.f ]
  %i.q = uitofp i32 %i.k to float                 ; 2 uses
  %i.r = icmp ult i32 %i.k, 256
  br i1 %i.r, label %bb.k, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.i
  %i.t = load float, ptr %i.s, align 4, !noundef !4
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.u = tail call nnan float @llvm.log2.f32(float %i.q)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.01.0.i = phi float [ %i.y, %bb.k ], [ %i.u, %bb.i ]
  %i.v = uitofp nneg i64 %i.m to float            ; 2 uses
  %i.w = icmp samesign ult i64 %i.m, 256
  br i1 %i.w, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.l
  %i.y = load float, ptr %i.x, align 4, !noundef !4
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.z = tail call nnan float @llvm.log2.f32(float %i.v)
  br label %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit

bb.m:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.m
  %i.ab = load float, ptr %i.aa, align 4, !noundef !4
  br label %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit

_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit: ; preds = %bb.l, %bb.m
  %.sroa.02.0.i = phi float [ %i.ab, %bb.m ], [ %i.z, %bb.l ]
  %i.ac = fmul float %.sroa.0.0.i, %i.n
  %i.ad = fmul float %.sroa.01.0.i, %i.q
  %i.ae = fadd float %i.ac, %i.ad
  %i.af = fmul float %.sroa.02.0.i, %i.v
  %i.ag = fsub float %i.ae, %i.af
  %i.ah = icmp ugt i64 %1, %i.c
  br i1 %i.ah, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1273) #46
  unreachable

bb.o:                                             ; preds = %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit
  %i.ai = getelementptr inbounds nuw [2192 x i8], ptr %0, i64 %i.c ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2184
  %i.ak = load float, ptr %i.aj, align 8, !alias.scope !12085, !noundef !4 ; 2 uses
  %i.al = icmp ugt i64 %1, %i.e
  br i1 %i.al, label %bb.q, label %bb.r

bb.p:                                             ; preds = %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.c, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1274) #46
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.am = fmul float %i.ag, 5.000000e-01
  %i.an = fsub float %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw [2192 x i8], ptr %0, i64 %i.e ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2184
  %i.aq = load float, ptr %i.ap, align 8, !alias.scope !12088, !noundef !4 ; 2 uses
  %i.ar = fsub float %i.an, %i.aq                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 2176
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !12091, !noundef !4
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.q
  %.pre = load i64, ptr %9, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1275) #46
  unreachable

bb.s:                                             ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h516f5b75452acef8E.exit, %._crit_edge, %bb.t
  %i.av = phi i64 [ %.pre2, %bb.t ], [ %.pre, %._crit_edge ], [ %.pre2, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h516f5b75452acef8E.exit ] ; 11 uses
  %.sroa.10.0 = phi float [ %i.ak, %bb.t ], [ %i.aq, %._crit_edge ], [ %i.br, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h516f5b75452acef8E.exit ] ; 3 uses
  %i.aw = fadd float %i.ar, %.sroa.10.0           ; 4 uses
  %.not55 = icmp eq i64 %i.av, 0
  br i1 %.not55, label %bb.z, label %bb.y

bb.t:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 2176
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !12094, !noundef !4 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  %.pre2 = load i64, ptr %9, align 8              ; 3 uses
  br i1 %i.az, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = icmp eq i64 %.pre2, 0
  br i1 %i.ba, label %vector.ph, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not = icmp eq i64 %8, 0
  br i1 %.not, label %bb.x, label %bb.w

vector.ph:                                        ; preds = %bb.u, %bb.w
  %.sroa.030.0 = phi float [ %i.bw, %bb.w ], [ f0x7E967699, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(2192) %i.ai, i64 2192, i1 false), !alias.scope !12097
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 2176 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !12101, !noalias !12104, !noundef !4
  %i.bd = add i64 %i.bc, %i.ay
  store i64 %i.bd, ptr %i.bb, align 8, !alias.scope !12107
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.be, align 8
  %wide.load18 = load <4 x i32>, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load19 = load <4 x i32>, ptr %i.bg, align 8
  %wide.load20 = load <4 x i32>, ptr %i.bh, align 8
  %i.bi = add <4 x i32> %wide.load19, %wide.load
  %i.bj = add <4 x i32> %wide.load20, %wide.load18
  store <4 x i32> %i.bi, ptr %i.be, align 8
  store <4 x i32> %i.bj, ptr %i.bf, align 8
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index.next ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.bk, align 8
  %wide.load18.1 = load <4 x i32>, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index.next ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load19.1 = load <4 x i32>, ptr %i.bm, align 8
  %wide.load20.1 = load <4 x i32>, ptr %i.bn, align 8
  %i.bo = add <4 x i32> %wide.load19.1, %wide.load.1
  %i.bp = add <4 x i32> %wide.load20.1, %wide.load18.1
  store <4 x i32> %i.bo, ptr %i.bk, align 8
  store <4 x i32> %i.bp, ptr %i.bl, align 8
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.bq = icmp eq i64 %index.next.1, 544
  br i1 %i.bq, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17h516f5b75452acef8E.exit, label %vector.body, !llvm.loop !12110

_ZN6brotli3enc9histogram21HistogramAddHistogram17h516f5b75452acef8E.exit: ; preds = %vector.body
  %i.br = call fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17hcf0c1c8411fee5dfE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.a) ; 2 uses
  %i.bs = fsub float %.sroa.030.0, %i.ar
  %i.bt = fcmp olt float %i.br, %i.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.bt, label %bb.s, label %bb.al

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bv = load float, ptr %i.bu, align 4, !noundef !4
  %i.bw = tail call float @llvm.maxnum.f32(float %i.bv, float 0.000000e+00)
  br label %vector.ph

bb.x:                                             ; preds = %bb.v
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1276) #46
  unreachable

bb.y:                                             ; preds = %bb.s
  %.not56 = icmp eq i64 %8, 0
  br i1 %.not56, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %.split, %bb.s, %bb.ac
  %i.bx = icmp ult i64 %i.av, %6
  br i1 %i.bx, label %bb.ae, label %bb.al

bb.aa:                                            ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !noundef !4 ; 2 uses
  %i.ca = fcmp une float %i.bz, %i.aw
  br i1 %i.ca, label %.split, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1277) #46
  unreachable

.split:                                           ; preds = %bb.aa
  %i.cb = fcmp ogt float %i.bz, %i.aw
  br i1 %i.cb, label %bb.ad, label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !noundef !4
  %i.ce = load i32, ptr %7, align 4, !noundef !4
  %i.cf = sub i32 %i.cd, %i.ce
  %i.cg = sub nuw i32 %spec.select, %spec.select57
  %i.ch = icmp ugt i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.ad, label %bb.z

bb.ad:                                            ; preds = %.split, %bb.ac
  %i.ci = icmp ult i64 %i.av, %6
  br i1 %i.ci, label %bb.ah, label %bb.ak

bb.ae:                                            ; preds = %bb.z
  %i.cj = icmp ult i64 %i.av, %8
  br i1 %i.cj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.av ; 4 uses
  store i32 %spec.select57, ptr %i.ck, align 4
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %spec.select, ptr %.sroa.434.0..sroa_idx, align 4
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store float %.sroa.10.0, ptr %.sroa.535.0..sroa_idx, align 4
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store float %i.aw, ptr %.sroa.636.0..sroa_idx, align 4
  %i.cl = add nuw i64 %i.av, 1
  store i64 %i.cl, ptr %9, align 8
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.av, i64 noundef %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1278) #46
  unreachable

bb.ah:                                            ; preds = %bb.ad
  %i.cm = icmp ult i64 %i.av, %8
  br i1 %i.cm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cn, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false)
  %i.co = add nuw i64 %i.av, 1
  store i64 %i.co, ptr %9, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.av, i64 noundef %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1279) #46
  unreachable

bb.ak:                                            ; preds = %bb.ai, %bb.ad
  store i32 %spec.select57, ptr %7, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %spec.select, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 4
  store float %i.aw, ptr %i.by, align 4
  br label %bb.al

bb.al:                                            ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h516f5b75452acef8E.exit, %bb.ak, %bb.z, %bb.af, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h3fde20e01ca068a5E(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(2832) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 4                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !12111, !noundef !4 ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.r, label %.preheader4

.preheader4:                                      ; preds = %bb.a, %bb.f
  %i.f = phi i64 [ %i.q, %bb.f ], [ 1, %bb.a ]    ; 4 uses
  %.sroa.01.08 = phi i64 [ %.sroa.01.2.1, %bb.f ], [ 0, %bb.a ] ; 6 uses
  %.sroa.038.07 = phi i64 [ %i.j, %bb.f ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.038.07
  %i.h = load i32, ptr %i.g, align 4, !noundef !4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.preheader4.1, label %bb.c

bb.b:                                             ; preds = %bb.f
  switch i64 %.sroa.01.2.1, label %.thread [
    i64 1, label %bb.r
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.k
  ]

bb.c:                                             ; preds = %.preheader4
  %i.i = icmp samesign ult i64 %.sroa.01.08, 5
  br i1 %i.i, label %bb.g, label %bb.h

.preheader4.1:                                    ; preds = %bb.g, %.preheader4
  %.sroa.01.2 = phi i64 [ %i.s, %bb.g ], [ %.sroa.01.08, %.preheader4 ] ; 6 uses
  %i.j = add nuw nsw i64 %i.f, 1
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %.not.1 = icmp eq i32 %i.l, 0
  br i1 %.not.1, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.preheader4.1
  %i.m = icmp samesign ult i64 %.sroa.01.2, 5
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.01.2
  store i64 %i.f, ptr %i.n, align 8
  %i.o = add nuw nsw i64 %.sroa.01.2, 1
  %i.p = icmp eq i64 %.sroa.01.2, 4
  br i1 %i.p, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader4.1
  %.sroa.01.2.1 = phi i64 [ %i.o, %bb.e ], [ %.sroa.01.2, %.preheader4.1 ] ; 2 uses
  %i.q = add nuw nsw i64 %i.f, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.q, 705
  br i1 %exitcond.not.1, label %bb.b, label %.preheader4

bb.g:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.01.08
  store i64 %.sroa.038.07, ptr %i.r, align 8
  %i.s = add nuw nsw i64 %.sroa.01.08, 1
  %i.t = icmp eq i64 %.sroa.01.08, 4
  br i1 %i.t, label %.thread, label %.preheader4.1

bb.h:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.08.lcssa = phi i64 [ %.sroa.01.08, %bb.c ], [ %.sroa.01.2, %bb.d ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.01.08.lcssa, i64 noundef 5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1281) #46
  unreachable

.thread:                                          ; preds = %bb.g, %bb.e, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.u = icmp ult i64 %i.d, 256
  br i1 %i.u, label %bb.y, label %bb.w

bb.i:                                             ; preds = %bb.b
  %i.v = uitofp i64 %i.d to float
  %i.w = fadd float %i.v, 2.000000e+01
  br label %bb.r

bb.j:                                             ; preds = %bb.b
  %i.x = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.y = icmp ult i64 %i.x, 704
  br i1 %i.y, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.b
  %i.z = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 704
  br i1 %i.aa, label %bb.t, label %bb.s

bb.l:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x
  %i.ac = load i32, ptr %i.ab, align 4, !noundef !4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 704
  br i1 %i.af, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.x, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1282) #46
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 704
  br i1 %i.ai, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ae, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #46
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ae
  %i.ak = load i32, ptr %i.aj, align 4, !noundef !4 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %i.am = load i32, ptr %i.al, align 4, !noundef !4 ; 2 uses
  %.sroa.0.0.i = tail call noundef i32 @llvm.umax.i32(i32 %i.am, i32 %i.ak)
  %.sroa.0.0.i71 = tail call noundef i32 @llvm.umax.i32(i32 %.sroa.0.0.i, i32 %i.ac)
  %i.an = add i32 %i.ak, %i.ac
  %i.ao = add i32 %i.an, %i.am
  %i.ap = shl i32 %i.ao, 1
  %i.aq = uitofp i32 %i.ap to float
  %i.ar = fadd float %i.aq, 2.800000e+01
  %i.as = uitofp i32 %.sroa.0.0.i71 to float
  %i.at = fsub float %i.ar, %i.as
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ah, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1284) #46
  unreachable

.lr.ph:                                           ; preds = %bb.v
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bq
  %i.av = load i32, ptr %i.au, align 4, !noundef !4 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bt
  %i.ax = load i32, ptr %i.aw, align 4, !noundef !4 ; 2 uses
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.bo, i32 %i.bj) ; 2 uses
  %spec.select85 = tail call i32 @llvm.umin.i32(i32 %i.bo, i32 %i.bj) ; 2 uses
  %.sroa.0.2 = tail call i32 @llvm.umax.i32(i32 %i.av, i32 %spec.select) ; 2 uses
  %.sroa.19.5 = tail call i32 @llvm.umin.i32(i32 %i.av, i32 %spec.select) ; 2 uses
  %.sroa.0.3 = tail call i32 @llvm.umax.i32(i32 %i.ax, i32 %.sroa.0.2) ; 2 uses
  %.sroa.27.5 = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %.sroa.0.2) ; 2 uses
end_hunk_18
