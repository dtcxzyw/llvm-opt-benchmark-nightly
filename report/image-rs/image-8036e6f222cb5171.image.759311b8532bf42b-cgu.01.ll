Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.01?download=true
inline.NumInlined: 1496
inline.NumDeleted: 531
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream16decode_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.aai, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread545

bb.fd:                                            ; preds = %bb.ez
  %i.aaj = and i64 %i.zg, -256                    ; 2 uses
  store i64 %i.aaj, ptr %1, align 8, !alias.scope !138, !noalias !141
  store i8 %i.zi, ptr %i.bb, align 8, !alias.scope !138, !noalias !141
  %i.aak = sub i8 0, %i.zi
  %i.aal = and i8 %i.aak, 63
  %i.aam = zext nneg i8 %i.aal to i64
  %i.aan = shl i64 %i.aaj, %i.aam
  store i64 %i.aan, ptr %i.mj, align 8, !alias.scope !138, !noalias !141
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.cv
  %i.aao = ptrtoint ptr %i.se to i64              ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift291 = and i64 %i.aao, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap), !noalias !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !144
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread545

bb.fe:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread545, %bb.fk, %bb.fw, %bb.bz, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  ret void

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread545: ; preds = %bb.cn, %bb.ee, %bb.fc, %bb.dq, %bb.es, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0273.1556 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.ee ], [ 0, %bb.es ], [ 0, %bb.fc ], [ 0, %bb.dq ], [ 10, %bb.cn ]
  %.sroa.33.1554 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.vs, %bb.ee ], [ %i.xw, %bb.es ], [ %i.aad, %bb.fc ], [ %i.ue, %bb.dq ], [ undef, %bb.cn ]
  %.sroa.42.sroa.0.1553 = phi i64 [ %i.aao, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.vx, %bb.ee ], [ %i.yb, %bb.es ], [ %i.aai, %bb.fc ], [ %i.uj, %bb.dq ], [ 0, %bb.cn ]
  %.sroa.42.sroa.13.sroa.0.1552 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift291, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.42.sroa.13.0.extract.shift287.a, %bb.ee ], [ %.sroa.42.sroa.13.0.extract.shift285, %bb.es ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.fc ], [ %.sroa.42.sroa.13.0.extract.shift289.a, %bb.dq ], [ 0, %bb.cn ]
  %.sroa.42.sroa.0.0.insert.ext = and i64 %.sroa.42.sroa.0.1553, 255
  %.sroa.42.sroa.0.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0.1552, %.sroa.42.sroa.0.0.insert.ext
  store i8 %.sroa.0273.1556, ptr %0, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.458.0..sroa_idx, align 1
  %.sroa.559.sroa.4.0..sroa.559.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.33.1554, ptr %.sroa.559.sroa.4.0..sroa.559.0..sroa_idx.sroa_idx, align 8
  %.sroa.559.sroa.5.0..sroa.559.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.sroa.0.0.insert.insert, ptr %.sroa.559.sroa.5.0..sroa.559.0..sroa_idx.sroa_idx, align 8
  %.sroa.559.sroa.6.0..sroa.559.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 28, ptr %.sroa.559.sroa.6.0..sroa.559.0..sroa_idx.sroa_idx, align 8
  br label %bb.fe

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.cn, %bb.fd, %bb.ez, %bb.ca, %.loopexit, %bb.dn, %bb.dr, %bb.eb, %bb.ef, %bb.ep, %bb.et, %bb.cc, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread557
  %i.aap = load i64, ptr %i.mj, align 8, !noundef !5 ; 4 uses
  %i.aaq = lshr i64 %i.aap, 55                    ; 2 uses
  %i.aar = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.aaq
  %i.aas = load i16, ptr %i.aar, align 2, !noundef !5 ; 4 uses
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.aaq
  %i.aau = load i32, ptr %i.aat, align 4, !noundef !5 ; 3 uses
  store i32 %i.aau, ptr %i.aw, align 4
  %i.aav = icmp eq i16 %i.aas, 0
  br i1 %i.aav, label %bb.ff, label %bb.fu

bb.ff:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.aaw = ashr i32 %i.aau, 9                     ; 7 uses
  store i32 %i.aaw, ptr %i.av, align 4
  %i.aax = and i32 %i.aau, 511
  %i.aay = icmp sgt i32 %i.aaw, 9
  br i1 %i.aay, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.aaz = lshr i64 %i.aap, 48
  %i.aba = trunc nuw nsw i64 %i.aaz to i32        ; 3 uses
  store i32 %i.aba, ptr %i.aw, align 4
  %i.abb = icmp samesign ult i32 %i.aaw, 17
  br i1 %i.abb, label %.lr.ph697.preheader, label %._crit_edge698

.lr.ph697.preheader:                              ; preds = %bb.fg
  %i.abc = zext nneg i32 %i.aaw to i64
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff, %bb.fm
  %i.abd = phi i32 [ %i.aax, %bb.ff ], [ %i.abz, %bb.fm ] ; 2 uses
  %i.abe = phi i32 [ %i.aaw, %bb.ff ], [ %i.abo, %bb.fm ] ; 2 uses
  %i.abf = load i8, ptr %i.bb, align 8, !noundef !5 ; 2 uses
  %i.abg = zext i8 %i.abf to i32
  %i.abh = icmp sgt i32 %i.abe, %i.abg
  br i1 %i.abh, label %.split79, label %bb.fn

._crit_edge698:                                   ; preds = %bb.fg
  %i.abi = icmp eq i32 %i.aaw, 17
  br i1 %i.abi, label %.split, label %bb.fl

bb.fi:                                            ; preds = %bb.fj, %.lr.ph697.preheader
  %indvars.iv820 = phi i64 [ %i.abc, %.lr.ph697.preheader ], [ %indvars.iv.next821, %bb.fj ] ; 4 uses
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv820
  %i.abk = load i32, ptr %i.abj, align 4, !noundef !5
  %i.abl = icmp sgt i32 %i.abk, %i.aba
  br i1 %i.abl, label %bb.fm, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %indvars.iv.next821 = add nuw nsw i64 %indvars.iv820, 1 ; 2 uses
  %i.abm = and i64 %indvars.iv.next821, 4294967295
  %exitcond824.not = icmp eq i64 %i.abm, 17
  br i1 %exitcond824.not, label %.split, label %bb.fi

.split:                                           ; preds = %bb.fj, %._crit_edge698
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr %i.aw, ptr %i.at, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
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
  %i.abn = zext nneg i32 %i.aaw to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.abn, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #31
  unreachable

bb.fm:                                            ; preds = %bb.fi
  %i.abo = trunc nsw i64 %indvars.iv820 to i32    ; 3 uses
  store i32 %i.abo, ptr %i.av, align 4
  %i.abp = sub nuw nsw i32 16, %i.abo
  %i.abq = lshr i32 %i.aba, %i.abp
  %i.abr = and i64 %indvars.iv820, 4294967295
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.abr
  %i.abt = load i32, ptr %i.abs, align 4, !noundef !5
  %i.abu = add i32 %i.abt, %i.abq
  %i.abv = and i32 %i.abu, 255
  %i.abw = zext nneg i32 %i.abv to i64
  %i.abx = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.abw
  %i.aby = load i8, ptr %i.abx, align 1, !noundef !5
  %i.abz = zext i8 %i.aby to i32
  br label %bb.fh

bb.fn:                                            ; preds = %bb.fh
  %i.aca = trunc i32 %i.abe to i8                 ; 2 uses
  %i.acb = call i8 @llvm.usub.sat.i8(i8 %i.abf, i8 %i.aca) ; 3 uses
  store i8 %i.acb, ptr %i.bb, align 8
  %i.acc = and i8 %i.aca, 63
  %i.acd = zext nneg i8 %i.acc to i64
  %i.ace = shl i64 %i.aap, %i.acd                 ; 3 uses
  store i64 %i.ace, ptr %i.mj, align 8
  %i.acf = lshr i32 %i.abd, 4                     ; 2 uses
  %i.acg = and i32 %i.abd, 15                     ; 6 uses
  store i32 %i.acg, ptr %i.aw, align 4
  %i.ach = icmp eq i32 %i.acg, 0
  br i1 %i.ach, label %bb.fo, label %bb.fp

.split79:                                         ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %i.av, ptr %i.ar, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.469.0..sroa_idx, align 8
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.bb, ptr %i.aci, align 8
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
  %i.acj = icmp eq i32 %i.acf, 15
  br i1 %i.acj, label %bb.fq, label %bb.fr

bb.fp:                                            ; preds = %bb.fn
  %i.ack = zext nneg i32 %i.acf to i64
  %i.acl = add nuw nsw i64 %.sroa.01.0706, %i.ack ; 2 uses
  %i.acm = trunc nuw nsw i32 %i.acg to i8
  %i.acn = zext nneg i32 %i.acg to i64            ; 2 uses
  %notmask = shl nsw i64 -1, %i.acn
  %i.aco = xor i64 %notmask, -1
  %i.acp = call noundef i64 @llvm.fshl.i64(i64 %i.ace, i64 %i.ace, i64 %i.acn) ; 2 uses
  store i64 %i.acp, ptr %i.mj, align 8
  %i.acq = and i64 %i.acp, %i.aco
  %i.acr = trunc nuw nsw i64 %i.acq to i32        ; 2 uses
  %i.acs = sub i8 %i.acb, %i.acm                  ; 2 uses
  store i8 %i.acs, ptr %i.bb, align 8
  %i.act = add nuw nsw i32 %i.acg, 31
  %i.acu = and i32 %i.act, 31
  %.neg = shl nsw i32 -1, %i.acu
  %i.acv = add nsw i32 %.neg, %i.acr
  %i.acw = shl nsw i32 -1, %i.acg
  %i.acx = or disjoint i32 %i.acw, 1
  %isneg = icmp slt i32 %i.acv, 0
  %i.acy = select i1 %isneg, i32 %i.acx, i32 0
  %i.acz = add nsw i32 %i.acy, %i.acr             ; 2 uses
  store i32 %i.acz, ptr %i.aw, align 4
  %8 = shl nuw nsw i64 %i.acl, 3
  %i.ada = and i64 %8, 504
  %.sroa.036.0..sroa_idx = getelementptr inbounds nuw i8, ptr @10, i64 %i.ada
  %i.adb = load i64, ptr %.sroa.036.0..sroa_idx, align 8
  %i.adc = and i64 %i.adb, 63                     ; 2 uses
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.adc
  %i.ade = load i32, ptr %i.add, align 4, !noundef !5
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.adc
  %i.adg = mul i32 %i.ade, %i.acz
  store i32 %i.adg, ptr %i.adf, align 4
  %i.adh = add nuw nsw i64 %i.acl, 1
  br label %bb.fs

bb.fq:                                            ; preds = %bb.fo
  %i.adi = add nuw nsw i64 %.sroa.01.0706, 16
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fo
  %i.adj = trunc nuw nsw i64 %.sroa.01.0706 to i16
  %i.adk = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.adj, ptr %i.adk, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.fk

bb.fs:                                            ; preds = %bb.fp, %bb.fq
  %i.adl = phi i8 [ %i.acb, %bb.fq ], [ %i.acs, %bb.fp ]
  %.sroa.01.1 = phi i64 [ %i.adi, %bb.fq ], [ %i.adh, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fu, %bb.fs
  %i.adm = phi i8 [ %i.adl, %bb.fs ], [ %i.aee, %bb.fu ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.fs ], [ %i.aeh, %bb.fu ] ; 2 uses
  %i.adn = icmp ult i64 %.sroa.01.2, 64
  br i1 %i.adn, label %bb.ca, label %bb.bz

bb.fu:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  %i.ado = lshr i16 %i.aas, 4
  %i.adp = and i16 %i.ado, 15
  %i.adq = zext nneg i16 %i.adp to i64
  %i.adr = add nuw nsw i64 %.sroa.01.0706, %i.adq ; 2 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.adr, i64 63)
  %i.ads = ashr i16 %i.aas, 8
  %i.adt = sext i16 %i.ads to i32
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %..i
  %i.adv = load i64, ptr %i.adu, align 8, !noundef !5
  %i.adw = and i64 %i.adv, 63                     ; 2 uses
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.adw
  %i.ady = load i32, ptr %i.adx, align 4, !noundef !5
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.adw
  %i.aea = mul i32 %i.ady, %i.adt
  store i32 %i.aea, ptr %i.adz, align 4
  %i.aeb = trunc i16 %i.aas to i8
  %i.aec = and i8 %i.aeb, 15                      ; 2 uses
  %i.aed = load i8, ptr %i.bb, align 8, !noundef !5
  %i.aee = call i8 @llvm.usub.sat.i8(i8 %i.aed, i8 %i.aec) ; 2 uses
  store i8 %i.aee, ptr %i.bb, align 8
  %i.aef = zext nneg i8 %i.aec to i64
  %i.aeg = shl i64 %i.aap, %i.aef
  store i64 %i.aeg, ptr %i.mj, align 8
  %i.aeh = add nuw nsw i64 %i.adr, 1
  br label %bb.ft

bb.fv:                                            ; preds = %bb.bw
  %i.aei = load i64, ptr %i.ox, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ow, i64 %i.aei) #35
  unreachable

bb.fw:                                            ; preds = %bb.bw
  %i.aej = load ptr, ptr %i.ox, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aek = icmp samesign ugt i64 %i.ow, 41
  tail call void @llvm.assume(i1 %i.aek)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.aej, ptr noundef nonnull align 1 dereferenceable(42) @11, i64 42, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ow, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aej, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 42, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.fe
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream16decode_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %3, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %4, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(256) %5, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(256) %6, ptr noalias nofree noundef align 4 captures(none) dereferenceable(4) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.m = alloca [1 x i8], align 1                 ; 5 uses
  %i.n = alloca [1 x i8], align 1                 ; 5 uses
  %i.o = alloca [1 x i8], align 1                 ; 5 uses
  %i.p = alloca [1 x i8], align 1                 ; 5 uses
  %i.q = alloca [1 x i8], align 1                 ; 5 uses
  %i.r = alloca [1 x i8], align 1                 ; 5 uses
  %i.s = alloca [1 x i8], align 1                 ; 5 uses
  %i.t = alloca [1 x i8], align 1                 ; 5 uses
  %i.u = alloca [1 x i8], align 1                 ; 5 uses
  %i.v = alloca [1 x i8], align 1                 ; 5 uses
  %i.w = alloca [1 x i8], align 1                 ; 5 uses
  %i.x = alloca [1 x i8], align 1                 ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [4 x i8], align 4                ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 13 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [4 x i8], align 4                ; 6 uses
  %i.aj = alloca [4 x i8], align 4                ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [4 x i8], align 4                ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 12 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.431 = alloca [31 x i8], align 1          ; 4 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.429 = alloca [31 x i8], align 1          ; 4 uses
  %i.av = alloca [4 x i8], align 4                ; 6 uses
  %i.aw = alloca [4 x i8], align 4                ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 2448
  %i.ay = load i16, ptr %i.ax, align 4, !range !4, !noundef !5
  %i.az = trunc nuw i16 %i.ay to i1
  %.sink982.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sink982.sroa.gep1187 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sink982.sroa.gep1189 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sink982.sroa.gep1190 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br i1 %i.az, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 2450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 59 uses
  %i.bc = load i8, ptr %i.bb, align 8, !noundef !5 ; 5 uses
  %i.bd = icmp ne i8 %i.bc, 0
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 10 uses
  %i.bf = load i8, ptr %i.be, align 2, !range !7  ; 2 uses
  %.not = icmp eq i8 %i.bf, -1
  %or.cond = select i1 %i.bd, i1 true, i1 %.not
  br i1 %or.cond, label %bb.d, label %bb.bw

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !289
  %i.bg = icmp ult i8 %i.bc, 32
  br i1 %i.bg, label %bb.e, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.bi = icmp ne i8 %i.bf, -1
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.bk = load i8, ptr %i.bj, align 1, !range !21, !alias.scope !295, !noalias !296
  %i.bl = trunc nuw i8 %i.bk to i1
  %or.cond.i.i = select i1 %i.bi, i1 true, i1 %i.bl
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

.loopexit572.a:                                   ; preds = %.preheader571.a, %.loopexit574, %bb.be
  %i.bm = load i64, ptr %1, align 8, !alias.scope !295, !noalias !296, !noundef !5
  %i.bn = load i8, ptr %i.bb, align 8, !alias.scope !295, !noalias !296, !noundef !5
  %i.bo = sub i8 0, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = and i8 %i.bo, 63
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = shl i64 %i.bm, %i.br
  store i64 %i.bs, ptr %i.bp, align 8, !alias.scope !295, !noalias !296
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread

bb.f:                                             ; preds = %bb.e
  %i.bt = load i64, ptr %1, align 8, !alias.scope !295, !noalias !296, !noundef !5
  %i.bu = shl i64 %i.bt, 32                       ; 2 uses
  store i64 %i.bu, ptr %1, align 8, !alias.scope !295, !noalias !296
  %i.bv = or disjoint i8 %i.bc, 32
  store i8 %i.bv, ptr %i.bb, align 8, !alias.scope !295, !noalias !296
  %i.bw = sub nuw nsw i8 32, %i.bc
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = zext nneg i8 %i.bw to i64
  %i.bz = shl i64 %i.bu, %i.by
end_hunk_0
begin_hunk_1_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream16decode_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.aai, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread545

bb.fd:                                            ; preds = %bb.ez
  %i.aaj = and i64 %i.zg, -256                    ; 2 uses
  store i64 %i.aaj, ptr %1, align 8, !alias.scope !407, !noalias !410
  store i8 %i.zi, ptr %i.bb, align 8, !alias.scope !407, !noalias !410
  %i.aak = sub i8 0, %i.zi
  %i.aal = and i8 %i.aak, 63
  %i.aam = zext nneg i8 %i.aal to i64
  %i.aan = shl i64 %i.aaj, %i.aam
  store i64 %i.aan, ptr %i.mj, align 8, !alias.scope !407, !noalias !410
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.cv
  %i.aao = ptrtoint ptr %i.se to i64              ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift291 = and i64 %i.aao, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap), !noalias !431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !413
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread545

bb.fe:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread545, %bb.fk, %bb.fw, %bb.bz, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  ret void

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread545: ; preds = %bb.cn, %bb.ee, %bb.fc, %bb.dq, %bb.es, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0273.1556 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.ee ], [ 0, %bb.es ], [ 0, %bb.fc ], [ 0, %bb.dq ], [ 10, %bb.cn ]
  %.sroa.33.1554 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.vs, %bb.ee ], [ %i.xw, %bb.es ], [ %i.aad, %bb.fc ], [ %i.ue, %bb.dq ], [ undef, %bb.cn ]
  %.sroa.42.sroa.0.1553 = phi i64 [ %i.aao, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.vx, %bb.ee ], [ %i.yb, %bb.es ], [ %i.aai, %bb.fc ], [ %i.uj, %bb.dq ], [ 0, %bb.cn ]
  %.sroa.42.sroa.13.sroa.0.1552 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift291, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.42.sroa.13.0.extract.shift287.a, %bb.ee ], [ %.sroa.42.sroa.13.0.extract.shift285, %bb.es ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.fc ], [ %.sroa.42.sroa.13.0.extract.shift289.a, %bb.dq ], [ 0, %bb.cn ]
  %.sroa.42.sroa.0.0.insert.ext = and i64 %.sroa.42.sroa.0.1553, 255
  %.sroa.42.sroa.0.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0.1552, %.sroa.42.sroa.0.0.insert.ext
  store i8 %.sroa.0273.1556, ptr %0, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.458.0..sroa_idx, align 1
  %.sroa.559.sroa.4.0..sroa.559.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.33.1554, ptr %.sroa.559.sroa.4.0..sroa.559.0..sroa_idx.sroa_idx, align 8
  %.sroa.559.sroa.5.0..sroa.559.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.sroa.0.0.insert.insert, ptr %.sroa.559.sroa.5.0..sroa.559.0..sroa_idx.sroa_idx, align 8
  %.sroa.559.sroa.6.0..sroa.559.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 28, ptr %.sroa.559.sroa.6.0..sroa.559.0..sroa_idx.sroa_idx, align 8
  br label %bb.fe

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.cn, %bb.fd, %bb.ez, %bb.ca, %.loopexit, %bb.dn, %bb.dr, %bb.eb, %bb.ef, %bb.ep, %bb.et, %bb.cc, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread557
  %i.aap = load i64, ptr %i.mj, align 8, !noundef !5 ; 4 uses
  %i.aaq = lshr i64 %i.aap, 55                    ; 2 uses
  %i.aar = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.aaq
  %i.aas = load i16, ptr %i.aar, align 2, !noundef !5 ; 4 uses
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.aaq
  %i.aau = load i32, ptr %i.aat, align 4, !noundef !5 ; 3 uses
  store i32 %i.aau, ptr %i.aw, align 4
  %i.aav = icmp eq i16 %i.aas, 0
  br i1 %i.aav, label %bb.ff, label %bb.fu

bb.ff:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.aaw = ashr i32 %i.aau, 9                     ; 7 uses
  store i32 %i.aaw, ptr %i.av, align 4
  %i.aax = and i32 %i.aau, 511
  %i.aay = icmp sgt i32 %i.aaw, 9
  br i1 %i.aay, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.aaz = lshr i64 %i.aap, 48
  %i.aba = trunc nuw nsw i64 %i.aaz to i32        ; 3 uses
  store i32 %i.aba, ptr %i.aw, align 4
  %i.abb = icmp samesign ult i32 %i.aaw, 17
  br i1 %i.abb, label %.lr.ph697.preheader, label %._crit_edge698

.lr.ph697.preheader:                              ; preds = %bb.fg
  %i.abc = zext nneg i32 %i.aaw to i64
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff, %bb.fm
  %i.abd = phi i32 [ %i.aax, %bb.ff ], [ %i.abz, %bb.fm ] ; 2 uses
  %i.abe = phi i32 [ %i.aaw, %bb.ff ], [ %i.abo, %bb.fm ] ; 2 uses
  %i.abf = load i8, ptr %i.bb, align 8, !noundef !5 ; 2 uses
  %i.abg = zext i8 %i.abf to i32
  %i.abh = icmp sgt i32 %i.abe, %i.abg
  br i1 %i.abh, label %.split79, label %bb.fn

._crit_edge698:                                   ; preds = %bb.fg
  %i.abi = icmp eq i32 %i.aaw, 17
  br i1 %i.abi, label %.split, label %bb.fl

bb.fi:                                            ; preds = %bb.fj, %.lr.ph697.preheader
  %indvars.iv820 = phi i64 [ %i.abc, %.lr.ph697.preheader ], [ %indvars.iv.next821, %bb.fj ] ; 4 uses
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv820
  %i.abk = load i32, ptr %i.abj, align 4, !noundef !5
  %i.abl = icmp sgt i32 %i.abk, %i.aba
  br i1 %i.abl, label %bb.fm, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %indvars.iv.next821 = add nuw nsw i64 %indvars.iv820, 1 ; 2 uses
  %i.abm = and i64 %indvars.iv.next821, 4294967295
  %exitcond824.not = icmp eq i64 %i.abm, 17
  br i1 %exitcond824.not, label %.split, label %bb.fi

.split:                                           ; preds = %bb.fj, %._crit_edge698
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr %i.aw, ptr %i.at, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
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
  %i.abn = zext nneg i32 %i.aaw to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.abn, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #31
  unreachable

bb.fm:                                            ; preds = %bb.fi
  %i.abo = trunc nsw i64 %indvars.iv820 to i32    ; 3 uses
  store i32 %i.abo, ptr %i.av, align 4
  %i.abp = sub nuw nsw i32 16, %i.abo
  %i.abq = lshr i32 %i.aba, %i.abp
  %i.abr = and i64 %indvars.iv820, 4294967295
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.abr
  %i.abt = load i32, ptr %i.abs, align 4, !noundef !5
  %i.abu = add i32 %i.abt, %i.abq
  %i.abv = and i32 %i.abu, 255
  %i.abw = zext nneg i32 %i.abv to i64
  %i.abx = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.abw
  %i.aby = load i8, ptr %i.abx, align 1, !noundef !5
  %i.abz = zext i8 %i.aby to i32
  br label %bb.fh

bb.fn:                                            ; preds = %bb.fh
  %i.aca = trunc i32 %i.abe to i8                 ; 2 uses
  %i.acb = call i8 @llvm.usub.sat.i8(i8 %i.abf, i8 %i.aca) ; 3 uses
  store i8 %i.acb, ptr %i.bb, align 8
  %i.acc = and i8 %i.aca, 63
  %i.acd = zext nneg i8 %i.acc to i64
  %i.ace = shl i64 %i.aap, %i.acd                 ; 3 uses
  store i64 %i.ace, ptr %i.mj, align 8
  %i.acf = lshr i32 %i.abd, 4                     ; 2 uses
  %i.acg = and i32 %i.abd, 15                     ; 6 uses
  store i32 %i.acg, ptr %i.aw, align 4
  %i.ach = icmp eq i32 %i.acg, 0
  br i1 %i.ach, label %bb.fo, label %bb.fp

.split79:                                         ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %i.av, ptr %i.ar, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.469.0..sroa_idx, align 8
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.bb, ptr %i.aci, align 8
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
  %i.acj = icmp eq i32 %i.acf, 15
  br i1 %i.acj, label %bb.fq, label %bb.fr

