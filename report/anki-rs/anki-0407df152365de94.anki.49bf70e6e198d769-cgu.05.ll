Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.05?download=true
inline.NumInlined: 5793
inline.NumDeleted: 2830
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_insert217h167e215492b853d4E":bb.a

bb.af:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 3, ptr %i.dq, align 8
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit"

.critedge:                                        ; preds = %.thread, %bb.j
  %.sroa.2.0..sroa_idx.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %.sroa.2.0..sroa_idx.c, align 8
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit"

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit": ; preds = %bb.af, %bb.h, %bb.ah, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit.thread", %bb.y, %bb.x, %.critedge
  ret void

bb.ag:                                            ; preds = %bb.d
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit.thread": ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7058)
  %i.ds = load ptr, ptr %2, align 8, !alias.scope !7061, !noundef !3 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit", label %bb.ah

bb.ah:                                            ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit.thread"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7071)
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !7074, !nonnull !3, !noundef !3
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !7074, !noundef !3
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !7074, !noundef !3
  tail call void %i.dv(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef %i.dy, i64 noundef %i.ea), !inline_history !6947
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit"

bb.ai:                                            ; preds = %bb.a, %bb.r
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7081)
  %i.eb = load ptr, ptr %3, align 8, !alias.scope !7084, !nonnull !3, !align !17, !noundef !3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !7084, !nonnull !3, !noundef !3
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !7084, !noundef !3
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !7084, !noundef !3
  invoke void %i.ed(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef %i.eg, i64 noundef %i.ei)
          to label %bb.ak unwind label %bb.aj, !inline_history !1434

bb.aj:                                            ; preds = %bb.al, %bb.ai
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit44": ; preds = %bb.ak, %bb.al
  resume { ptr, i32 } %.pn.ph

bb.ak:                                            ; preds = %bb.ag, %bb.t, %bb.ai
  %.pn.ph = phi { ptr, i32 } [ %i.bz, %bb.t ], [ %i.dr, %bb.ag ], [ %lpad.thr_comm, %bb.ai ]
  call void @llvm.experimental.noalias.scope.decl(metadata !7085)
  call void @llvm.experimental.noalias.scope.decl(metadata !7088)
  %i.ek = load ptr, ptr %2, align 8, !alias.scope !7091, !noundef !3 ; 2 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit44", label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !7092)
  call void @llvm.experimental.noalias.scope.decl(metadata !7095)
  call void @llvm.experimental.noalias.scope.decl(metadata !7098)
  call void @llvm.experimental.noalias.scope.decl(metadata !7101)
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !noalias !7104, !nonnull !3, !noundef !3
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !7104, !noundef !3
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !7104, !noundef !3
  invoke void %i.en(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef %i.eq, i64 noundef %i.es)
          to label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit44" unwind label %bb.aj, !inline_history !1407

infloop:                                          ; preds = %.outer130, %infloop
  br label %infloop

infloop163:                                       ; preds = %.outer, %infloop163
  br label %infloop163
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17h8d17a03dcb98b0bfE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7105)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7105, !noalias !7108, !noundef !3 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %"._ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit_crit_edge", label %bb.b

"._ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit_crit_edge": ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !alias.scope !7110
  br label %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i16 @_ZN4http6header3map15hash_elem_using17h72e656fb3aad691aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !7108 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !7105, !noalias !7108, !noundef !3 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !7105, !noalias !7108, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !7105, !noalias !7108, !nonnull !3
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !7105, !noalias !7108, !nonnull !3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load ptr, ptr %1, align 8                ; 4 uses
  %i.t = icmp eq ptr %i.s, null                   ; 3 uses
  %not..i.i.i = xor i1 %i.t, true
  %i.u = load i8, ptr %i.q, align 8, !range !1366
  %i.v = load i64, ptr %i.r, align 8              ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i", %bb.b
  %.sroa.05.0.i.ph = phi i64 [ %i.aj, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i" ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.ak, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i" ], [ %i.i, %bb.b ] ; 2 uses
  %i.x = icmp ult i64 %.sroa.0.0.i.ph, %i.k       ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.x, %.not.not
  %.sroa.0.0.i.ph.mux = select i1 %i.x, i64 %.sroa.0.0.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !noalias !7115, !noundef !3 ; 2 uses
  %.not.i = icmp eq i16 %i.z, -1
  br i1 %.not.i, label %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit", label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !7115, !noundef !3 ; 2 uses
  %i.ad = and i16 %i.ac, %i.g
  %i.ae = zext i16 %i.ad to i64
  %i.af = sub i64 %.sroa.0.0.i.ph.mux, %i.ae
  %i.ag = and i64 %i.af, %i.n
  %i.ah = icmp samesign ugt i64 %.sroa.05.0.i.ph, %i.ag
  br i1 %i.ah, label %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i16 %i.ac, %i.e
  br i1 %i.ai, label %bb.e, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i", %.split.i, %bb.h, %bb.f, %bb.d
  %i.aj = add nuw nsw i64 %.sroa.05.0.i.ph, 1
  %i.ak = add i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.al = icmp samesign ugt i64 %i.b, %i.aa
  br i1 %i.al, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.aa ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !7115, !noundef !3
  %i.ap = icmp ne ptr %i.ao, null                 ; 2 uses
  %i.aq = xor i1 %i.ap, %i.t
  br i1 %i.aq, label %bb.g, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

