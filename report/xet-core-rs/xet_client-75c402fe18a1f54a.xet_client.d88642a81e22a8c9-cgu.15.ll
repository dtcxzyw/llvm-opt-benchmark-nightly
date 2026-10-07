Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.15?download=true
inline.NumInlined: 1301
inline.NumDeleted: 603
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECsiAynQAjgDuT_10xet_client:bb.a
bb.ad:                                            ; preds = %bb.a, %bb.r
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.di = load ptr, ptr %3, align 8, !alias.scope !207, !nonnull !11, !align !12, !noundef !11
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !207, !nonnull !11, !noundef !11
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !207, !noundef !11
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !207, !noundef !11
  invoke void %i.dk(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef %i.dn, i64 noundef %i.dp)
          to label %.thread48 unwind label %bb.ae, !inline_history !0

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header4name10HeaderNameECsiAynQAjgDuT_10xet_client.exit39: ; preds = %.thread48, %bb.af
  resume { ptr, i32 } %.pn52

.thread48:                                        ; preds = %bb.ad, %bb.ab, %bb.aa
  %.pn52 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp56, %bb.aa ], [ %i.cy, %bb.ab ], [ %lpad.thr_comm.split-lp, %bb.ad ]
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.dr = load ptr, ptr %2, align 8, !alias.scope !210, !noundef !11 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header4name10HeaderNameECsiAynQAjgDuT_10xet_client.exit39, label %bb.af

bb.af:                                            ; preds = %.thread48
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !215, !nonnull !11, !noundef !11
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !215, !noundef !11
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !215, !noundef !11
  invoke void %i.du(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef %i.dx, i64 noundef %i.dz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header4name10HeaderNameECsiAynQAjgDuT_10xet_client.exit39 unwind label %bb.ae, !inline_history !2

infloop:                                          ; preds = %.outer115, %infloop
  br label %infloop

infloop142:                                       ; preds = %.outer, %infloop142
  br label %infloop142
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMap3getReECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 1                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !247
  call void @_RNvNtNtCsdCDTHl3mYPb_4http6header4name9parse_hdr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull dereferenceable(64) %i.d, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(256) @12), !noalias !248
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !15, !noalias !247, !noundef !11
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %_RINvXs4_NtNtNtCsdCDTHl3mYPb_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.thread.i, label %bb.b