bb.fp:                                            ; preds = %bb.fn
  %i.ack = zext nneg i32 %i.acf to i64
  %i.acl = add nuw nsw i64 %.sroa.01.0706, %i.ack ; 2 uses
  %i.acm = trunc nuw nsw i32 %i.acg to i8
  %i.acn = zext nneg i32 %i.acg to i64            ; 2 uses
  %notmask = shl nsw i64 -1, %i.acn
  %i.aco = xor i64 %notmask, -1
  %i.acp = call noundef i64 @llvm.fshl.i64(i64 %i.ace, i64 %i.ace, i64 %i.acn) ; 2 uses
  store i64 %i.acp, ptr %i.mj, align 8
  %i.acq = and i64 %i.acp, %i.aco
  %i.acr = trunc nuw nsw i64 %i.acq to i32        ; 2 uses
  %i.acs = sub i8 %i.acb, %i.acm                  ; 2 uses
  store i8 %i.acs, ptr %i.bb, align 8
  %i.act = add nuw nsw i32 %i.acg, 31
  %i.acu = and i32 %i.act, 31
  %.neg = shl nsw i32 -1, %i.acu
  %i.acv = add nsw i32 %.neg, %i.acr
  %i.acw = shl nsw i32 -1, %i.acg
  %i.acx = or disjoint i32 %i.acw, 1
  %isneg = icmp slt i32 %i.acv, 0
  %i.acy = select i1 %isneg, i32 %i.acx, i32 0
  %i.acz = add nsw i32 %i.acy, %i.acr             ; 2 uses
  store i32 %i.acz, ptr %i.aw, align 4
  %8 = shl nuw nsw i64 %i.acl, 3
  %i.ada = and i64 %8, 504
  %.sroa.036.0..sroa_idx = getelementptr inbounds nuw i8, ptr @10, i64 %i.ada
  %i.adb = load i64, ptr %.sroa.036.0..sroa_idx, align 8
  %i.adc = and i64 %i.adb, 63                     ; 2 uses
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.adc
  %i.ade = load i32, ptr %i.add, align 4, !noundef !5
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.adc
  %i.adg = mul i32 %i.ade, %i.acz
  store i32 %i.adg, ptr %i.adf, align 4
  %i.adh = add nuw nsw i64 %i.acl, 1
  br label %bb.fs

bb.fq:                                            ; preds = %bb.fo
  %i.adi = add nuw nsw i64 %.sroa.01.0706, 16
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fo
  %i.adj = trunc nuw nsw i64 %.sroa.01.0706 to i16
  %i.adk = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.adj, ptr %i.adk, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.fk

bb.fs:                                            ; preds = %bb.fp, %bb.fq
  %i.adl = phi i8 [ %i.acb, %bb.fq ], [ %i.acs, %bb.fp ]
  %.sroa.01.1 = phi i64 [ %i.adi, %bb.fq ], [ %i.adh, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fu, %bb.fs
  %i.adm = phi i8 [ %i.adl, %bb.fs ], [ %i.aee, %bb.fu ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.fs ], [ %i.aeh, %bb.fu ] ; 2 uses
  %i.adn = icmp ult i64 %.sroa.01.2, 64
  br i1 %i.adn, label %bb.ca, label %bb.bz

bb.fu:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  %i.ado = lshr i16 %i.aas, 4
  %i.adp = and i16 %i.ado, 15
  %i.adq = zext nneg i16 %i.adp to i64
  %i.adr = add nuw nsw i64 %.sroa.01.0706, %i.adq ; 2 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.adr, i64 63)
  %i.ads = ashr i16 %i.aas, 8
  %i.adt = sext i16 %i.ads to i32
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %..i
  %i.adv = load i64, ptr %i.adu, align 8, !noundef !5
  %i.adw = and i64 %i.adv, 63                     ; 2 uses
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.adw
  %i.ady = load i32, ptr %i.adx, align 4, !noundef !5
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.adw
  %i.aea = mul i32 %i.ady, %i.adt
  store i32 %i.aea, ptr %i.adz, align 4
  %i.aeb = trunc i16 %i.aas to i8
  %i.aec = and i8 %i.aeb, 15                      ; 2 uses
  %i.aed = load i8, ptr %i.bb, align 8, !noundef !5
  %i.aee = call i8 @llvm.usub.sat.i8(i8 %i.aed, i8 %i.aec) ; 2 uses
  store i8 %i.aee, ptr %i.bb, align 8
  %i.aef = zext nneg i8 %i.aec to i64
  %i.aeg = shl i64 %i.aap, %i.aef
  store i64 %i.aeg, ptr %i.mj, align 8
  %i.aeh = add nuw nsw i64 %i.adr, 1
  br label %bb.ft

bb.fv:                                            ; preds = %bb.bw
  %i.aei = load i64, ptr %i.ox, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ow, i64 %i.aei) #35
  unreachable

bb.fw:                                            ; preds = %bb.bw
  %i.aej = load ptr, ptr %i.ox, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aek = icmp samesign ugt i64 %i.ow, 41
  tail call void @llvm.assume(i1 %i.aek)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.aej, ptr noundef nonnull align 1 dereferenceable(42) @11, i64 42, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ow, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aej, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
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
  %.sink935.sroa.gep = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sink935.sroa.gep1210 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sink935.sroa.gep1212 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sink935.sroa.gep1213 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br i1 %i.ay, label %bb.b, label %bb.cz, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 2450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !558
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 59 uses
  %i.bb = load i8, ptr %i.ba, align 8, !alias.scope !551, !noalias !560, !noundef !5 ; 4 uses
  %i.bc = icmp ult i8 %i.bb, 32
  br i1 %i.bc, label %bb.c, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 5 uses
  %i.be = load i8, ptr %i.bd, align 2, !range !7, !alias.scope !564, !noalias !565, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.bg = icmp ne i8 %i.be, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.bi = load i8, ptr %i.bh, align 1, !range !21, !alias.scope !564, !noalias !565
  %i.bj = trunc nuw i8 %i.bi to i1
  %or.cond.i.i = select i1 %i.bg, i1 true, i1 %i.bj
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

.loopexit.i:                                      ; preds = %.preheader.i, %bb.ce, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit202
  %i.bk = load i64, ptr %1, align 8, !alias.scope !564, !noalias !565, !noundef !5
  %i.bl = load i8, ptr %i.ba, align 8, !alias.scope !564, !noalias !565, !noundef !5
  %i.bm = sub i8 0, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = and i8 %i.bm, 63
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = shl i64 %i.bk, %i.bp
  store i64 %i.bq, ptr %i.bn, align 8, !alias.scope !564, !noalias !565
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.br = load i64, ptr %1, align 8, !alias.scope !564, !noalias !565, !noundef !5
  %i.bs = shl i64 %i.br, 32                       ; 2 uses
  store i64 %i.bs, ptr %1, align 8, !alias.scope !564, !noalias !565
  %i.bt = or disjoint i8 %i.bb, 32
  store i8 %i.bt, ptr %i.ba, align 8, !alias.scope !564, !noalias !565
  %i.bu = sub nuw nsw i8 32, %i.bb
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bw = zext nneg i8 %i.bu to i64
  %i.bx = shl i64 %i.bs, %i.bw
  store i64 %i.bx, ptr %i.bv, align 8, !alias.scope !564, !noalias !565
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.e:                                             ; preds = %bb.c
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !564, !noalias !565, !noundef !5
  %.not.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !568
end_hunk_1
begin_hunk_2_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream19decode_mcu_ac_firstINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.lv, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !1381
  %i.lx = ptrtoint ptr %i.lv to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.lx, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread305

bb.cs:                                            ; preds = %bb.co
  %i.ly = and i64 %i.kv, -256                     ; 2 uses
  store i64 %i.ly, ptr %1, align 8, !alias.scope !1357, !noalias !1360
  store i8 %i.kx, ptr %i.ah, align 8, !alias.scope !1357, !noalias !1360
  %i.lz = sub i8 0, %i.kx
  %i.ma = and i8 %i.lz, 63
  %i.mb = zext nneg i8 %i.ma to i64
  %i.mc = shl i64 %i.ly, %i.mb
  store i64 %i.mc, ptr %i.aq, align 8, !alias.scope !1357, !noalias !1360
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.y
  %i.md = ptrtoint ptr %i.dk to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift218 = and i64 %i.md, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1363
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread305

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread305: ; preds = %bb.q, %bb.bn, %bb.cr, %bb.au, %bb.cd, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0.1316 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.bn ], [ 0, %bb.cd ], [ 0, %bb.cr ], [ 0, %bb.au ], [ 10, %bb.q ]
  %.sroa.33.1314 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.hs, %bb.bn ], [ %i.jy, %bb.cd ], [ %i.ls, %bb.cr ], [ %i.fl, %bb.au ], [ undef, %bb.q ]
  %.sroa.42.sroa.0.1313 = phi i64 [ %i.md, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.hx, %bb.bn ], [ %i.kd, %bb.cd ], [ %i.lx, %bb.cr ], [ %i.fq, %bb.au ], [ 0, %bb.q ]
  %.sroa.42.sroa.13.sroa.0.1312 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift218, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.42.sroa.13.0.extract.shift214.a, %bb.bn ], [ %.sroa.42.sroa.13.0.extract.shift212, %bb.cd ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.cr ], [ %.sroa.42.sroa.13.0.extract.shift216.a, %bb.au ], [ 0, %bb.q ]
  %.sroa.42.sroa.0.0.insert.ext = and i64 %.sroa.42.sroa.0.1313, 255
  %.sroa.42.sroa.0.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0.1312, %.sroa.42.sroa.0.0.insert.ext
  store i8 %.sroa.0.1316, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.432.0..sroa_idx, align 1
  %.sroa.533.sroa.4.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.33.1314, ptr %.sroa.533.sroa.4.0..sroa.533.0..sroa_idx.sroa_idx, align 8
  %.sroa.533.sroa.5.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.sroa.0.0.insert.insert, ptr %.sroa.533.sroa.5.0..sroa.533.0..sroa_idx.sroa_idx, align 8
  %.sroa.533.sroa.6.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 28, ptr %.sroa.533.sroa.6.0..sroa.533.0..sroa_idx.sroa_idx, align 8
  br label %bb.di

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.q, %bb.cs, %bb.co, %bb.d, %.loopexit, %bb.ar, %bb.av, %bb.bk, %bb.bo, %bb.ca, %bb.ce, %bb.f, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread317
  %i.me = load i64, ptr %i.aq, align 8, !noundef !5 ; 4 uses
  %i.mf = lshr i64 %i.me, 55                      ; 2 uses
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.mf
  %i.mh = load i16, ptr %i.mg, align 2, !noundef !5 ; 4 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.mf
  %i.mj = load i32, ptr %i.mi, align 4, !noundef !5 ; 3 uses
  store i32 %i.mj, ptr %i.x, align 4
  %i.mk = icmp eq i16 %i.mh, 0
  br i1 %i.mk, label %bb.ct, label %bb.dj

bb.ct:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ml = ashr i32 %i.mj, 9                       ; 7 uses
  store i32 %i.ml, ptr %i.w, align 4
  %i.mm = and i32 %i.mj, 511
  %i.mn = icmp sgt i32 %i.ml, 9
  br i1 %i.mn, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.mo = lshr i64 %i.me, 48
  %i.mp = trunc nuw nsw i64 %i.mo to i32          ; 3 uses
  store i32 %i.mp, ptr %i.x, align 4
  %i.mq = icmp samesign ult i32 %i.ml, 17
  br i1 %i.mq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.cu
  %i.mr = zext nneg i32 %i.ml to i64
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct, %bb.da
  %i.ms = phi i32 [ %i.mm, %bb.ct ], [ %i.no, %bb.da ] ; 2 uses
  %i.mt = phi i32 [ %i.ml, %bb.ct ], [ %i.nd, %bb.da ] ; 2 uses
  %i.mu = load i8, ptr %i.ah, align 8, !noundef !5 ; 2 uses
  %i.mv = zext i8 %i.mu to i32
  %i.mw = icmp sgt i32 %i.mt, %i.mv
  br i1 %i.mw, label %.split53, label %bb.db

._crit_edge:                                      ; preds = %bb.cu
  %i.mx = icmp eq i32 %i.ml, 17
  br i1 %i.mx, label %.split, label %bb.cz

bb.cw:                                            ; preds = %bb.cx, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.mr, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.cx ] ; 4 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.mz = load i32, ptr %i.my, align 4, !noundef !5
  %i.na = icmp sgt i32 %i.mz, %i.mp
  br i1 %i.na, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nb = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.nb, 17
  br i1 %exitcond.not, label %.split, label %bb.cw

.split:                                           ; preds = %bb.cx, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.x, ptr %i.u, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.437.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @6, ptr noundef nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.sroa.416.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.416, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.416.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.416, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416)
  br label %bb.cy

bb.cy:                                            ; preds = %.split53, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.di

bb.cz:                                            ; preds = %._crit_edge
  %i.nc = zext nneg i32 %i.ml to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.nc, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #31
  unreachable

bb.da:                                            ; preds = %bb.cw
  %i.nd = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.nd, ptr %i.w, align 4
  %i.ne = sub nuw nsw i32 16, %i.nd
  %i.nf = lshr i32 %i.mp, %i.ne
  %i.ng = and i64 %indvars.iv, 4294967295
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ng
  %i.ni = load i32, ptr %i.nh, align 4, !noundef !5
  %i.nj = add i32 %i.ni, %i.nf
  %i.nk = and i32 %i.nj, 255
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !noundef !5
  %i.no = zext i8 %i.nn to i32
  br label %bb.cv

bb.db:                                            ; preds = %bb.cv
  %i.np = trunc i32 %i.mt to i8                   ; 2 uses
  %i.nq = call i8 @llvm.usub.sat.i8(i8 %i.mu, i8 %i.np) ; 4 uses
  store i8 %i.nq, ptr %i.ah, align 8
  %i.nr = and i8 %i.np, 63
  %i.ns = zext nneg i8 %i.nr to i64
  %i.nt = shl i64 %i.me, %i.ns                    ; 5 uses
  store i64 %i.nt, ptr %i.aq, align 8
  %i.nu = lshr i32 %i.ms, 4                       ; 6 uses
  %i.nv = and i32 %i.ms, 15                       ; 6 uses
  store i32 %i.nv, ptr %i.x, align 4
  %i.nw = icmp eq i32 %i.nv, 0
  br i1 %i.nw, label %bb.dc, label %bb.dd

.split53:                                         ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.418)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.w, ptr %i.s, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.443.0..sroa_idx, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.ah, ptr %i.nx, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.447.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @7, ptr noundef nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.418.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.418, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.418.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.418.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.418, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.418)
  br label %bb.cy

bb.dc:                                            ; preds = %bb.db
  %i.ny = icmp eq i32 %i.nu, 15
  br i1 %i.ny, label %bb.de, label %bb.df

bb.dd:                                            ; preds = %bb.db
  %i.nz = zext nneg i32 %i.nu to i64
  %i.oa = add nuw nsw i64 %.sroa.01.0, %i.nz      ; 2 uses
  %i.ob = trunc nuw nsw i32 %i.nv to i8
  %i.oc = zext nneg i32 %i.nv to i64              ; 2 uses
  %notmask = shl nsw i64 -1, %i.oc
  %i.od = xor i64 %notmask, -1
  %i.oe = call noundef i64 @llvm.fshl.i64(i64 %i.nt, i64 %i.nt, i64 %i.oc) ; 2 uses
  store i64 %i.oe, ptr %i.aq, align 8
  %i.of = and i64 %i.oe, %i.od
  %i.og = trunc nuw nsw i64 %i.of to i32          ; 2 uses
  %i.oh = sub i8 %i.nq, %i.ob                     ; 2 uses
  store i8 %i.oh, ptr %i.ah, align 8
  %i.oi = add nuw nsw i32 %i.nv, 31
  %i.oj = and i32 %i.oi, 31
  %.neg = shl nsw i32 -1, %i.oj
  %i.ok = add nsw i32 %.neg, %i.og
  %i.ol = shl nsw i32 -1, %i.nv
  %i.om = or disjoint i32 %i.ol, 1
  %isneg = icmp slt i32 %i.ok, 0
  %i.on = select i1 %isneg, i32 %i.om, i32 0
  %i.oo = add nsw i32 %i.on, %i.og                ; 2 uses
  store i32 %i.oo, ptr %i.x, align 4
  %i.op = trunc nsw i32 %i.oo to i16
  %i.oq = mul i16 %i.ad, %i.op
  %5 = shl nuw nsw i64 %i.oa, 3
  %i.or = and i64 %5, 504
  %.sroa.025.0..sroa_idx = getelementptr inbounds nuw i8, ptr @10, i64 %i.or
  %i.os = load i64, ptr %.sroa.025.0..sroa_idx, align 8
  %i.ot = and i64 %i.os, 63
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ot
  store i16 %i.oq, ptr %i.ou, align 2
  %i.ov = add nuw nsw i64 %i.oa, 1
  br label %bb.dg

bb.de:                                            ; preds = %bb.dc
  %i.ow = add nuw nsw i64 %.sroa.01.0, 16
  br label %bb.dg

bb.df:                                            ; preds = %bb.dc
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.oy = trunc nuw nsw i32 %i.nu to i8
  %i.oz = zext nneg i32 %i.nu to i64
  %notmask66 = shl nsw i64 -1, %i.oz
  %i.pa = xor i64 %notmask66, -1
  %i.pb = zext nneg i32 %i.nu to i64
  %i.pc = call noundef i64 @llvm.fshl.i64(i64 %i.nt, i64 %i.nt, i64 %i.pb) ; 2 uses
  store i64 %i.pc, ptr %i.aq, align 8
  %i.pd = and i64 %i.pc, %i.pa
  %i.pe = trunc nuw nsw i64 %i.pd to i32
  %i.pf = sub i8 %i.nq, %i.oy
  store i8 %i.pf, ptr %i.ah, align 8
  %notmask737 = shl nsw i32 -1, %i.nu
  %i.pg = xor i32 %notmask737, -1
  %i.ph = add nuw i32 %i.pg, %i.pe
  store i32 %i.ph, ptr %i.ox, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.loopexit330

bb.dg:                                            ; preds = %bb.dd, %bb.de
  %i.pi = phi i8 [ %i.nq, %bb.de ], [ %i.oh, %bb.dd ]
  %.sroa.01.1 = phi i64 [ %i.ow, %bb.de ], [ %i.ov, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.dh

.loopexit330:                                     ; preds = %bb.dh, %bb.df
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.pj, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.di

bb.dh:                                            ; preds = %bb.dj, %bb.dg
  %i.pk = phi i8 [ %i.pi, %bb.dg ], [ %i.qb, %bb.dj ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.dg ], [ %i.qe, %bb.dj ] ; 2 uses
  %i.pl = load i8, ptr %i.au, align 2, !noundef !5
  %i.pm = zext i8 %i.pl to i64
  %i.pn = icmp ugt i64 %.sroa.01.2, %i.pm
  br i1 %i.pn, label %.loopexit330, label %bb.d

bb.di:                                            ; preds = %.loopexit330, %bb.cy, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

bb.dj:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  %i.po = lshr i16 %i.mh, 4
  %i.pp = and i16 %i.po, 15
  %i.pq = zext nneg i16 %i.pp to i64
  %i.pr = add nuw nsw i64 %.sroa.01.0, %i.pq      ; 2 uses
  %i.ps = ashr i16 %i.mh, 8
  %i.pt = mul i16 %i.ps, %i.ad
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.pr, i64 63)
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %..i
  %i.pv = load i64, ptr %i.pu, align 8, !noundef !5
  %i.pw = and i64 %i.pv, 63
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.pw
  store i16 %i.pt, ptr %i.px, align 2
  %i.py = trunc i16 %i.mh to i8
  %i.pz = and i8 %i.py, 15                        ; 2 uses
  %i.qa = load i8, ptr %i.ah, align 8, !noundef !5
  %i.qb = call i8 @llvm.usub.sat.i8(i8 %i.qa, i8 %i.pz) ; 2 uses
  store i8 %i.qb, ptr %i.ah, align 8
  %i.qc = zext nneg i8 %i.pz to i64
  %i.qd = shl i64 %i.me, %i.qc
  store i64 %i.qd, ptr %i.aq, align 8
  %i.qe = add nuw nsw i64 %i.pr, 1
  br label %bb.dh
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream19decode_mcu_ac_firstINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %3, ptr noalias nofree noundef writeonly align 2 captures(none) dereferenceable(128) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %i.r = alloca [24 x i8], align 8                ; 12 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.418 = alloca [31 x i8], align 1          ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.416 = alloca [31 x i8], align 1          ; 4 uses
  %i.w = alloca [4 x i8], align 4                 ; 7 uses
  %i.x = alloca [4 x i8], align 4                 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 2448
  %i.z = load i16, ptr %i.y, align 4, !range !4, !noundef !5
  %i.aa = trunc nuw i16 %i.z to i1
  br i1 %i.aa, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 2450
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ad = load i16, ptr %i.ac, align 4, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.af = load i8, ptr %i.ae, align 1, !noundef !5
  %i.ag = zext i8 %i.af to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 32 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 16 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 2192
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.pre = load i8, ptr %i.ah, align 8, !alias.scope !1521, !noalias !1524
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #31
  unreachable

bb.d:                                             ; preds = %bb.dh, %bb.b
  %i.av = phi i8 [ %.pre, %bb.b ], [ %i.pk, %bb.dh ] ; 4 uses
  %.sroa.01.0 = phi i64 [ %i.ag, %bb.b ], [ %.sroa.01.2, %bb.dh ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  %i.aw = icmp ult i8 %i.av, 32
  br i1 %i.aw, label %bb.e, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ax = load i8, ptr %i.ai, align 2, !range !7, !alias.scope !1521, !noalias !1524, !noundef !5
  %i.ay = icmp ne i8 %i.ax, -1
  %i.az = load i8, ptr %i.ak, align 1, !range !21, !alias.scope !1521, !noalias !1524
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond.i = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = load i64, ptr %1, align 8, !alias.scope !1521, !noalias !1524, !noundef !5
  %i.bc = shl i64 %i.bb, 32                       ; 2 uses
  store i64 %i.bc, ptr %1, align 8, !alias.scope !1521, !noalias !1524
  %i.bd = or disjoint i8 %i.av, 32
  store i8 %i.bd, ptr %i.ah, align 8, !alias.scope !1521, !noalias !1524
  %i.be = sub nuw nsw i8 32, %i.av
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = shl i64 %i.bc, %i.bf
  store i64 %i.bg, ptr %i.aq, align 8, !alias.scope !1521, !noalias !1524
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.bh = load i64, ptr %i.al, align 8, !alias.scope !1521, !noalias !1524, !noundef !5
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1527
  store i32 0, ptr %i.q, align 4, !noalias !1527
  %.val28.i = load ptr, ptr %i.am, align 8, !alias.scope !1528, !noalias !1531, !nonnull !5, !noundef !5 ; 9 uses
  %.val29.i = load i64, ptr %i.an, align 8, !alias.scope !1528, !noalias !1531, !noundef !5 ; 20 uses
  %.promoted = load i64, ptr %i.ao, align 8, !alias.scope !1528, !noalias !1531
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.n
  %.sroa.0.0.i465 = phi i64 [ 0, %bb.h ], [ %i.bv, %bb.n ] ; 6 uses
  %i.bi = phi i64 [ %.promoted, %bb.h ], [ %i.bp, %bb.n ] ; 3 uses
  %i.bj = sub nuw nsw i64 4, %.sroa.0.0.i465      ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i465
  call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.bi) ; 4 uses
  %i.bl = add i64 %i.bi, %i.bj                    ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %..i.i
  br i1 %i.bm, label %bb.k, label %bb.j, !prof !34

bb.j:                                             ; preds = %bb.i
  %..i30.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.bl) ; 2 uses
  %i.bn = sub nuw i64 %..i30.i, %..i.i            ; 6 uses
  %.not4.i.i = icmp ugt i64 %i.bn, %i.bj
  br i1 %.not4.i.i, label %bb.l, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit, !prof !35
end_hunk_2
begin_hunk_3_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream19decode_mcu_ac_firstINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.lv, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !1545
  %i.lx = ptrtoint ptr %i.lv to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.lx, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread305

bb.cs:                                            ; preds = %bb.co
  %i.ly = and i64 %i.kv, -256                     ; 2 uses
  store i64 %i.ly, ptr %1, align 8, !alias.scope !1521, !noalias !1524
  store i8 %i.kx, ptr %i.ah, align 8, !alias.scope !1521, !noalias !1524
  %i.lz = sub i8 0, %i.kx
  %i.ma = and i8 %i.lz, 63
  %i.mb = zext nneg i8 %i.ma to i64
  %i.mc = shl i64 %i.ly, %i.mb
  store i64 %i.mc, ptr %i.aq, align 8, !alias.scope !1521, !noalias !1524
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.y
  %i.md = ptrtoint ptr %i.dk to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift218 = and i64 %i.md, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !noalias !1545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1527
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread305

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread305: ; preds = %bb.q, %bb.bn, %bb.cr, %bb.au, %bb.cd, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0.1316 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.bn ], [ 0, %bb.cd ], [ 0, %bb.cr ], [ 0, %bb.au ], [ 10, %bb.q ]
  %.sroa.33.1314 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.hs, %bb.bn ], [ %i.jy, %bb.cd ], [ %i.ls, %bb.cr ], [ %i.fl, %bb.au ], [ undef, %bb.q ]
  %.sroa.42.sroa.0.1313 = phi i64 [ %i.md, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.hx, %bb.bn ], [ %i.kd, %bb.cd ], [ %i.lx, %bb.cr ], [ %i.fq, %bb.au ], [ 0, %bb.q ]
  %.sroa.42.sroa.13.sroa.0.1312 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift218, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.42.sroa.13.0.extract.shift214.a, %bb.bn ], [ %.sroa.42.sroa.13.0.extract.shift212, %bb.cd ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.cr ], [ %.sroa.42.sroa.13.0.extract.shift216.a, %bb.au ], [ 0, %bb.q ]
  %.sroa.42.sroa.0.0.insert.ext = and i64 %.sroa.42.sroa.0.1313, 255
  %.sroa.42.sroa.0.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0.1312, %.sroa.42.sroa.0.0.insert.ext
  store i8 %.sroa.0.1316, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.432.0..sroa_idx, align 1
  %.sroa.533.sroa.4.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.33.1314, ptr %.sroa.533.sroa.4.0..sroa.533.0..sroa_idx.sroa_idx, align 8
  %.sroa.533.sroa.5.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.sroa.0.0.insert.insert, ptr %.sroa.533.sroa.5.0..sroa.533.0..sroa_idx.sroa_idx, align 8
  %.sroa.533.sroa.6.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 28, ptr %.sroa.533.sroa.6.0..sroa.533.0..sroa_idx.sroa_idx, align 8
  br label %bb.di

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.q, %bb.cs, %bb.co, %bb.d, %.loopexit, %bb.ar, %bb.av, %bb.bk, %bb.bo, %bb.ca, %bb.ce, %bb.f, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread317
  %i.me = load i64, ptr %i.aq, align 8, !noundef !5 ; 4 uses
  %i.mf = lshr i64 %i.me, 55                      ; 2 uses
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.mf
  %i.mh = load i16, ptr %i.mg, align 2, !noundef !5 ; 4 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.mf
  %i.mj = load i32, ptr %i.mi, align 4, !noundef !5 ; 3 uses
  store i32 %i.mj, ptr %i.x, align 4
  %i.mk = icmp eq i16 %i.mh, 0
  br i1 %i.mk, label %bb.ct, label %bb.dj

