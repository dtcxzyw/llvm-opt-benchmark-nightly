Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.01?download=true
inline.NumInlined: 1496
inline.NumDeleted: 531
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream16decode_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.463.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, ptr noundef nonnull @6, ptr noundef nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %.sroa.429.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.429, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.429.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.429.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.429, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.429)
  br label %bb.fk

bb.fk:                                            ; preds = %.split79, %bb.fr, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.fe

bb.fl:                                            ; preds = %._crit_edge698
  %i.abe = zext nneg i32 %i.aan to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.abe, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #31
  unreachable

bb.fm:                                            ; preds = %bb.fi
  %i.abf = trunc nsw i64 %indvars.iv820 to i32    ; 3 uses
  store i32 %i.abf, ptr %i.av, align 4
  %i.abg = sub nuw nsw i32 16, %i.abf
  %i.abh = lshr i32 %i.aar, %i.abg
  %i.abi = and i64 %indvars.iv820, 4294967295
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.abi
  %i.abk = load i32, ptr %i.abj, align 4, !noundef !5
  %i.abl = add i32 %i.abk, %i.abh
  %i.abm = and i32 %i.abl, 255
  %i.abn = zext nneg i32 %i.abm to i64
  %i.abo = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.abn
  %i.abp = load i8, ptr %i.abo, align 1, !noundef !5
  %i.abq = zext i8 %i.abp to i32
  br label %bb.fh

bb.fn:                                            ; preds = %bb.fh
  %i.abr = trunc i32 %i.aav to i8                 ; 2 uses
  %i.abs = call i8 @llvm.usub.sat.i8(i8 %i.aaw, i8 %i.abr) ; 3 uses
  store i8 %i.abs, ptr %i.bb, align 8
  %i.abt = and i8 %i.abr, 63
  %i.abu = zext nneg i8 %i.abt to i64
  %i.abv = shl i64 %i.aag, %i.abu                 ; 3 uses
  store i64 %i.abv, ptr %i.mf, align 8
  %i.abw = lshr i32 %i.aau, 4                     ; 2 uses
  %i.abx = and i32 %i.aau, 15                     ; 6 uses
  store i32 %i.abx, ptr %i.aw, align 4
  %i.aby = icmp eq i32 %i.abx, 0
  br i1 %i.aby, label %bb.fo, label %bb.fp

.split79:                                         ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %i.av, ptr %i.ar, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.469.0..sroa_idx, align 8
  %i.abz = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.bb, ptr %i.abz, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.473.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, ptr noundef nonnull @7, ptr noundef nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %.sroa.431.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.431, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.431.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.431.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.431, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.431)
  br label %bb.fk

bb.fo:                                            ; preds = %bb.fn
  %i.aca = icmp eq i32 %i.abw, 15
  br i1 %i.aca, label %bb.fq, label %bb.fr

bb.fp:                                            ; preds = %bb.fn
  %i.acb = zext nneg i32 %i.abw to i64
  %i.acc = add nuw nsw i64 %.sroa.01.0706, %i.acb ; 2 uses
  %i.acd = trunc nuw nsw i32 %i.abx to i8
  %i.ace = zext nneg i32 %i.abx to i64            ; 2 uses
  %notmask = shl nsw i64 -1, %i.ace
  %i.acf = xor i64 %notmask, -1
  %i.acg = call noundef i64 @llvm.fshl.i64(i64 %i.abv, i64 %i.abv, i64 %i.ace) ; 2 uses
  store i64 %i.acg, ptr %i.mf, align 8
  %i.ach = and i64 %i.acg, %i.acf
  %i.aci = trunc nuw nsw i64 %i.ach to i32        ; 2 uses
  %i.acj = sub i8 %i.abs, %i.acd                  ; 2 uses
  store i8 %i.acj, ptr %i.bb, align 8
  %i.ack = add nuw nsw i32 %i.abx, 31
  %i.acl = and i32 %i.ack, 31
  %.neg = shl nsw i32 -1, %i.acl
  %i.acm = add nsw i32 %.neg, %i.aci
  %i.acn = shl nsw i32 -1, %i.abx
  %i.aco = or disjoint i32 %i.acn, 1
  %isneg = icmp slt i32 %i.acm, 0
  %i.acp = select i1 %isneg, i32 %i.aco, i32 0
  %i.acq = add nsw i32 %i.acp, %i.aci             ; 2 uses
  store i32 %i.acq, ptr %i.aw, align 4
  %i.acr = and i64 %i.acc, 63
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.acr
  %i.act = load i64, ptr %i.acs, align 8, !noundef !5
  %i.acu = and i64 %i.act, 63                     ; 2 uses
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.acu
  %i.acw = load i32, ptr %i.acv, align 4, !noundef !5
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.acu
  %i.acy = mul i32 %i.acw, %i.acq
  store i32 %i.acy, ptr %i.acx, align 4
  %i.acz = add nuw nsw i64 %i.acc, 1
  br label %bb.fs

bb.fq:                                            ; preds = %bb.fo
  %i.ada = add nuw nsw i64 %.sroa.01.0706, 16
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fo
  %i.adb = trunc nuw nsw i64 %.sroa.01.0706 to i16
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.adb, ptr %i.adc, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.fk

bb.fs:                                            ; preds = %bb.fp, %bb.fq
  %i.add = phi i8 [ %i.abs, %bb.fq ], [ %i.acj, %bb.fp ]
  %.sroa.01.1 = phi i64 [ %i.ada, %bb.fq ], [ %i.acz, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fu, %bb.fs
  %i.ade = phi i8 [ %i.add, %bb.fs ], [ %i.adw, %bb.fu ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.fs ], [ %i.adz, %bb.fu ] ; 2 uses
  %i.adf = icmp ult i64 %.sroa.01.2, 64
  br i1 %i.adf, label %bb.ca, label %bb.bz

bb.fu:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  %i.adg = lshr i16 %i.aaj, 4
  %i.adh = and i16 %i.adg, 15
  %i.adi = zext nneg i16 %i.adh to i64
  %i.adj = add nuw nsw i64 %.sroa.01.0706, %i.adi ; 2 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.adj, i64 63)
  %i.adk = ashr i16 %i.aaj, 8
  %i.adl = sext i16 %i.adk to i32
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %..i
  %i.adn = load i64, ptr %i.adm, align 8, !noundef !5
  %i.ado = and i64 %i.adn, 63                     ; 2 uses
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ado
  %i.adq = load i32, ptr %i.adp, align 4, !noundef !5
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ado
  %i.ads = mul i32 %i.adq, %i.adl
  store i32 %i.ads, ptr %i.adr, align 4
  %i.adt = trunc i16 %i.aaj to i8
  %i.adu = and i8 %i.adt, 15                      ; 2 uses
  %i.adv = load i8, ptr %i.bb, align 8, !noundef !5
  %i.adw = call i8 @llvm.usub.sat.i8(i8 %i.adv, i8 %i.adu) ; 2 uses
  store i8 %i.adw, ptr %i.bb, align 8
  %i.adx = zext nneg i8 %i.adu to i64
  %i.ady = shl i64 %i.aag, %i.adx
  store i64 %i.ady, ptr %i.mf, align 8
  %i.adz = add nuw nsw i64 %i.adj, 1
  br label %bb.ft