bb.g:                                             ; preds = %bb.f
  br i1 %i.ap, label %bb.h, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i"

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !7115, !noundef !3
  %.not.i.i.i.i.i = icmp eq i64 %i.as, %i.v
  br i1 %.not.i.i.i.i.i, label %.split.i, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

.split.i:                                         ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !noalias !7115, !noundef !3
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.au, ptr %i.w, i64 %i.v), !noalias !7115
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.av, label %bb.l, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i": ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.t)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ax = load i8, ptr %i.aw, align 8, !range !1366, !noalias !7115, !noundef !3
  %i.ay = icmp eq i8 %i.ax, %i.u
  br i1 %i.ay, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit1", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

bb.i:                                             ; preds = %bb.e
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.aa, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @310) #50
          to label %.noexc2 unwind label %bb.j

.noexc2:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7119)
  %i.ba = load ptr, ptr %1, align 8, !alias.scope !7122, !noundef !3 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7132)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !7135, !nonnull !3, !noundef !3
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load ptr, ptr %i.q, align 8, !alias.scope !7135, !noundef !3
  %i.bg = load i64, ptr %i.r, align 8, !alias.scope !7135, !noundef !3
  invoke void %i.bd(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef %i.bf, i64 noundef %i.bg)
          to label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit" unwind label %bb.m, !inline_history !1407

"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit": ; preds = %.loopexit, %bb.c, %"._ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit_crit_edge"
  %2 = phi ptr [ %.pre, %"._ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit_crit_edge" ], [ %i.s, %bb.c ], [ %i.s, %.loopexit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7137)
  %i.bh = icmp eq ptr %2, null
  br i1 %i.bh, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit1", label %bb.l