bb.ct:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ml = ashr i32 %i.mj, 9                       ; 7 uses
  store i32 %i.ml, ptr %i.w, align 4
  %i.mm = and i32 %i.mj, 511
  %i.mn = icmp sgt i32 %i.ml, 9
  br i1 %i.mn, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.mo = lshr i64 %i.me, 48
  %i.mp = trunc nuw nsw i64 %i.mo to i32          ; 3 uses
  store i32 %i.mp, ptr %i.x, align 4
  %i.mq = icmp samesign ult i32 %i.ml, 17
  br i1 %i.mq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.cu
  %i.mr = zext nneg i32 %i.ml to i64
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct, %bb.da
  %i.ms = phi i32 [ %i.mm, %bb.ct ], [ %i.no, %bb.da ] ; 2 uses
  %i.mt = phi i32 [ %i.ml, %bb.ct ], [ %i.nd, %bb.da ] ; 2 uses
  %i.mu = load i8, ptr %i.ah, align 8, !noundef !5 ; 2 uses
  %i.mv = zext i8 %i.mu to i32
  %i.mw = icmp sgt i32 %i.mt, %i.mv
  br i1 %i.mw, label %.split53, label %bb.db

._crit_edge:                                      ; preds = %bb.cu
  %i.mx = icmp eq i32 %i.ml, 17
  br i1 %i.mx, label %.split, label %bb.cz

bb.cw:                                            ; preds = %bb.cx, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.mr, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.cx ] ; 4 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.mz = load i32, ptr %i.my, align 4, !noundef !5
  %i.na = icmp sgt i32 %i.mz, %i.mp
  br i1 %i.na, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nb = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.nb, 17
  br i1 %exitcond.not, label %.split, label %bb.cw

.split:                                           ; preds = %bb.cx, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.x, ptr %i.u, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.437.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @6, ptr noundef nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.sroa.416.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.416, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.416.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.416, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416)
  br label %bb.cy

bb.cy:                                            ; preds = %.split53, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.di

bb.cz:                                            ; preds = %._crit_edge
  %i.nc = zext nneg i32 %i.ml to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.nc, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #31
  unreachable

bb.da:                                            ; preds = %bb.cw
  %i.nd = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.nd, ptr %i.w, align 4
  %i.ne = sub nuw nsw i32 16, %i.nd
  %i.nf = lshr i32 %i.mp, %i.ne
  %i.ng = and i64 %indvars.iv, 4294967295
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ng
  %i.ni = load i32, ptr %i.nh, align 4, !noundef !5
  %i.nj = add i32 %i.ni, %i.nf
  %i.nk = and i32 %i.nj, 255
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !noundef !5
  %i.no = zext i8 %i.nn to i32
  br label %bb.cv

bb.db:                                            ; preds = %bb.cv
  %i.np = trunc i32 %i.mt to i8                   ; 2 uses
  %i.nq = call i8 @llvm.usub.sat.i8(i8 %i.mu, i8 %i.np) ; 4 uses
  store i8 %i.nq, ptr %i.ah, align 8
  %i.nr = and i8 %i.np, 63
  %i.ns = zext nneg i8 %i.nr to i64
  %i.nt = shl i64 %i.me, %i.ns                    ; 5 uses
  store i64 %i.nt, ptr %i.aq, align 8
  %i.nu = lshr i32 %i.ms, 4                       ; 6 uses
  %i.nv = and i32 %i.ms, 15                       ; 6 uses
  store i32 %i.nv, ptr %i.x, align 4
  %i.nw = icmp eq i32 %i.nv, 0
  br i1 %i.nw, label %bb.dc, label %bb.dd

.split53:                                         ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.418)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.w, ptr %i.s, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.443.0..sroa_idx, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.ah, ptr %i.nx, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.447.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @7, ptr noundef nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.418.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.418, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.418.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.418.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.418, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.418)
  br label %bb.cy

bb.dc:                                            ; preds = %bb.db
  %i.ny = icmp eq i32 %i.nu, 15
  br i1 %i.ny, label %bb.de, label %bb.df

bb.dd:                                            ; preds = %bb.db
  %i.nz = zext nneg i32 %i.nu to i64
  %i.oa = add nuw nsw i64 %.sroa.01.0, %i.nz      ; 2 uses
  %i.ob = trunc nuw nsw i32 %i.nv to i8
  %i.oc = zext nneg i32 %i.nv to i64              ; 2 uses
  %notmask = shl nsw i64 -1, %i.oc
  %i.od = xor i64 %notmask, -1
  %i.oe = call noundef i64 @llvm.fshl.i64(i64 %i.nt, i64 %i.nt, i64 %i.oc) ; 2 uses
  store i64 %i.oe, ptr %i.aq, align 8
  %i.of = and i64 %i.oe, %i.od
  %i.og = trunc nuw nsw i64 %i.of to i32          ; 2 uses
  %i.oh = sub i8 %i.nq, %i.ob                     ; 2 uses
  store i8 %i.oh, ptr %i.ah, align 8
  %i.oi = add nuw nsw i32 %i.nv, 31
  %i.oj = and i32 %i.oi, 31
  %.neg = shl nsw i32 -1, %i.oj
  %i.ok = add nsw i32 %.neg, %i.og
  %i.ol = shl nsw i32 -1, %i.nv
  %i.om = or disjoint i32 %i.ol, 1
  %isneg = icmp slt i32 %i.ok, 0
  %i.on = select i1 %isneg, i32 %i.om, i32 0
  %i.oo = add nsw i32 %i.on, %i.og                ; 2 uses
  store i32 %i.oo, ptr %i.x, align 4
  %i.op = trunc nsw i32 %i.oo to i16
  %i.oq = mul i16 %i.ad, %i.op
  %5 = shl nuw nsw i64 %i.oa, 3
  %i.or = and i64 %5, 504
  %.sroa.025.0..sroa_idx = getelementptr inbounds nuw i8, ptr @10, i64 %i.or
  %i.os = load i64, ptr %.sroa.025.0..sroa_idx, align 8
  %i.ot = and i64 %i.os, 63
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ot
  store i16 %i.oq, ptr %i.ou, align 2
  %i.ov = add nuw nsw i64 %i.oa, 1
  br label %bb.dg

bb.de:                                            ; preds = %bb.dc
  %i.ow = add nuw nsw i64 %.sroa.01.0, 16
  br label %bb.dg

bb.df:                                            ; preds = %bb.dc
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.oy = trunc nuw nsw i32 %i.nu to i8
  %i.oz = zext nneg i32 %i.nu to i64
  %notmask66 = shl nsw i64 -1, %i.oz
  %i.pa = xor i64 %notmask66, -1
  %i.pb = zext nneg i32 %i.nu to i64
  %i.pc = call noundef i64 @llvm.fshl.i64(i64 %i.nt, i64 %i.nt, i64 %i.pb) ; 2 uses
  store i64 %i.pc, ptr %i.aq, align 8
  %i.pd = and i64 %i.pc, %i.pa
  %i.pe = trunc nuw nsw i64 %i.pd to i32
  %i.pf = sub i8 %i.nq, %i.oy
  store i8 %i.pf, ptr %i.ah, align 8
  %notmask737 = shl nsw i32 -1, %i.nu
  %i.pg = xor i32 %notmask737, -1
  %i.ph = add nuw i32 %i.pg, %i.pe
  store i32 %i.ph, ptr %i.ox, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.loopexit330

bb.dg:                                            ; preds = %bb.dd, %bb.de
  %i.pi = phi i8 [ %i.nq, %bb.de ], [ %i.oh, %bb.dd ]
  %.sroa.01.1 = phi i64 [ %i.ow, %bb.de ], [ %i.ov, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.dh

.loopexit330:                                     ; preds = %bb.dh, %bb.df
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.pj, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.di

bb.dh:                                            ; preds = %bb.dj, %bb.dg
  %i.pk = phi i8 [ %i.pi, %bb.dg ], [ %i.qb, %bb.dj ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.dg ], [ %i.qe, %bb.dj ] ; 2 uses
  %i.pl = load i8, ptr %i.au, align 2, !noundef !5
  %i.pm = zext i8 %i.pl to i64
  %i.pn = icmp ugt i64 %.sroa.01.2, %i.pm
  br i1 %i.pn, label %.loopexit330, label %bb.d

bb.di:                                            ; preds = %.loopexit330, %bb.cy, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

bb.dj:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  %i.po = lshr i16 %i.mh, 4
  %i.pp = and i16 %i.po, 15
  %i.pq = zext nneg i16 %i.pp to i64
  %i.pr = add nuw nsw i64 %.sroa.01.0, %i.pq      ; 2 uses
  %i.ps = ashr i16 %i.mh, 8
  %i.pt = mul i16 %i.ps, %i.ad
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.pr, i64 63)
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %..i
  %i.pv = load i64, ptr %i.pu, align 8, !noundef !5
  %i.pw = and i64 %i.pv, 63
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.pw
  store i16 %i.pt, ptr %i.px, align 2
  %i.py = trunc i16 %i.mh to i8
  %i.pz = and i8 %i.py, 15                        ; 2 uses
  %i.qa = load i8, ptr %i.ah, align 8, !noundef !5
  %i.qb = call i8 @llvm.usub.sat.i8(i8 %i.qa, i8 %i.pz) ; 2 uses
  store i8 %i.qb, ptr %i.ah, align 8
  %i.qc = zext nneg i8 %i.pz to i64
  %i.qd = shl i64 %i.me, %i.qc
  store i64 %i.qd, ptr %i.aq, align 8
  %i.qe = add nuw nsw i64 %i.pr, 1
  br label %bb.dh
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream20decode_mcu_ac_refineINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 dereferenceable(56) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %3, ptr noalias nofree noundef align 2 captures(none) dereferenceable(128) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %i.m = alloca [1 x i8], align 1                 ; 5 uses
  %i.n = alloca [1 x i8], align 1                 ; 5 uses
  %i.o = alloca [1 x i8], align 1                 ; 5 uses
  %i.p = alloca [1 x i8], align 1                 ; 5 uses
  %i.q = alloca [1 x i8], align 1                 ; 5 uses
  %i.r = alloca [1 x i8], align 1                 ; 5 uses
  %i.s = alloca [1 x i8], align 1                 ; 5 uses
  %i.t = alloca [1 x i8], align 1                 ; 5 uses
  %i.u = alloca [1 x i8], align 1                 ; 5 uses
  %i.v = alloca [1 x i8], align 1                 ; 5 uses
  %i.w = alloca [1 x i8], align 1                 ; 5 uses
  %i.x = alloca [1 x i8], align 1                 ; 5 uses
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
  %i.ak = alloca [1 x i8], align 1                ; 5 uses
  %i.al = alloca [1 x i8], align 1                ; 5 uses
  %i.am = alloca [1 x i8], align 1                ; 5 uses
  %i.an = alloca [1 x i8], align 1                ; 5 uses
  %i.ao = alloca [1 x i8], align 1                ; 5 uses
  %i.ap = alloca [1 x i8], align 1                ; 5 uses
  %i.aq = alloca [1 x i8], align 1                ; 5 uses
  %i.ar = alloca [1 x i8], align 1                ; 5 uses
  %i.as = alloca [1 x i8], align 1                ; 5 uses
  %i.at = alloca [1 x i8], align 1                ; 5 uses
  %i.au = alloca [1 x i8], align 1                ; 5 uses
  %i.av = alloca [1 x i8], align 1                ; 5 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 6 uses
  %i.az = alloca [24 x i8], align 8               ; 6 uses
  %i.ba = alloca [4 x i8], align 4                ; 6 uses
  %i.bb = alloca [24 x i8], align 8               ; 12 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
  %i.bf = alloca [24 x i8], align 8               ; 6 uses
  %i.bg = alloca [4 x i8], align 4                ; 6 uses
  %i.bh = alloca [24 x i8], align 8               ; 12 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
  %i.bk = alloca [24 x i8], align 8               ; 6 uses
  %i.bl = alloca [24 x i8], align 8               ; 6 uses
  %i.bm = alloca [4 x i8], align 4                ; 6 uses
  %i.bn = alloca [24 x i8], align 8               ; 13 uses
  %i.bo = alloca [24 x i8], align 8               ; 6 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [24 x i8], align 8               ; 6 uses
  %i.bs = alloca [4 x i8], align 4                ; 6 uses
  %i.bt = alloca [24 x i8], align 8               ; 12 uses
  %i.bu = alloca [24 x i8], align 8               ; 6 uses
  %i.bv = alloca [32 x i8], align 8               ; 7 uses
  %i.bw = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.424 = alloca [31 x i8], align 1          ; 4 uses
  %i.bx = alloca [16 x i8], align 8               ; 5 uses
  %i.by = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.422 = alloca [31 x i8], align 1          ; 4 uses
  %i.bz = alloca [4 x i8], align 4                ; 7 uses
  %i.ca = alloca [4 x i8], align 4                ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cc = load i16, ptr %i.cb, align 4, !noundef !5 ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.ce = load i8, ptr %i.cd, align 1, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.cg = load i32, ptr %i.cf, align 8, !noundef !5 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.preheader1368.a, label %bb.fx

.preheader1368.a:                                 ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 56 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 11 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 35 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 18 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 13 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 20 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 28 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 28 uses
  %.sroa.51041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 2192
  %i.cv = sext i16 %i.cc to i32                   ; 2 uses
  %i.cw = sub i16 0, %i.cc
  %i.cx = sext i16 %i.cw to i32                   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 34 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %.sroa.51008.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.pre = load i8, ptr %i.ci, align 8, !alias.scope !1685, !noalias !1688
  %i.da = sub i16 0, %i.cc
  br label %bb.b

bb.b:                                             ; preds = %.preheader1368.a, %bb.fw
  %i.db = phi i8 [ %i.qe, %bb.fw ], [ %.pre, %.preheader1368.a ] ; 4 uses
end_hunk_3
begin_hunk_4_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream20decode_mcu_ac_refineINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  %.sroa.42.sroa.0.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0.11201, %.sroa.42.sroa.0.0.insert.ext
  store i8 %.sroa.0.111711205, ptr %0, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.464.0..sroa_idx, align 1
  %.sroa.565.sroa.4.0..sroa.565.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.33.11203, ptr %.sroa.565.sroa.4.0..sroa.565.0..sroa_idx.sroa_idx, align 8
  %.sroa.565.sroa.5.0..sroa.565.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.sroa.0.0.insert.insert, ptr %.sroa.565.sroa.5.0..sroa.565.0..sroa_idx.sroa_idx, align 8
  %.sroa.565.sroa.6.0..sroa.565.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 28, ptr %.sroa.565.sroa.6.0..sroa.565.0..sroa_idx.sroa_idx, align 8
  br label %bb.ga

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread: ; preds = %bb.o, %bb.by, %bb.bu, %bb.b, %.loopexit1361.a, %bb.am, %bb.aq, %bb.ba, %bb.be, %bb.bk, %bb.bo, %bb.d, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread1206
  %i.nv = load i64, ptr %i.cr, align 8, !noundef !5 ; 3 uses
  %i.nw = lshr i64 %i.nv, 55
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 4, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  %i.nz = ashr i32 %i.ny, 9                       ; 7 uses
  store i32 %i.nz, ptr %i.bz, align 4
  %i.oa = and i32 %i.ny, 511
  %i.ob = icmp sgt i32 %i.nz, 9
  br i1 %i.ob, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread
  %i.oc = lshr i64 %i.nv, 48
  %i.od = trunc nuw nsw i64 %i.oc to i32          ; 3 uses
  store i32 %i.od, ptr %i.ca, align 4
  %i.oe = icmp samesign ult i32 %i.nz, 17
  br i1 %i.oe, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.bz
  %i.of = zext nneg i32 %i.nz to i64
  br label %bb.cb

bb.ca:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread, %bb.cf
  %i.og = phi i32 [ %i.oa, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread ], [ %i.pc, %bb.cf ] ; 2 uses
  %i.oh = phi i32 [ %i.nz, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread ], [ %i.or, %bb.cf ] ; 2 uses
  %i.oi = load i8, ptr %i.ci, align 8, !noundef !5 ; 2 uses
  %i.oj = zext i8 %i.oi to i32
  %i.ok = icmp sgt i32 %i.oh, %i.oj
  br i1 %i.ok, label %.split118, label %bb.cg

._crit_edge:                                      ; preds = %bb.bz
  %i.ol = icmp eq i32 %i.nz, 17
  br i1 %i.ol, label %.split, label %bb.ce

bb.cb:                                            ; preds = %bb.cc, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.of, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.cc ] ; 4 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.on = load i32, ptr %i.om, align 4, !noundef !5
  %i.oo = icmp sgt i32 %i.on, %i.od
  br i1 %i.oo, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.op = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.op, 17
  br i1 %exitcond.not, label %.split, label %bb.cb

.split:                                           ; preds = %bb.cc, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.422)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store ptr %i.ca, ptr %i.bx, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.469.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.by, ptr noundef nonnull @6, ptr noundef nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  %.sroa.422.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.422, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.422.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.422, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.422)
  br label %bb.cd

bb.cd:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread1236, %bb.fz, %.split118, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.ga

bb.ce:                                            ; preds = %._crit_edge
  %i.oq = zext nneg i32 %i.nz to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.oq, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #31
  unreachable

bb.cf:                                            ; preds = %bb.cb
  %i.or = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.or, ptr %i.bz, align 4
  %i.os = sub nuw nsw i32 16, %i.or
  %i.ot = lshr i32 %i.od, %i.os
  %i.ou = and i64 %indvars.iv, 4294967295
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ou
  %i.ow = load i32, ptr %i.ov, align 4, !noundef !5
  %i.ox = add i32 %i.ow, %i.ot
  %i.oy = and i32 %i.ox, 255
  %i.oz = zext nneg i32 %i.oy to i64
  %i.pa = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !noundef !5
  %i.pc = zext i8 %i.pb to i32
  br label %bb.ca

bb.cg:                                            ; preds = %bb.ca
  %i.pd = trunc i32 %i.oh to i8                   ; 2 uses
  %i.pe = call i8 @llvm.usub.sat.i8(i8 %i.oi, i8 %i.pd) ; 4 uses
  store i8 %i.pe, ptr %i.ci, align 8
  %i.pf = and i8 %i.pd, 63
  %i.pg = zext nneg i8 %i.pf to i64
  %i.ph = shl i64 %i.nv, %i.pg                    ; 6 uses
  store i64 %i.ph, ptr %i.cr, align 8
  %i.pi = lshr i32 %i.og, 4                       ; 6 uses
  %i.pj = and i32 %i.og, 15                       ; 2 uses
  store i32 %i.pj, ptr %i.ca, align 4
  %i.pk = icmp eq i32 %i.pj, 0
  br i1 %i.pk, label %bb.ch, label %.sink.split

.split118:                                        ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.424)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store ptr %i.bz, ptr %i.bv, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.475.0..sroa_idx, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.ci, ptr %i.pl, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.479.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bw, ptr noundef nonnull @7, ptr noundef nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %.sroa.424.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.424, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.424.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.424, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.424)
  br label %bb.cd

bb.ch:                                            ; preds = %bb.cg
  %i.pm = icmp eq i32 %i.pi, 15
  br i1 %i.pm, label %bb.cj, label %bb.ci

.sink.split:                                      ; preds = %bb.cg
  %i.pn = call i8 @llvm.usub.sat.i8(i8 %i.pe, i8 1) ; 2 uses
  store i8 %i.pn, ptr %i.ci, align 8
  %i.po = shl i64 %i.ph, 1                        ; 2 uses
  store i64 %i.po, ptr %i.cr, align 8
  %.not134 = icmp sgt i64 %i.ph, -1               ; 2 uses
  %spec.select = select i1 %.not134, i32 %i.cx, i32 %i.cv
  %spec.select2524 = select i1 %.not134, i32 %i.cx, i32 %i.cv
  store i32 %spec.select, ptr %i.ca, align 4
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.pp = shl nuw i32 1, %i.pi
  %i.pq = trunc nuw nsw i32 %i.pi to i8
  %i.pr = zext nneg i32 %i.pi to i64
  %notmask = shl nsw i64 -1, %i.pr
  %i.ps = xor i64 %notmask, -1
  %i.pt = zext nneg i32 %i.pi to i64
  %i.pu = call noundef i64 @llvm.fshl.i64(i64 %i.ph, i64 %i.ph, i64 %i.pt) ; 2 uses
  store i64 %i.pu, ptr %i.cr, align 8
  %i.pv = and i64 %i.pu, %i.ps
  %i.pw = trunc nuw nsw i64 %i.pv to i32
  %i.px = sub i8 %i.pe, %i.pq
  store i8 %i.px, ptr %i.ci, align 8
  %i.py = add nuw i32 %i.pp, %i.pw                ; 2 uses
  store i32 %i.py, ptr %i.cf, align 8
  br label %.loopexit1369

bb.cj:                                            ; preds = %.sink.split, %bb.ch
  %i.pz = phi i32 [ 0, %bb.ch ], [ %spec.select2524, %.sink.split ] ; 2 uses
  %i.qa = phi i64 [ %i.ph, %bb.ch ], [ %i.po, %.sink.split ]
  %i.qb = phi i8 [ %i.pe, %bb.ch ], [ %i.pn, %.sink.split ] ; 2 uses
  %i.qc = load i8, ptr %i.cy, align 2, !noundef !5 ; 3 uses
  %.not135 = icmp ugt i8 %.sroa.0.0, %i.qc
  br i1 %.not135, label %.loopexit1359.a, label %.preheader1358.a

.loopexit1369.loopexit:                           ; preds = %bb.fu
  %.pr1254.pre = load i32, ptr %i.cf, align 8
  br label %.loopexit1369