bb.fv:                                            ; preds = %bb.bw
  %i.aea = load i64, ptr %i.ot, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.os, i64 %i.aea) #35
  unreachable

bb.fw:                                            ; preds = %bb.bw
  %i.aeb = load ptr, ptr %i.ot, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aec = icmp samesign ugt i64 %i.os, 41
  tail call void @llvm.assume(i1 %i.aec)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.aeb, ptr noundef nonnull align 1 dereferenceable(42) @11, i64 42, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.os, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aeb, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 42, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.fe
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream17discard_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %3, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 5 uses
  %i.h = alloca [1 x i8], align 1                 ; 5 uses
  %i.i = alloca [1 x i8], align 1                 ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 5 uses
  %i.k = alloca [1 x i8], align 1                 ; 5 uses
  %i.l = alloca [1 x i8], align 1                 ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [4 x i8], align 4                 ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 13 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [4 x i8], align 4                 ; 6 uses
  %i.x = alloca [4 x i8], align 4                 ; 5 uses
  %i.y = alloca [1 x i8], align 1                 ; 5 uses
  %i.z = alloca [1 x i8], align 1                 ; 5 uses
  %i.aa = alloca [1 x i8], align 1                ; 5 uses
  %i.ab = alloca [1 x i8], align 1                ; 5 uses
  %i.ac = alloca [1 x i8], align 1                ; 5 uses
  %i.ad = alloca [1 x i8], align 1                ; 5 uses
  %i.ae = alloca [1 x i8], align 1                ; 5 uses
  %i.af = alloca [1 x i8], align 1                ; 5 uses
  %i.ag = alloca [1 x i8], align 1                ; 5 uses
  %i.ah = alloca [1 x i8], align 1                ; 5 uses
  %i.ai = alloca [1 x i8], align 1                ; 5 uses
  %i.aj = alloca [1 x i8], align 1                ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [4 x i8], align 4                ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 12 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.427 = alloca [31 x i8], align 1          ; 4 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.425 = alloca [31 x i8], align 1          ; 4 uses
  %i.au = alloca [4 x i8], align 4                ; 6 uses
  %i.av = alloca [4 x i8], align 4                ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 2448
  %i.ax = load i16, ptr %i.aw, align 4, !range !4, !noundef !5
  %i.ay = trunc nuw i16 %i.ax to i1
  %.sink918.sroa.gep = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sink918.sroa.gep1193 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sink918.sroa.gep1195 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sink918.sroa.gep1196 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br i1 %i.ay, label %bb.b, label %bb.ct, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 2450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !720
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 47 uses
  %i.bb = load i8, ptr %i.ba, align 8, !alias.scope !717, !noundef !5 ; 24 uses
  %i.bc = icmp ult i8 %i.bb, 32
  br i1 %i.bc, label %bb.c, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 5 uses
  %i.be = load i8, ptr %i.bd, align 2, !range !7, !alias.scope !722, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.bg = icmp ne i8 %i.be, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.bi = load i8, ptr %i.bh, align 1, !range !8, !alias.scope !722
  %i.bj = trunc nuw i8 %i.bi to i1
  %or.cond.i.i = select i1 %i.bg, i1 true, i1 %i.bj
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

.loopexit.i:                                      ; preds = %.preheader.i, %bb.ca, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit202
  %i.bk = sub nuw nsw i8 32, %i.bb
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = zext nneg i8 %i.bk to i64
  %i.bn = shl i64 %i.jy, %i.bm
  store i64 %i.bn, ptr %i.bl, align 8, !alias.scope !722
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.bo = load i64, ptr %1, align 8, !alias.scope !722, !noundef !5
  %i.bp = shl i64 %i.bo, 32                       ; 2 uses
  store i64 %i.bp, ptr %1, align 8, !alias.scope !722
  %i.bq = or disjoint i8 %i.bb, 32                ; 2 uses
  store i8 %i.bq, ptr %i.ba, align 8, !alias.scope !722
  %i.br = sub nuw nsw i8 32, %i.bb
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = zext nneg i8 %i.br to i64
  %i.bu = shl i64 %i.bp, %i.bt
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !722
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.e:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !722, !noundef !5
  %.not.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !723
  store i32 0, ptr %i.q, align 4, !noalias !723
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val28.i.i = load ptr, ptr %i.bx, align 8, !alias.scope !724, !noalias !725, !nonnull !5, !noundef !5 ; 11 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.val29.i.i = load i64, ptr %i.by, align 8, !alias.scope !724, !noalias !725, !noundef !5 ; 26 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 16 uses
  %.promoted.i = load i64, ptr %i.bz, align 8, !alias.scope !724, !noalias !725
  br label %bb.g

bb.g:                                             ; preds = %bb.n, %bb.f
  %.sroa.0.0.i250.i = phi i64 [ 0, %bb.f ], [ %i.cp, %bb.n ] ; 6 uses
  %i.ca = phi i64 [ %.promoted.i, %bb.f ], [ %i.ch, %bb.n ] ; 3 uses
  %i.cb = sub nuw nsw i64 4, %.sroa.0.0.i250.i    ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i250.i
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.ca) ; 4 uses
  %i.cd = add i64 %i.ca, %i.cb                    ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %..i.i.i
  br i1 %i.ce, label %bb.i, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  %..i30.i.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.cd) ; 2 uses
  %i.cf = sub nuw i64 %..i30.i.i, %..i.i.i        ; 6 uses
  %.not4.i.i.i = icmp ugt i64 %i.cf, %i.cb
  br i1 %.not4.i.i.i, label %bb.j, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit.i, !prof !10

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !727
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cf, i64 noundef range(i64 0, -9223372036854775808) %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !727
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 %..i.i.i
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.cc, i64 noundef %i.cf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cg, i64 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !728
  %i.ch = add i64 %i.cf, %i.ca                    ; 7 uses
  store i64 %i.ch, ptr %i.bz, align 8, !alias.scope !724, !noalias !725
  %i.ci = icmp eq i64 %..i30.i.i, %..i.i.i
  br i1 %i.ci, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !729)
  %i.cj = sub i64 %i.ch, %.sroa.0.0.i250.i        ; 3 uses
  %i.ck = icmp uge i64 %i.cj, %i.ch
  %i.cl = icmp ne i64 %.sroa.0.0.i250.i, 0
  %i.cm = and i1 %i.cl, %i.ck
  br i1 %i.cm, label %bb.m, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  store i64 %i.cj, ptr %i.bz, align 8, !alias.scope !729, !noalias !730
  br label %_RNvXs1_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB7_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seekCsa5QsYiPB8Gl_5image.exit269