_RINvXs4_NtNtNtCsdCDTHl3mYPb_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !247
  br label %_RINvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMap4get2ReECsiAynQAjgDuT_10xet_client.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !247
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !253, !noalias !254, !noundef !11 ; 4 uses
  %i.j = icmp ult i64 %i.i, 88686269585142076
  call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_RINvXs4_NtNtNtCsdCDTHl3mYPb_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call fastcc noundef i16 @_RINvNtNtCsdCDTHl3mYPb_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b), !noalias !255 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load i16, ptr %i.m, align 8, !alias.scope !253, !noalias !254, !noundef !11 ; 3 uses
  %i.o = and i16 %i.n, %i.l
  %i.p = zext nneg i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !253, !noalias !254, !noundef !11 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !253, !noalias !254, !nonnull !11
  %i.u = zext i16 %i.n to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !253, !noalias !254, !nonnull !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !16, !alias.scope !256, !noalias !257 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !256, !noalias !257 ; 5 uses
  %i.ab = load ptr, ptr %i.b, align 8, !alias.scope !256, !noalias !257 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.not1.i.i.i.i.i.i = icmp eq i8 %i.y, 2
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = trunc i64 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %.not = icmp eq i64 %i.r, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i, %bb.c
  %.sroa.05.0.i.i.i.i.i.ph = phi i64 [ %i.au, %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.ph = phi i64 [ %i.av, %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.i.i.i.i.i.ph, %i.r ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.ai, %.not.not
  %.sroa.0.0.i.i.i.i.i.ph.mux = select i1 %i.ai, i64 %.sroa.0.0.i.i.i.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.0.0.i.i.i.i.i.ph.mux ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !noalias !258, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.ak, -1
  br i1 %.not.i.i.i.i.i, label %_RINvXs4_NtNtNtCsdCDTHl3mYPb_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.i, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.al = zext i16 %i.ak to i64                   ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.an = load i16, ptr %i.am, align 2, !noalias !258, !noundef !11 ; 2 uses
  %i.ao = and i16 %i.an, %i.n
  %i.ap = zext i16 %i.ao to i64
  %i.aq = sub i64 %.sroa.0.0.i.i.i.i.i.ph.mux, %i.ap
  %i.ar = and i64 %i.aq, %i.u
  %i.as = icmp samesign ugt i64 %.sroa.05.0.i.i.i.i.i.ph, %i.ar
  br i1 %i.as, label %_RINvXs4_NtNtNtCsdCDTHl3mYPb_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = icmp eq i16 %i.an, %i.l
  br i1 %i.at, label %bb.f, label %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i

_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i: ; preds = %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i.i.i.i, %.split.i.i.i.i.i, %bb.m, %bb.j, %.split11.i.i.i.i.i, %bb.i, %bb.h, %bb.e
  %i.au = add nuw nsw i64 %.sroa.05.0.i.i.i.i.i.ph, 1
  %i.av = add i64 %.sroa.0.0.i.i.i.i.i.ph.mux, 1
  br label %.outer

bb.f:                                             ; preds = %bb.e
  %i.aw = icmp samesign ugt i64 %i.i, %i.al
  br i1 %i.aw, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw [104 x i8], ptr %i.w, i64 %i.al ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !259, !noundef !11
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i8 %i.y, label %bb.m [
    i8 2, label %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i
    i8 0, label %bb.j
  ]

bb.i:                                             ; preds = %bb.g
  br i1 %.not1.i.i.i.i.i.i, label %.split11.i.i.i.i.i, label %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i

.split11.i.i.i.i.i:                               ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bb = load i8, ptr %i.ba, align 8, !range !13, !noalias !259, !noundef !11
  %i.bc = icmp eq i8 %i.bb, %i.ag
  br i1 %i.bc, label %.loopexit.i, label %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.be = load i64, ptr %i.bd, align 8, !noalias !259, !noundef !11
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.be, %i.aa
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !259, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !260
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.aa
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.bg, ptr noundef nonnull readonly %i.bh, ptr noundef nonnull readonly %i.ab, ptr noundef nonnull readonly %i.ah), !noalias !259
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.bi = load i64, ptr %i.ad, align 8, !alias.scope !262, !noalias !260, !noundef !11 ; 3 uses
  %.promoted.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !262, !noalias !260 ; 3 uses
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !261, !noalias !260, !nonnull !11
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !261, !noalias !260, !nonnull !11
  %umax.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 %.promoted.i.i.i.i.i.i.i.i)
  %exitcond.not.i3.not.i.i.i.i.i.i.i = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.bi
  br i1 %exitcond.not.i3.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.sink.split.i.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bj = add i64 %i.bk, 1                        ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bj, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.sink.split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.k, %bb.l
  %i.bk = phi i64 [ %i.bj, %bb.l ], [ %.promoted.i.i.i.i.i.i.i.i, %bb.k ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %i.bk
  %.val.i.i.i.i.i.i.i.i = load i8, ptr %i.bl, align 1, !noalias !263, !noundef !11
  %.val6.i.i.i.i.i.i.i.i = load i8, ptr %i.bm, align 1, !noalias !263, !noundef !11
  %i.bn = zext i8 %.val6.i.i.i.i.i.i.i.i to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @12, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !264, !noundef !11
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i, %i.bp
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.br = load i64, ptr %i.bq, align 8, !noalias !259, !noundef !11
  %i.bs = icmp eq i64 %i.br, %i.aa
  br i1 %i.bs, label %.split.i.i.i.i.i, label %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !259, !noundef !11
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.bu, ptr nonnull %i.ab, i64 %i.aa), !noalias !259
  %i.bv = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bv, label %.loopexit.i, label %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i

_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not16.i.i.i.i.i = icmp ult i64 %i.bk, %i.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !260
  br i1 %.not16.i.i.i.i.i, label %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i, label %.loopexit.i

bb.n:                                             ; preds = %bb.f
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #43, !noalias !258
  unreachable

.loopexit.sink.split.i.i.i.i.i:                   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !260
  br label %.loopexit.i

_RINvXs4_NtNtNtCsdCDTHl3mYPb_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.d, %.loopexit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !247
  br label %_RINvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMap4get2ReECsiAynQAjgDuT_10xet_client.exit

.loopexit.i:                                      ; preds = %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i.i.i.i, %.split.i.i.i.i.i, %.split11.i.i.i.i.i, %.loopexit.sink.split.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !247
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  br label %_RINvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMap4get2ReECsiAynQAjgDuT_10xet_client.exit

_RINvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMap4get2ReECsiAynQAjgDuT_10xet_client.exit: ; preds = %_RINvXs4_NtNtNtCsdCDTHl3mYPb_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.thread.i, %_RINvXs4_NtNtNtCsdCDTHl3mYPb_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.i, %.loopexit.i
  %.sroa.0.0.i = phi ptr [ %i.bw, %.loopexit.i ], [ null, %_RINvXs4_NtNtNtCsdCDTHl3mYPb_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.i ], [ null, %_RINvXs4_NtNtNtCsdCDTHl3mYPb_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.thread.i ]
  ret ptr %.sroa.0.0.i

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path14with_extensionNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !11
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path15__with_extension(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #44
          to label %common.resume unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %3, align 8, !alias.scope !275 ; 2 uses
  %i.e = icmp eq i64 %.val2.i.i, 0
  br i1 %i.e, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val3.i.i = load ptr, ptr %i.a, align 8, !alias.scope !276, !nonnull !11, !noundef !11
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !277
  br label %common.resume

bb.f:                                             ; preds = %bb.c
  %.val.i.i = load i64, ptr %3, align 8, !alias.scope !275 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1.i.i = load ptr, ptr %i.a, align 8, !alias.scope !276, !nonnull !11, !noundef !11
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !278
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit

common.resume:                                    ; preds = %bb.b, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.d, %bb.e ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path4joinNtB7_7PathBufECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !11
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #44
          to label %common.resume unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %3, align 8, !alias.scope !293 ; 2 uses
  %i.e = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.e, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val3.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !294, !nonnull !11, !noundef !11
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !295
  br label %common.resume

bb.f:                                             ; preds = %bb.c
  %.val.i.i.i.i = load i64, ptr %3, align 8, !alias.scope !293 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsiAynQAjgDuT_10xet_client.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !294, !nonnull !11, !noundef !11
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !296
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsiAynQAjgDuT_10xet_client.exit

common.resume:                                    ; preds = %bb.b, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.d, %bb.e ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path4joinNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !11
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #44
          to label %common.resume unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNCNvXs8_NtNtCsiAynQAjgDuT_10xet_client6common11http_clientNtB7_17SessionMiddlewareNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10Middleware6handle0Bb_:bb.a
bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.r, i64 40, i1 false), !noalias !2550
  call void @llvm.experimental.noalias.scope.decl(metadata !2557)
  call void @llvm.experimental.noalias.scope.decl(metadata !2558)
  call void @llvm.experimental.noalias.scope.decl(metadata !2559)
  call void @llvm.experimental.noalias.scope.decl(metadata !2560)
  %i.an = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ad)
          to label %bb.j unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !2561

bb.j:                                             ; preds = %bb.i
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !2562)
  call void @llvm.experimental.noalias.scope.decl(metadata !2563)
  call void @llvm.experimental.noalias.scope.decl(metadata !2564)
  %i.ao = load ptr, ptr %i.i, align 8, !alias.scope !2565, !noalias !2566, !nonnull !11, !align !12, !noundef !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !2567, !nonnull !11, !noundef !11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !2565, !noalias !2566, !noundef !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !2565, !noalias !2566, !noundef !11
  invoke void %i.aq(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.at, i64 noundef %i.av)
          to label %_RINvXs2_NtNtNtCsdCDTHl3mYPb_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.thread.i unwind label %bb.an, !inline_history !2498

bb.l:                                             ; preds = %bb.j
  %i.aw = call fastcc noundef i16 @_RINvNtNtCsdCDTHl3mYPb_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j), !noalias !2568 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 8, !alias.scope !2569, !noalias !2561, !noundef !11
  %i.az = and i16 %i.ay, %i.aw
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bg = load i8, ptr %i.bf, align 8, !range !16, !alias.scope !2570, !noalias !2571 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !2570, !noalias !2571 ; 5 uses
  %i.bj = load ptr, ptr %i.j, align 8, !alias.scope !2570, !noalias !2571 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.not1.i.i.i.i.i.i = icmp eq i8 %i.bg, 2
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  br label %.outer144