.loopexit1369:                                    ; preds = %.loopexit1369.loopexit, %bb.ci
  %.pr1254 = phi i32 [ %i.py, %bb.ci ], [ %.pr1254.pre, %.loopexit1369.loopexit ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %bb.ci ], [ %i.aci, %.loopexit1369.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.fx

.loopexit1359.a:                                  ; preds = %bb.cm, %bb.ck, %bb.cj
  %i.qd = phi i8 [ %i.qc, %bb.cj ], [ %.sroa.0.3, %bb.cm ], [ %i.qg, %bb.ck ]
  %i.qe = phi i8 [ %i.qb, %bb.cj ], [ %i.qu, %bb.cm ], [ %i.qi, %bb.ck ]
  %.sroa.0.2 = phi i8 [ %.sroa.0.0, %bb.cj ], [ %.sroa.0.3, %bb.ck ], [ %.sroa.0.3, %bb.cm ] ; 2 uses
  %i.qf = icmp eq i32 %i.pz, 0
  br i1 %i.qf, label %bb.fu, label %bb.fv

.preheader1358.a:                                 ; preds = %bb.cj, %bb.ft
  %i.qg = phi i8 [ %i.qv, %bb.ft ], [ %i.qc, %bb.cj ]
  %i.qh = phi i64 [ %i.qt, %bb.ft ], [ %i.qa, %bb.cj ] ; 2 uses
  %i.qi = phi i8 [ %i.qu, %bb.ft ], [ %i.qb, %bb.cj ] ; 4 uses
  %.sroa.010.0 = phi i32 [ %.sroa.010.1, %bb.ft ], [ %i.pi, %bb.cj ] ; 4 uses
  %.sroa.0.3 = phi i8 [ %i.ach, %bb.ft ], [ %.sroa.0.0, %bb.cj ] ; 6 uses
  %i.qj = and i8 %.sroa.0.3, 63
  %i.qk = zext nneg i8 %i.qj to i64
  %.sroa.025.0..sroa_stride = shl nuw nsw i64 %i.qk, 3
  %.sroa.025.0..sroa_idx = getelementptr inbounds nuw i8, ptr @10, i64 %.sroa.025.0..sroa_stride
  %i.ql = load i64, ptr %.sroa.025.0..sroa_idx, align 8
  %i.qm = and i64 %i.ql, 63
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.qm ; 2 uses
  %i.qo = load i16, ptr %i.qn, align 2, !noundef !5 ; 4 uses
  %i.qp = icmp eq i16 %i.qo, 0
  br i1 %i.qp, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.preheader1358.a
  %i.qq = add nsw i32 %.sroa.010.0, -1
  %i.qr = icmp slt i32 %.sroa.010.0, 1
  br i1 %i.qr, label %.loopexit1359.a, label %bb.cm

bb.cl:                                            ; preds = %.preheader1358.a
  %i.qs = icmp eq i8 %i.qi, 0
  br i1 %i.qs, label %bb.cn, label %bb.fr

bb.cm:                                            ; preds = %.sink.split2517, %bb.fr, %bb.ck
  %i.qt = phi i64 [ %i.qh, %bb.ck ], [ %i.abu, %.sink.split2517 ], [ %i.abu, %bb.fr ]
  %i.qu = phi i8 [ %i.qi, %bb.ck ], [ %i.abt, %.sink.split2517 ], [ %i.abt, %bb.fr ] ; 2 uses
  %.sroa.010.1 = phi i32 [ %i.qq, %bb.ck ], [ %.sroa.010.0, %.sink.split2517 ], [ %.sroa.010.0, %bb.fr ]
  %i.qv = load i8, ptr %i.cy, align 2, !noundef !5 ; 2 uses
  %i.qw = icmp eq i8 %.sroa.0.3, %i.qv
  br i1 %i.qw, label %.loopexit1359.a, label %bb.ft

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  %i.qx = load i8, ptr %i.cj, align 2, !range !7, !alias.scope !1832, !noalias !1835, !noundef !5
  %i.qy = icmp ne i8 %i.qx, -1
  %i.qz = load i8, ptr %i.cl, align 1, !range !21, !alias.scope !1832, !noalias !1835
  %i.ra = trunc nuw i8 %i.qz to i1
  %or.cond.i257 = select i1 %i.qy, i1 true, i1 %i.ra
  br i1 %or.cond.i257, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread.thread, label %bb.co

.loopexit1351.a:                                  ; preds = %.preheader1350.a, %.loopexit1353.a, %bb.fh
  %i.rb = load i64, ptr %1, align 8, !alias.scope !1832, !noalias !1835, !noundef !5
  %i.rc = load i8, ptr %i.ci, align 8, !alias.scope !1832, !noalias !1835, !noundef !5 ; 2 uses
  %i.rd = sub i8 0, %i.rc
  %i.re = and i8 %i.rd, 63
  %i.rf = zext nneg i8 %i.re to i64
  %i.rg = shl i64 %i.rb, %i.rf
  store i64 %i.rg, ptr %i.cr, align 8, !alias.scope !1832, !noalias !1835
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread.thread: ; preds = %bb.cn
  %i.rh = load i64, ptr %1, align 8, !alias.scope !1832, !noalias !1835, !noundef !5
  %i.ri = shl i64 %i.rh, 32
  store i64 %i.ri, ptr %1, align 8, !alias.scope !1832, !noalias !1835
  store i8 32, ptr %i.ci, align 8, !alias.scope !1832, !noalias !1835
  store i64 0, ptr %i.cr, align 8, !alias.scope !1832, !noalias !1835
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread._crit_edge

bb.co:                                            ; preds = %bb.cn
  %i.rj = load i64, ptr %i.cm, align 8, !alias.scope !1832, !noalias !1835, !noundef !5
  %.not.i258 = icmp eq i64 %i.rj, 0
  br i1 %.not.i258, label %bb.cp, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread1236

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !1838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !1838
  store i32 0, ptr %i.bg, align 4, !noalias !1838
  %.val28.i612 = load ptr, ptr %i.cn, align 8, !alias.scope !1839, !noalias !1842, !nonnull !5, !noundef !5
  %.val29.i613 = load i64, ptr %i.co, align 8, !alias.scope !1839, !noalias !1842, !noundef !5 ; 2 uses
  %.promoted1748 = load i64, ptr %i.cp, align 8, !alias.scope !1839, !noalias !1842
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cv
  %.sroa.0.0.i4091749 = phi i64 [ 0, %bb.cp ], [ %i.rx, %bb.cv ] ; 6 uses
  %i.rk = phi i64 [ %.promoted1748, %bb.cp ], [ %i.rr, %bb.cv ] ; 3 uses
  %i.rl = sub nuw nsw i64 4, %.sroa.0.0.i4091749  ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.0.0.i4091749
  call void @llvm.experimental.noalias.scope.decl(metadata !1839)
  %..i.i614 = call noundef i64 @llvm.umin.i64(i64 %.val29.i613, i64 %i.rk) ; 4 uses
  %i.rn = add i64 %i.rk, %i.rl                    ; 2 uses
  %i.ro = icmp ult i64 %i.rn, %..i.i614
  br i1 %i.ro, label %bb.cs, label %bb.cr, !prof !34

bb.cr:                                            ; preds = %bb.cq
  %..i30.i615 = call noundef i64 @llvm.umin.i64(i64 %.val29.i613, i64 %i.rn) ; 2 uses
  %i.rp = sub nuw i64 %..i30.i615, %..i.i614      ; 6 uses
  %.not4.i.i616 = icmp ugt i64 %i.rp, %i.rl
  br i1 %.not4.i.i616, label %bb.ct, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit617, !prof !35

bb.cs:                                            ; preds = %bb.cq
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !1846
  unreachable

bb.ct:                                            ; preds = %bb.cr
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.rp, i64 noundef range(i64 0, -9223372036854775808) %i.rl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !1846
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit617: ; preds = %bb.cr
  %i.rq = getelementptr inbounds nuw i8, ptr %.val28.i612, i64 %..i.i614
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.rm, i64 noundef %i.rp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rq, i64 noundef %i.rp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1850
  %i.rr = add i64 %i.rp, %i.rk                    ; 6 uses
  store i64 %i.rr, ptr %i.cp, align 8, !alias.scope !1839, !noalias !1842
  %i.rs = icmp eq i64 %..i30.i615, %..i.i614
  br i1 %i.rs, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit617
  call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  %i.rt = sub i64 %i.rr, %.sroa.0.0.i4091749      ; 2 uses
  %i.ru = icmp uge i64 %i.rt, %i.rr
  %i.rv = icmp ne i64 %.sroa.0.0.i4091749, 0
  %i.rw = and i1 %i.rv, %i.ru
  br i1 %i.rw, label %bb.cw, label %bb.cx, !prof !34

bb.cv:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit617
  %i.rx = add nuw nsw i64 %i.rp, %.sroa.0.0.i4091749 ; 2 uses
  %i.ry = icmp ult i64 %i.rx, 4
  br i1 %i.ry, label %bb.cq, label %bb.dd

bb.cw:                                            ; preds = %bb.cu
  %i.rz = call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 13) #32, !noalias !1854
  %i.sa = ptrtoint ptr %i.rz to i64
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cu
  store i64 %i.rt, ptr %i.cp, align 8, !alias.scope !1851, !noalias !1855
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.sroa.01003.0.ph = phi i64 [ -9223372036854775808, %bb.cw ], [ -9223372036854775806, %bb.cx ]
  %.sroa.81004.0.ph = phi i64 [ %i.sa, %bb.cw ], [ %.sroa.0.0.i4091749, %bb.cx ]
  store i64 %.sroa.01003.0.ph, ptr %i.bh, align 8, !noalias !1838
  store i64 %.sroa.81004.0.ph, ptr %i.cz, align 8, !noalias !1838
  store i64 4, ptr %.sroa.51008.0..sroa_idx, align 8, !noalias !1838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !1838
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.dh
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh), !noalias !1856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1857
  store i8 0, ptr %i.y, align 1, !noalias !1857
  call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  %.val28.i622 = load ptr, ptr %i.cn, align 8, !alias.scope !1860, !noalias !1863, !nonnull !5, !noundef !5
  %.val29.i623 = load i64, ptr %i.co, align 8, !alias.scope !1860, !noalias !1863, !noundef !5 ; 2 uses
  %i.sb = load i64, ptr %i.cp, align 8, !alias.scope !1865, !noalias !1868, !noundef !5 ; 3 uses
  %..i.i624 = call noundef i64 @llvm.umin.i64(i64 %.val29.i623, i64 %i.sb) ; 3 uses
  %i.sc = add i64 %i.sb, 1                        ; 2 uses
  %i.sd = icmp ult i64 %i.sc, %..i.i624
  br i1 %i.sd, label %bb.db, label %bb.da, !prof !34

bb.da:                                            ; preds = %bb.cz
  %..i30.i625 = call noundef i64 @llvm.umin.i64(i64 %.val29.i623, i64 %i.sc)
  %i.se = sub nuw i64 %..i30.i625, %..i.i624      ; 5 uses
  %.not4.i.i626 = icmp ugt i64 %i.se, 1
  br i1 %.not4.i.i626, label %bb.dc, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit627, !prof !35

bb.db:                                            ; preds = %bb.cz
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !1871
  unreachable

bb.dc:                                            ; preds = %bb.da
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.se, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !1871
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit627: ; preds = %bb.da
  %i.sf = getelementptr inbounds nuw i8, ptr %.val28.i622, i64 %..i.i624
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.y, i64 noundef %i.se, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.sf, i64 noundef %i.se, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1872
  %i.sg = add i64 %i.se, %i.sb                    ; 6 uses
  store i64 %i.sg, ptr %i.cp, align 8, !alias.scope !1860, !noalias !1863
  %i.sh = load i8, ptr %i.y, align 1, !noalias !1857, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1857
  %.val.i.i631 = load ptr, ptr %i.cn, align 8, !alias.scope !1873, !noalias !1878, !nonnull !5, !noundef !5 ; 2 uses
  %.val1.i.i632 = load i64, ptr %i.co, align 8, !alias.scope !1873, !noalias !1878, !noundef !5 ; 4 uses
  %..i.i.i633 = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i632, i64 %i.sg) ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.val.i.i631, i64 %..i.i.i633
  %i.sj = icmp ule i64 %.val1.i.i632, %i.sg
  %i.sk = zext i8 %i.sh to i64
  %i.sl = zext i1 %i.sj to i64
  %i.sm = load i64, ptr %i.cm, align 8, !alias.scope !1832, !noalias !1835, !noundef !5
  %i.sn = add i64 %i.sm, %i.sl
  store i64 %i.sn, ptr %i.cm, align 8, !alias.scope !1832, !noalias !1835
  %i.so = load i64, ptr %1, align 8, !alias.scope !1832, !noalias !1835, !noundef !5
  %i.sp = shl i64 %i.so, 8
  %i.sq = or disjoint i64 %i.sp, %i.sk
  store i64 %i.sq, ptr %1, align 8, !alias.scope !1832, !noalias !1835
  %i.sr = load i8, ptr %i.ci, align 8, !alias.scope !1832, !noalias !1835, !noundef !5
  %i.ss = add i8 %i.sr, 8
  store i8 %i.ss, ptr %i.ci, align 8, !alias.scope !1832, !noalias !1835
  %i.st = icmp eq i8 %i.sh, -1
  br i1 %i.st, label %bb.dj, label %.loopexit1357

bb.dd:                                            ; preds = %bb.cv
  %.sroa.0112.0.copyload.i319 = load i32, ptr %i.bg, align 4, !noalias !1838 ; 2 uses
  store i32 %.sroa.0112.0.copyload.i319, ptr %i.cz, align 8, !noalias !1838
  store i64 -1, ptr %i.bh, align 8, !noalias !1838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !1838
  %i.su = call i32 @llvm.bswap.i32(i32 %.sroa.0112.0.copyload.i319) ; 3 uses
  %i.sv = or i32 %i.su, -2139062144
  %i.sw = add i32 %i.sv, -2139062143
  %i.sx = and i32 %i.su, -2139062144
  %i.sy = and i32 %i.sx, %i.sw
  %.not221.i310 = icmp eq i32 %i.sy, 0
  br i1 %.not221.i310, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread1248, label %bb.de

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread1248: ; preds = %bb.dd
  %i.sz = load i8, ptr %i.ci, align 8, !alias.scope !1832, !noalias !1835, !noundef !5 ; 2 uses
  %i.ta = add i8 %i.sz, 32
  store i8 %i.ta, ptr %i.ci, align 8, !alias.scope !1832, !noalias !1835
end_hunk_4
begin_hunk_5_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream20decode_mcu_ac_refineINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  %i.zq = extractvalue { i64, ptr } %i.zp, 0
  %i.zr = extractvalue { i64, ptr } %i.zp, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.zq, ptr %i.zr)
  %i.zs = load i8, ptr %i.ab, align 1, !noalias !1990, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1990
  %.val1.i.i700 = load i64, ptr %i.co, align 8, !alias.scope !1993, !noalias !1998, !noundef !5
  %i.zt = load i64, ptr %i.cp, align 8, !alias.scope !1993, !noalias !1998, !noundef !5
  %i.zu = icmp ule i64 %.val1.i.i700, %i.zt
  %i.zv = zext i8 %i.zs to i64
  %i.zw = zext i1 %i.zu to i64
  %i.zx = load i64, ptr %i.cm, align 8, !alias.scope !1832, !noalias !1835, !noundef !5
  %i.zy = add i64 %i.zx, %i.zw
  store i64 %i.zy, ptr %i.cm, align 8, !alias.scope !1832, !noalias !1835
  %i.zz = load i64, ptr %1, align 8, !alias.scope !1832, !noalias !1835, !noundef !5
  %i.aaa = shl i64 %i.zz, 8
  %i.aab = or disjoint i64 %i.aaa, %i.zv
  store i64 %i.aab, ptr %1, align 8, !alias.scope !1832, !noalias !1835
  %i.aac = load i8, ptr %i.ci, align 8, !alias.scope !1832, !noalias !1835, !noundef !5
  %i.aad = add i8 %i.aac, 8
  store i8 %i.aad, ptr %i.ci, align 8, !alias.scope !1832, !noalias !1835
  %i.aae = icmp eq i8 %i.zs, -1
  br i1 %i.aae, label %bb.fh, label %.loopexit1351.a

bb.fh:                                            ; preds = %.loopexit1353.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2003
  store i8 0, ptr %i.ac, align 1, !noalias !2003
  %i.aaf = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.ac, i64 noundef 1), !noalias !1856 ; 2 uses
  %i.aag = extractvalue { i64, ptr } %i.aaf, 0
  %i.aah = extractvalue { i64, ptr } %i.aaf, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.aag, ptr %i.aah)
  %i.aai = load i8, ptr %i.ac, align 1, !noalias !2003, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2003
  %i.aaj = icmp eq i8 %i.aai, 0
  br i1 %i.aaj, label %.loopexit1351.a, label %.preheader1350.a

.preheader1350.a:                                 ; preds = %bb.fh, %bb.fi
  %.sroa.099.0.in.i293 = phi i8 [ %i.aan, %bb.fi ], [ %i.aai, %bb.fh ] ; 3 uses
  switch i8 %.sroa.099.0.in.i293, label %bb.fj [
    i8 -1, label %bb.fi
    i8 0, label %.loopexit1351.a
  ]

bb.fi:                                            ; preds = %.preheader1350.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2006
  store i8 0, ptr %i.ad, align 1, !noalias !2006
  %i.aak = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.ad, i64 noundef 1), !noalias !1856 ; 2 uses
  %i.aal = extractvalue { i64, ptr } %i.aak, 0
  %i.aam = extractvalue { i64, ptr } %i.aak, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.aal, ptr %i.aam)
  %i.aan = load i8, ptr %i.ad, align 1, !noalias !2006, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2006
  br label %.preheader1350.a

bb.fj:                                            ; preds = %.preheader1350.a
  %i.aao = load i64, ptr %1, align 8, !alias.scope !1832, !noalias !1835, !noundef !5 ; 2 uses
  %i.aap = lshr i64 %i.aao, 8                     ; 2 uses
  store i64 %i.aap, ptr %1, align 8, !alias.scope !1832, !noalias !1835
  %i.aaq = load i8, ptr %i.ci, align 8, !alias.scope !1832, !noalias !1835, !noundef !5 ; 5 uses
  %i.aar = add i8 %i.aaq, -8                      ; 3 uses
  store i8 %i.aar, ptr %i.ci, align 8, !alias.scope !1832, !noalias !1835
  %i.aas = icmp eq i8 %i.aar, 0
  br i1 %i.aas, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.aat = sub i8 8, %i.aaq
  %i.aau = and i8 %i.aat, 63
  %i.aav = zext nneg i8 %i.aau to i64
  %i.aaw = shl i64 %i.aap, %i.aav
  store i64 %i.aaw, ptr %i.cr, align 8, !alias.scope !1832, !noalias !1835
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.aax = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i293), !noalias !1856 ; 2 uses
  %i.aay = extractvalue { i8, i8 } %i.aax, 0      ; 2 uses
  %i.aaz = extractvalue { i8, i8 } %i.aax, 1
  store i8 %i.aay, ptr %i.cj, align 2, !alias.scope !1832, !noalias !1835
  store i8 %i.aaz, ptr %i.ck, align 1, !alias.scope !1832, !noalias !1835
  %i.aba = icmp eq i8 %i.aay, 12
  br i1 %i.aba, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.abb = icmp eq i8 %.sroa.099.0.in.i293, -39
  br i1 %i.abb, label %bb.fq, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread

bb.fn:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !1838
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bc, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1856
  %i.abc = load i64, ptr %i.bc, align 8, !range !75, !noalias !1838, !noundef !5
  %i.abd = trunc nuw i64 %i.abc to i1
  %i.abe = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.abf = load i64, ptr %i.abe, align 8, !range !76, !noalias !1838, !noundef !5 ; 3 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  br i1 %i.abd, label %bb.fo, label %bb.fp, !prof !34

bb.fo:                                            ; preds = %bb.fn
  %i.abh = load i64, ptr %i.abg, align 8, !noalias !1838
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.abf, i64 %i.abh) #35, !noalias !1856
  unreachable

bb.fp:                                            ; preds = %bb.fn
  %i.abi = load ptr, ptr %i.abg, align 8, !noalias !1838, !nonnull !5, !noundef !5 ; 2 uses
  %i.abj = icmp samesign ugt i64 %i.abf, 27
  call void @llvm.assume(i1 %i.abj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !1838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.abi, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !1856
  %i.abk = ptrtoint ptr %i.abi to i64             ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift834 = and i64 %i.abk, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread1236

bb.fq:                                            ; preds = %bb.fm
  %i.abl = and i64 %i.aao, -256                   ; 2 uses
  store i64 %i.abl, ptr %1, align 8, !alias.scope !1832, !noalias !1835
  store i8 %i.aaq, ptr %i.ci, align 8, !alias.scope !1832, !noalias !1835
  %i.abm = sub i8 0, %i.aaq
  %i.abn = and i8 %i.abm, 63
  %i.abo = zext nneg i8 %i.abn to i64
  %i.abp = shl i64 %i.abl, %i.abo
  store i64 %i.abp, ptr %i.cr, align 8, !alias.scope !1832, !noalias !1835
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320: ; preds = %bb.df
  %i.abq = ptrtoint ptr %i.tk to i64              ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift842 = and i64 %i.abq, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh), !noalias !1856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1838
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread1236

bb.fr:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread._crit_edge, %bb.cl
  %i.abr = phi i8 [ %i.aca, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread._crit_edge ], [ %i.qi, %bb.cl ]
  %i.abs = phi i64 [ %.pre2077, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread._crit_edge ], [ %i.qh, %bb.cl ] ; 2 uses
  %i.abt = call i8 @llvm.usub.sat.i8(i8 %i.abr, i8 1) ; 3 uses
  store i8 %i.abt, ptr %i.ci, align 8
  %i.abu = shl i64 %i.abs, 1                      ; 3 uses
  store i64 %i.abu, ptr %i.cr, align 8
  %.not138 = icmp slt i64 %i.abs, 0
  %i.abv = and i16 %i.qo, %i.cc
  %i.abw = icmp eq i16 %i.abv, 0
  %or.cond2520 = and i1 %.not138, %i.abw
  br i1 %or.cond2520, label %.sink.split2517, label %bb.cm

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread1236: ; preds = %bb.co, %bb.er, %bb.fp, %bb.ea, %bb.ff, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320
  %.sroa.0813.11247 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320 ], [ 0, %bb.er ], [ 0, %bb.ff ], [ 0, %bb.fp ], [ 0, %bb.ea ], [ 10, %bb.co ]
  %.sroa.33817.11245 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320 ], [ %i.xq, %bb.er ], [ %i.ze, %bb.ff ], [ %i.abf, %bb.fp ], [ %i.vk, %bb.ea ], [ undef, %bb.co ]
  %.sroa.42.sroa.0825.11244 = phi i64 [ %i.abq, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320 ], [ %i.xv, %bb.er ], [ %i.zj, %bb.ff ], [ %i.abk, %bb.fp ], [ %i.vp, %bb.ea ], [ 0, %bb.co ]
  %.sroa.42.sroa.13.sroa.0844.11243 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift842, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320 ], [ %.sroa.42.sroa.13.0.extract.shift838, %bb.er ], [ %.sroa.42.sroa.13.0.extract.shift836, %bb.ff ], [ %.sroa.42.sroa.13.0.extract.shift834, %bb.fp ], [ %.sroa.42.sroa.13.0.extract.shift840.a, %bb.ea ], [ 0, %bb.co ]
  %.sroa.42.sroa.0825.0.insert.ext = and i64 %.sroa.42.sroa.0825.11244, 255
  %.sroa.42.sroa.0825.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0844.11243, %.sroa.42.sroa.0825.0.insert.ext
  store i8 %.sroa.0813.11247, ptr %0, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.489.0..sroa_idx, align 1
  %.sroa.590.sroa.4.0..sroa.590.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.33817.11245, ptr %.sroa.590.sroa.4.0..sroa.590.0..sroa_idx.sroa_idx, align 8
  %.sroa.590.sroa.5.0..sroa.590.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.sroa.0825.0.insert.insert, ptr %.sroa.590.sroa.5.0..sroa.590.0..sroa_idx.sroa_idx, align 8
  %.sroa.590.sroa.6.0..sroa.590.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 28, ptr %.sroa.590.sroa.6.0..sroa.590.0..sroa_idx.sroa_idx, align 8
  br label %bb.cd

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread: ; preds = %bb.fq, %bb.fm, %bb.dx, %bb.eb, %bb.eo, %bb.es, %bb.fc, %bb.fg, %.loopexit1351.a, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread1248
  %i.abx = phi i8 [ %i.aaq, %bb.fq ], [ %i.aar, %bb.fm ], [ %i.ue, %bb.dx ], [ %i.ud, %bb.eb ], [ %i.wk, %bb.eo ], [ %i.wj, %bb.es ], [ %i.yq, %bb.fc ], [ %i.yp, %bb.fg ], [ %i.rc, %.loopexit1351.a ], [ %.pre2076, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread1248 ] ; 2 uses
  %i.aby = icmp ne i8 %i.abx, 0
  %i.abz = load i8, ptr %i.cj, align 2, !range !7
  %.not137 = icmp eq i8 %i.abz, -1
  %or.cond = select i1 %i.aby, i1 true, i1 %.not137
  br i1 %or.cond, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread._crit_edge, label %bb.fs

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread._crit_edge: ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread.thread, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread
  %i.aca = phi i8 [ 32, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread.thread ], [ %i.abx, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread ]
  %.pre2077 = load i64, ptr %i.cr, align 8
  br label %bb.fr

bb.fs:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bu, i64 noundef 45, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.acb = load i64, ptr %i.bu, align 8, !range !75, !noundef !5
  %i.acc = trunc nuw i64 %i.acb to i1
  %i.acd = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.ace = load i64, ptr %i.acd, align 8, !range !76, !noundef !5 ; 3 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  br i1 %i.acc, label %bb.fy, label %bb.fz, !prof !34

.sink.split2517:                                  ; preds = %bb.fr
  %i.acg = icmp sgt i16 %i.qo, 0
  %.sink2518.p = select i1 %i.acg, i16 %i.cc, i16 %i.da
  %.sink2518 = add i16 %i.qo, %.sink2518.p
  store i16 %.sink2518, ptr %i.qn, align 2
  br label %bb.cm

bb.ft:                                            ; preds = %bb.cm
  %i.ach = add i8 %.sroa.0.3, 1
  br label %.preheader1358.a

bb.fu:                                            ; preds = %.loopexit1359.a, %bb.fv
  %i.aci = add i8 %.sroa.0.2, 1                   ; 3 uses
  %i.acj = icmp ugt i8 %i.aci, %i.qd
  br i1 %i.acj, label %.loopexit1369.loopexit, label %bb.fw

bb.fv:                                            ; preds = %.loopexit1359.a
  %i.ack = and i8 %.sroa.0.2, 63
  %i.acl = zext nneg i8 %i.ack to i64
  %.sroa.039.0..sroa_stride = shl nuw nsw i64 %i.acl, 3
  %.sroa.039.0..sroa_idx = getelementptr inbounds nuw i8, ptr @10, i64 %.sroa.039.0..sroa_stride
  %i.acm = load i64, ptr %.sroa.039.0..sroa_idx, align 8
  %i.acn = and i64 %i.acm, 63
  %i.aco = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.acn
  %i.acp = trunc nsw i32 %i.pz to i16
  store i16 %i.acp, ptr %i.aco, align 2
  br label %bb.fu

bb.fw:                                            ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.b

bb.fx:                                            ; preds = %bb.a, %.loopexit1369
  %i.acq = phi i32 [ %i.cg, %bb.a ], [ %.pr1254, %.loopexit1369 ]
  %.sroa.0.4 = phi i8 [ %i.ce, %bb.a ], [ %.sroa.0.1, %.loopexit1369 ] ; 2 uses
  %i.acr = icmp sgt i32 %i.acq, 0
  br i1 %i.acr, label %bb.gb, label %bb.gc

bb.fy:                                            ; preds = %bb.fs
  %i.acs = load i64, ptr %i.acf, align 8
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ace, i64 %i.acs) #35
  unreachable

bb.fz:                                            ; preds = %bb.fs
  %i.act = load ptr, ptr %i.acf, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.acu = icmp samesign ugt i64 %i.ace, 44
  call void @llvm.assume(i1 %i.acu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.act, ptr noundef nonnull align 1 dereferenceable(45) @17, i64 45, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.436.sroa.3.0..sroa.436.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ace, ptr %.sroa.436.sroa.3.0..sroa.436.0..sroa_idx.sroa_idx, align 8
  %.sroa.436.sroa.4.0..sroa.436.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.act, ptr %.sroa.436.sroa.4.0..sroa.436.0..sroa_idx.sroa_idx, align 8
  %.sroa.436.sroa.5.0..sroa.436.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 45, ptr %.sroa.436.sroa.5.0..sroa.436.0..sroa_idx.sroa_idx, align 8
  br label %bb.cd

bb.ga:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread1275, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread1317, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread1194, %bb.cd, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  ret void

bb.gb:                                            ; preds = %bb.fx
  %i.acv = getelementptr inbounds nuw i8, ptr %4, i64 2
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(126) %i.acv, ptr noundef nonnull dereferenceable(126) @18, i64 126)
  %.not139 = icmp eq i32 %bcmp, 0
  br i1 %.not139, label %.loopexit1341, label %bb.gd