bb.m:                                             ; preds = %bb.k
  %i.cn = call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 13) #32, !noalias !731
  %i.co = ptrtoint ptr %i.cn to i64
  br label %_RNvXs1_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB7_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seekCsa5QsYiPB8Gl_5image.exit269

_RNvXs1_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB7_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seekCsa5QsYiPB8Gl_5image.exit269: ; preds = %bb.l, %bb.m
  %.pre.i = phi i64 [ %i.cj, %bb.l ], [ %i.ch, %bb.m ]
  %.sroa.0153.0.ph.i = phi i64 [ -9223372036854775806, %bb.l ], [ -9223372036854775808, %bb.m ]
  %.sroa.8.0.ph.i = phi i64 [ %.sroa.0.0.i250.i, %bb.l ], [ %i.co, %bb.m ]
  store i64 %.sroa.0153.0.ph.i, ptr %i.r, align 8, !noalias !723
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.8.0.ph.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !723
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 4, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !723
  br label %bb.p

bb.n:                                             ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit.i
  %i.cp = add nuw nsw i64 %i.cf, %.sroa.0.0.i250.i ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 4
  br i1 %i.cq, label %bb.g, label %bb.t

bb.o:                                             ; preds = %bb.e
  %i.cr = icmp eq i8 %i.bb, 0
  br i1 %i.cr, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.p:                                             ; preds = %bb.x, %_RNvXs1_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB7_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seekCsa5QsYiPB8Gl_5image.exit269
  %i.cs = phi i64 [ %.pre.i, %_RNvXs1_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB7_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seekCsa5QsYiPB8Gl_5image.exit269 ], [ %i.dz, %bb.x ] ; 3 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !733
  store i8 0, ptr %i.a, align 1, !noalias !733
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %..i.i82.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.cs) ; 3 uses
  %i.ct = add i64 %i.cs, 1                        ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %..i.i82.i
  br i1 %i.cu, label %bb.r, label %bb.q, !prof !9

bb.q:                                             ; preds = %bb.p
  %..i30.i83.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.ct)
  %i.cv = sub nuw i64 %..i30.i83.i, %..i.i82.i    ; 5 uses
  %.not4.i.i84.i = icmp ugt i64 %i.cv, 1
  br i1 %.not4.i.i84.i, label %bb.s, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit85.i, !prof !10

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !735
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cv, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !735
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit85.i: ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 %..i.i82.i
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.a, i64 noundef %i.cv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cw, i64 noundef %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !736
  %i.cx = add i64 %i.cv, %i.cs                    ; 6 uses
  store i64 %i.cx, ptr %i.bz, align 8, !alias.scope !737, !noalias !738
  %i.cy = load i8, ptr %i.a, align 1, !noalias !733, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !733
  %i.cz = icmp ule i64 %.val29.i.i, %i.cx
  %i.da = zext i8 %i.cy to i64
  %i.db = zext i1 %i.cz to i64                    ; 2 uses
  store i64 %i.db, ptr %i.bv, align 8, !alias.scope !722
  %i.dc = load i64, ptr %1, align 8, !alias.scope !722, !noundef !5 ; 2 uses
  %i.dd = shl i64 %i.dc, 8                        ; 3 uses
  %i.de = or disjoint i64 %i.dd, %i.da            ; 3 uses
  store i64 %i.de, ptr %1, align 8, !alias.scope !722
  %i.df = add nuw nsw i8 %i.bb, 8                 ; 5 uses
  store i8 %i.df, ptr %i.ba, align 8, !alias.scope !722
  %i.dg = icmp eq i8 %i.cy, -1
  br i1 %i.dg, label %bb.z, label %.loopexit230.i

bb.t:                                             ; preds = %bb.n
  %.sroa.0112.0.copyload.i.i = load i32, ptr %i.q, align 4, !noalias !723 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %.sroa.0112.0.copyload.i.i, ptr %i.dh, align 8, !noalias !723
  store i64 -1, ptr %i.r, align 8, !noalias !723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !723
  %i.di = call i32 @llvm.bswap.i32(i32 %.sroa.0112.0.copyload.i.i) ; 3 uses
  %i.dj = or i32 %i.di, -2139062144
  %i.dk = add i32 %i.dj, -2139062143
  %i.dl = and i32 %i.di, -2139062144
  %i.dm = and i32 %i.dl, %i.dk
  %.not221.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not221.i.i, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread218.i, label %bb.u

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread218.i: ; preds = %bb.t
  %i.dn = or disjoint i8 %i.bb, 32                ; 2 uses
  store i8 %i.dn, ptr %i.ba, align 8, !alias.scope !722
  %i.do = load i64, ptr %1, align 8, !alias.scope !722, !noundef !5
  %i.dp = shl i64 %i.do, 32
  %i.dq = zext i32 %i.di to i64
  %i.dr = or disjoint i64 %i.dp, %i.dq            ; 2 uses
  store i64 %i.dr, ptr %1, align 8, !alias.scope !722
  %i.ds = sub nuw nsw i8 32, %i.bb
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.du = zext nneg i8 %i.ds to i64
  %i.dv = shl i64 %i.dr, %i.du
  store i64 %i.dv, ptr %i.dt, align 8, !alias.scope !722
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !723
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.u:                                             ; preds = %bb.t
  %i.dw = icmp ult i64 %i.ch, 4
  br i1 %i.dw, label %bb.v, label %bb.x, !prof !9

bb.v:                                             ; preds = %bb.u
  %i.dx = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 13) #32
          to label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.w, !noalias !720

bb.w:                                             ; preds = %bb.v
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #33
          to label %common.resume unwind label %bb.y, !noalias !732

bb.x:                                             ; preds = %bb.u
  %i.dz = add i64 %i.ch, -4                       ; 2 uses
  store i64 %i.dz, ptr %i.bz, align 8, !alias.scope !739
  br label %bb.p

bb.y:                                             ; preds = %bb.w
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34, !noalias !732
  unreachable

common.resume:                                    ; preds = %bb.dt, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.dy, %bb.w ], [ %i.qg, %bb.dt ]
  resume { ptr, i32 } %common.resume.op

bb.z:                                             ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit85.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !740
  store i8 0, ptr %i.k, align 1, !noalias !740
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %..i.i262 = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.cx) ; 3 uses
  %i.eb = add i64 %i.cx, 1                        ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %..i.i262
  br i1 %i.ec, label %bb.ab, label %bb.aa, !prof !9

bb.aa:                                            ; preds = %bb.z
  %..i30.i263 = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.eb)
  %i.ed = sub nuw i64 %..i30.i263, %..i.i262      ; 5 uses
  %.not4.i.i264 = icmp ugt i64 %i.ed, 1
  br i1 %.not4.i.i264, label %bb.ac, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit265, !prof !10