.outer144:                                        ; preds = %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i, %bb.l
  %.sroa.08.0.i.i.i.i.i.ph = phi i64 [ %i.ct, %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i ], [ 0, %bb.l ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.ph = phi i64 [ %i.cu, %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i ], [ %i.ba, %bb.l ] ; 2 uses
  %i.bq = load i64, ptr %i.bc, align 8, !alias.scope !2569, !noalias !2561, !noundef !11
  %i.br = icmp ult i64 %.sroa.0.0.i.i.i.i.i.ph, %i.bq
  br i1 %i.br, label %.loopexit, label %.outer144.peel.newph

.outer144.peel.newph:                             ; preds = %.outer144
  %i.bs = load i64, ptr %i.bc, align 8, !alias.scope !2569, !noalias !2561, !noundef !11
  %.not = icmp eq i64 %i.bs, 0
  br label %bb.m

bb.m:                                             ; preds = %.outer144.peel.newph, %bb.m
  br i1 %.not, label %bb.m, label %.loopexit, !llvm.loop !2499

.loopexit:                                        ; preds = %bb.m, %.outer144
  %.sroa.0.0.i.i.i.i.i.lcssa = phi i64 [ %.sroa.0.0.i.i.i.i.i.ph, %.outer144 ], [ 0, %bb.m ] ; 7 uses
  %i.bt = load ptr, ptr %i.bb, align 8, !alias.scope !2569, !noalias !2561, !nonnull !11, !noundef !11
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.sroa.0.0.i.i.i.i.i.lcssa ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2, !noalias !2561, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.bv, -1
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.ac
  unreachable

bb.o:                                             ; preds = %.loopexit
  %i.bw = zext i16 %i.bv to i64                   ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.by = load i16, ptr %i.bx, align 2, !noalias !2561, !noundef !11 ; 2 uses
  %i.bz = load i16, ptr %i.ax, align 8, !alias.scope !2569, !noalias !2561, !noundef !11 ; 2 uses
  %i.ca = and i16 %i.bz, %i.by
  %i.cb = zext i16 %i.ca to i64
  %i.cc = sub i64 %.sroa.0.0.i.i.i.i.i.lcssa, %i.cb
  %i.cd = zext i16 %i.bz to i64
  %i.ce = and i64 %i.cc, %i.cd
  %i.cf = icmp samesign ult i64 %i.ce, %.sroa.08.0.i.i.i.i.i.ph
  br i1 %i.cf, label %bb.t, label %bb.s

bb.p:                                             ; preds = %.loopexit
  %i.cg = load i64, ptr %i.bd, align 8, !alias.scope !2569, !noalias !2561, !noundef !11 ; 2 uses
  %i.ch = icmp ult i64 %i.cg, 88686269585142076
  call void @llvm.assume(i1 %i.ch)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2573
  invoke void @_RNvXsr_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core7convert4FromNtB5_7HdrNameE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCsdCDTHl3mYPb_4http6header4name7HdrNameINtB5_4IntoNtBA_10HeaderNameE4intoCsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !2568

_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCsdCDTHl3mYPb_4http6header4name7HdrNameINtB5_4IntoNtBA_10HeaderNameE4intoCsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !2566
  %i.ci = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap16try_insert_entryCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ad, i16 noundef %i.aw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.c)
          to label %.noexc15 unwind label %bb.an

.noexc15:                                         ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCsdCDTHl3mYPb_4http6header4name7HdrNameINtB5_4IntoNtBA_10HeaderNameE4intoCsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2573
  br i1 %i.ci, label %_RINvXs2_NtNtNtCsdCDTHl3mYPb_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %.noexc15
  %i.cj = load i64, ptr %i.bc, align 8, !alias.scope !2569, !noalias !2561, !noundef !11 ; 2 uses
  %i.ck = icmp ult i64 %.sroa.0.0.i.i.i.i.i.lcssa, %i.cj
  br i1 %i.ck, label %bb.r, label %.noexc4.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.cl = load ptr, ptr %i.bb, align 8, !alias.scope !2569, !noalias !2561, !nonnull !11, !noundef !11
  %i.cm = trunc i64 %i.cg to i16
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.sroa.0.0.i.i.i.i.i.lcssa ; 2 uses
  store i16 %i.cm, ptr %i.cn, align 2, !noalias !2561
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  store i16 %i.aw, ptr %i.co, align 2, !noalias !2561
  br label %.thread

.noexc4.i.i.i:                                    ; preds = %bb.q
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i.i.i.i.i.lcssa, i64 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #40
          to label %.noexc16 unwind label %bb.an