bb.gc:                                            ; preds = %bb.fx, %.loopexit1341
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.acw, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.ga

.loopexit1341:                                    ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread, %bb.gb
  %i.acx = load i32, ptr %i.cf, align 8, !noundef !5
  %i.acy = add i32 %i.acx, -1
  store i32 %i.acy, ptr %i.cf, align 8
  br label %bb.gc

bb.gd:                                            ; preds = %bb.gb
  call void @llvm.experimental.noalias.scope.decl(metadata !2009)
  %i.acz = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 51 uses
  %i.ada = load i8, ptr %i.acz, align 8, !alias.scope !2009, !noalias !2012, !noundef !5 ; 4 uses
  %i.adb = icmp ult i8 %i.ada, 32
  br i1 %i.adb, label %bb.ge, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread

bb.ge:                                            ; preds = %bb.gd
  %i.adc = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 5 uses
  %i.add = load i8, ptr %i.adc, align 2, !range !7, !alias.scope !2009, !noalias !2012, !noundef !5
  %i.ade = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.adf = icmp ne i8 %i.add, -1
  %i.adg = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.adh = load i8, ptr %i.adg, align 1, !range !21, !alias.scope !2009, !noalias !2012
  %i.adi = trunc nuw i8 %i.adh to i1
  %or.cond.i169 = select i1 %i.adf, i1 true, i1 %i.adi
  br i1 %or.cond.i169, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.adj = load i64, ptr %1, align 8, !alias.scope !2009, !noalias !2012, !noundef !5
  %i.adk = shl i64 %i.adj, 32                     ; 2 uses
  store i64 %i.adk, ptr %1, align 8, !alias.scope !2009, !noalias !2012
  %i.adl = or disjoint i8 %i.ada, 32
  store i8 %i.adl, ptr %i.acz, align 8, !alias.scope !2009, !noalias !2012
  %i.adm = sub nuw nsw i8 32, %i.ada
  %i.adn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ado = zext nneg i8 %i.adm to i64
  %i.adp = shl i64 %i.adk, %i.ado
  store i64 %i.adp, ptr %i.adn, align 8, !alias.scope !2009, !noalias !2012
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread

bb.gg:                                            ; preds = %bb.ge
  %i.adq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.adr = load i64, ptr %i.adq, align 8, !alias.scope !2009, !noalias !2012, !noundef !5
  %.not.i170 = icmp eq i64 %i.adr, 0
  br i1 %.not.i170, label %bb.gh, label %bb.go

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !2015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !2015
  store i32 0, ptr %i.bm, align 4, !noalias !2015
  %i.ads = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val28.i702 = load ptr, ptr %i.ads, align 8, !alias.scope !2016, !noalias !2019, !nonnull !5, !noundef !5
  %i.adt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %.val29.i703 = load i64, ptr %i.adt, align 8, !alias.scope !2016, !noalias !2019, !noundef !5 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %.promoted1753 = load i64, ptr %i.adu, align 8, !alias.scope !2016, !noalias !2019
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gn
  %.sroa.0.0.i4151754 = phi i64 [ 0, %bb.gh ], [ %i.aek, %bb.gn ] ; 5 uses
  %i.adv = phi i64 [ %.promoted1753, %bb.gh ], [ %i.aec, %bb.gn ] ; 3 uses
  %i.adw = sub nuw nsw i64 4, %.sroa.0.0.i4151754 ; 3 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.0.0.i4151754
  call void @llvm.experimental.noalias.scope.decl(metadata !2016)
  %..i.i704 = call noundef i64 @llvm.umin.i64(i64 %.val29.i703, i64 %i.adv) ; 4 uses
  %i.ady = add i64 %i.adv, %i.adw                 ; 2 uses
  %i.adz = icmp ult i64 %i.ady, %..i.i704
  br i1 %i.adz, label %bb.gk, label %bb.gj, !prof !34

bb.gj:                                            ; preds = %bb.gi
  %..i30.i705 = call noundef i64 @llvm.umin.i64(i64 %.val29.i703, i64 %i.ady) ; 2 uses
  %i.aea = sub nuw i64 %..i30.i705, %..i.i704     ; 6 uses
  %.not4.i.i706 = icmp ugt i64 %i.aea, %i.adw
  br i1 %.not4.i.i706, label %bb.gl, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit707, !prof !35

bb.gk:                                            ; preds = %bb.gi
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !2023
  unreachable

bb.gl:                                            ; preds = %bb.gj
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aea, i64 noundef range(i64 0, -9223372036854775808) %i.adw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !2023
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit707: ; preds = %bb.gj
  %i.aeb = getelementptr inbounds nuw i8, ptr %.val28.i702, i64 %..i.i704
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.adx, i64 noundef %i.aea, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aeb, i64 noundef %i.aea, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !2027
  %i.aec = add i64 %i.aea, %i.adv                 ; 4 uses
  store i64 %i.aec, ptr %i.adu, align 8, !alias.scope !2016, !noalias !2019
  %i.aed = icmp eq i64 %..i30.i705, %..i.i704
  br i1 %i.aed, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit707
  %i.aee = sub nsw i64 0, %.sroa.0.0.i4151754
  %i.aef = call { i64, ptr } @_RNvXs1_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB7_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, i64 noundef 2, i64 noundef %i.aee), !noalias !2028 ; 2 uses
  %i.aeg = extractvalue { i64, ptr } %i.aef, 0
  %i.aeh = trunc nuw i64 %i.aeg to i1             ; 2 uses
  %i.aei = extractvalue { i64, ptr } %i.aef, 1
  %i.aej = ptrtoint ptr %i.aei to i64
  %.sroa.8971.0.ph = select i1 %i.aeh, i64 %i.aej, i64 %.sroa.0.0.i4151754
  %.sroa.0970.0.ph = select i1 %i.aeh, i64 -9223372036854775808, i64 -9223372036854775806
  store i64 %.sroa.0970.0.ph, ptr %i.bn, align 8, !noalias !2015
  %.sroa.4974.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %.sroa.8971.0.ph, ptr %.sroa.4974.0..sroa_idx, align 8, !noalias !2015
  %.sroa.5975.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 4, ptr %.sroa.5975.0..sroa_idx, align 8, !noalias !2015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !2015
  br label %bb.gv

bb.gn:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit707
  %i.aek = add nuw nsw i64 %i.aea, %.sroa.0.0.i4151754 ; 2 uses
  %i.ael = icmp ult i64 %i.aek, 4
  br i1 %i.ael, label %bb.gi, label %bb.gp

bb.go:                                            ; preds = %bb.gg
  %i.aem = icmp eq i8 %i.ada, 0
  br i1 %i.aem, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread1275, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread

bb.gp:                                            ; preds = %bb.gn
  %.sroa.0112.0.copyload.i231 = load i32, ptr %i.bm, align 4, !noalias !2015 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %.sroa.0112.0.copyload.i231, ptr %i.aen, align 8, !noalias !2015
  store i64 -1, ptr %i.bn, align 8, !noalias !2015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !2015
  %i.aeo = call i32 @llvm.bswap.i32(i32 %.sroa.0112.0.copyload.i231) ; 3 uses
  %i.aep = or i32 %i.aeo, -2139062144
  %i.aeq = add i32 %i.aep, -2139062143
  %i.aer = and i32 %i.aeo, -2139062144
  %i.aes = and i32 %i.aer, %i.aeq
  %.not221.i222 = icmp eq i32 %i.aes, 0
  br i1 %.not221.i222, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread1287, label %bb.gq

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread1287: ; preds = %bb.gp
  %i.aet = load i8, ptr %i.acz, align 8, !alias.scope !2009, !noalias !2012, !noundef !5 ; 2 uses
  %i.aeu = add i8 %i.aet, 32
  store i8 %i.aeu, ptr %i.acz, align 8, !alias.scope !2009, !noalias !2012
  %i.aev = load i64, ptr %1, align 8, !alias.scope !2009, !noalias !2012, !noundef !5
  %i.aew = shl i64 %i.aev, 32
  %i.aex = zext i32 %i.aeo to i64
  %i.aey = or disjoint i64 %i.aew, %i.aex         ; 2 uses
  store i64 %i.aey, ptr %1, align 8, !alias.scope !2009, !noalias !2012
  %i.aez = sub i8 32, %i.aet
  %i.afa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.afb = and i8 %i.aez, 63
  %i.afc = zext nneg i8 %i.afb to i64
  %i.afd = shl i64 %i.aey, %i.afc
  store i64 %i.afd, ptr %i.afa, align 8, !alias.scope !2009, !noalias !2012
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bn), !noalias !2029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !2015
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread

bb.gq:                                            ; preds = %bb.gp
end_hunk_5
begin_hunk_6_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream20decode_mcu_ac_refineINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread1275

bb.id:                                            ; preds = %bb.hz
  %i.alp = and i64 %i.akr, -256                   ; 2 uses
  store i64 %i.alp, ptr %1, align 8, !alias.scope !2009, !noalias !2012
  store i8 %i.akt, ptr %i.acz, align 8, !alias.scope !2009, !noalias !2012
  %i.alq = sub i8 0, %i.akt
  %i.alr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.als = and i8 %i.alq, 63
  %i.alt = zext nneg i8 %i.als to i64
  %i.alu = shl i64 %i.alp, %i.alt
  store i64 %i.alu, ptr %i.alr, align 8, !alias.scope !2009, !noalias !2012
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread

.loopexit1345:                                    ; preds = %.preheader1344, %.loopexit1347, %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2100
  store i8 0, ptr %i.p, align 1, !noalias !2100
  %i.alv = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.p, i64 noundef 1), !noalias !2029 ; 2 uses
  %i.alw = extractvalue { i64, ptr } %i.alv, 0
  %i.alx = extractvalue { i64, ptr } %i.alv, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.alw, ptr %i.alx)
  %i.aly = load i8, ptr %i.p, align 1, !noalias !2100, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2100
  %.val1.i.i732 = load i64, ptr %i.adt, align 8, !alias.scope !2103, !noalias !2108, !noundef !5
  %i.alz = load i64, ptr %i.adu, align 8, !alias.scope !2103, !noalias !2108, !noundef !5
  %i.ama = icmp ule i64 %.val1.i.i732, %i.alz
  %i.amb = zext i8 %i.aly to i64
  %i.amc = zext i1 %i.ama to i64
  %i.amd = load i64, ptr %i.adq, align 8, !alias.scope !2009, !noalias !2012, !noundef !5
  %i.ame = add i64 %i.amd, %i.amc
  store i64 %i.ame, ptr %i.adq, align 8, !alias.scope !2009, !noalias !2012
  %i.amf = load i64, ptr %1, align 8, !alias.scope !2009, !noalias !2012, !noundef !5
  %i.amg = shl i64 %i.amf, 8
  %i.amh = or disjoint i64 %i.amg, %i.amb
  store i64 %i.amh, ptr %1, align 8, !alias.scope !2009, !noalias !2012
  %i.ami = load i8, ptr %i.acz, align 8, !alias.scope !2009, !noalias !2012, !noundef !5
  %i.amj = add i8 %i.ami, 8
  store i8 %i.amj, ptr %i.acz, align 8, !alias.scope !2009, !noalias !2012
  %i.amk = icmp eq i8 %i.aly, -1
  br i1 %i.amk, label %bb.ie, label %.loopexit1343

bb.ie:                                            ; preds = %.loopexit1345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2113
  store i8 0, ptr %i.q, align 1, !noalias !2113
  %i.aml = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.q, i64 noundef 1), !noalias !2029 ; 2 uses
  %i.amm = extractvalue { i64, ptr } %i.aml, 0
  %i.amn = extractvalue { i64, ptr } %i.aml, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.amm, ptr %i.amn)
  %i.amo = load i8, ptr %i.q, align 1, !noalias !2113, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2113
  %i.amp = icmp eq i8 %i.amo, 0
  br i1 %i.amp, label %.loopexit1343, label %.preheader1342

.preheader1342:                                   ; preds = %bb.ie, %bb.if
  %.sroa.099.0.in.i205 = phi i8 [ %i.amt, %bb.if ], [ %i.amo, %bb.ie ] ; 3 uses
  switch i8 %.sroa.099.0.in.i205, label %bb.ig [
    i8 -1, label %bb.if
    i8 0, label %.loopexit1343
  ]

bb.if:                                            ; preds = %.preheader1342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2116
  store i8 0, ptr %i.r, align 1, !noalias !2116
  %i.amq = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.r, i64 noundef 1), !noalias !2029 ; 2 uses
  %i.amr = extractvalue { i64, ptr } %i.amq, 0
  %i.ams = extractvalue { i64, ptr } %i.amq, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.amr, ptr %i.ams)
  %i.amt = load i8, ptr %i.r, align 1, !noalias !2116, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2116
  br label %.preheader1342

bb.ig:                                            ; preds = %.preheader1342
  %i.amu = load i64, ptr %1, align 8, !alias.scope !2009, !noalias !2012, !noundef !5 ; 2 uses
  %i.amv = lshr i64 %i.amu, 8                     ; 2 uses
  store i64 %i.amv, ptr %1, align 8, !alias.scope !2009, !noalias !2012
  %i.amw = load i8, ptr %i.acz, align 8, !alias.scope !2009, !noalias !2012, !noundef !5 ; 4 uses
  %i.amx = add i8 %i.amw, -8                      ; 2 uses
  store i8 %i.amx, ptr %i.acz, align 8, !alias.scope !2009, !noalias !2012
  %i.amy = icmp eq i8 %i.amx, 0
  br i1 %i.amy, label %bb.ii, label %bb.ih

.loopexit1343:                                    ; preds = %.preheader1342, %bb.ie, %.loopexit1345
  %i.amz = load i64, ptr %1, align 8, !alias.scope !2009, !noalias !2012, !noundef !5
  %i.ana = load i8, ptr %i.acz, align 8, !alias.scope !2009, !noalias !2012, !noundef !5
  %i.anb = sub i8 0, %i.ana
  %i.anc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.and = and i8 %i.anb, 63
  %i.ane = zext nneg i8 %i.and to i64
  %i.anf = shl i64 %i.amz, %i.ane
  store i64 %i.anf, ptr %i.anc, align 8, !alias.scope !2009, !noalias !2012
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread

bb.ih:                                            ; preds = %bb.ig
  %i.ang = sub i8 8, %i.amw
  %i.anh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ani = and i8 %i.ang, 63
  %i.anj = zext nneg i8 %i.ani to i64
  %i.ank = shl i64 %i.amv, %i.anj
  store i64 %i.ank, ptr %i.anh, align 8, !alias.scope !2009, !noalias !2012
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %i.anl = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i205), !noalias !2029 ; 2 uses
  %i.anm = extractvalue { i8, i8 } %i.anl, 0      ; 2 uses
  %i.ann = extractvalue { i8, i8 } %i.anl, 1
  store i8 %i.anm, ptr %i.adc, align 2, !alias.scope !2009, !noalias !2012
  store i8 %i.ann, ptr %i.ade, align 1, !alias.scope !2009, !noalias !2012
  %i.ano = icmp eq i8 %i.anm, 12
  br i1 %i.ano, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.anp = icmp eq i8 %.sroa.099.0.in.i205, -39
  br i1 %i.anp, label %bb.in, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread

bb.ik:                                            ; preds = %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !2015
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bi, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2029
  %i.anq = load i64, ptr %i.bi, align 8, !range !75, !noalias !2015, !noundef !5
  %i.anr = trunc nuw i64 %i.anq to i1
  %i.ans = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.ant = load i64, ptr %i.ans, align 8, !range !76, !noalias !2015, !noundef !5 ; 3 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  br i1 %i.anr, label %bb.il, label %bb.im, !prof !34

bb.il:                                            ; preds = %bb.ik
  %i.anv = load i64, ptr %i.anu, align 8, !noalias !2015
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ant, i64 %i.anv) #35, !noalias !2029
  unreachable

bb.im:                                            ; preds = %bb.ik
  %i.anw = load ptr, ptr %i.anu, align 8, !noalias !2015, !nonnull !5, !noundef !5 ; 2 uses
  %i.anx = icmp samesign ugt i64 %i.ant, 27
  call void @llvm.assume(i1 %i.anx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !2015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.anw, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !2029
  %i.any = ptrtoint ptr %i.anw to i64             ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift869 = and i64 %i.any, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread1275

bb.in:                                            ; preds = %bb.ij
  %i.anz = and i64 %i.amu, -256                   ; 2 uses
  store i64 %i.anz, ptr %1, align 8, !alias.scope !2009, !noalias !2012
  store i8 %i.amw, ptr %i.acz, align 8, !alias.scope !2009, !noalias !2012
  %i.aoa = sub i8 0, %i.amw
  %i.aob = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aoc = and i8 %i.aoa, 63
  %i.aod = zext nneg i8 %i.aoc to i64
  %i.aoe = shl i64 %i.anz, %i.aod
  store i64 %i.aoe, ptr %i.aob, align 8, !alias.scope !2009, !noalias !2012
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232: ; preds = %bb.gr
  %i.aof = ptrtoint ptr %i.aff to i64             ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift877 = and i64 %i.aof, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bn), !noalias !2029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !2015
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread1275

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread1275: ; preds = %bb.hs, %bb.go, %bb.im, %bb.hi, %bb.ic, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232
  %.sroa.0848.11286 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232 ], [ 0, %bb.hs ], [ 10, %bb.go ], [ 0, %bb.im ], [ 0, %bb.hi ], [ 0, %bb.ic ]
  %.sroa.33852.11284 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232 ], [ %i.ajg, %bb.hs ], [ undef, %bb.go ], [ %i.ant, %bb.im ], [ %i.ahd, %bb.hi ], [ %i.alj, %bb.ic ]
  %.sroa.42.sroa.0860.11283 = phi i64 [ %i.aof, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232 ], [ %i.ajl, %bb.hs ], [ 0, %bb.go ], [ %i.any, %bb.im ], [ %i.ahi, %bb.hi ], [ %i.alo, %bb.ic ]
  %.sroa.42.sroa.13.sroa.0879.11282 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift877, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232 ], [ %.sroa.42.sroa.13.0.extract.shift873, %bb.hs ], [ 0, %bb.go ], [ %.sroa.42.sroa.13.0.extract.shift869, %bb.im ], [ %.sroa.42.sroa.13.0.extract.shift875.a, %bb.hi ], [ %.sroa.42.sroa.13.0.extract.shift871, %bb.ic ]
  %.sroa.42.sroa.0860.0.insert.ext = and i64 %.sroa.42.sroa.0860.11283, 255
  %.sroa.42.sroa.0860.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0879.11282, %.sroa.42.sroa.0860.0.insert.ext
  store i8 %.sroa.0848.11286, ptr %0, align 8
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.4104.0..sroa_idx, align 1
  %.sroa.5105.sroa.4.0..sroa.5105.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.33852.11284, ptr %.sroa.5105.sroa.4.0..sroa.5105.0..sroa_idx.sroa_idx, align 8
  %.sroa.5105.sroa.5.0..sroa.5105.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.sroa.0860.0.insert.insert, ptr %.sroa.5105.sroa.5.0..sroa.5105.0..sroa_idx.sroa_idx, align 8
  %.sroa.5105.sroa.6.0..sroa.5105.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 28, ptr %.sroa.5105.sroa.6.0..sroa.5105.0..sroa_idx.sroa_idx, align 8
  br label %bb.ga

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread: ; preds = %bb.go, %bb.in, %bb.ij, %bb.gd, %.loopexit1343, %bb.hf, %bb.hj, %bb.hp, %bb.ht, %bb.hz, %bb.id, %bb.gf, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread1287
  %i.aog = getelementptr inbounds nuw i8, ptr %1, i64 34 ; 2 uses
  %i.aoh = load i8, ptr %i.aog, align 2, !noundef !5
  %.not1411760 = icmp ugt i8 %.sroa.0.4, %i.aoh
  br i1 %.not1411760, label %.loopexit1341, label %.lr.ph1762

.lr.ph1762:                                       ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit232.thread
  %i.aoi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 5 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.aom = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 13 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.aor = sub i16 0, %i.cc
  br label %bb.io

bb.io:                                            ; preds = %.lr.ph1762, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  %.sroa.0.51761 = phi i8 [ %.sroa.0.4, %.lr.ph1762 ], [ %i.azs, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ] ; 2 uses
  %i.aos = and i8 %.sroa.0.51761, 63
  %i.aot = zext nneg i8 %i.aos to i64
  %.sroa.051.0..sroa_stride = shl nuw nsw i64 %i.aot, 3
  %.sroa.051.0..sroa_idx = getelementptr inbounds nuw i8, ptr @10, i64 %.sroa.051.0..sroa_stride
  %i.aou = load i64, ptr %.sroa.051.0..sroa_idx, align 8
  %i.aov = and i64 %i.aou, 63
  %i.aow = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.aov ; 2 uses
  %i.aox = load i16, ptr %i.aow, align 2, !noundef !5 ; 4 uses
  %i.aoy = icmp eq i16 %i.aox, 0
  %.pr1293.pre = load i8, ptr %i.acz, align 8     ; 2 uses
  br i1 %i.aoy, label %thread-pre-split, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.aoz = load i64, ptr %i.aoi, align 8, !noundef !5 ; 2 uses
  %i.apa = call i8 @llvm.usub.sat.i8(i8 %.pr1293.pre, i8 1) ; 3 uses
  store i8 %i.apa, ptr %i.acz, align 8
  %i.apb = shl i64 %i.aoz, 1
  store i64 %i.apb, ptr %i.aoi, align 8
  %.not142 = icmp slt i64 %i.aoz, 0
  %i.apc = and i16 %i.aox, %i.cc
  %i.apd = icmp eq i16 %i.apc, 0
  %or.cond2523 = and i1 %.not142, %i.apd
  br i1 %or.cond2523, label %thread-pre-split.sink.split, label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.sink.split, %bb.io, %bb.ip
  %i.ape = phi i8 [ %i.apa, %bb.ip ], [ %.pr1293.pre, %bb.io ], [ %i.apa, %thread-pre-split.sink.split ]
  %i.apf = icmp eq i8 %i.ape, 0
  br i1 %i.apf, label %bb.iq, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

thread-pre-split.sink.split:                      ; preds = %bb.ip
  %i.apg = icmp slt i16 %i.aox, 0
  %.sink2521.p = select i1 %i.apg, i16 %i.aor, i16 %i.cc
  %.sink2521 = add i16 %i.aox, %.sink2521.p
  store i16 %.sink2521, ptr %i.aow, align 2
  br label %thread-pre-split

bb.iq:                                            ; preds = %thread-pre-split
  call void @llvm.experimental.noalias.scope.decl(metadata !2119)
  %i.aph = load i8, ptr %i.aoj, align 2, !range !7, !alias.scope !2119, !noalias !2122, !noundef !5
  %i.api = icmp ne i8 %i.aph, -1
  %i.apj = load i8, ptr %i.aol, align 1, !range !21, !alias.scope !2119, !noalias !2122
  %i.apk = trunc nuw i8 %i.apj to i1
  %or.cond.i = select i1 %i.api, i1 true, i1 %i.apk
  br i1 %or.cond.i, label %bb.ir, label %bb.is

.loopexit:                                        ; preds = %.preheader, %.loopexit1336, %bb.kz
  %i.apl = load i64, ptr %1, align 8, !alias.scope !2119, !noalias !2122, !noundef !5
  %i.apm = load i8, ptr %i.acz, align 8, !alias.scope !2119, !noalias !2122, !noundef !5
  %i.apn = sub i8 0, %i.apm
  %i.apo = and i8 %i.apn, 63
  %i.app = zext nneg i8 %i.apo to i64
  %i.apq = shl i64 %i.apl, %i.app
  store i64 %i.apq, ptr %i.aoi, align 8, !alias.scope !2119, !noalias !2122
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.ir:                                            ; preds = %bb.iq
  %i.apr = load i64, ptr %1, align 8, !alias.scope !2119, !noalias !2122, !noundef !5
  %i.aps = shl i64 %i.apr, 32
  store i64 %i.aps, ptr %1, align 8, !alias.scope !2119, !noalias !2122
  store i8 32, ptr %i.acz, align 8, !alias.scope !2119, !noalias !2122
  store i64 0, ptr %i.aoi, align 8, !alias.scope !2119, !noalias !2122
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.is:                                            ; preds = %bb.iq
  %i.apt = load i64, ptr %i.aom, align 8, !alias.scope !2119, !noalias !2122, !noundef !5
  %.not.i = icmp eq i64 %i.apt, 0
  br i1 %.not.i, label %bb.it, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread1317

bb.it:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !2125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !2125
  store i32 0, ptr %i.bs, align 4, !noalias !2125
  %.val28.i734 = load ptr, ptr %i.aon, align 8, !alias.scope !2126, !noalias !2129, !nonnull !5, !noundef !5
  %.val29.i735 = load i64, ptr %i.aoo, align 8, !alias.scope !2126, !noalias !2129, !noundef !5 ; 2 uses
  %.promoted1756 = load i64, ptr %i.aop, align 8, !alias.scope !2126, !noalias !2129
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.iz
  %.sroa.0.0.i4211757 = phi i64 [ 0, %bb.it ], [ %i.aqh, %bb.iz ] ; 6 uses
  %i.apu = phi i64 [ %.promoted1756, %bb.it ], [ %i.aqb, %bb.iz ] ; 3 uses
  %i.apv = sub nuw nsw i64 4, %.sroa.0.0.i4211757 ; 3 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.0.0.i4211757
  call void @llvm.experimental.noalias.scope.decl(metadata !2126)
  %..i.i736 = call noundef i64 @llvm.umin.i64(i64 %.val29.i735, i64 %i.apu) ; 4 uses
  %i.apx = add i64 %i.apu, %i.apv                 ; 2 uses
  %i.apy = icmp ult i64 %i.apx, %..i.i736
  br i1 %i.apy, label %bb.iw, label %bb.iv, !prof !34