bb.ab:                                            ; preds = %bb.z
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !742
  unreachable

bb.ac:                                            ; preds = %bb.aa
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ed, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !742
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit265: ; preds = %bb.aa
  %i.ee = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 %..i.i262
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.k, i64 noundef %i.ed, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef %i.ed, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !743
  %i.ef = add i64 %i.ed, %i.cx                    ; 3 uses
  store i64 %i.ef, ptr %i.bz, align 8, !alias.scope !741, !noalias !744
  %i.eg = load i8, ptr %i.k, align 1, !noalias !740, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !740
  %i.eh = icmp eq i8 %i.eg, 0
  br i1 %i.eh, label %.loopexit230.i, label %.preheader229.i

.preheader229.i:                                  ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit265, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit92.i
  %i.ei = phi i64 [ %i.en, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit92.i ], [ %i.ef, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit265 ] ; 4 uses
  %.sroa.022.0.in.i.i = phi i8 [ %i.eo, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit92.i ], [ %i.eg, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit265 ] ; 3 uses
  switch i8 %.sroa.022.0.in.i.i, label %bb.ah [
    i8 -1, label %bb.ad
    i8 0, label %.loopexit230.i
  ]

bb.ad:                                            ; preds = %.preheader229.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !745
  store i8 0, ptr %i.l, align 1, !noalias !745
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %..i.i89.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.ei) ; 3 uses
  %i.ej = add i64 %i.ei, 1                        ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %..i.i89.i
  br i1 %i.ek, label %bb.af, label %bb.ae, !prof !9

bb.ae:                                            ; preds = %bb.ad
  %..i30.i90.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.ej)
  %i.el = sub nuw i64 %..i30.i90.i, %..i.i89.i    ; 5 uses
  %.not4.i.i91.i = icmp ugt i64 %i.el, 1
  br i1 %.not4.i.i91.i, label %bb.ag, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit92.i, !prof !10

bb.af:                                            ; preds = %bb.ad
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !747
  unreachable

bb.ag:                                            ; preds = %bb.ae
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.el, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !747
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit92.i: ; preds = %bb.ae
  %i.em = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 %..i.i89.i
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.l, i64 noundef %i.el, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.em, i64 noundef %i.el, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !748
  %i.en = add i64 %i.el, %i.ei                    ; 2 uses
  store i64 %i.en, ptr %i.bz, align 8, !alias.scope !749, !noalias !738
  %i.eo = load i8, ptr %i.l, align 1, !noalias !745, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !745
  br label %.preheader229.i

bb.ah:                                            ; preds = %.preheader229.i
  %i.ep = and i64 %i.dc, 72057594037927935        ; 2 uses
  store i64 %i.ep, ptr %1, align 8, !alias.scope !722
  store i8 %i.bb, ptr %i.ba, align 8, !alias.scope !722
  %i.eq = icmp eq i8 %i.bb, 0
  br i1 %i.eq, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.er = sub nsw i8 0, %i.bb
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.et = and i8 %i.er, 63
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = shl i64 %i.ep, %i.eu
  store i64 %i.ev, ptr %i.es, align 8, !alias.scope !722
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ew = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.022.0.in.i.i), !noalias !738 ; 2 uses
  %i.ex = extractvalue { i8, i8 } %i.ew, 0        ; 2 uses
  %i.ey = extractvalue { i8, i8 } %i.ew, 1
  store i8 %i.ex, ptr %i.bd, align 2, !alias.scope !722
  store i8 %i.ey, ptr %i.bf, align 1, !alias.scope !722
  %i.ez = icmp eq i8 %i.ex, 12
  br i1 %i.ez, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fa = icmp eq i8 %.sroa.022.0.in.i.i, -39
  br i1 %i.fa, label %bb.ao, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !723
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !732
  %i.fb = load i64, ptr %i.p, align 8, !range !11, !noalias !723, !noundef !5
  %i.fc = trunc nuw i64 %i.fb to i1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !range !12, !noalias !723, !noundef !5 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  br i1 %i.fc, label %bb.am, label %bb.an, !prof !9

bb.am:                                            ; preds = %bb.al
  %i.fg = load i64, ptr %i.ff, align 8, !noalias !723
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.fe, i64 %i.fg) #35, !noalias !732
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.fh = load ptr, ptr %i.ff, align 8, !noalias !723, !nonnull !5, !noundef !5 ; 2 uses
  %i.fi = icmp samesign ugt i64 %i.fe, 27
  call void @llvm.assume(i1 %i.fi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.fh, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !732
  %i.fj = ptrtoint ptr %i.fh to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift120.i = and i64 %i.fj, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.ao:                                            ; preds = %bb.ak
  store i64 %i.dd, ptr %1, align 8, !alias.scope !722
  store i8 %i.df, ptr %i.ba, align 8, !alias.scope !722
  %i.fk = sub nuw nsw i8 56, %i.bb
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fm = zext nneg i8 %i.fk to i64
  %i.fn = shl i64 %i.dd, %i.fm
  store i64 %i.fn, ptr %i.fl, align 8, !alias.scope !722
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i

.loopexit230.i:                                   ; preds = %.preheader229.i, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit265, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit85.i
  %i.fo = phi i64 [ %i.cx, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit85.i ], [ %i.ef, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit265 ], [ %i.ei, %.preheader229.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !750
  store i8 0, ptr %i.b, align 1, !noalias !750
  call void @llvm.experimental.noalias.scope.decl(metadata !751)
  %..i.i253 = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.fo) ; 3 uses
  %i.fp = add i64 %i.fo, 1                        ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %..i.i253
  br i1 %i.fq, label %bb.aq, label %bb.ap, !prof !9

bb.ap:                                            ; preds = %.loopexit230.i
  %..i30.i254 = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.fp)
  %i.fr = sub nuw i64 %..i30.i254, %..i.i253      ; 5 uses
  %.not4.i.i255 = icmp ugt i64 %i.fr, 1
  br i1 %.not4.i.i255, label %bb.ar, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit256, !prof !10

bb.aq:                                            ; preds = %.loopexit230.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !752
  unreachable

bb.ar:                                            ; preds = %bb.ap
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fr, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !752
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit256: ; preds = %bb.ap
  %i.fs = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 %..i.i253
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.b, i64 noundef %i.fr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fs, i64 noundef %i.fr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !753
  %i.ft = add i64 %i.fr, %i.fo                    ; 6 uses
  store i64 %i.ft, ptr %i.bz, align 8, !alias.scope !751, !noalias !744
  %i.fu = load i8, ptr %i.b, align 1, !noalias !750, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !750