bb.l:                                             ; preds = %.split.i, %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit"
  %3 = phi i1 [ false, %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit" ], [ true, %.split.i ]
  %4 = phi ptr [ %2, %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit" ], [ %i.s, %.split.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7147)
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !7150, !nonnull !3, !noundef !3
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !7150, !noundef !3
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !7150, !noundef !3
  tail call void %i.bj(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef %i.bm, i64 noundef %i.bo), !inline_history !6947
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit1"

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit1": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i", %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit", %bb.l
  %i.bp = phi i1 [ %3, %bb.l ], [ false, %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit" ], [ true, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i" ]
  ret i1 %i.bp

bb.m:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit": ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.az

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17ha2688d6f0267902cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7151)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7151, !noalias !7154, !noundef !3 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i16 @_ZN4http6header3map15hash_elem_using17h72e656fb3aad691aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !7154 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !7151, !noalias !7154, !noundef !3 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !7151, !noalias !7154, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !7151, !noalias !7154, !nonnull !3
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !7151, !noalias !7154, !nonnull !3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i", %bb.b
  %.sroa.05.0.i.ph = phi i64 [ %i.ae, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i" ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.af, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i" ], [ %i.i, %bb.b ] ; 2 uses
  %i.s = icmp ult i64 %.sroa.0.0.i.ph, %i.k       ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.s, %.not.not
  %.sroa.0.0.i.ph.mux = select i1 %i.s, i64 %.sroa.0.0.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !noalias !7156, !noundef !3 ; 2 uses
  %.not.i = icmp eq i16 %i.u, -1
  br i1 %.not.i, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit", label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.v = zext i16 %i.u to i64                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.x = load i16, ptr %i.w, align 2, !noalias !7156, !noundef !3 ; 2 uses
  %i.y = and i16 %i.x, %i.g
  %i.z = zext i16 %i.y to i64
  %i.aa = sub i64 %.sroa.0.0.i.ph.mux, %i.z
  %i.ab = and i64 %i.aa, %i.n
  %i.ac = icmp samesign ugt i64 %.sroa.05.0.i.ph, %i.ab
  br i1 %i.ac, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i16 %i.x, %i.e
  br i1 %i.ad, label %bb.e, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i", %.split.i, %bb.h, %bb.f, %bb.d
  %i.ae = add nuw nsw i64 %.sroa.05.0.i.ph, 1
  %i.af = add i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp samesign ugt i64 %i.b, %i.v
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.v ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !7156, !noundef !3
  %i.ak = icmp ne ptr %i.aj, null                 ; 2 uses
  %i.al = load ptr, ptr %1, align 8, !noalias !7156, !noundef !3
  %i.am = icmp eq ptr %i.al, null                 ; 3 uses
  %not..i.i.i = xor i1 %i.am, true
  %i.an = xor i1 %i.ak, %i.am
  br i1 %i.an, label %bb.g, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

bb.g:                                             ; preds = %bb.f
  br i1 %i.ak, label %bb.h, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i"

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !7156, !noundef !3 ; 2 uses
  %i.aq = load i64, ptr %i.r, align 8, !noalias !7156, !noundef !3
  %.not.i.i.i.i.i = icmp eq i64 %i.ap, %i.aq
  br i1 %.not.i.i.i.i.i, label %.split.i, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

.split.i:                                         ; preds = %bb.h
  %i.ar = load ptr, ptr %i.q, align 8, !noalias !7156, !noundef !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !noalias !7156, !noundef !3
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.at, ptr %i.ar, i64 %i.ap), !noalias !7156
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.au, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i": ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.am)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aw = load i8, ptr %i.av, align 8, !range !1366, !noalias !7156, !noundef !3
  %i.ax = load i8, ptr %i.q, align 8, !range !1366, !noalias !7156, !noundef !3
  %i.ay = icmp eq i8 %i.aw, %i.ax
  br i1 %i.ay, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

bb.i:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.v, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @310) #50, !noalias !7156
  unreachable

"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit": ; preds = %.split.i, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i", %.loopexit, %bb.c, %bb.a
  %i.az = phi i1 [ false, %bb.a ], [ true, %.split.i ], [ true, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i" ], [ false, %.loopexit ], [ false, %bb.c ]
  ret i1 %i.az

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17hf4b748d088d7b428E"(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 4 uses
  %i.h = icmp ult i64 %i.g, 88686269585142076
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load i64, ptr %0, align 8, !range !275, !noundef !3
  %i.j = icmp eq i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !3 ; 5 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = uitofp nneg i64 %i.g to float
  %i.n = uitofp i64 %i.l to float
  %i.o = fdiv float %i.m, %i.n
  %i.p = fcmp ult float %i.o, 2.000000e-01
  br i1 %i.p, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = lshr i64 %i.l, 2
  %i.s = sub nuw i64 %i.l, %i.r
  %i.t = icmp eq i64 %i.g, %i.s
  br i1 %i.t, label %bb.m, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17h77b1dafbf9151fbcE.exit"

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_ZN4http6header3map6Danger7set_red17h7b00acfaf821bc17E(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.w = load i64, ptr %i.k, align 8, !noundef !3 ; 2 uses
  %.idx = shl i64 %i.w, 2                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.z = add i64 %.idx, -4                        ; 2 uses
  %i.aa = lshr exact i64 %i.z, 2
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 28
  br i1 %min.iters.check, label %.lr.ph.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ab, 9223372036854775800     ; 3 uses
  %i.ac = shl i64 %n.vec, 2
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ae
  %i.af = getelementptr i8, ptr %i.v, i64 %i.ae
  %next.gep30 = getelementptr i8, ptr %i.af, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep30, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !7157

end_hunk_0