bb.iv:                                            ; preds = %bb.iu
  %..i30.i737 = call noundef i64 @llvm.umin.i64(i64 %.val29.i735, i64 %i.apx) ; 2 uses
  %i.apz = sub nuw i64 %..i30.i737, %..i.i736     ; 6 uses
  %.not4.i.i738 = icmp ugt i64 %i.apz, %i.apv
  br i1 %.not4.i.i738, label %bb.ix, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit739, !prof !35

bb.iw:                                            ; preds = %bb.iu
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !2133
  unreachable

bb.ix:                                            ; preds = %bb.iv
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.apz, i64 noundef range(i64 0, -9223372036854775808) %i.apv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !2133
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit739: ; preds = %bb.iv
  %i.aqa = getelementptr inbounds nuw i8, ptr %.val28.i734, i64 %..i.i736
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.apw, i64 noundef %i.apz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aqa, i64 noundef %i.apz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !2137
  %i.aqb = add i64 %i.apz, %i.apu                 ; 6 uses
  store i64 %i.aqb, ptr %i.aop, align 8, !alias.scope !2126, !noalias !2129
  %i.aqc = icmp eq i64 %..i30.i737, %..i.i736
  br i1 %i.aqc, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit739
  call void @llvm.experimental.noalias.scope.decl(metadata !2138)
  %i.aqd = sub i64 %i.aqb, %.sroa.0.0.i4211757    ; 2 uses
  %i.aqe = icmp uge i64 %i.aqd, %i.aqb
  %i.aqf = icmp ne i64 %.sroa.0.0.i4211757, 0
  %i.aqg = and i1 %i.aqf, %i.aqe
  br i1 %i.aqg, label %bb.ja, label %bb.jb, !prof !34

bb.iz:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit739
  %i.aqh = add nuw nsw i64 %i.apz, %.sroa.0.0.i4211757 ; 2 uses
  %i.aqi = icmp ult i64 %i.aqh, 4
  br i1 %i.aqi, label %bb.iu, label %bb.jh

bb.ja:                                            ; preds = %bb.iy
  %i.aqj = call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 13) #32, !noalias !2141
  %i.aqk = ptrtoint ptr %i.aqj to i64
  br label %bb.jc

bb.jb:                                            ; preds = %bb.iy
  store i64 %i.aqd, ptr %i.aop, align 8, !alias.scope !2138, !noalias !2142
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja
  %.sroa.8.0.ph = phi i64 [ %i.aqk, %bb.ja ], [ %.sroa.0.0.i4211757, %bb.jb ]
  %.sroa.0941.0.ph = phi i64 [ -9223372036854775808, %bb.ja ], [ -9223372036854775806, %bb.jb ]
  store i64 %.sroa.0941.0.ph, ptr %i.bt, align 8, !noalias !2125
  store i64 %.sroa.8.0.ph, ptr %i.aoq, align 8, !noalias !2125
  store i64 4, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !2125
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jl
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bt), !noalias !2143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !2125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2144
  store i8 0, ptr %i.a, align 1, !noalias !2144
  call void @llvm.experimental.noalias.scope.decl(metadata !2147)
  %.val28.i744 = load ptr, ptr %i.aon, align 8, !alias.scope !2147, !noalias !2150, !nonnull !5, !noundef !5
  %.val29.i745 = load i64, ptr %i.aoo, align 8, !alias.scope !2147, !noalias !2150, !noundef !5 ; 2 uses
  %i.aql = load i64, ptr %i.aop, align 8, !alias.scope !2152, !noalias !2155, !noundef !5 ; 3 uses
  %..i.i746 = call noundef i64 @llvm.umin.i64(i64 %.val29.i745, i64 %i.aql) ; 3 uses
  %i.aqm = add i64 %i.aql, 1                      ; 2 uses
  %i.aqn = icmp ult i64 %i.aqm, %..i.i746
  br i1 %i.aqn, label %bb.jf, label %bb.je, !prof !34

bb.je:                                            ; preds = %bb.jd
  %..i30.i747 = call noundef i64 @llvm.umin.i64(i64 %.val29.i745, i64 %i.aqm)
  %i.aqo = sub nuw i64 %..i30.i747, %..i.i746     ; 5 uses
  %.not4.i.i748 = icmp ugt i64 %i.aqo, 1
  br i1 %.not4.i.i748, label %bb.jg, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit749, !prof !35

bb.jf:                                            ; preds = %bb.jd
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !2158
  unreachable

bb.jg:                                            ; preds = %bb.je
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aqo, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !2158
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit749: ; preds = %bb.je
  %i.aqp = getelementptr inbounds nuw i8, ptr %.val28.i744, i64 %..i.i746
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.a, i64 noundef %i.aqo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aqp, i64 noundef %i.aqo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !2159
  %i.aqq = add i64 %i.aqo, %i.aql                 ; 2 uses
  store i64 %i.aqq, ptr %i.aop, align 8, !alias.scope !2147, !noalias !2150
  %i.aqr = load i8, ptr %i.a, align 1, !noalias !2144, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2144
  %.val1.i.i754 = load i64, ptr %i.aoo, align 8, !alias.scope !2160, !noalias !2165, !noundef !5
  %i.aqs = icmp ule i64 %.val1.i.i754, %i.aqq
  %i.aqt = zext i8 %i.aqr to i64
  %i.aqu = zext i1 %i.aqs to i64
  %i.aqv = load i64, ptr %i.aom, align 8, !alias.scope !2119, !noalias !2122, !noundef !5
  %i.aqw = add i64 %i.aqv, %i.aqu
  store i64 %i.aqw, ptr %i.aom, align 8, !alias.scope !2119, !noalias !2122
  %i.aqx = load i64, ptr %1, align 8, !alias.scope !2119, !noalias !2122, !noundef !5
  %i.aqy = shl i64 %i.aqx, 8
  %i.aqz = or disjoint i64 %i.aqy, %i.aqt
  store i64 %i.aqz, ptr %1, align 8, !alias.scope !2119, !noalias !2122
  %i.ara = load i8, ptr %i.acz, align 8, !alias.scope !2119, !noalias !2122, !noundef !5
  %i.arb = add i8 %i.ara, 8
  store i8 %i.arb, ptr %i.acz, align 8, !alias.scope !2119, !noalias !2122
  %i.arc = icmp eq i8 %i.aqr, -1
  br i1 %i.arc, label %bb.jn, label %.loopexit1340

bb.jh:                                            ; preds = %bb.iz
  %.sroa.0112.0.copyload.i = load i32, ptr %i.bs, align 4, !noalias !2125 ; 2 uses
  store i32 %.sroa.0112.0.copyload.i, ptr %i.aoq, align 8, !noalias !2125
  store i64 -1, ptr %i.bt, align 8, !noalias !2125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !2125
  %i.ard = call i32 @llvm.bswap.i32(i32 %.sroa.0112.0.copyload.i) ; 3 uses
  %i.are = or i32 %i.ard, -2139062144
  %i.arf = add i32 %i.are, -2139062143
  %i.arg = and i32 %i.ard, -2139062144
  %i.arh = and i32 %i.arg, %i.arf
  %.not221.i = icmp eq i32 %i.arh, 0
  br i1 %.not221.i, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread1329, label %bb.ji
end_hunk_6
begin_hunk_7_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream20decode_mcu_ac_refineINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
  %.sroa.42.sroa.0.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0.11201, %.sroa.42.sroa.0.0.insert.ext
  store i8 %.sroa.0.111711205, ptr %0, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.464.0..sroa_idx, align 1
  %.sroa.565.sroa.4.0..sroa.565.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.33.11203, ptr %.sroa.565.sroa.4.0..sroa.565.0..sroa_idx.sroa_idx, align 8
  %.sroa.565.sroa.5.0..sroa.565.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.sroa.0.0.insert.insert, ptr %.sroa.565.sroa.5.0..sroa.565.0..sroa_idx.sroa_idx, align 8
  %.sroa.565.sroa.6.0..sroa.565.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 28, ptr %.sroa.565.sroa.6.0..sroa.565.0..sroa_idx.sroa_idx, align 8
  br label %bb.ga

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread: ; preds = %bb.o, %bb.by, %bb.bu, %bb.b, %.loopexit1361.a, %bb.am, %bb.aq, %bb.ba, %bb.be, %bb.bk, %bb.bo, %bb.d, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread1206
  %i.nv = load i64, ptr %i.cr, align 8, !noundef !5 ; 3 uses
  %i.nw = lshr i64 %i.nv, 55
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 4, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  %i.nz = ashr i32 %i.ny, 9                       ; 7 uses
  store i32 %i.nz, ptr %i.bz, align 4
  %i.oa = and i32 %i.ny, 511
  %i.ob = icmp sgt i32 %i.nz, 9
  br i1 %i.ob, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread
  %i.oc = lshr i64 %i.nv, 48
  %i.od = trunc nuw nsw i64 %i.oc to i32          ; 3 uses
  store i32 %i.od, ptr %i.ca, align 4
  %i.oe = icmp samesign ult i32 %i.nz, 17
  br i1 %i.oe, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.bz
  %i.of = zext nneg i32 %i.nz to i64
  br label %bb.cb

bb.ca:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread, %bb.cf
  %i.og = phi i32 [ %i.oa, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread ], [ %i.pc, %bb.cf ] ; 2 uses
  %i.oh = phi i32 [ %i.nz, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread ], [ %i.or, %bb.cf ] ; 2 uses
  %i.oi = load i8, ptr %i.ci, align 8, !noundef !5 ; 2 uses
  %i.oj = zext i8 %i.oi to i32
  %i.ok = icmp sgt i32 %i.oh, %i.oj
  br i1 %i.ok, label %.split118, label %bb.cg

._crit_edge:                                      ; preds = %bb.bz
  %i.ol = icmp eq i32 %i.nz, 17
  br i1 %i.ol, label %.split, label %bb.ce

bb.cb:                                            ; preds = %bb.cc, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.of, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.cc ] ; 4 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.on = load i32, ptr %i.om, align 4, !noundef !5
  %i.oo = icmp sgt i32 %i.on, %i.od
  br i1 %i.oo, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.op = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.op, 17
  br i1 %exitcond.not, label %.split, label %bb.cb

.split:                                           ; preds = %bb.cc, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.422)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store ptr %i.ca, ptr %i.bx, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.469.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.by, ptr noundef nonnull @6, ptr noundef nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  %.sroa.422.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.422, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.422.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.422, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.422)
  br label %bb.cd

bb.cd:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread1236, %bb.fz, %.split118, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.ga

bb.ce:                                            ; preds = %._crit_edge
  %i.oq = zext nneg i32 %i.nz to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.oq, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #31
  unreachable

bb.cf:                                            ; preds = %bb.cb
  %i.or = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.or, ptr %i.bz, align 4
  %i.os = sub nuw nsw i32 16, %i.or
  %i.ot = lshr i32 %i.od, %i.os
  %i.ou = and i64 %indvars.iv, 4294967295
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ou
  %i.ow = load i32, ptr %i.ov, align 4, !noundef !5
  %i.ox = add i32 %i.ow, %i.ot
  %i.oy = and i32 %i.ox, 255
  %i.oz = zext nneg i32 %i.oy to i64
  %i.pa = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !noundef !5
  %i.pc = zext i8 %i.pb to i32
  br label %bb.ca

bb.cg:                                            ; preds = %bb.ca
  %i.pd = trunc i32 %i.oh to i8                   ; 2 uses
  %i.pe = call i8 @llvm.usub.sat.i8(i8 %i.oi, i8 %i.pd) ; 4 uses
  store i8 %i.pe, ptr %i.ci, align 8
  %i.pf = and i8 %i.pd, 63
  %i.pg = zext nneg i8 %i.pf to i64
  %i.ph = shl i64 %i.nv, %i.pg                    ; 6 uses
  store i64 %i.ph, ptr %i.cr, align 8
  %i.pi = lshr i32 %i.og, 4                       ; 6 uses
  %i.pj = and i32 %i.og, 15                       ; 2 uses
  store i32 %i.pj, ptr %i.ca, align 4
  %i.pk = icmp eq i32 %i.pj, 0
  br i1 %i.pk, label %bb.ch, label %.sink.split

.split118:                                        ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.424)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store ptr %i.bz, ptr %i.bv, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.475.0..sroa_idx, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.ci, ptr %i.pl, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.479.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bw, ptr noundef nonnull @7, ptr noundef nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %.sroa.424.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.424, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.424.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.424, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.424)
  br label %bb.cd

bb.ch:                                            ; preds = %bb.cg
  %i.pm = icmp eq i32 %i.pi, 15
  br i1 %i.pm, label %bb.cj, label %bb.ci

.sink.split:                                      ; preds = %bb.cg
  %i.pn = call i8 @llvm.usub.sat.i8(i8 %i.pe, i8 1) ; 2 uses
  store i8 %i.pn, ptr %i.ci, align 8
  %i.po = shl i64 %i.ph, 1                        ; 2 uses
  store i64 %i.po, ptr %i.cr, align 8
  %.not134 = icmp sgt i64 %i.ph, -1               ; 2 uses
  %spec.select = select i1 %.not134, i32 %i.cx, i32 %i.cv
  %spec.select2524 = select i1 %.not134, i32 %i.cx, i32 %i.cv
  store i32 %spec.select, ptr %i.ca, align 4
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.pp = shl nuw i32 1, %i.pi
  %i.pq = trunc nuw nsw i32 %i.pi to i8
  %i.pr = zext nneg i32 %i.pi to i64
  %notmask = shl nsw i64 -1, %i.pr
  %i.ps = xor i64 %notmask, -1
  %i.pt = zext nneg i32 %i.pi to i64
  %i.pu = call noundef i64 @llvm.fshl.i64(i64 %i.ph, i64 %i.ph, i64 %i.pt) ; 2 uses
  store i64 %i.pu, ptr %i.cr, align 8
  %i.pv = and i64 %i.pu, %i.ps
  %i.pw = trunc nuw nsw i64 %i.pv to i32
  %i.px = sub i8 %i.pe, %i.pq
  store i8 %i.px, ptr %i.ci, align 8
  %i.py = add nuw i32 %i.pp, %i.pw                ; 2 uses
  store i32 %i.py, ptr %i.cf, align 8
  br label %.loopexit1369

bb.cj:                                            ; preds = %.sink.split, %bb.ch
  %i.pz = phi i32 [ 0, %bb.ch ], [ %spec.select2524, %.sink.split ] ; 2 uses
  %i.qa = phi i64 [ %i.ph, %bb.ch ], [ %i.po, %.sink.split ]
  %i.qb = phi i8 [ %i.pe, %bb.ch ], [ %i.pn, %.sink.split ] ; 2 uses
  %i.qc = load i8, ptr %i.cy, align 2, !noundef !5 ; 3 uses
  %.not135 = icmp ugt i8 %.sroa.0.0, %i.qc
  br i1 %.not135, label %.loopexit1359.a, label %.preheader1358.a

.loopexit1369.loopexit:                           ; preds = %bb.fu
  %.pr1254.pre = load i32, ptr %i.cf, align 8
  br label %.loopexit1369

.loopexit1369:                                    ; preds = %.loopexit1369.loopexit, %bb.ci
  %.pr1254 = phi i32 [ %i.py, %bb.ci ], [ %.pr1254.pre, %.loopexit1369.loopexit ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %bb.ci ], [ %i.aci, %.loopexit1369.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.fx

.loopexit1359.a:                                  ; preds = %bb.cm, %bb.ck, %bb.cj
  %i.qd = phi i8 [ %i.qc, %bb.cj ], [ %.sroa.0.3, %bb.cm ], [ %i.qg, %bb.ck ]
  %i.qe = phi i8 [ %i.qb, %bb.cj ], [ %i.qu, %bb.cm ], [ %i.qi, %bb.ck ]
  %.sroa.0.2 = phi i8 [ %.sroa.0.0, %bb.cj ], [ %.sroa.0.3, %bb.ck ], [ %.sroa.0.3, %bb.cm ] ; 2 uses
  %i.qf = icmp eq i32 %i.pz, 0
  br i1 %i.qf, label %bb.fu, label %bb.fv

.preheader1358.a:                                 ; preds = %bb.cj, %bb.ft
  %i.qg = phi i8 [ %i.qv, %bb.ft ], [ %i.qc, %bb.cj ]
  %i.qh = phi i64 [ %i.qt, %bb.ft ], [ %i.qa, %bb.cj ] ; 2 uses
  %i.qi = phi i8 [ %i.qu, %bb.ft ], [ %i.qb, %bb.cj ] ; 4 uses
  %.sroa.010.0 = phi i32 [ %.sroa.010.1, %bb.ft ], [ %i.pi, %bb.cj ] ; 4 uses
  %.sroa.0.3 = phi i8 [ %i.ach, %bb.ft ], [ %.sroa.0.0, %bb.cj ] ; 6 uses
  %i.qj = and i8 %.sroa.0.3, 63
  %i.qk = zext nneg i8 %i.qj to i64
  %.sroa.025.0..sroa_stride = shl nuw nsw i64 %i.qk, 3
  %.sroa.025.0..sroa_idx = getelementptr inbounds nuw i8, ptr @10, i64 %.sroa.025.0..sroa_stride
  %i.ql = load i64, ptr %.sroa.025.0..sroa_idx, align 8
  %i.qm = and i64 %i.ql, 63
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.qm ; 2 uses
  %i.qo = load i16, ptr %i.qn, align 2, !noundef !5 ; 4 uses
  %i.qp = icmp eq i16 %i.qo, 0
  br i1 %i.qp, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.preheader1358.a
  %i.qq = add nsw i32 %.sroa.010.0, -1
  %i.qr = icmp slt i32 %.sroa.010.0, 1
  br i1 %i.qr, label %.loopexit1359.a, label %bb.cm

bb.cl:                                            ; preds = %.preheader1358.a
  %i.qs = icmp eq i8 %i.qi, 0
  br i1 %i.qs, label %bb.cn, label %bb.fr

bb.cm:                                            ; preds = %.sink.split2517, %bb.fr, %bb.ck
  %i.qt = phi i64 [ %i.qh, %bb.ck ], [ %i.abu, %.sink.split2517 ], [ %i.abu, %bb.fr ]
  %i.qu = phi i8 [ %i.qi, %bb.ck ], [ %i.abt, %.sink.split2517 ], [ %i.abt, %bb.fr ] ; 2 uses
  %.sroa.010.1 = phi i32 [ %i.qq, %bb.ck ], [ %.sroa.010.0, %.sink.split2517 ], [ %.sroa.010.0, %bb.fr ]
  %i.qv = load i8, ptr %i.cy, align 2, !noundef !5 ; 2 uses
  %i.qw = icmp eq i8 %.sroa.0.3, %i.qv
  br i1 %i.qw, label %.loopexit1359.a, label %bb.ft

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !2403)
  %i.qx = load i8, ptr %i.cj, align 2, !range !7, !alias.scope !2403, !noalias !2406, !noundef !5
  %i.qy = icmp ne i8 %i.qx, -1
  %i.qz = load i8, ptr %i.cl, align 1, !range !21, !alias.scope !2403, !noalias !2406
  %i.ra = trunc nuw i8 %i.qz to i1
  %or.cond.i257 = select i1 %i.qy, i1 true, i1 %i.ra
  br i1 %or.cond.i257, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread.thread, label %bb.co

.loopexit1351.a:                                  ; preds = %.preheader1350.a, %.loopexit1353.a, %bb.fh
  %i.rb = load i64, ptr %1, align 8, !alias.scope !2403, !noalias !2406, !noundef !5
  %i.rc = load i8, ptr %i.ci, align 8, !alias.scope !2403, !noalias !2406, !noundef !5 ; 2 uses
  %i.rd = sub i8 0, %i.rc
  %i.re = and i8 %i.rd, 63
  %i.rf = zext nneg i8 %i.re to i64
  %i.rg = shl i64 %i.rb, %i.rf
  store i64 %i.rg, ptr %i.cr, align 8, !alias.scope !2403, !noalias !2406
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread.thread: ; preds = %bb.cn
  %i.rh = load i64, ptr %1, align 8, !alias.scope !2403, !noalias !2406, !noundef !5
  %i.ri = shl i64 %i.rh, 32
  store i64 %i.ri, ptr %1, align 8, !alias.scope !2403, !noalias !2406
  store i8 32, ptr %i.ci, align 8, !alias.scope !2403, !noalias !2406
  store i64 0, ptr %i.cr, align 8, !alias.scope !2403, !noalias !2406
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread._crit_edge

bb.co:                                            ; preds = %bb.cn
  %i.rj = load i64, ptr %i.cm, align 8, !alias.scope !2403, !noalias !2406, !noundef !5
  %.not.i258 = icmp eq i64 %i.rj, 0
  br i1 %.not.i258, label %bb.cp, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread1236

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !2409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !2409
  store i32 0, ptr %i.bg, align 4, !noalias !2409
  %.val28.i612 = load ptr, ptr %i.cn, align 8, !alias.scope !2410, !noalias !2413, !nonnull !5, !noundef !5
  %.val29.i613 = load i64, ptr %i.co, align 8, !alias.scope !2410, !noalias !2413, !noundef !5 ; 2 uses
  %.promoted1748 = load i64, ptr %i.cp, align 8, !alias.scope !2410, !noalias !2413
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cv
  %.sroa.0.0.i4091749 = phi i64 [ 0, %bb.cp ], [ %i.rx, %bb.cv ] ; 6 uses
  %i.rk = phi i64 [ %.promoted1748, %bb.cp ], [ %i.rr, %bb.cv ] ; 3 uses
  %i.rl = sub nuw nsw i64 4, %.sroa.0.0.i4091749  ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.0.0.i4091749
  call void @llvm.experimental.noalias.scope.decl(metadata !2410)
  %..i.i614 = call noundef i64 @llvm.umin.i64(i64 %.val29.i613, i64 %i.rk) ; 4 uses
  %i.rn = add i64 %i.rk, %i.rl                    ; 2 uses
  %i.ro = icmp ult i64 %i.rn, %..i.i614
  br i1 %i.ro, label %bb.cs, label %bb.cr, !prof !34

bb.cr:                                            ; preds = %bb.cq
  %..i30.i615 = call noundef i64 @llvm.umin.i64(i64 %.val29.i613, i64 %i.rn) ; 2 uses
  %i.rp = sub nuw i64 %..i30.i615, %..i.i614      ; 6 uses
  %.not4.i.i616 = icmp ugt i64 %i.rp, %i.rl
  br i1 %.not4.i.i616, label %bb.ct, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit617, !prof !35

bb.cs:                                            ; preds = %bb.cq
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !2417
  unreachable

bb.ct:                                            ; preds = %bb.cr
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.rp, i64 noundef range(i64 0, -9223372036854775808) %i.rl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !2417
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit617: ; preds = %bb.cr
  %i.rq = getelementptr inbounds nuw i8, ptr %.val28.i612, i64 %..i.i614
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.rm, i64 noundef %i.rp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rq, i64 noundef %i.rp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !2421
  %i.rr = add i64 %i.rp, %i.rk                    ; 6 uses
  store i64 %i.rr, ptr %i.cp, align 8, !alias.scope !2410, !noalias !2413
  %i.rs = icmp eq i64 %..i30.i615, %..i.i614
  br i1 %i.rs, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit617
  call void @llvm.experimental.noalias.scope.decl(metadata !2422)
  %i.rt = sub i64 %i.rr, %.sroa.0.0.i4091749      ; 2 uses
  %i.ru = icmp uge i64 %i.rt, %i.rr
  %i.rv = icmp ne i64 %.sroa.0.0.i4091749, 0
  %i.rw = and i1 %i.rv, %i.ru
  br i1 %i.rw, label %bb.cw, label %bb.cx, !prof !34

bb.cv:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit617
  %i.rx = add nuw nsw i64 %i.rp, %.sroa.0.0.i4091749 ; 2 uses
  %i.ry = icmp ult i64 %i.rx, 4
  br i1 %i.ry, label %bb.cq, label %bb.dd

bb.cw:                                            ; preds = %bb.cu
  %i.rz = call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 13) #32, !noalias !2425
  %i.sa = ptrtoint ptr %i.rz to i64
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cu
  store i64 %i.rt, ptr %i.cp, align 8, !alias.scope !2422, !noalias !2426
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.sroa.01003.0.ph = phi i64 [ -9223372036854775808, %bb.cw ], [ -9223372036854775806, %bb.cx ]
  %.sroa.81004.0.ph = phi i64 [ %i.sa, %bb.cw ], [ %.sroa.0.0.i4091749, %bb.cx ]
  store i64 %.sroa.01003.0.ph, ptr %i.bh, align 8, !noalias !2409
  store i64 %.sroa.81004.0.ph, ptr %i.cz, align 8, !noalias !2409
  store i64 4, ptr %.sroa.51008.0..sroa_idx, align 8, !noalias !2409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !2409
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.dh
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh), !noalias !2427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !2409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2428
  store i8 0, ptr %i.y, align 1, !noalias !2428
  call void @llvm.experimental.noalias.scope.decl(metadata !2431)
  %.val28.i622 = load ptr, ptr %i.cn, align 8, !alias.scope !2431, !noalias !2434, !nonnull !5, !noundef !5
  %.val29.i623 = load i64, ptr %i.co, align 8, !alias.scope !2431, !noalias !2434, !noundef !5 ; 2 uses
  %i.sb = load i64, ptr %i.cp, align 8, !alias.scope !2436, !noalias !2439, !noundef !5 ; 3 uses
  %..i.i624 = call noundef i64 @llvm.umin.i64(i64 %.val29.i623, i64 %i.sb) ; 3 uses
  %i.sc = add i64 %i.sb, 1                        ; 2 uses
  %i.sd = icmp ult i64 %i.sc, %..i.i624
  br i1 %i.sd, label %bb.db, label %bb.da, !prof !34