end_hunk_0
begin_hunk_1_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream17discard_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  %i.yw = load i32, ptr %i.yv, align 4, !noundef !5 ; 3 uses
  store i32 %i.yw, ptr %i.av, align 4
  %i.yx = icmp eq i16 %i.yu, 0
  br i1 %i.yx, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.yy = ashr i32 %i.yw, 9                       ; 7 uses
  store i32 %i.yy, ptr %i.au, align 4
  %i.yz = and i32 %i.yw, 511
  %i.za = icmp sgt i32 %i.yy, 9
  br i1 %i.za, label %bb.gg, label %bb.gh

bb.gf:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  %i.zb = lshr i16 %i.yu, 4
  %i.zc = and i16 %i.zb, 15
  %i.zd = zext nneg i16 %i.zc to i64
  %i.ze = trunc i16 %i.yu to i8
  %i.zf = and i8 %i.ze, 15                        ; 2 uses
  %i.zg = load i8, ptr %i.ba, align 8, !noundef !5
  %i.zh = call i8 @llvm.usub.sat.i8(i8 %i.zg, i8 %i.zf) ; 2 uses
  store i8 %i.zh, ptr %i.ba, align 8
  %i.zi = zext nneg i8 %i.zf to i64
  %i.zj = shl i64 %i.yr, %i.zi
  store i64 %i.zj, ptr %i.ll, align 8
  %i.zk = add nuw nsw i64 %.sroa.01.0559, 1
  %i.zl = add nuw nsw i64 %i.zk, %i.zd
  br label %bb.gt

bb.gg:                                            ; preds = %bb.ge
  %i.zm = lshr i64 %i.yr, 48
  %i.zn = trunc nuw nsw i64 %i.zm to i32          ; 3 uses
  store i32 %i.zn, ptr %i.av, align 4
  %i.zo = icmp samesign ult i32 %i.yy, 17
  br i1 %i.zo, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.gg
  %i.zp = zext nneg i32 %i.yy to i64
  br label %bb.gi

bb.gh:                                            ; preds = %bb.ge, %bb.gm
  %i.zq = phi i32 [ %i.yz, %bb.ge ], [ %i.aam, %bb.gm ] ; 2 uses
  %i.zr = phi i32 [ %i.yy, %bb.ge ], [ %i.aab, %bb.gm ] ; 2 uses
  %i.zs = load i8, ptr %i.ba, align 8, !noundef !5 ; 2 uses
  %i.zt = zext i8 %i.zs to i32
  %i.zu = icmp sgt i32 %i.zr, %i.zt
  br i1 %i.zu, label %.split65, label %bb.gn

._crit_edge:                                      ; preds = %bb.gg
  %i.zv = icmp eq i32 %i.yy, 17
  br i1 %i.zv, label %.split, label %bb.gl

bb.gi:                                            ; preds = %bb.gj, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.zp, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.gj ] ; 4 uses
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.zx = load i32, ptr %i.zw, align 4, !noundef !5
  %i.zy = icmp sgt i32 %i.zx, %i.zn
  br i1 %i.zy, label %bb.gm, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.zz = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.zz, 17
  br i1 %exitcond.not, label %.split, label %bb.gi

.split:                                           ; preds = %bb.gj, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.425)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr %i.av, ptr %i.as, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, ptr noundef nonnull @6, ptr noundef nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %.sroa.425.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.425, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.425.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.425, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.425)
  br label %bb.gk

bb.gk:                                            ; preds = %.split65, %bb.gr, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.gd

bb.gl:                                            ; preds = %._crit_edge
  %i.aaa = zext nneg i32 %i.yy to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aaa, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #31
  unreachable

bb.gm:                                            ; preds = %bb.gi
  %i.aab = trunc nsw i64 %indvars.iv to i32       ; 3 uses
  store i32 %i.aab, ptr %i.au, align 4
  %i.aac = sub nuw nsw i32 16, %i.aab
  %i.aad = lshr i32 %i.zn, %i.aac
  %i.aae = and i64 %indvars.iv, 4294967295
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %i.aae
  %i.aag = load i32, ptr %i.aaf, align 4, !noundef !5
  %i.aah = add i32 %i.aag, %i.aad
  %i.aai = and i32 %i.aah, 255
  %i.aaj = zext nneg i32 %i.aai to i64
  %i.aak = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.aaj
  %i.aal = load i8, ptr %i.aak, align 1, !noundef !5
  %i.aam = zext i8 %i.aal to i32
  br label %bb.gh

bb.gn:                                            ; preds = %bb.gh
  %i.aan = trunc i32 %i.zr to i8                  ; 2 uses
  %i.aao = call i8 @llvm.usub.sat.i8(i8 %i.zs, i8 %i.aan) ; 3 uses
  store i8 %i.aao, ptr %i.ba, align 8
  %i.aap = and i8 %i.aan, 63
  %i.aaq = zext nneg i8 %i.aap to i64
  %i.aar = shl i64 %i.yr, %i.aaq                  ; 3 uses
  store i64 %i.aar, ptr %i.ll, align 8
  %i.aas = lshr i32 %i.zq, 4                      ; 2 uses
  %i.aat = and i32 %i.zq, 15                      ; 4 uses
  store i32 %i.aat, ptr %i.av, align 4
  %i.aau = icmp eq i32 %i.aat, 0
  br i1 %i.aau, label %bb.go, label %bb.gp

.split65:                                         ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.427)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr %i.au, ptr %i.aq, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx, align 8
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.ba, ptr %i.aav, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.459.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noundef nonnull @7, ptr noundef nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %.sroa.427.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.427, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.427.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.427.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.427, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.427)
  br label %bb.gk

bb.go:                                            ; preds = %bb.gn
  %i.aaw = icmp eq i32 %i.aas, 15
  br i1 %i.aaw, label %bb.gq, label %bb.gr

bb.gp:                                            ; preds = %bb.gn
  %i.aax = zext nneg i32 %i.aas to i64
  %i.aay = trunc nuw nsw i32 %i.aat to i8
  %i.aaz = zext nneg i32 %i.aat to i64
  %i.aba = call noundef i64 @llvm.fshl.i64(i64 %i.aar, i64 %i.aar, i64 %i.aaz)
  store i64 %i.aba, ptr %i.ll, align 8
  %i.abb = sub i8 %i.aao, %i.aay                  ; 2 uses
  store i8 %i.abb, ptr %i.ba, align 8
  %i.abc = add nuw nsw i64 %.sroa.01.0559, 1
  %i.abd = add nuw nsw i64 %i.abc, %i.aax
  br label %bb.gs

bb.gq:                                            ; preds = %bb.go
  %i.abe = add nuw nsw i64 %.sroa.01.0559, 16
  br label %bb.gs

bb.gr:                                            ; preds = %bb.go
  %i.abf = trunc nuw nsw i64 %.sroa.01.0559 to i16
  %i.abg = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.abf, ptr %i.abg, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.gk