.noexc16:                                         ; preds = %.noexc4.i.i.i
  unreachable

bb.s:                                             ; preds = %bb.o
  %i.cp = icmp eq i16 %i.by, %i.aw
  br i1 %i.cp, label %bb.u, label %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i

bb.t:                                             ; preds = %bb.o
  %i.cq = icmp samesign ugt i64 %.sroa.08.0.i.i.i.i.i.ph, 511
  %i.cr = load i64, ptr %i.ad, align 8, !range !14, !alias.scope !2569, !noalias !2561
  %i.cs = icmp ne i64 %i.cr, 2
  %.sroa.013.0.i.i.i.i.i = select i1 %i.cq, i1 %i.cs, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2573
  invoke void @_RNvXsr_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core7convert4FromNtB5_7HdrNameE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCsdCDTHl3mYPb_4http6header4name7HdrNameINtB5_4IntoNtBA_10HeaderNameE4intoCsiAynQAjgDuT_10xet_client.exit34.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !2568

_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i: ; preds = %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i.i.i.i, %.split.i.i.i.i.i, %bb.ab, %bb.y, %.split42.i.i.i.i.i, %bb.x, %bb.w, %bb.s
  %i.ct = add nuw nsw i64 %.sroa.08.0.i.i.i.i.i.ph, 1
  %i.cu = add i64 %.sroa.0.0.i.i.i.i.i.lcssa, 1
  br label %.outer144

bb.u:                                             ; preds = %bb.s
  %i.cv = load i64, ptr %i.bd, align 8, !alias.scope !2569, !noalias !2561, !noundef !11 ; 2 uses
  %i.cw = icmp ugt i64 %i.cv, %i.bw
  br i1 %i.cw, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.be, align 8, !alias.scope !2569, !noalias !2561, !nonnull !11, !noundef !11
  %i.cy = getelementptr inbounds nuw [104 x i8], ptr %i.cx, i64 %i.bw ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !2574, !noundef !11
  %.not.i.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  switch i8 %i.bg, label %bb.ab [
    i8 2, label %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i
    i8 0, label %bb.y
  ]

bb.x:                                             ; preds = %bb.v
  br i1 %.not1.i.i.i.i.i.i, label %.split42.i.i.i.i.i, label %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i

.split42.i.i.i.i.i:                               ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.dc = load i8, ptr %i.db, align 8, !range !13, !noalias !2574, !noundef !11
  %i.dd = icmp eq i8 %i.dc, %i.bo
  br i1 %i.dd, label %_RINvXs2_NtNtNtCsdCDTHl3mYPb_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.i, label %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  %i.df = load i64, ptr %i.de, align 8, !noalias !2574, !noundef !11
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.df, %i.bi
  br i1 %.not.i.i.i.i.i.i.i, label %bb.z, label %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !2574, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2575
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.bi
  invoke void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly %i.dh, ptr noundef nonnull readonly %i.di, ptr noundef nonnull readonly %i.bj, ptr noundef nonnull readonly %i.bp)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !2561

.noexc.i.i.i.i.i:                                 ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !2576)
  %i.dj = load i64, ptr %i.bl, align 8, !alias.scope !2577, !noalias !2575, !noundef !11 ; 3 uses
  %.promoted.i.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !2577, !noalias !2575 ; 3 uses
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !2576, !noalias !2575, !nonnull !11
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !2576, !noalias !2575, !nonnull !11
  %umax.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dj, i64 %.promoted.i.i.i.i.i.i.i.i)
  %exitcond.not.i3.not.i.i.i.i.i.i.i = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.dj
  br i1 %exitcond.not.i3.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit51.sink.split.i.i.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dk = add i64 %i.dl, 1                        ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dk, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit51.sink.split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i, %bb.aa
  %i.dl = phi i64 [ %i.dk, %bb.aa ], [ %.promoted.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i ] ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %i.dl
  %.val.i.i.i.i.i.i.i.i = load i8, ptr %i.dm, align 1, !noalias !2578, !noundef !11
  %.val6.i.i.i.i.i.i.i.i = load i8, ptr %i.dn, align 1, !noalias !2578, !noundef !11
  %i.do = zext i8 %.val6.i.i.i.i.i.i.i.i to i64
  %i.dp = getelementptr inbounds nuw i8, ptr @12, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !noalias !2579, !noundef !11
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i, %i.dq
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.aa, label %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i.i.i.i