bb.da:                                            ; preds = %bb.cz
  %..i30.i625 = call noundef i64 @llvm.umin.i64(i64 %.val29.i623, i64 %i.sc)
  %i.se = sub nuw i64 %..i30.i625, %..i.i624      ; 5 uses
  %.not4.i.i626 = icmp ugt i64 %i.se, 1
  br i1 %.not4.i.i626, label %bb.dc, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit627, !prof !35

bb.db:                                            ; preds = %bb.cz
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !2442
  unreachable

bb.dc:                                            ; preds = %bb.da
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.se, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !2442
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit627: ; preds = %bb.da
  %i.sf = getelementptr inbounds nuw i8, ptr %.val28.i622, i64 %..i.i624
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.y, i64 noundef %i.se, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.sf, i64 noundef %i.se, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !2443
  %i.sg = add i64 %i.se, %i.sb                    ; 6 uses
  store i64 %i.sg, ptr %i.cp, align 8, !alias.scope !2431, !noalias !2434
  %i.sh = load i8, ptr %i.y, align 1, !noalias !2428, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2428
  %.val.i.i631 = load ptr, ptr %i.cn, align 8, !alias.scope !2444, !noalias !2449, !nonnull !5, !noundef !5 ; 2 uses
  %.val1.i.i632 = load i64, ptr %i.co, align 8, !alias.scope !2444, !noalias !2449, !noundef !5 ; 4 uses
  %..i.i.i633 = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i632, i64 %i.sg) ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.val.i.i631, i64 %..i.i.i633
  %i.sj = icmp ule i64 %.val1.i.i632, %i.sg
  %i.sk = zext i8 %i.sh to i64
  %i.sl = zext i1 %i.sj to i64
  %i.sm = load i64, ptr %i.cm, align 8, !alias.scope !2403, !noalias !2406, !noundef !5
  %i.sn = add i64 %i.sm, %i.sl
  store i64 %i.sn, ptr %i.cm, align 8, !alias.scope !2403, !noalias !2406
  %i.so = load i64, ptr %1, align 8, !alias.scope !2403, !noalias !2406, !noundef !5
  %i.sp = shl i64 %i.so, 8
  %i.sq = or disjoint i64 %i.sp, %i.sk
  store i64 %i.sq, ptr %1, align 8, !alias.scope !2403, !noalias !2406
  %i.sr = load i8, ptr %i.ci, align 8, !alias.scope !2403, !noalias !2406, !noundef !5
  %i.ss = add i8 %i.sr, 8
  store i8 %i.ss, ptr %i.ci, align 8, !alias.scope !2403, !noalias !2406
  %i.st = icmp eq i8 %i.sh, -1
  br i1 %i.st, label %bb.dj, label %.loopexit1357

bb.dd:                                            ; preds = %bb.cv
  %.sroa.0112.0.copyload.i319 = load i32, ptr %i.bg, align 4, !noalias !2409 ; 2 uses
  store i32 %.sroa.0112.0.copyload.i319, ptr %i.cz, align 8, !noalias !2409
  store i64 -1, ptr %i.bh, align 8, !noalias !2409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !2409
  %i.su = call i32 @llvm.bswap.i32(i32 %.sroa.0112.0.copyload.i319) ; 3 uses
  %i.sv = or i32 %i.su, -2139062144
  %i.sw = add i32 %i.sv, -2139062143
  %i.sx = and i32 %i.su, -2139062144
  %i.sy = and i32 %i.sx, %i.sw
  %.not221.i310 = icmp eq i32 %i.sy, 0
  br i1 %.not221.i310, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread1248, label %bb.de

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread1248: ; preds = %bb.dd
  %i.sz = load i8, ptr %i.ci, align 8, !alias.scope !2403, !noalias !2406, !noundef !5 ; 2 uses
  %i.ta = add i8 %i.sz, 32
  store i8 %i.ta, ptr %i.ci, align 8, !alias.scope !2403, !noalias !2406
end_hunk_7
begin_hunk_8_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream20decode_mcu_ac_refineINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
  %i.zq = extractvalue { i64, ptr } %i.zp, 0
  %i.zr = extractvalue { i64, ptr } %i.zp, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.zq, ptr %i.zr)
  %i.zs = load i8, ptr %i.ab, align 1, !noalias !2561, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2561
  %.val1.i.i700 = load i64, ptr %i.co, align 8, !alias.scope !2564, !noalias !2569, !noundef !5
  %i.zt = load i64, ptr %i.cp, align 8, !alias.scope !2564, !noalias !2569, !noundef !5
  %i.zu = icmp ule i64 %.val1.i.i700, %i.zt
  %i.zv = zext i8 %i.zs to i64
  %i.zw = zext i1 %i.zu to i64
  %i.zx = load i64, ptr %i.cm, align 8, !alias.scope !2403, !noalias !2406, !noundef !5
  %i.zy = add i64 %i.zx, %i.zw
  store i64 %i.zy, ptr %i.cm, align 8, !alias.scope !2403, !noalias !2406
  %i.zz = load i64, ptr %1, align 8, !alias.scope !2403, !noalias !2406, !noundef !5
  %i.aaa = shl i64 %i.zz, 8
  %i.aab = or disjoint i64 %i.aaa, %i.zv
  store i64 %i.aab, ptr %1, align 8, !alias.scope !2403, !noalias !2406
  %i.aac = load i8, ptr %i.ci, align 8, !alias.scope !2403, !noalias !2406, !noundef !5
  %i.aad = add i8 %i.aac, 8
  store i8 %i.aad, ptr %i.ci, align 8, !alias.scope !2403, !noalias !2406
  %i.aae = icmp eq i8 %i.zs, -1
  br i1 %i.aae, label %bb.fh, label %.loopexit1351.a

bb.fh:                                            ; preds = %.loopexit1353.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2574
  store i8 0, ptr %i.ac, align 1, !noalias !2574
  %i.aaf = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noalias nofree noundef nonnull %i.ac, i64 noundef 1), !noalias !2427 ; 2 uses
  %i.aag = extractvalue { i64, ptr } %i.aaf, 0
  %i.aah = extractvalue { i64, ptr } %i.aaf, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.aag, ptr %i.aah)
  %i.aai = load i8, ptr %i.ac, align 1, !noalias !2574, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2574
  %i.aaj = icmp eq i8 %i.aai, 0
  br i1 %i.aaj, label %.loopexit1351.a, label %.preheader1350.a

.preheader1350.a:                                 ; preds = %bb.fh, %bb.fi
  %.sroa.099.0.in.i293 = phi i8 [ %i.aan, %bb.fi ], [ %i.aai, %bb.fh ] ; 3 uses
  switch i8 %.sroa.099.0.in.i293, label %bb.fj [
    i8 -1, label %bb.fi
    i8 0, label %.loopexit1351.a
  ]

bb.fi:                                            ; preds = %.preheader1350.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2577
  store i8 0, ptr %i.ad, align 1, !noalias !2577
  %i.aak = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noalias nofree noundef nonnull %i.ad, i64 noundef 1), !noalias !2427 ; 2 uses
  %i.aal = extractvalue { i64, ptr } %i.aak, 0
  %i.aam = extractvalue { i64, ptr } %i.aak, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.aal, ptr %i.aam)
  %i.aan = load i8, ptr %i.ad, align 1, !noalias !2577, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2577
  br label %.preheader1350.a

bb.fj:                                            ; preds = %.preheader1350.a
  %i.aao = load i64, ptr %1, align 8, !alias.scope !2403, !noalias !2406, !noundef !5 ; 2 uses
  %i.aap = lshr i64 %i.aao, 8                     ; 2 uses
  store i64 %i.aap, ptr %1, align 8, !alias.scope !2403, !noalias !2406
  %i.aaq = load i8, ptr %i.ci, align 8, !alias.scope !2403, !noalias !2406, !noundef !5 ; 5 uses
  %i.aar = add i8 %i.aaq, -8                      ; 3 uses
  store i8 %i.aar, ptr %i.ci, align 8, !alias.scope !2403, !noalias !2406
  %i.aas = icmp eq i8 %i.aar, 0
  br i1 %i.aas, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.aat = sub i8 8, %i.aaq
  %i.aau = and i8 %i.aat, 63
  %i.aav = zext nneg i8 %i.aau to i64
  %i.aaw = shl i64 %i.aap, %i.aav
  store i64 %i.aaw, ptr %i.cr, align 8, !alias.scope !2403, !noalias !2406
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.aax = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i293), !noalias !2427 ; 2 uses
  %i.aay = extractvalue { i8, i8 } %i.aax, 0      ; 2 uses
  %i.aaz = extractvalue { i8, i8 } %i.aax, 1
  store i8 %i.aay, ptr %i.cj, align 2, !alias.scope !2403, !noalias !2406
  store i8 %i.aaz, ptr %i.ck, align 1, !alias.scope !2403, !noalias !2406
  %i.aba = icmp eq i8 %i.aay, 12
  br i1 %i.aba, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.abb = icmp eq i8 %.sroa.099.0.in.i293, -39
  br i1 %i.abb, label %bb.fq, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread

bb.fn:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !2409
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bc, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2427
  %i.abc = load i64, ptr %i.bc, align 8, !range !75, !noalias !2409, !noundef !5
  %i.abd = trunc nuw i64 %i.abc to i1
  %i.abe = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.abf = load i64, ptr %i.abe, align 8, !range !76, !noalias !2409, !noundef !5 ; 3 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  br i1 %i.abd, label %bb.fo, label %bb.fp, !prof !34

bb.fo:                                            ; preds = %bb.fn
  %i.abh = load i64, ptr %i.abg, align 8, !noalias !2409
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.abf, i64 %i.abh) #35, !noalias !2427
  unreachable

bb.fp:                                            ; preds = %bb.fn
  %i.abi = load ptr, ptr %i.abg, align 8, !noalias !2409, !nonnull !5, !noundef !5 ; 2 uses
  %i.abj = icmp samesign ugt i64 %i.abf, 27
  call void @llvm.assume(i1 %i.abj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !2409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.abi, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !2427
  %i.abk = ptrtoint ptr %i.abi to i64             ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift834 = and i64 %i.abk, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread1236

bb.fq:                                            ; preds = %bb.fm
  %i.abl = and i64 %i.aao, -256                   ; 2 uses
  store i64 %i.abl, ptr %1, align 8, !alias.scope !2403, !noalias !2406
  store i8 %i.aaq, ptr %i.ci, align 8, !alias.scope !2403, !noalias !2406
  %i.abm = sub i8 0, %i.aaq
  %i.abn = and i8 %i.abm, 63
  %i.abo = zext nneg i8 %i.abn to i64
  %i.abp = shl i64 %i.abl, %i.abo
  store i64 %i.abp, ptr %i.cr, align 8, !alias.scope !2403, !noalias !2406
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320: ; preds = %bb.df
  %i.abq = ptrtoint ptr %i.tk to i64              ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift842 = and i64 %i.abq, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh), !noalias !2427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !2409
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread1236

bb.fr:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread._crit_edge, %bb.cl
  %i.abr = phi i8 [ %i.aca, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread._crit_edge ], [ %i.qi, %bb.cl ]
  %i.abs = phi i64 [ %.pre2077, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread._crit_edge ], [ %i.qh, %bb.cl ] ; 2 uses
  %i.abt = call i8 @llvm.usub.sat.i8(i8 %i.abr, i8 1) ; 3 uses
  store i8 %i.abt, ptr %i.ci, align 8
  %i.abu = shl i64 %i.abs, 1                      ; 3 uses
  store i64 %i.abu, ptr %i.cr, align 8
  %.not138 = icmp slt i64 %i.abs, 0
  %i.abv = and i16 %i.qo, %i.cc
  %i.abw = icmp eq i16 %i.abv, 0
  %or.cond2520 = and i1 %.not138, %i.abw
  br i1 %or.cond2520, label %.sink.split2517, label %bb.cm

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread1236: ; preds = %bb.co, %bb.er, %bb.fp, %bb.ea, %bb.ff, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320
  %.sroa.0813.11247 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320 ], [ 0, %bb.er ], [ 0, %bb.ff ], [ 0, %bb.fp ], [ 0, %bb.ea ], [ 10, %bb.co ]
  %.sroa.33817.11245 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320 ], [ %i.xq, %bb.er ], [ %i.ze, %bb.ff ], [ %i.abf, %bb.fp ], [ %i.vk, %bb.ea ], [ undef, %bb.co ]
  %.sroa.42.sroa.0825.11244 = phi i64 [ %i.abq, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320 ], [ %i.xv, %bb.er ], [ %i.zj, %bb.ff ], [ %i.abk, %bb.fp ], [ %i.vp, %bb.ea ], [ 0, %bb.co ]
  %.sroa.42.sroa.13.sroa.0844.11243 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift842, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320 ], [ %.sroa.42.sroa.13.0.extract.shift838, %bb.er ], [ %.sroa.42.sroa.13.0.extract.shift836, %bb.ff ], [ %.sroa.42.sroa.13.0.extract.shift834, %bb.fp ], [ %.sroa.42.sroa.13.0.extract.shift840.a, %bb.ea ], [ 0, %bb.co ]
  %.sroa.42.sroa.0825.0.insert.ext = and i64 %.sroa.42.sroa.0825.11244, 255
  %.sroa.42.sroa.0825.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0844.11243, %.sroa.42.sroa.0825.0.insert.ext
  store i8 %.sroa.0813.11247, ptr %0, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.489.0..sroa_idx, align 1
  %.sroa.590.sroa.4.0..sroa.590.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.33817.11245, ptr %.sroa.590.sroa.4.0..sroa.590.0..sroa_idx.sroa_idx, align 8
  %.sroa.590.sroa.5.0..sroa.590.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.sroa.0825.0.insert.insert, ptr %.sroa.590.sroa.5.0..sroa.590.0..sroa_idx.sroa_idx, align 8
  %.sroa.590.sroa.6.0..sroa.590.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 28, ptr %.sroa.590.sroa.6.0..sroa.590.0..sroa_idx.sroa_idx, align 8
  br label %bb.cd

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread: ; preds = %bb.fq, %bb.fm, %bb.dx, %bb.eb, %bb.eo, %bb.es, %bb.fc, %bb.fg, %.loopexit1351.a, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread1248
  %i.abx = phi i8 [ %i.aaq, %bb.fq ], [ %i.aar, %bb.fm ], [ %i.ue, %bb.dx ], [ %i.ud, %bb.eb ], [ %i.wk, %bb.eo ], [ %i.wj, %bb.es ], [ %i.yq, %bb.fc ], [ %i.yp, %bb.fg ], [ %i.rc, %.loopexit1351.a ], [ %.pre2076, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread1248 ] ; 2 uses
  %i.aby = icmp ne i8 %i.abx, 0
  %i.abz = load i8, ptr %i.cj, align 2, !range !7
  %.not137 = icmp eq i8 %i.abz, -1
  %or.cond = select i1 %i.aby, i1 true, i1 %.not137
  br i1 %or.cond, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread._crit_edge, label %bb.fs

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread._crit_edge: ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread.thread, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread
  %i.aca = phi i8 [ 32, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread.thread ], [ %i.abx, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread ]
  %.pre2077 = load i64, ptr %i.cr, align 8
  br label %bb.fr

bb.fs:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bu, i64 noundef 45, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.acb = load i64, ptr %i.bu, align 8, !range !75, !noundef !5
  %i.acc = trunc nuw i64 %i.acb to i1
  %i.acd = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.ace = load i64, ptr %i.acd, align 8, !range !76, !noundef !5 ; 3 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  br i1 %i.acc, label %bb.fy, label %bb.fz, !prof !34

.sink.split2517:                                  ; preds = %bb.fr
  %i.acg = icmp sgt i16 %i.qo, 0
  %.sink2518.p = select i1 %i.acg, i16 %i.cc, i16 %i.da
  %.sink2518 = add i16 %i.qo, %.sink2518.p
  store i16 %.sink2518, ptr %i.qn, align 2
  br label %bb.cm

bb.ft:                                            ; preds = %bb.cm
  %i.ach = add i8 %.sroa.0.3, 1
  br label %.preheader1358.a

bb.fu:                                            ; preds = %.loopexit1359.a, %bb.fv
  %i.aci = add i8 %.sroa.0.2, 1                   ; 3 uses
  %i.acj = icmp ugt i8 %i.aci, %i.qd
  br i1 %i.acj, label %.loopexit1369.loopexit, label %bb.fw

bb.fv:                                            ; preds = %.loopexit1359.a
  %i.ack = and i8 %.sroa.0.2, 63
  %i.acl = zext nneg i8 %i.ack to i64
  %.sroa.039.0..sroa_stride = shl nuw nsw i64 %i.acl, 3
  %.sroa.039.0..sroa_idx = getelementptr inbounds nuw i8, ptr @10, i64 %.sroa.039.0..sroa_stride
  %i.acm = load i64, ptr %.sroa.039.0..sroa_idx, align 8
  %i.acn = and i64 %i.acm, 63
  %i.aco = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.acn
  %i.acp = trunc nsw i32 %i.pz to i16
  store i16 %i.acp, ptr %i.aco, align 2
  br label %bb.fu

bb.fw:                                            ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.b

bb.fx:                                            ; preds = %bb.a, %.loopexit1369
  %i.acq = phi i32 [ %i.cg, %bb.a ], [ %.pr1254, %.loopexit1369 ]
  %.sroa.0.4 = phi i8 [ %i.ce, %bb.a ], [ %.sroa.0.1, %.loopexit1369 ] ; 2 uses
  %i.acr = icmp sgt i32 %i.acq, 0
  br i1 %i.acr, label %bb.gb, label %bb.gc

bb.fy:                                            ; preds = %bb.fs
  %i.acs = load i64, ptr %i.acf, align 8
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ace, i64 %i.acs) #35
  unreachable

bb.fz:                                            ; preds = %bb.fs
  %i.act = load ptr, ptr %i.acf, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.acu = icmp samesign ugt i64 %i.ace, 44
  call void @llvm.assume(i1 %i.acu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.act, ptr noundef nonnull align 1 dereferenceable(45) @17, i64 45, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.436.sroa.3.0..sroa.436.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ace, ptr %.sroa.436.sroa.3.0..sroa.436.0..sroa_idx.sroa_idx, align 8
  %.sroa.436.sroa.4.0..sroa.436.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.act, ptr %.sroa.436.sroa.4.0..sroa.436.0..sroa_idx.sroa_idx, align 8
  %.sroa.436.sroa.5.0..sroa.436.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 45, ptr %.sroa.436.sroa.5.0..sroa.436.0..sroa_idx.sroa_idx, align 8
  br label %bb.cd

bb.ga:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread1275, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread1317, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread1194, %bb.cd, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  ret void

bb.gb:                                            ; preds = %bb.fx
  %i.acv = getelementptr inbounds nuw i8, ptr %4, i64 2
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(126) %i.acv, ptr noundef nonnull dereferenceable(126) @18, i64 126)
  %.not139 = icmp eq i32 %bcmp, 0
  br i1 %.not139, label %.loopexit1341, label %bb.gd

bb.gc:                                            ; preds = %bb.fx, %.loopexit1341
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.acw, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.ga

.loopexit1341:                                    ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread, %bb.gb
  %i.acx = load i32, ptr %i.cf, align 8, !noundef !5
  %i.acy = add i32 %i.acx, -1
  store i32 %i.acy, ptr %i.cf, align 8
  br label %bb.gc

bb.gd:                                            ; preds = %bb.gb
  call void @llvm.experimental.noalias.scope.decl(metadata !2580)
  %i.acz = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 51 uses
  %i.ada = load i8, ptr %i.acz, align 8, !alias.scope !2580, !noalias !2583, !noundef !5 ; 4 uses
  %i.adb = icmp ult i8 %i.ada, 32
  br i1 %i.adb, label %bb.ge, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread

bb.ge:                                            ; preds = %bb.gd
  %i.adc = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 5 uses
  %i.add = load i8, ptr %i.adc, align 2, !range !7, !alias.scope !2580, !noalias !2583, !noundef !5
  %i.ade = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.adf = icmp ne i8 %i.add, -1
  %i.adg = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.adh = load i8, ptr %i.adg, align 1, !range !21, !alias.scope !2580, !noalias !2583
  %i.adi = trunc nuw i8 %i.adh to i1
  %or.cond.i169 = select i1 %i.adf, i1 true, i1 %i.adi
  br i1 %or.cond.i169, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.adj = load i64, ptr %1, align 8, !alias.scope !2580, !noalias !2583, !noundef !5
  %i.adk = shl i64 %i.adj, 32                     ; 2 uses
  store i64 %i.adk, ptr %1, align 8, !alias.scope !2580, !noalias !2583
  %i.adl = or disjoint i8 %i.ada, 32
  store i8 %i.adl, ptr %i.acz, align 8, !alias.scope !2580, !noalias !2583
  %i.adm = sub nuw nsw i8 32, %i.ada
  %i.adn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ado = zext nneg i8 %i.adm to i64
  %i.adp = shl i64 %i.adk, %i.ado
  store i64 %i.adp, ptr %i.adn, align 8, !alias.scope !2580, !noalias !2583
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread

bb.gg:                                            ; preds = %bb.ge
  %i.adq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.adr = load i64, ptr %i.adq, align 8, !alias.scope !2580, !noalias !2583, !noundef !5
  %.not.i170 = icmp eq i64 %i.adr, 0
  br i1 %.not.i170, label %bb.gh, label %bb.go

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !2586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !2586
  store i32 0, ptr %i.bm, align 4, !noalias !2586
  %i.ads = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 14 uses
  %.val28.i702 = load ptr, ptr %i.ads, align 8, !alias.scope !2587, !noalias !2590, !nonnull !5, !noundef !5
  %i.adt = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %.val29.i703 = load i64, ptr %i.adt, align 8, !alias.scope !2587, !noalias !2590, !noundef !5 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  %.promoted1753 = load i64, ptr %i.adu, align 8, !alias.scope !2587, !noalias !2590
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gn
  %.sroa.0.0.i4151754 = phi i64 [ 0, %bb.gh ], [ %i.aek, %bb.gn ] ; 5 uses
  %i.adv = phi i64 [ %.promoted1753, %bb.gh ], [ %i.aec, %bb.gn ] ; 3 uses
  %i.adw = sub nuw nsw i64 4, %.sroa.0.0.i4151754 ; 3 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.0.0.i4151754
  call void @llvm.experimental.noalias.scope.decl(metadata !2587)
  %..i.i704 = call noundef i64 @llvm.umin.i64(i64 %.val29.i703, i64 %i.adv) ; 4 uses
  %i.ady = add i64 %i.adv, %i.adw                 ; 2 uses
  %i.adz = icmp ult i64 %i.ady, %..i.i704
  br i1 %i.adz, label %bb.gk, label %bb.gj, !prof !34

bb.gj:                                            ; preds = %bb.gi
  %..i30.i705 = call noundef i64 @llvm.umin.i64(i64 %.val29.i703, i64 %i.ady) ; 2 uses
  %i.aea = sub nuw i64 %..i30.i705, %..i.i704     ; 6 uses
  %.not4.i.i706 = icmp ugt i64 %i.aea, %i.adw
  br i1 %.not4.i.i706, label %bb.gl, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit707, !prof !35

bb.gk:                                            ; preds = %bb.gi
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !2594
  unreachable

bb.gl:                                            ; preds = %bb.gj
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aea, i64 noundef range(i64 0, -9223372036854775808) %i.adw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !2594
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit707: ; preds = %bb.gj
  %i.aeb = getelementptr inbounds nuw i8, ptr %.val28.i702, i64 %..i.i704
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.adx, i64 noundef %i.aea, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aeb, i64 noundef %i.aea, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !2598
  %i.aec = add i64 %i.aea, %i.adv                 ; 4 uses
  store i64 %i.aec, ptr %i.adu, align 8, !alias.scope !2587, !noalias !2590
  %i.aed = icmp eq i64 %..i30.i705, %..i.i704
  br i1 %i.aed, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit707
  %i.aee = sub nsw i64 0, %.sroa.0.0.i4151754
  %i.aef = call { i64, ptr } @_RNvXs1_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB7_14no_std_readers7ZCursorRShENtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ads, i64 noundef 2, i64 noundef %i.aee), !noalias !2599 ; 2 uses
  %i.aeg = extractvalue { i64, ptr } %i.aef, 0
  %i.aeh = trunc nuw i64 %i.aeg to i1             ; 2 uses
  %i.aei = extractvalue { i64, ptr } %i.aef, 1
  %i.aej = ptrtoint ptr %i.aei to i64
  %.sroa.8971.0.ph = select i1 %i.aeh, i64 %i.aej, i64 %.sroa.0.0.i4151754
  %.sroa.0970.0.ph = select i1 %i.aeh, i64 -9223372036854775808, i64 -9223372036854775806
  store i64 %.sroa.0970.0.ph, ptr %i.bn, align 8, !noalias !2586
  %.sroa.4974.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %.sroa.8971.0.ph, ptr %.sroa.4974.0..sroa_idx, align 8, !noalias !2586
  %.sroa.5975.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 4, ptr %.sroa.5975.0..sroa_idx, align 8, !noalias !2586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !2586
  br label %bb.gv

bb.gn:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit707
  %i.aek = add nuw nsw i64 %i.aea, %.sroa.0.0.i4151754 ; 2 uses
  %i.ael = icmp ult i64 %i.aek, 4
  br i1 %i.ael, label %bb.gi, label %bb.gp

bb.go:                                            ; preds = %bb.gg
  %i.aem = icmp eq i8 %i.ada, 0
  br i1 %i.aem, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread1275, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread

bb.gp:                                            ; preds = %bb.gn
  %.sroa.0112.0.copyload.i231 = load i32, ptr %i.bm, align 4, !noalias !2586 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %.sroa.0112.0.copyload.i231, ptr %i.aen, align 8, !noalias !2586
  store i64 -1, ptr %i.bn, align 8, !noalias !2586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !2586
  %i.aeo = call i32 @llvm.bswap.i32(i32 %.sroa.0112.0.copyload.i231) ; 3 uses
  %i.aep = or i32 %i.aeo, -2139062144
  %i.aeq = add i32 %i.aep, -2139062143
  %i.aer = and i32 %i.aeo, -2139062144
  %i.aes = and i32 %i.aer, %i.aeq
  %.not221.i222 = icmp eq i32 %i.aes, 0
  br i1 %.not221.i222, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread1287, label %bb.gq

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread1287: ; preds = %bb.gp
  %i.aet = load i8, ptr %i.acz, align 8, !alias.scope !2580, !noalias !2583, !noundef !5 ; 2 uses
  %i.aeu = add i8 %i.aet, 32
  store i8 %i.aeu, ptr %i.acz, align 8, !alias.scope !2580, !noalias !2583
  %i.aev = load i64, ptr %1, align 8, !alias.scope !2580, !noalias !2583, !noundef !5
  %i.aew = shl i64 %i.aev, 32
  %i.aex = zext i32 %i.aeo to i64
  %i.aey = or disjoint i64 %i.aew, %i.aex         ; 2 uses
  store i64 %i.aey, ptr %1, align 8, !alias.scope !2580, !noalias !2583
  %i.aez = sub i8 32, %i.aet
  %i.afa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.afb = and i8 %i.aez, 63
  %i.afc = zext nneg i8 %i.afb to i64
  %i.afd = shl i64 %i.aey, %i.afc
  store i64 %i.afd, ptr %i.afa, align 8, !alias.scope !2580, !noalias !2583
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bn), !noalias !2600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !2586
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread

bb.gq:                                            ; preds = %bb.gp
end_hunk_8
begin_hunk_9_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream20decode_mcu_ac_refineINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread1275

bb.id:                                            ; preds = %bb.hz
  %i.alp = and i64 %i.akr, -256                   ; 2 uses
  store i64 %i.alp, ptr %1, align 8, !alias.scope !2580, !noalias !2583
  store i8 %i.akt, ptr %i.acz, align 8, !alias.scope !2580, !noalias !2583
  %i.alq = sub i8 0, %i.akt
  %i.alr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.als = and i8 %i.alq, 63
  %i.alt = zext nneg i8 %i.als to i64
  %i.alu = shl i64 %i.alp, %i.alt
  store i64 %i.alu, ptr %i.alr, align 8, !alias.scope !2580, !noalias !2583
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread

.loopexit1345:                                    ; preds = %.preheader1344, %.loopexit1347, %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2671
  store i8 0, ptr %i.p, align 1, !noalias !2671
  %i.alv = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ads, ptr noalias nofree noundef nonnull %i.p, i64 noundef 1), !noalias !2600 ; 2 uses
  %i.alw = extractvalue { i64, ptr } %i.alv, 0
  %i.alx = extractvalue { i64, ptr } %i.alv, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.alw, ptr %i.alx)
  %i.aly = load i8, ptr %i.p, align 1, !noalias !2671, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2671
  %.val1.i.i732 = load i64, ptr %i.adt, align 8, !alias.scope !2674, !noalias !2679, !noundef !5
  %i.alz = load i64, ptr %i.adu, align 8, !alias.scope !2674, !noalias !2679, !noundef !5
  %i.ama = icmp ule i64 %.val1.i.i732, %i.alz
  %i.amb = zext i8 %i.aly to i64
  %i.amc = zext i1 %i.ama to i64
  %i.amd = load i64, ptr %i.adq, align 8, !alias.scope !2580, !noalias !2583, !noundef !5
  %i.ame = add i64 %i.amd, %i.amc
  store i64 %i.ame, ptr %i.adq, align 8, !alias.scope !2580, !noalias !2583
  %i.amf = load i64, ptr %1, align 8, !alias.scope !2580, !noalias !2583, !noundef !5
  %i.amg = shl i64 %i.amf, 8
  %i.amh = or disjoint i64 %i.amg, %i.amb
  store i64 %i.amh, ptr %1, align 8, !alias.scope !2580, !noalias !2583
  %i.ami = load i8, ptr %i.acz, align 8, !alias.scope !2580, !noalias !2583, !noundef !5
  %i.amj = add i8 %i.ami, 8
  store i8 %i.amj, ptr %i.acz, align 8, !alias.scope !2580, !noalias !2583
  %i.amk = icmp eq i8 %i.aly, -1
  br i1 %i.amk, label %bb.ie, label %.loopexit1343

bb.ie:                                            ; preds = %.loopexit1345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2684
  store i8 0, ptr %i.q, align 1, !noalias !2684
  %i.aml = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ads, ptr noalias nofree noundef nonnull %i.q, i64 noundef 1), !noalias !2600 ; 2 uses
  %i.amm = extractvalue { i64, ptr } %i.aml, 0
  %i.amn = extractvalue { i64, ptr } %i.aml, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.amm, ptr %i.amn)
  %i.amo = load i8, ptr %i.q, align 1, !noalias !2684, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2684
  %i.amp = icmp eq i8 %i.amo, 0
  br i1 %i.amp, label %.loopexit1343, label %.preheader1342

.preheader1342:                                   ; preds = %bb.ie, %bb.if
  %.sroa.099.0.in.i205 = phi i8 [ %i.amt, %bb.if ], [ %i.amo, %bb.ie ] ; 3 uses
  switch i8 %.sroa.099.0.in.i205, label %bb.ig [
    i8 -1, label %bb.if
    i8 0, label %.loopexit1343
  ]

bb.if:                                            ; preds = %.preheader1342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2687
  store i8 0, ptr %i.r, align 1, !noalias !2687
  %i.amq = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ads, ptr noalias nofree noundef nonnull %i.r, i64 noundef 1), !noalias !2600 ; 2 uses
  %i.amr = extractvalue { i64, ptr } %i.amq, 0
  %i.ams = extractvalue { i64, ptr } %i.amq, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.amr, ptr %i.ams)
  %i.amt = load i8, ptr %i.r, align 1, !noalias !2687, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2687
  br label %.preheader1342

bb.ig:                                            ; preds = %.preheader1342
  %i.amu = load i64, ptr %1, align 8, !alias.scope !2580, !noalias !2583, !noundef !5 ; 2 uses
  %i.amv = lshr i64 %i.amu, 8                     ; 2 uses
  store i64 %i.amv, ptr %1, align 8, !alias.scope !2580, !noalias !2583
  %i.amw = load i8, ptr %i.acz, align 8, !alias.scope !2580, !noalias !2583, !noundef !5 ; 4 uses
  %i.amx = add i8 %i.amw, -8                      ; 2 uses
  store i8 %i.amx, ptr %i.acz, align 8, !alias.scope !2580, !noalias !2583
  %i.amy = icmp eq i8 %i.amx, 0
  br i1 %i.amy, label %bb.ii, label %bb.ih

.loopexit1343:                                    ; preds = %.preheader1342, %bb.ie, %.loopexit1345
  %i.amz = load i64, ptr %1, align 8, !alias.scope !2580, !noalias !2583, !noundef !5
  %i.ana = load i8, ptr %i.acz, align 8, !alias.scope !2580, !noalias !2583, !noundef !5
  %i.anb = sub i8 0, %i.ana
  %i.anc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.and = and i8 %i.anb, 63
  %i.ane = zext nneg i8 %i.and to i64
  %i.anf = shl i64 %i.amz, %i.ane
  store i64 %i.anf, ptr %i.anc, align 8, !alias.scope !2580, !noalias !2583
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread

bb.ih:                                            ; preds = %bb.ig
  %i.ang = sub i8 8, %i.amw
  %i.anh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ani = and i8 %i.ang, 63
  %i.anj = zext nneg i8 %i.ani to i64
  %i.ank = shl i64 %i.amv, %i.anj
  store i64 %i.ank, ptr %i.anh, align 8, !alias.scope !2580, !noalias !2583
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %i.anl = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i205), !noalias !2600 ; 2 uses
  %i.anm = extractvalue { i8, i8 } %i.anl, 0      ; 2 uses
  %i.ann = extractvalue { i8, i8 } %i.anl, 1
  store i8 %i.anm, ptr %i.adc, align 2, !alias.scope !2580, !noalias !2583
  store i8 %i.ann, ptr %i.ade, align 1, !alias.scope !2580, !noalias !2583
  %i.ano = icmp eq i8 %i.anm, 12
  br i1 %i.ano, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.anp = icmp eq i8 %.sroa.099.0.in.i205, -39
  br i1 %i.anp, label %bb.in, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread

bb.ik:                                            ; preds = %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !2586
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bi, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2600
  %i.anq = load i64, ptr %i.bi, align 8, !range !75, !noalias !2586, !noundef !5
  %i.anr = trunc nuw i64 %i.anq to i1
  %i.ans = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.ant = load i64, ptr %i.ans, align 8, !range !76, !noalias !2586, !noundef !5 ; 3 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  br i1 %i.anr, label %bb.il, label %bb.im, !prof !34

bb.il:                                            ; preds = %bb.ik
  %i.anv = load i64, ptr %i.anu, align 8, !noalias !2586
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ant, i64 %i.anv) #35, !noalias !2600
  unreachable

bb.im:                                            ; preds = %bb.ik
  %i.anw = load ptr, ptr %i.anu, align 8, !noalias !2586, !nonnull !5, !noundef !5 ; 2 uses
  %i.anx = icmp samesign ugt i64 %i.ant, 27
  call void @llvm.assume(i1 %i.anx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !2586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.anw, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !2600
  %i.any = ptrtoint ptr %i.anw to i64             ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift869 = and i64 %i.any, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread1275

bb.in:                                            ; preds = %bb.ij
  %i.anz = and i64 %i.amu, -256                   ; 2 uses
  store i64 %i.anz, ptr %1, align 8, !alias.scope !2580, !noalias !2583
  store i8 %i.amw, ptr %i.acz, align 8, !alias.scope !2580, !noalias !2583
  %i.aoa = sub i8 0, %i.amw
  %i.aob = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aoc = and i8 %i.aoa, 63
  %i.aod = zext nneg i8 %i.aoc to i64
  %i.aoe = shl i64 %i.anz, %i.aod
  store i64 %i.aoe, ptr %i.aob, align 8, !alias.scope !2580, !noalias !2583
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232: ; preds = %bb.gr
  %i.aof = ptrtoint ptr %i.aff to i64             ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift877 = and i64 %i.aof, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bn), !noalias !2600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !2586
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread1275

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread1275: ; preds = %bb.hs, %bb.go, %bb.im, %bb.hi, %bb.ic, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232
  %.sroa.0848.11286 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232 ], [ 0, %bb.hs ], [ 10, %bb.go ], [ 0, %bb.im ], [ 0, %bb.hi ], [ 0, %bb.ic ]
  %.sroa.33852.11284 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232 ], [ %i.ajg, %bb.hs ], [ undef, %bb.go ], [ %i.ant, %bb.im ], [ %i.ahd, %bb.hi ], [ %i.alj, %bb.ic ]
  %.sroa.42.sroa.0860.11283 = phi i64 [ %i.aof, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232 ], [ %i.ajl, %bb.hs ], [ 0, %bb.go ], [ %i.any, %bb.im ], [ %i.ahi, %bb.hi ], [ %i.alo, %bb.ic ]
  %.sroa.42.sroa.13.sroa.0879.11282 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift877, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232 ], [ %.sroa.42.sroa.13.0.extract.shift873, %bb.hs ], [ 0, %bb.go ], [ %.sroa.42.sroa.13.0.extract.shift869, %bb.im ], [ %.sroa.42.sroa.13.0.extract.shift875.a, %bb.hi ], [ %.sroa.42.sroa.13.0.extract.shift871, %bb.ic ]
  %.sroa.42.sroa.0860.0.insert.ext = and i64 %.sroa.42.sroa.0860.11283, 255
  %.sroa.42.sroa.0860.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0879.11282, %.sroa.42.sroa.0860.0.insert.ext
  store i8 %.sroa.0848.11286, ptr %0, align 8
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.4104.0..sroa_idx, align 1
  %.sroa.5105.sroa.4.0..sroa.5105.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.33852.11284, ptr %.sroa.5105.sroa.4.0..sroa.5105.0..sroa_idx.sroa_idx, align 8
  %.sroa.5105.sroa.5.0..sroa.5105.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.sroa.0860.0.insert.insert, ptr %.sroa.5105.sroa.5.0..sroa.5105.0..sroa_idx.sroa_idx, align 8
  %.sroa.5105.sroa.6.0..sroa.5105.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 28, ptr %.sroa.5105.sroa.6.0..sroa.5105.0..sroa_idx.sroa_idx, align 8
  br label %bb.ga

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread: ; preds = %bb.go, %bb.in, %bb.ij, %bb.gd, %.loopexit1343, %bb.hf, %bb.hj, %bb.hp, %bb.ht, %bb.hz, %bb.id, %bb.gf, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread1287
  %i.aog = getelementptr inbounds nuw i8, ptr %1, i64 34 ; 2 uses
  %i.aoh = load i8, ptr %i.aog, align 2, !noundef !5
  %.not1411760 = icmp ugt i8 %.sroa.0.4, %i.aoh
  br i1 %.not1411760, label %.loopexit1341, label %.lr.ph1762

.lr.ph1762:                                       ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit232.thread
  %i.aoi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 5 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.aom = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 13 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 8 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 13 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.aor = sub i16 0, %i.cc
  br label %bb.io

bb.io:                                            ; preds = %.lr.ph1762, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  %.sroa.0.51761 = phi i8 [ %.sroa.0.4, %.lr.ph1762 ], [ %i.azs, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ] ; 2 uses
  %i.aos = and i8 %.sroa.0.51761, 63
  %i.aot = zext nneg i8 %i.aos to i64
  %.sroa.051.0..sroa_stride = shl nuw nsw i64 %i.aot, 3
  %.sroa.051.0..sroa_idx = getelementptr inbounds nuw i8, ptr @10, i64 %.sroa.051.0..sroa_stride
  %i.aou = load i64, ptr %.sroa.051.0..sroa_idx, align 8
  %i.aov = and i64 %i.aou, 63
  %i.aow = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.aov ; 2 uses
  %i.aox = load i16, ptr %i.aow, align 2, !noundef !5 ; 4 uses
  %i.aoy = icmp eq i16 %i.aox, 0
  %.pr1293.pre = load i8, ptr %i.acz, align 8     ; 2 uses
  br i1 %i.aoy, label %thread-pre-split, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.aoz = load i64, ptr %i.aoi, align 8, !noundef !5 ; 2 uses
  %i.apa = call i8 @llvm.usub.sat.i8(i8 %.pr1293.pre, i8 1) ; 3 uses
  store i8 %i.apa, ptr %i.acz, align 8
  %i.apb = shl i64 %i.aoz, 1
  store i64 %i.apb, ptr %i.aoi, align 8
  %.not142 = icmp slt i64 %i.aoz, 0
  %i.apc = and i16 %i.aox, %i.cc
  %i.apd = icmp eq i16 %i.apc, 0
  %or.cond2523 = and i1 %.not142, %i.apd
  br i1 %or.cond2523, label %thread-pre-split.sink.split, label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.sink.split, %bb.io, %bb.ip
  %i.ape = phi i8 [ %i.apa, %bb.ip ], [ %.pr1293.pre, %bb.io ], [ %i.apa, %thread-pre-split.sink.split ]
  %i.apf = icmp eq i8 %i.ape, 0
  br i1 %i.apf, label %bb.iq, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

thread-pre-split.sink.split:                      ; preds = %bb.ip
  %i.apg = icmp slt i16 %i.aox, 0
  %.sink2521.p = select i1 %i.apg, i16 %i.aor, i16 %i.cc
  %.sink2521 = add i16 %i.aox, %.sink2521.p
  store i16 %.sink2521, ptr %i.aow, align 2
  br label %thread-pre-split

bb.iq:                                            ; preds = %thread-pre-split
  call void @llvm.experimental.noalias.scope.decl(metadata !2690)
  %i.aph = load i8, ptr %i.aoj, align 2, !range !7, !alias.scope !2690, !noalias !2693, !noundef !5
  %i.api = icmp ne i8 %i.aph, -1
  %i.apj = load i8, ptr %i.aol, align 1, !range !21, !alias.scope !2690, !noalias !2693
  %i.apk = trunc nuw i8 %i.apj to i1
  %or.cond.i = select i1 %i.api, i1 true, i1 %i.apk
  br i1 %or.cond.i, label %bb.ir, label %bb.is

.loopexit:                                        ; preds = %.preheader, %.loopexit1336, %bb.kz
  %i.apl = load i64, ptr %1, align 8, !alias.scope !2690, !noalias !2693, !noundef !5
  %i.apm = load i8, ptr %i.acz, align 8, !alias.scope !2690, !noalias !2693, !noundef !5
  %i.apn = sub i8 0, %i.apm
  %i.apo = and i8 %i.apn, 63
  %i.app = zext nneg i8 %i.apo to i64
  %i.apq = shl i64 %i.apl, %i.app
  store i64 %i.apq, ptr %i.aoi, align 8, !alias.scope !2690, !noalias !2693
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.ir:                                            ; preds = %bb.iq
  %i.apr = load i64, ptr %1, align 8, !alias.scope !2690, !noalias !2693, !noundef !5
  %i.aps = shl i64 %i.apr, 32
  store i64 %i.aps, ptr %1, align 8, !alias.scope !2690, !noalias !2693
  store i8 32, ptr %i.acz, align 8, !alias.scope !2690, !noalias !2693
  store i64 0, ptr %i.aoi, align 8, !alias.scope !2690, !noalias !2693
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.is:                                            ; preds = %bb.iq
  %i.apt = load i64, ptr %i.aom, align 8, !alias.scope !2690, !noalias !2693, !noundef !5
  %.not.i = icmp eq i64 %i.apt, 0
  br i1 %.not.i, label %bb.it, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread1317

bb.it:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !2696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !2696
  store i32 0, ptr %i.bs, align 4, !noalias !2696
  %.val28.i734 = load ptr, ptr %i.aon, align 8, !alias.scope !2697, !noalias !2700, !nonnull !5, !noundef !5
  %.val29.i735 = load i64, ptr %i.aoo, align 8, !alias.scope !2697, !noalias !2700, !noundef !5 ; 2 uses
  %.promoted1756 = load i64, ptr %i.aop, align 8, !alias.scope !2697, !noalias !2700
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.iz
  %.sroa.0.0.i4211757 = phi i64 [ 0, %bb.it ], [ %i.aqh, %bb.iz ] ; 6 uses
  %i.apu = phi i64 [ %.promoted1756, %bb.it ], [ %i.aqb, %bb.iz ] ; 3 uses
  %i.apv = sub nuw nsw i64 4, %.sroa.0.0.i4211757 ; 3 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.0.0.i4211757
  call void @llvm.experimental.noalias.scope.decl(metadata !2697)
  %..i.i736 = call noundef i64 @llvm.umin.i64(i64 %.val29.i735, i64 %i.apu) ; 4 uses
  %i.apx = add i64 %i.apu, %i.apv                 ; 2 uses
  %i.apy = icmp ult i64 %i.apx, %..i.i736
  br i1 %i.apy, label %bb.iw, label %bb.iv, !prof !34

bb.iv:                                            ; preds = %bb.iu
  %..i30.i737 = call noundef i64 @llvm.umin.i64(i64 %.val29.i735, i64 %i.apx) ; 2 uses
  %i.apz = sub nuw i64 %..i30.i737, %..i.i736     ; 6 uses
  %.not4.i.i738 = icmp ugt i64 %i.apz, %i.apv
  br i1 %.not4.i.i738, label %bb.ix, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit739, !prof !35

bb.iw:                                            ; preds = %bb.iu
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !2704
  unreachable

bb.ix:                                            ; preds = %bb.iv
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.apz, i64 noundef range(i64 0, -9223372036854775808) %i.apv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !2704
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit739: ; preds = %bb.iv
  %i.aqa = getelementptr inbounds nuw i8, ptr %.val28.i734, i64 %..i.i736
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.apw, i64 noundef %i.apz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aqa, i64 noundef %i.apz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !2708
  %i.aqb = add i64 %i.apz, %i.apu                 ; 6 uses
  store i64 %i.aqb, ptr %i.aop, align 8, !alias.scope !2697, !noalias !2700
  %i.aqc = icmp eq i64 %..i30.i737, %..i.i736
  br i1 %i.aqc, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit739
  call void @llvm.experimental.noalias.scope.decl(metadata !2709)
  %i.aqd = sub i64 %i.aqb, %.sroa.0.0.i4211757    ; 2 uses
  %i.aqe = icmp uge i64 %i.aqd, %i.aqb
  %i.aqf = icmp ne i64 %.sroa.0.0.i4211757, 0
  %i.aqg = and i1 %i.aqf, %i.aqe
  br i1 %i.aqg, label %bb.ja, label %bb.jb, !prof !34

bb.iz:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit739
  %i.aqh = add nuw nsw i64 %i.apz, %.sroa.0.0.i4211757 ; 2 uses
  %i.aqi = icmp ult i64 %i.aqh, 4
  br i1 %i.aqi, label %bb.iu, label %bb.jh

bb.ja:                                            ; preds = %bb.iy
  %i.aqj = call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 13) #32, !noalias !2712
  %i.aqk = ptrtoint ptr %i.aqj to i64
  br label %bb.jc

bb.jb:                                            ; preds = %bb.iy
  store i64 %i.aqd, ptr %i.aop, align 8, !alias.scope !2709, !noalias !2713
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja
  %.sroa.8.0.ph = phi i64 [ %i.aqk, %bb.ja ], [ %.sroa.0.0.i4211757, %bb.jb ]
  %.sroa.0941.0.ph = phi i64 [ -9223372036854775808, %bb.ja ], [ -9223372036854775806, %bb.jb ]
  store i64 %.sroa.0941.0.ph, ptr %i.bt, align 8, !noalias !2696
  store i64 %.sroa.8.0.ph, ptr %i.aoq, align 8, !noalias !2696
  store i64 4, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !2696
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jl
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bt), !noalias !2714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !2696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2715
  store i8 0, ptr %i.a, align 1, !noalias !2715
  call void @llvm.experimental.noalias.scope.decl(metadata !2718)
  %.val28.i744 = load ptr, ptr %i.aon, align 8, !alias.scope !2718, !noalias !2721, !nonnull !5, !noundef !5
  %.val29.i745 = load i64, ptr %i.aoo, align 8, !alias.scope !2718, !noalias !2721, !noundef !5 ; 2 uses
  %i.aql = load i64, ptr %i.aop, align 8, !alias.scope !2723, !noalias !2726, !noundef !5 ; 3 uses
  %..i.i746 = call noundef i64 @llvm.umin.i64(i64 %.val29.i745, i64 %i.aql) ; 3 uses
  %i.aqm = add i64 %i.aql, 1                      ; 2 uses
  %i.aqn = icmp ult i64 %i.aqm, %..i.i746
  br i1 %i.aqn, label %bb.jf, label %bb.je, !prof !34

bb.je:                                            ; preds = %bb.jd
  %..i30.i747 = call noundef i64 @llvm.umin.i64(i64 %.val29.i745, i64 %i.aqm)
  %i.aqo = sub nuw i64 %..i30.i747, %..i.i746     ; 5 uses
  %.not4.i.i748 = icmp ugt i64 %i.aqo, 1
  br i1 %.not4.i.i748, label %bb.jg, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit749, !prof !35

bb.jf:                                            ; preds = %bb.jd
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !2729
  unreachable

bb.jg:                                            ; preds = %bb.je
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aqo, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !2729
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit749: ; preds = %bb.je
  %i.aqp = getelementptr inbounds nuw i8, ptr %.val28.i744, i64 %..i.i746
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.a, i64 noundef %i.aqo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aqp, i64 noundef %i.aqo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !2730
  %i.aqq = add i64 %i.aqo, %i.aql                 ; 2 uses
  store i64 %i.aqq, ptr %i.aop, align 8, !alias.scope !2718, !noalias !2721
  %i.aqr = load i8, ptr %i.a, align 1, !noalias !2715, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2715
  %.val1.i.i754 = load i64, ptr %i.aoo, align 8, !alias.scope !2731, !noalias !2736, !noundef !5
  %i.aqs = icmp ule i64 %.val1.i.i754, %i.aqq
  %i.aqt = zext i8 %i.aqr to i64
  %i.aqu = zext i1 %i.aqs to i64
  %i.aqv = load i64, ptr %i.aom, align 8, !alias.scope !2690, !noalias !2693, !noundef !5
  %i.aqw = add i64 %i.aqv, %i.aqu
  store i64 %i.aqw, ptr %i.aom, align 8, !alias.scope !2690, !noalias !2693
  %i.aqx = load i64, ptr %1, align 8, !alias.scope !2690, !noalias !2693, !noundef !5
  %i.aqy = shl i64 %i.aqx, 8
  %i.aqz = or disjoint i64 %i.aqy, %i.aqt
  store i64 %i.aqz, ptr %1, align 8, !alias.scope !2690, !noalias !2693
  %i.ara = load i8, ptr %i.acz, align 8, !alias.scope !2690, !noalias !2693, !noundef !5
  %i.arb = add i8 %i.ara, 8
  store i8 %i.arb, ptr %i.acz, align 8, !alias.scope !2690, !noalias !2693
  %i.arc = icmp eq i8 %i.aqr, -1
  br i1 %i.arc, label %bb.jn, label %.loopexit1340

bb.jh:                                            ; preds = %bb.iz
  %.sroa.0112.0.copyload.i = load i32, ptr %i.bs, align 4, !noalias !2696 ; 2 uses
  store i32 %.sroa.0112.0.copyload.i, ptr %i.aoq, align 8, !noalias !2696
  store i64 -1, ptr %i.bt, align 8, !noalias !2696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !2696
  %i.ard = call i32 @llvm.bswap.i32(i32 %.sroa.0112.0.copyload.i) ; 3 uses
  %i.are = or i32 %i.ard, -2139062144
  %i.arf = add i32 %i.are, -2139062143
  %i.arg = and i32 %i.ard, -2139062144
  %i.arh = and i32 %i.arg, %i.arf
  %.not221.i = icmp eq i32 %i.arh, 0
  br i1 %.not221.i, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread1329, label %bb.ji
end_hunk_9