bb.gs:                                            ; preds = %bb.gq, %bb.gp
  %i.abh = phi i8 [ %i.aao, %bb.gq ], [ %i.abb, %bb.gp ]
  %.sroa.01.1 = phi i64 [ %i.abe, %bb.gq ], [ %i.abd, %bb.gp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gf
  %i.abi = phi i8 [ %i.abh, %bb.gs ], [ %i.zh, %bb.gf ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.gs ], [ %i.zl, %bb.gf ] ; 2 uses
  %i.abj = icmp ult i64 %.sroa.01.2, 64
  br i1 %i.abj, label %bb.cx, label %bb.cw
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream17discard_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %3, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 5 uses
  %i.h = alloca [1 x i8], align 1                 ; 5 uses
  %i.i = alloca [1 x i8], align 1                 ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 5 uses
  %i.k = alloca [1 x i8], align 1                 ; 5 uses
  %i.l = alloca [1 x i8], align 1                 ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [4 x i8], align 4                 ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 13 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [4 x i8], align 4                 ; 6 uses
  %i.x = alloca [4 x i8], align 4                 ; 5 uses
  %i.y = alloca [1 x i8], align 1                 ; 5 uses
  %i.z = alloca [1 x i8], align 1                 ; 5 uses
  %i.aa = alloca [1 x i8], align 1                ; 5 uses
  %i.ab = alloca [1 x i8], align 1                ; 5 uses
  %i.ac = alloca [1 x i8], align 1                ; 5 uses
  %i.ad = alloca [1 x i8], align 1                ; 5 uses
  %i.ae = alloca [1 x i8], align 1                ; 5 uses
  %i.af = alloca [1 x i8], align 1                ; 5 uses
  %i.ag = alloca [1 x i8], align 1                ; 5 uses
  %i.ah = alloca [1 x i8], align 1                ; 5 uses
  %i.ai = alloca [1 x i8], align 1                ; 5 uses
  %i.aj = alloca [1 x i8], align 1                ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [4 x i8], align 4                ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 12 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.427 = alloca [31 x i8], align 1          ; 4 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.425 = alloca [31 x i8], align 1          ; 4 uses
  %i.au = alloca [4 x i8], align 4                ; 6 uses
  %i.av = alloca [4 x i8], align 4                ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 2448
  %i.ax = load i16, ptr %i.aw, align 4, !range !4, !noundef !5
  %i.ay = trunc nuw i16 %i.ax to i1
  %.sink918.sroa.gep = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sink918.sroa.gep1193 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sink918.sroa.gep1195 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sink918.sroa.gep1196 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br i1 %i.ay, label %bb.b, label %bb.ct, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 2450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1031
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 47 uses
  %i.bb = load i8, ptr %i.ba, align 8, !alias.scope !1028, !noundef !5 ; 24 uses
  %i.bc = icmp ult i8 %i.bb, 32
  br i1 %i.bc, label %bb.c, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 5 uses
  %i.be = load i8, ptr %i.bd, align 2, !range !7, !alias.scope !1033, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.bg = icmp ne i8 %i.be, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.bi = load i8, ptr %i.bh, align 1, !range !8, !alias.scope !1033
  %i.bj = trunc nuw i8 %i.bi to i1
  %or.cond.i.i = select i1 %i.bg, i1 true, i1 %i.bj
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

.loopexit.i:                                      ; preds = %.preheader.i, %bb.ca, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit202
  %i.bk = sub nuw nsw i8 32, %i.bb
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = zext nneg i8 %i.bk to i64
  %i.bn = shl i64 %i.jy, %i.bm
  store i64 %i.bn, ptr %i.bl, align 8, !alias.scope !1033
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.bo = load i64, ptr %1, align 8, !alias.scope !1033, !noundef !5
  %i.bp = shl i64 %i.bo, 32                       ; 2 uses
  store i64 %i.bp, ptr %1, align 8, !alias.scope !1033
  %i.bq = or disjoint i8 %i.bb, 32                ; 2 uses
  store i8 %i.bq, ptr %i.ba, align 8, !alias.scope !1033
  %i.br = sub nuw nsw i8 32, %i.bb
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = zext nneg i8 %i.br to i64
  %i.bu = shl i64 %i.bp, %i.bt
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !1033
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.e:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !1033, !noundef !5
  %.not.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1034
  store i32 0, ptr %i.q, align 4, !noalias !1034
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %.val28.i.i = load ptr, ptr %i.bx, align 8, !alias.scope !1035, !noalias !1036, !nonnull !5, !noundef !5 ; 11 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.val29.i.i = load i64, ptr %i.by, align 8, !alias.scope !1035, !noalias !1036, !noundef !5 ; 26 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 16 uses
  %.promoted.i = load i64, ptr %i.bz, align 8, !alias.scope !1035, !noalias !1036
  br label %bb.g

bb.g:                                             ; preds = %bb.n, %bb.f
  %.sroa.0.0.i250.i = phi i64 [ 0, %bb.f ], [ %i.cp, %bb.n ] ; 6 uses
  %i.ca = phi i64 [ %.promoted.i, %bb.f ], [ %i.ch, %bb.n ] ; 3 uses
  %i.cb = sub nuw nsw i64 4, %.sroa.0.0.i250.i    ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i250.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.ca) ; 4 uses
  %i.cd = add i64 %i.ca, %i.cb                    ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %..i.i.i
  br i1 %i.ce, label %bb.i, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  %..i30.i.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.cd) ; 2 uses
  %i.cf = sub nuw i64 %..i30.i.i, %..i.i.i        ; 6 uses
  %.not4.i.i.i = icmp ugt i64 %i.cf, %i.cb
  br i1 %.not4.i.i.i, label %bb.j, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit.i, !prof !10

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !1038
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cf, i64 noundef range(i64 0, -9223372036854775808) %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !1038
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 %..i.i.i
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.cc, i64 noundef %i.cf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cg, i64 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1039
  %i.ch = add i64 %i.cf, %i.ca                    ; 7 uses
  store i64 %i.ch, ptr %i.bz, align 8, !alias.scope !1035, !noalias !1036
  %i.ci = icmp eq i64 %..i30.i.i, %..i.i.i
  br i1 %i.ci, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %i.cj = sub i64 %i.ch, %.sroa.0.0.i250.i        ; 3 uses
  %i.ck = icmp uge i64 %i.cj, %i.ch
  %i.cl = icmp ne i64 %.sroa.0.0.i250.i, 0
  %i.cm = and i1 %i.cl, %i.ck
  br i1 %i.cm, label %bb.m, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  store i64 %i.cj, ptr %i.bz, align 8, !alias.scope !1040, !noalias !1041
  br label %_RNvXs1_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB7_14no_std_readers7ZCursorRShENtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seekCsa5QsYiPB8Gl_5image.exit269