bb.ab:                                            ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !2574, !noundef !11
  %i.dt = icmp eq i64 %i.ds, %i.bi
  br i1 %i.dt, label %.split.i.i.i.i.i, label %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.ab
  %i.du = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !2574, !noundef !11
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.dv, ptr nonnull %i.bj, i64 %i.bi), !noalias !2574
  %i.dw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.dw, label %_RINvXs2_NtNtNtCsdCDTHl3mYPb_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.i, label %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i

bb.ac:                                            ; preds = %bb.u
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bw, i64 noundef %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #40
          to label %bb.n unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !2561

_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not50.i.i.i.i.i = icmp ult i64 %i.dl, %i.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2575
  br i1 %.not50.i.i.i.i.i, label %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i, label %_RINvXs2_NtNtNtCsdCDTHl3mYPb_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.i

.loopexit51.sink.split.i.i.i.i.i:                 ; preds = %.noexc.i.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2575
  br label %_RINvXs2_NtNtNtCsdCDTHl3mYPb_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.i

_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCsdCDTHl3mYPb_4http6header4name7HdrNameINtB5_4IntoNtBA_10HeaderNameE4intoCsiAynQAjgDuT_10xet_client.exit34.i.i.i.i.i: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !2566
  %i.dx = load i64, ptr %i.bd, align 8, !alias.scope !2580, !noalias !2581, !noundef !11 ; 2 uses
  %i.dy = icmp ult i64 %i.dx, 88686269585142076
  call void @llvm.assume(i1 %i.dy)
  %i.dz = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap16try_insert_entryCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ad, i16 noundef %i.aw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.g) #41
          to label %.noexc17 unwind label %bb.an

.noexc17:                                         ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCsdCDTHl3mYPb_4http6header4name7HdrNameINtB5_4IntoNtBA_10HeaderNameE4intoCsiAynQAjgDuT_10xet_client.exit34.i.i.i.i.i
  br i1 %i.dz, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %.noexc17
  %i.ea = load ptr, ptr %i.bb, align 8, !alias.scope !2580, !noalias !2581, !nonnull !11, !noundef !11
  %i.eb = load i64, ptr %i.bc, align 8, !alias.scope !2580, !noalias !2581, !noundef !11 ; 2 uses
  %i.ec = trunc i64 %i.dx to i16
  %.not175 = icmp eq i64 %i.eb, 0
  br label %.outer