bb.m:                                             ; preds = %bb.k
  %i.cn = call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 13) #32, !noalias !1042
  %i.co = ptrtoint ptr %i.cn to i64
  br label %_RNvXs1_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB7_14no_std_readers7ZCursorRShENtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seekCsa5QsYiPB8Gl_5image.exit269

_RNvXs1_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB7_14no_std_readers7ZCursorRShENtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seekCsa5QsYiPB8Gl_5image.exit269: ; preds = %bb.l, %bb.m
  %.pre.i = phi i64 [ %i.cj, %bb.l ], [ %i.ch, %bb.m ]
  %.sroa.0153.0.ph.i = phi i64 [ -9223372036854775806, %bb.l ], [ -9223372036854775808, %bb.m ]
  %.sroa.8.0.ph.i = phi i64 [ %.sroa.0.0.i250.i, %bb.l ], [ %i.co, %bb.m ]
  store i64 %.sroa.0153.0.ph.i, ptr %i.r, align 8, !noalias !1034
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.8.0.ph.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1034
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 4, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1034
  br label %bb.p

bb.n:                                             ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit.i
  %i.cp = add nuw nsw i64 %i.cf, %.sroa.0.0.i250.i ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 4
  br i1 %i.cq, label %bb.g, label %bb.t

bb.o:                                             ; preds = %bb.e
  %i.cr = icmp eq i8 %i.bb, 0
  br i1 %i.cr, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.p:                                             ; preds = %bb.x, %_RNvXs1_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB7_14no_std_readers7ZCursorRShENtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seekCsa5QsYiPB8Gl_5image.exit269
  %i.cs = phi i64 [ %.pre.i, %_RNvXs1_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB7_14no_std_readers7ZCursorRShENtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seekCsa5QsYiPB8Gl_5image.exit269 ], [ %i.dz, %bb.x ] ; 3 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !noalias !1043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1044
  store i8 0, ptr %i.a, align 1, !noalias !1044
  call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  %..i.i82.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.cs) ; 3 uses
  %i.ct = add i64 %i.cs, 1                        ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %..i.i82.i
  br i1 %i.cu, label %bb.r, label %bb.q, !prof !9

bb.q:                                             ; preds = %bb.p
  %..i30.i83.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.ct)
  %i.cv = sub nuw i64 %..i30.i83.i, %..i.i82.i    ; 5 uses
  %.not4.i.i84.i = icmp ugt i64 %i.cv, 1
  br i1 %.not4.i.i84.i, label %bb.s, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit85.i, !prof !10

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !1046
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cv, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !1046
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit85.i: ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 %..i.i82.i
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.a, i64 noundef %i.cv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cw, i64 noundef %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1047
  %i.cx = add i64 %i.cv, %i.cs                    ; 6 uses
  store i64 %i.cx, ptr %i.bz, align 8, !alias.scope !1048, !noalias !1049
  %i.cy = load i8, ptr %i.a, align 1, !noalias !1044, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1044
  %i.cz = icmp ule i64 %.val29.i.i, %i.cx
  %i.da = zext i8 %i.cy to i64
  %i.db = zext i1 %i.cz to i64                    ; 2 uses
  store i64 %i.db, ptr %i.bv, align 8, !alias.scope !1033
  %i.dc = load i64, ptr %1, align 8, !alias.scope !1033, !noundef !5 ; 2 uses
  %i.dd = shl i64 %i.dc, 8                        ; 3 uses
  %i.de = or disjoint i64 %i.dd, %i.da            ; 3 uses
  store i64 %i.de, ptr %1, align 8, !alias.scope !1033
  %i.df = add nuw nsw i8 %i.bb, 8                 ; 5 uses
  store i8 %i.df, ptr %i.ba, align 8, !alias.scope !1033
  %i.dg = icmp eq i8 %i.cy, -1
  br i1 %i.dg, label %bb.z, label %.loopexit230.i

bb.t:                                             ; preds = %bb.n
  %.sroa.0112.0.copyload.i.i = load i32, ptr %i.q, align 4, !noalias !1034 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %.sroa.0112.0.copyload.i.i, ptr %i.dh, align 8, !noalias !1034
  store i64 -1, ptr %i.r, align 8, !noalias !1034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1034
  %i.di = call i32 @llvm.bswap.i32(i32 %.sroa.0112.0.copyload.i.i) ; 3 uses
  %i.dj = or i32 %i.di, -2139062144
  %i.dk = add i32 %i.dj, -2139062143
  %i.dl = and i32 %i.di, -2139062144
  %i.dm = and i32 %i.dl, %i.dk
  %.not221.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not221.i.i, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread218.i, label %bb.u

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread218.i: ; preds = %bb.t
  %i.dn = or disjoint i8 %i.bb, 32                ; 2 uses
  store i8 %i.dn, ptr %i.ba, align 8, !alias.scope !1033
  %i.do = load i64, ptr %1, align 8, !alias.scope !1033, !noundef !5
  %i.dp = shl i64 %i.do, 32
  %i.dq = zext i32 %i.di to i64
  %i.dr = or disjoint i64 %i.dp, %i.dq            ; 2 uses
  store i64 %i.dr, ptr %1, align 8, !alias.scope !1033
  %i.ds = sub nuw nsw i8 32, %i.bb
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.du = zext nneg i8 %i.ds to i64
  %i.dv = shl i64 %i.dr, %i.du
  store i64 %i.dv, ptr %i.dt, align 8, !alias.scope !1033
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !noalias !1043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1034
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.u:                                             ; preds = %bb.t
  %i.dw = icmp ult i64 %i.ch, 4
  br i1 %i.dw, label %bb.v, label %bb.x, !prof !9

bb.v:                                             ; preds = %bb.u
  %i.dx = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 13) #32
          to label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.w, !noalias !1031

bb.w:                                             ; preds = %bb.v
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #33
          to label %common.resume unwind label %bb.y, !noalias !1043

bb.x:                                             ; preds = %bb.u
  %i.dz = add i64 %i.ch, -4                       ; 2 uses
  store i64 %i.dz, ptr %i.bz, align 8, !alias.scope !1050
  br label %bb.p

bb.y:                                             ; preds = %bb.w
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34, !noalias !1043
  unreachable

common.resume:                                    ; preds = %bb.dt, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.dy, %bb.w ], [ %i.qg, %bb.dt ]
  resume { ptr, i32 } %common.resume.op

bb.z:                                             ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit85.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1051
  store i8 0, ptr %i.k, align 1, !noalias !1051
  call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %..i.i262 = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.cx) ; 3 uses
  %i.eb = add i64 %i.cx, 1                        ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %..i.i262
  br i1 %i.ec, label %bb.ab, label %bb.aa, !prof !9