.outer:                                           ; preds = %bb.ae, %bb.ad
  %.sroa.6.0.i.i.i.i.i.i.ph = phi i16 [ %i.ej, %bb.ae ], [ %i.aw, %bb.ad ] ; 2 uses
  %.sroa.09.0.i.i.i.i.i.i.ph = phi i16 [ %i.ef, %bb.ae ], [ %i.ec, %bb.ad ] ; 2 uses
  %.sroa.07.0.i.i.i.i.i.i.ph = phi i64 [ %i.ei, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.ph = phi i64 [ %i.ek, %bb.ae ], [ %.sroa.0.0.i.i.i.i.i.lcssa, %bb.ad ] ; 2 uses
  %i.ed = icmp ult i64 %.sroa.0.0.i.i.i.i.i.i.ph, %i.eb ; 2 uses
  %.not175.not = xor i1 %.not175, true
  %brmerge = or i1 %i.ed, %.not175.not
  %.sroa.0.0.i.i.i.i.i.i.ph.mux = select i1 %i.ed, i64 %.sroa.0.0.i.i.i.i.i.i.ph, i64 0 ; 2 uses
  br i1 %brmerge, label %.loopexit174, label %infloop

.loopexit174:                                     ; preds = %.outer
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.sroa.0.0.i.i.i.i.i.i.ph.mux ; 4 uses
  %i.ef = load i16, ptr %i.ee, align 2, !noalias !2581, !noundef !11 ; 2 uses
  %i.eg = icmp eq i16 %i.ef, -1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 2 ; 3 uses
  br i1 %i.eg, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.loopexit174
  %i.ei = add i64 %.sroa.07.0.i.i.i.i.i.i.ph, 1
  %i.ej = load i16, ptr %i.eh, align 2, !noalias !2581, !noundef !11
  store i16 %.sroa.09.0.i.i.i.i.i.i.ph, ptr %i.ee, align 2, !noalias !2581
  store i16 %.sroa.6.0.i.i.i.i.i.i.ph, ptr %i.eh, align 2, !noalias !2581
  %i.ek = add nuw i64 %.sroa.0.0.i.i.i.i.i.i.ph.mux, 1
  br label %.outer

bb.af:                                            ; preds = %.loopexit174
  store i16 %.sroa.09.0.i.i.i.i.i.i.ph, ptr %i.ee, align 2, !noalias !2581
  store i16 %.sroa.6.0.i.i.i.i.i.i.ph, ptr %i.eh, align 2, !noalias !2581
  %i.el = icmp ugt i64 %.sroa.07.0.i.i.i.i.i.i.ph, 127
  %or.cond.i.i.i.i.i.i = select i1 %.sroa.013.0.i.i.i.i.i, i1 true, i1 %i.el
  %i.em = load i64, ptr %i.ad, align 8, !range !14, !alias.scope !2580, !noalias !2581
  %i.en = icmp eq i64 %i.em, 0
  %or.cond3.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i, i1 %i.en, i1 false
  br i1 %or.cond3.i.i.i.i.i.i, label %bb.ag, label %.thread48.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  store i64 1, ptr %i.ad, align 8, !alias.scope !2580, !noalias !2581
  br label %.thread48.i.i.i.i.i

.thread48.i.i.i.i.i:                              ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2573
  br label %.thread

bb.ah:                                            ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2573
  br label %_RINvXs2_NtNtNtCsdCDTHl3mYPb_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.thread.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.z
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.ac, %bb.t, %bb.p, %bb.i
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %lpad.phi.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2582)
  call void @llvm.experimental.noalias.scope.decl(metadata !2583)
  call void @llvm.experimental.noalias.scope.decl(metadata !2584)
  %i.eo = load ptr, ptr %i.i, align 8, !alias.scope !2585, !noalias !2566, !nonnull !11, !align !12, !noundef !11
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !2586, !nonnull !11, !noundef !11
  %i.er = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !2585, !noalias !2566, !noundef !11
  %i.eu = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !2585, !noalias !2566, !noundef !11
  invoke void %i.eq(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef %i.et, i64 noundef %i.ev)
          to label %.body unwind label %bb.aj, !noalias !2587, !inline_history !0

bb.aj:                                            ; preds = %bb.ai
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42, !noalias !2587
  unreachable

bb.ak:                                            ; preds = %bb.h, %bb.f
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !2588)
  call void @llvm.experimental.noalias.scope.decl(metadata !2589)
  call void @llvm.experimental.noalias.scope.decl(metadata !2590)
  call void @llvm.experimental.noalias.scope.decl(metadata !2591)
  %i.ex = load ptr, ptr %i.aj, align 8, !alias.scope !2592, !noalias !2593, !nonnull !11, !align !12, !noundef !11
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !2594, !nonnull !11, !noundef !11
  %i.fa = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !2592, !noalias !2593, !noundef !11
  %i.fd = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !2592, !noalias !2593, !noundef !11
  invoke void %i.ez(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef %i.fc, i64 noundef %i.fe)
          to label %.body unwind label %bb.al, !noalias !2595, !inline_history !2529

bb.al:                                            ; preds = %bb.ak
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42, !noalias !2595
  unreachable

_RINvXs2_NtNtNtCsdCDTHl3mYPb_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.thread.i: ; preds = %bb.k, %bb.ah, %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2549
  br label %bb.am

.thread:                                          ; preds = %bb.r, %.thread48.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdCDTHl3mYPb_4http6header5value11HeaderValueEECsiAynQAjgDuT_10xet_client.exit

_RINvXs2_NtNtNtCsdCDTHl3mYPb_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %_RNvXss_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i.i.i.i, %.split.i.i.i.i.i, %.split42.i.i.i.i.i, %.loopexit51.sink.split.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !2566
  invoke fastcc void @_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap15insert_occupiedCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ad, i64 noundef %i.bw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.e)
          to label %.noexc18 unwind label %bb.an

.noexc18:                                         ; preds = %_RINvXs2_NtNtNtCsdCDTHl3mYPb_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsiAynQAjgDuT_10xet_client.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2573
  %.sroa.3.0..sroa_idx15.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.3.0.copyload16.i.i.i.i.i = load i8, ptr %.sroa.3.0..sroa_idx15.i.i.i.i.i, align 8, !noalias !2596 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2552
end_hunk_1