bb.aa:                                            ; preds = %bb.z
  %..i30.i263 = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.eb)
  %i.ed = sub nuw i64 %..i30.i263, %..i.i262      ; 5 uses
  %.not4.i.i264 = icmp ugt i64 %i.ed, 1
  br i1 %.not4.i.i264, label %bb.ac, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit265, !prof !10

bb.ab:                                            ; preds = %bb.z
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !1053
  unreachable

bb.ac:                                            ; preds = %bb.aa
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ed, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !1053
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit265: ; preds = %bb.aa
  %i.ee = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 %..i.i262
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.k, i64 noundef %i.ed, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef %i.ed, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1054
  %i.ef = add i64 %i.ed, %i.cx                    ; 3 uses
  store i64 %i.ef, ptr %i.bz, align 8, !alias.scope !1052, !noalias !1055
  %i.eg = load i8, ptr %i.k, align 1, !noalias !1051, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1051
  %i.eh = icmp eq i8 %i.eg, 0
  br i1 %i.eh, label %.loopexit230.i, label %.preheader229.i

.preheader229.i:                                  ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit265, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit92.i
  %i.ei = phi i64 [ %i.en, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit92.i ], [ %i.ef, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit265 ] ; 4 uses
  %.sroa.022.0.in.i.i = phi i8 [ %i.eo, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit92.i ], [ %i.eg, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit265 ] ; 3 uses
  switch i8 %.sroa.022.0.in.i.i, label %bb.ah [
    i8 -1, label %bb.ad
    i8 0, label %.loopexit230.i
  ]

bb.ad:                                            ; preds = %.preheader229.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1056
  store i8 0, ptr %i.l, align 1, !noalias !1056
  call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  %..i.i89.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.ei) ; 3 uses
  %i.ej = add i64 %i.ei, 1                        ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %..i.i89.i
  br i1 %i.ek, label %bb.af, label %bb.ae, !prof !9

bb.ae:                                            ; preds = %bb.ad
  %..i30.i90.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.ej)
  %i.el = sub nuw i64 %..i30.i90.i, %..i.i89.i    ; 5 uses
  %.not4.i.i91.i = icmp ugt i64 %i.el, 1
  br i1 %.not4.i.i91.i, label %bb.ag, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit92.i, !prof !10

bb.af:                                            ; preds = %bb.ad
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !1058
  unreachable

bb.ag:                                            ; preds = %bb.ae
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.el, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !1058
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit92.i: ; preds = %bb.ae
  %i.em = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 %..i.i89.i
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.l, i64 noundef %i.el, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.em, i64 noundef %i.el, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1059
  %i.en = add i64 %i.el, %i.ei                    ; 2 uses
  store i64 %i.en, ptr %i.bz, align 8, !alias.scope !1060, !noalias !1049
  %i.eo = load i8, ptr %i.l, align 1, !noalias !1056, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1056
  br label %.preheader229.i

bb.ah:                                            ; preds = %.preheader229.i
  %i.ep = and i64 %i.dc, 72057594037927935        ; 2 uses
  store i64 %i.ep, ptr %1, align 8, !alias.scope !1033
  store i8 %i.bb, ptr %i.ba, align 8, !alias.scope !1033
  %i.eq = icmp eq i8 %i.bb, 0
  br i1 %i.eq, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.er = sub nsw i8 0, %i.bb
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.et = and i8 %i.er, 63
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = shl i64 %i.ep, %i.eu
  store i64 %i.ev, ptr %i.es, align 8, !alias.scope !1033
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ew = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.022.0.in.i.i), !noalias !1049 ; 2 uses
  %i.ex = extractvalue { i8, i8 } %i.ew, 0        ; 2 uses
  %i.ey = extractvalue { i8, i8 } %i.ew, 1
  store i8 %i.ex, ptr %i.bd, align 2, !alias.scope !1033
  store i8 %i.ey, ptr %i.bf, align 1, !alias.scope !1033
  %i.ez = icmp eq i8 %i.ex, 12
  br i1 %i.ez, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fa = icmp eq i8 %.sroa.022.0.in.i.i, -39
  br i1 %i.fa, label %bb.ao, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1034
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1043
  %i.fb = load i64, ptr %i.p, align 8, !range !11, !noalias !1034, !noundef !5
  %i.fc = trunc nuw i64 %i.fb to i1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !range !12, !noalias !1034, !noundef !5 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  br i1 %i.fc, label %bb.am, label %bb.an, !prof !9

bb.am:                                            ; preds = %bb.al
  %i.fg = load i64, ptr %i.ff, align 8, !noalias !1034
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.fe, i64 %i.fg) #35, !noalias !1043
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.fh = load ptr, ptr %i.ff, align 8, !noalias !1034, !nonnull !5, !noundef !5 ; 2 uses
  %i.fi = icmp samesign ugt i64 %i.fe, 27
  call void @llvm.assume(i1 %i.fi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.fh, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !1043
  %i.fj = ptrtoint ptr %i.fh to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift120.i = and i64 %i.fj, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.ao:                                            ; preds = %bb.ak
  store i64 %i.dd, ptr %1, align 8, !alias.scope !1033
  store i8 %i.df, ptr %i.ba, align 8, !alias.scope !1033
  %i.fk = sub nuw nsw i8 56, %i.bb
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fm = zext nneg i8 %i.fk to i64
  %i.fn = shl i64 %i.dd, %i.fm
  store i64 %i.fn, ptr %i.fl, align 8, !alias.scope !1033
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i

.loopexit230.i:                                   ; preds = %.preheader229.i, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit265, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit85.i
  %i.fo = phi i64 [ %i.cx, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit85.i ], [ %i.ef, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit265 ], [ %i.ei, %.preheader229.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1061
  store i8 0, ptr %i.b, align 1, !noalias !1061
  call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %..i.i253 = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.fo) ; 3 uses
  %i.fp = add i64 %i.fo, 1                        ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %..i.i253
  br i1 %i.fq, label %bb.aq, label %bb.ap, !prof !9

bb.ap:                                            ; preds = %.loopexit230.i
  %..i30.i254 = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.fp)
  %i.fr = sub nuw i64 %..i30.i254, %..i.i253      ; 5 uses
  %.not4.i.i255 = icmp ugt i64 %i.fr, 1
  br i1 %.not4.i.i255, label %bb.ar, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit256, !prof !10

bb.aq:                                            ; preds = %.loopexit230.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !1063
  unreachable

bb.ar:                                            ; preds = %bb.ap
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fr, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !1063
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit256: ; preds = %bb.ap
  %i.fs = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 %..i.i253
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.b, i64 noundef %i.fr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fs, i64 noundef %i.fr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1064
  %i.ft = add i64 %i.fr, %i.fo                    ; 6 uses
  store i64 %i.ft, ptr %i.bz, align 8, !alias.scope !1062, !noalias !1055
  %i.fu = load i8, ptr %i.b, align 1, !noalias !1061, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1061
end_hunk_1
