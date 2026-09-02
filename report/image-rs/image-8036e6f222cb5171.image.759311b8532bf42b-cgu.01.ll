Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.01?download=true
inline.NumInlined: 1496
inline.NumDeleted: 531
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream16decode_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  %i.aaa = load i64, ptr %i.ak, align 8, !range !11, !noalias !251, !noundef !5
  %i.aab = trunc nuw i64 %i.aaa to i1
  %i.aac = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aad = load i64, ptr %i.aac, align 8, !range !12, !noalias !251, !noundef !5 ; 3 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  br i1 %i.aab, label %bb.fb, label %bb.fc, !prof !9

bb.fb:                                            ; preds = %bb.fa
  %i.aaf = load i64, ptr %i.aae, align 8, !noalias !251
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.aad, i64 %i.aaf) #35, !noalias !259
  unreachable

bb.fc:                                            ; preds = %bb.fa
  %i.aag = load ptr, ptr %i.aae, align 8, !noalias !251, !nonnull !5, !noundef !5 ; 2 uses
  %i.aah = icmp samesign ugt i64 %i.aad, 27
  call void @llvm.assume(i1 %i.aah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !251
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.aag, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !259
  %i.aai = ptrtoint ptr %i.aag to i64             ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.aai, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread545

bb.fd:                                            ; preds = %bb.ez
  %i.aaj = and i64 %i.zg, -256                    ; 2 uses
  store i64 %i.aaj, ptr %1, align 8, !alias.scope !249, !noalias !250
  store i8 %i.zi, ptr %i.bb, align 8, !alias.scope !249, !noalias !250
  %i.aak = sub i8 0, %i.zi
  %i.aal = and i8 %i.aak, 63
  %i.aam = zext nneg i8 %i.aal to i64
  %i.aan = shl i64 %i.aaj, %i.aam
  store i64 %i.aan, ptr %i.mj, align 8, !alias.scope !249, !noalias !250
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.cv
  %i.aao = ptrtoint ptr %i.se to i64              ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift291 = and i64 %i.aao, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !251
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread545

bb.fe:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread545, %bb.fk, %bb.fw, %bb.bz, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  ret void

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread545: ; preds = %bb.cn, %bb.ee, %bb.fc, %bb.dq, %bb.es, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0273.1556 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.ee ], [ 0, %bb.es ], [ 0, %bb.fc ], [ 0, %bb.dq ], [ 10, %bb.cn ]
  %.sroa.33.1554 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.vs, %bb.ee ], [ %i.xw, %bb.es ], [ %i.aad, %bb.fc ], [ %i.ue, %bb.dq ], [ undef, %bb.cn ]
  %.sroa.42.sroa.0.1553 = phi i64 [ %i.aao, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.vx, %bb.ee ], [ %i.yb, %bb.es ], [ %i.aai, %bb.fc ], [ %i.uj, %bb.dq ], [ 0, %bb.cn ]
  %.sroa.42.sroa.13.sroa.0.1552 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift291, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.42.sroa.13.0.extract.shift287, %bb.ee ], [ %.sroa.42.sroa.13.0.extract.shift285, %bb.es ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.fc ], [ %.sroa.42.sroa.13.0.extract.shift289, %bb.dq ], [ 0, %bb.cn ]
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
  %notmask = shl nsw i32 -1, %i.acg               ; 2 uses
  %8 = xor i32 %notmask, -1
  %9 = zext nneg i32 %i.acg to i64
  %i.acn = call noundef i64 @llvm.fshl.i64(i64 %i.ace, i64 %i.ace, i64 %9) ; 2 uses
  store i64 %i.acn, ptr %i.mj, align 8
  %10 = trunc i64 %i.acn to i32
  %11 = and i32 %10, %8                           ; 2 uses
  %i.aco = sub i8 %i.acb, %i.acm                  ; 2 uses
  store i8 %i.aco, ptr %i.bb, align 8
  %i.acp = add nuw nsw i32 %i.acg, 31
  %i.acq = and i32 %i.acp, 31
  %.neg = shl nsw i32 -1, %i.acq
  %i.acr = add nsw i32 %11, %.neg
  %i.acs = or disjoint i32 %notmask, 1
  %isneg = icmp slt i32 %i.acr, 0
  %i.act = select i1 %isneg, i32 %i.acs, i32 0
  %i.acu = add nsw i32 %i.act, %11                ; 2 uses
  store i32 %i.acu, ptr %i.aw, align 4
  %i.acv = and i64 %i.acl, 63
  %i.acw = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.acv
  %i.acx = load i64, ptr %i.acw, align 8, !noundef !5
  %i.acy = and i64 %i.acx, 63                     ; 2 uses
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.acy
  %i.ada = load i32, ptr %i.acz, align 4, !noundef !5
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.acy
  %i.adc = mul i32 %i.ada, %i.acu
  store i32 %i.adc, ptr %i.adb, align 4
  %i.add = add nuw nsw i64 %i.acl, 1
  br label %bb.fs

bb.fq:                                            ; preds = %bb.fo
  %i.ade = add nuw nsw i64 %.sroa.01.0706, 16
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fo
  %i.adf = trunc nuw nsw i64 %.sroa.01.0706 to i16
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.adf, ptr %i.adg, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.fk

bb.fs:                                            ; preds = %bb.fp, %bb.fq
  %i.adh = phi i8 [ %i.acb, %bb.fq ], [ %i.aco, %bb.fp ]
  %.sroa.01.1 = phi i64 [ %i.ade, %bb.fq ], [ %i.add, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fu, %bb.fs
  %i.adi = phi i8 [ %i.adh, %bb.fs ], [ %i.aea, %bb.fu ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.fs ], [ %i.aed, %bb.fu ] ; 2 uses
  %i.adj = icmp ult i64 %.sroa.01.2, 64
  br i1 %i.adj, label %bb.ca, label %bb.bz

bb.fu:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  %i.adk = lshr i16 %i.aas, 4
  %i.adl = and i16 %i.adk, 15
  %i.adm = zext nneg i16 %i.adl to i64
  %i.adn = add nuw nsw i64 %.sroa.01.0706, %i.adm ; 2 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.adn, i64 63)
  %i.ado = ashr i16 %i.aas, 8
  %i.adp = sext i16 %i.ado to i32
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %..i
  %i.adr = load i64, ptr %i.adq, align 8, !noundef !5
  %i.ads = and i64 %i.adr, 63                     ; 2 uses
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ads
  %i.adu = load i32, ptr %i.adt, align 4, !noundef !5
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ads
  %i.adw = mul i32 %i.adu, %i.adp
  store i32 %i.adw, ptr %i.adv, align 4
  %i.adx = trunc i16 %i.aas to i8
  %i.ady = and i8 %i.adx, 15                      ; 2 uses
  %i.adz = load i8, ptr %i.bb, align 8, !noundef !5
  %i.aea = call i8 @llvm.usub.sat.i8(i8 %i.adz, i8 %i.ady) ; 2 uses
  store i8 %i.aea, ptr %i.bb, align 8
  %i.aeb = zext nneg i8 %i.ady to i64
  %i.aec = shl i64 %i.aap, %i.aeb
  store i64 %i.aec, ptr %i.mj, align 8
  %i.aed = add nuw nsw i64 %i.adn, 1
  br label %bb.ft

bb.fv:                                            ; preds = %bb.bw
  %i.aee = load i64, ptr %i.ox, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ow, i64 %i.aee) #35
  unreachable

bb.fw:                                            ; preds = %bb.bw
  %i.aef = load ptr, ptr %i.ox, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aeg = icmp samesign ugt i64 %i.ow, 41
  tail call void @llvm.assume(i1 %i.aeg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.aef, ptr noundef nonnull align 1 dereferenceable(42) @11, i64 42, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ow, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aef, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !478
  %i.bg = icmp ult i8 %i.bc, 32
  br i1 %i.bg, label %bb.e, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.bi = icmp ne i8 %i.bf, -1
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.bk = load i8, ptr %i.bj, align 1, !range !8, !alias.scope !480, !noalias !481
  %i.bl = trunc nuw i8 %i.bk to i1
  %or.cond.i.i = select i1 %i.bi, i1 true, i1 %i.bl
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

.loopexit572:                                     ; preds = %.preheader571, %.loopexit574, %bb.be
  %i.bm = load i64, ptr %1, align 8, !alias.scope !480, !noalias !481, !noundef !5
  %i.bn = load i8, ptr %i.bb, align 8, !alias.scope !480, !noalias !481, !noundef !5
  %i.bo = sub i8 0, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = and i8 %i.bo, 63
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = shl i64 %i.bm, %i.br
  store i64 %i.bs, ptr %i.bp, align 8, !alias.scope !480, !noalias !481
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread

bb.f:                                             ; preds = %bb.e
  %i.bt = load i64, ptr %1, align 8, !alias.scope !480, !noalias !481, !noundef !5
  %i.bu = shl i64 %i.bt, 32                       ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream16decode_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
  %i.aaa = load i64, ptr %i.ak, align 8, !range !11, !noalias !520, !noundef !5
  %i.aab = trunc nuw i64 %i.aaa to i1
  %i.aac = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aad = load i64, ptr %i.aac, align 8, !range !12, !noalias !520, !noundef !5 ; 3 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  br i1 %i.aab, label %bb.fb, label %bb.fc, !prof !9

bb.fb:                                            ; preds = %bb.fa
  %i.aaf = load i64, ptr %i.aae, align 8, !noalias !520
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.aad, i64 %i.aaf) #35, !noalias !528
  unreachable

bb.fc:                                            ; preds = %bb.fa
  %i.aag = load ptr, ptr %i.aae, align 8, !noalias !520, !nonnull !5, !noundef !5 ; 2 uses
  %i.aah = icmp samesign ugt i64 %i.aad, 27
  call void @llvm.assume(i1 %i.aah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.aag, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !528
  %i.aai = ptrtoint ptr %i.aag to i64             ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.aai, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread545

bb.fd:                                            ; preds = %bb.ez
  %i.aaj = and i64 %i.zg, -256                    ; 2 uses
  store i64 %i.aaj, ptr %1, align 8, !alias.scope !518, !noalias !519
  store i8 %i.zi, ptr %i.bb, align 8, !alias.scope !518, !noalias !519
  %i.aak = sub i8 0, %i.zi
  %i.aal = and i8 %i.aak, 63
  %i.aam = zext nneg i8 %i.aal to i64
  %i.aan = shl i64 %i.aaj, %i.aam
  store i64 %i.aan, ptr %i.mj, align 8, !alias.scope !518, !noalias !519
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.cv
  %i.aao = ptrtoint ptr %i.se to i64              ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift291 = and i64 %i.aao, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !520
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread545

bb.fe:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread545, %bb.fk, %bb.fw, %bb.bz, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  ret void

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread545: ; preds = %bb.cn, %bb.ee, %bb.fc, %bb.dq, %bb.es, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0273.1556 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.ee ], [ 0, %bb.es ], [ 0, %bb.fc ], [ 0, %bb.dq ], [ 10, %bb.cn ]
  %.sroa.33.1554 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.vs, %bb.ee ], [ %i.xw, %bb.es ], [ %i.aad, %bb.fc ], [ %i.ue, %bb.dq ], [ undef, %bb.cn ]
  %.sroa.42.sroa.0.1553 = phi i64 [ %i.aao, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.vx, %bb.ee ], [ %i.yb, %bb.es ], [ %i.aai, %bb.fc ], [ %i.uj, %bb.dq ], [ 0, %bb.cn ]
  %.sroa.42.sroa.13.sroa.0.1552 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift291, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.42.sroa.13.0.extract.shift287, %bb.ee ], [ %.sroa.42.sroa.13.0.extract.shift285, %bb.es ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.fc ], [ %.sroa.42.sroa.13.0.extract.shift289, %bb.dq ], [ 0, %bb.cn ]
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
  %notmask = shl nsw i32 -1, %i.acg               ; 2 uses
  %8 = xor i32 %notmask, -1
  %9 = zext nneg i32 %i.acg to i64
  %i.acn = call noundef i64 @llvm.fshl.i64(i64 %i.ace, i64 %i.ace, i64 %9) ; 2 uses
  store i64 %i.acn, ptr %i.mj, align 8
  %10 = trunc i64 %i.acn to i32
  %11 = and i32 %10, %8                           ; 2 uses
  %i.aco = sub i8 %i.acb, %i.acm                  ; 2 uses
  store i8 %i.aco, ptr %i.bb, align 8
  %i.acp = add nuw nsw i32 %i.acg, 31
  %i.acq = and i32 %i.acp, 31
  %.neg = shl nsw i32 -1, %i.acq
  %i.acr = add nsw i32 %11, %.neg
  %i.acs = or disjoint i32 %notmask, 1
  %isneg = icmp slt i32 %i.acr, 0
  %i.act = select i1 %isneg, i32 %i.acs, i32 0
  %i.acu = add nsw i32 %i.act, %11                ; 2 uses
  store i32 %i.acu, ptr %i.aw, align 4
  %i.acv = and i64 %i.acl, 63
  %i.acw = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.acv
  %i.acx = load i64, ptr %i.acw, align 8, !noundef !5
  %i.acy = and i64 %i.acx, 63                     ; 2 uses
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.acy
  %i.ada = load i32, ptr %i.acz, align 4, !noundef !5
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.acy
  %i.adc = mul i32 %i.ada, %i.acu
  store i32 %i.adc, ptr %i.adb, align 4
  %i.add = add nuw nsw i64 %i.acl, 1
  br label %bb.fs

bb.fq:                                            ; preds = %bb.fo
  %i.ade = add nuw nsw i64 %.sroa.01.0706, 16
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fo
  %i.adf = trunc nuw nsw i64 %.sroa.01.0706 to i16
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.adf, ptr %i.adg, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.fk

bb.fs:                                            ; preds = %bb.fp, %bb.fq
  %i.adh = phi i8 [ %i.acb, %bb.fq ], [ %i.aco, %bb.fp ]
  %.sroa.01.1 = phi i64 [ %i.ade, %bb.fq ], [ %i.add, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fu, %bb.fs
  %i.adi = phi i8 [ %i.adh, %bb.fs ], [ %i.aea, %bb.fu ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.fs ], [ %i.aed, %bb.fu ] ; 2 uses
  %i.adj = icmp ult i64 %.sroa.01.2, 64
  br i1 %i.adj, label %bb.ca, label %bb.bz

bb.fu:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  %i.adk = lshr i16 %i.aas, 4
  %i.adl = and i16 %i.adk, 15
  %i.adm = zext nneg i16 %i.adl to i64
  %i.adn = add nuw nsw i64 %.sroa.01.0706, %i.adm ; 2 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.adn, i64 63)
  %i.ado = ashr i16 %i.aas, 8
  %i.adp = sext i16 %i.ado to i32
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %..i
  %i.adr = load i64, ptr %i.adq, align 8, !noundef !5
  %i.ads = and i64 %i.adr, 63                     ; 2 uses
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ads
  %i.adu = load i32, ptr %i.adt, align 4, !noundef !5
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ads
  %i.adw = mul i32 %i.adu, %i.adp
  store i32 %i.adw, ptr %i.adv, align 4
  %i.adx = trunc i16 %i.aas to i8
  %i.ady = and i8 %i.adx, 15                      ; 2 uses
  %i.adz = load i8, ptr %i.bb, align 8, !noundef !5
  %i.aea = call i8 @llvm.usub.sat.i8(i8 %i.adz, i8 %i.ady) ; 2 uses
  store i8 %i.aea, ptr %i.bb, align 8
  %i.aeb = zext nneg i8 %i.ady to i64
  %i.aec = shl i64 %i.aap, %i.aeb
  store i64 %i.aec, ptr %i.mj, align 8
  %i.aed = add nuw nsw i64 %i.adn, 1
  br label %bb.ft

bb.fv:                                            ; preds = %bb.bw
  %i.aee = load i64, ptr %i.ox, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ow, i64 %i.aee) #35
  unreachable

bb.fw:                                            ; preds = %bb.bw
  %i.aef = load ptr, ptr %i.ox, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aeg = icmp samesign ugt i64 %i.ow, 41
  tail call void @llvm.assume(i1 %i.aeg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.aef, ptr noundef nonnull align 1 dereferenceable(42) @11, i64 42, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ow, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aef, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
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
  %.sink927.sroa.gep = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sink927.sroa.gep1196 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sink927.sroa.gep1198 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sink927.sroa.gep1199 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br i1 %i.ay, label %bb.b, label %bb.cz, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 2450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !826
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 59 uses
  %i.bb = load i8, ptr %i.ba, align 8, !alias.scope !823, !noalias !827, !noundef !5 ; 4 uses
  %i.bc = icmp ult i8 %i.bb, 32
  br i1 %i.bc, label %bb.c, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 5 uses
  %i.be = load i8, ptr %i.bd, align 2, !range !7, !alias.scope !829, !noalias !830, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.bg = icmp ne i8 %i.be, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.bi = load i8, ptr %i.bh, align 1, !range !8, !alias.scope !829, !noalias !830
  %i.bj = trunc nuw i8 %i.bi to i1
  %or.cond.i.i = select i1 %i.bg, i1 true, i1 %i.bj
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

.loopexit.i:                                      ; preds = %.preheader.i, %bb.ce, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit202
  %i.bk = load i64, ptr %1, align 8, !alias.scope !829, !noalias !830, !noundef !5
  %i.bl = load i8, ptr %i.ba, align 8, !alias.scope !829, !noalias !830, !noundef !5
  %i.bm = sub i8 0, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = and i8 %i.bm, 63
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = shl i64 %i.bk, %i.bp
  store i64 %i.bq, ptr %i.bn, align 8, !alias.scope !829, !noalias !830
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.br = load i64, ptr %1, align 8, !alias.scope !829, !noalias !830, !noundef !5
  %i.bs = shl i64 %i.br, 32                       ; 2 uses
  store i64 %i.bs, ptr %1, align 8, !alias.scope !829, !noalias !830
  %i.bt = or disjoint i8 %i.bb, 32
  store i8 %i.bt, ptr %i.ba, align 8, !alias.scope !829, !noalias !830
  %i.bu = sub nuw nsw i8 32, %i.bb
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bw = zext nneg i8 %i.bu to i64
  %i.bx = shl i64 %i.bs, %i.bw
  store i64 %i.bx, ptr %i.bv, align 8, !alias.scope !829, !noalias !830
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.e:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream19decode_mcu_ac_firstINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1490
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1498
  %i.lp = load i64, ptr %i.m, align 8, !range !11, !noalias !1490, !noundef !5
  %i.lq = trunc nuw i64 %i.lp to i1
  %i.lr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ls = load i64, ptr %i.lr, align 8, !range !12, !noalias !1490, !noundef !5 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.lq, label %bb.cq, label %bb.cr, !prof !9

bb.cq:                                            ; preds = %bb.cp
  %i.lu = load i64, ptr %i.lt, align 8, !noalias !1490
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ls, i64 %i.lu) #35, !noalias !1498
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.lv = load ptr, ptr %i.lt, align 8, !noalias !1490, !nonnull !5, !noundef !5 ; 2 uses
  %i.lw = icmp samesign ugt i64 %i.ls, 27
  call void @llvm.assume(i1 %i.lw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1490
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.lv, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !1498
  %i.lx = ptrtoint ptr %i.lv to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.lx, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread305

bb.cs:                                            ; preds = %bb.co
  %i.ly = and i64 %i.kv, -256                     ; 2 uses
  store i64 %i.ly, ptr %1, align 8, !alias.scope !1488, !noalias !1489
  store i8 %i.kx, ptr %i.ah, align 8, !alias.scope !1488, !noalias !1489
  %i.lz = sub i8 0, %i.kx
  %i.ma = and i8 %i.lz, 63
  %i.mb = zext nneg i8 %i.ma to i64
  %i.mc = shl i64 %i.ly, %i.mb
  store i64 %i.mc, ptr %i.aq, align 8, !alias.scope !1488, !noalias !1489
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.y
  %i.md = ptrtoint ptr %i.dk to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift218 = and i64 %i.md, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !noalias !1498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1490
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread305

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread305: ; preds = %bb.q, %bb.bn, %bb.cr, %bb.au, %bb.cd, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0.1316 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.bn ], [ 0, %bb.cd ], [ 0, %bb.cr ], [ 0, %bb.au ], [ 10, %bb.q ]
  %.sroa.33.1314 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.hs, %bb.bn ], [ %i.jy, %bb.cd ], [ %i.ls, %bb.cr ], [ %i.fl, %bb.au ], [ undef, %bb.q ]
  %.sroa.42.sroa.0.1313 = phi i64 [ %i.md, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.hx, %bb.bn ], [ %i.kd, %bb.cd ], [ %i.lx, %bb.cr ], [ %i.fq, %bb.au ], [ 0, %bb.q ]
  %.sroa.42.sroa.13.sroa.0.1312 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift218, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.42.sroa.13.0.extract.shift214, %bb.bn ], [ %.sroa.42.sroa.13.0.extract.shift212, %bb.cd ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.cr ], [ %.sroa.42.sroa.13.0.extract.shift216, %bb.au ], [ 0, %bb.q ]
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
  %notmask = shl nsw i32 -1, %i.nv                ; 2 uses
  %5 = xor i32 %notmask, -1
  %6 = zext nneg i32 %i.nv to i64
  %i.oc = call noundef i64 @llvm.fshl.i64(i64 %i.nt, i64 %i.nt, i64 %6) ; 2 uses
  store i64 %i.oc, ptr %i.aq, align 8
  %7 = trunc i64 %i.oc to i32
  %8 = and i32 %7, %5                             ; 2 uses
  %i.od = sub i8 %i.nq, %i.ob                     ; 2 uses
  store i8 %i.od, ptr %i.ah, align 8
  %i.oe = add nuw nsw i32 %i.nv, 31
  %i.of = and i32 %i.oe, 31
  %.neg = shl nsw i32 -1, %i.of
  %i.og = add nsw i32 %8, %.neg
  %i.oh = or disjoint i32 %notmask, 1
  %isneg = icmp slt i32 %i.og, 0
  %i.oi = select i1 %isneg, i32 %i.oh, i32 0
  %i.oj = add nsw i32 %i.oi, %8                   ; 2 uses
  store i32 %i.oj, ptr %i.x, align 4
  %i.ok = trunc nsw i32 %i.oj to i16
  %i.ol = mul i16 %i.ad, %i.ok
  %i.om = and i64 %i.oa, 63
  %i.on = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.om
  %i.oo = load i64, ptr %i.on, align 8, !noundef !5
  %i.op = and i64 %i.oo, 63
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.op
  store i16 %i.ol, ptr %i.oq, align 2
  %i.or = add nuw nsw i64 %i.oa, 1
  br label %bb.dg

bb.de:                                            ; preds = %bb.dc
  %i.os = add nuw nsw i64 %.sroa.01.0, 16
  br label %bb.dg

bb.df:                                            ; preds = %bb.dc
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ou = trunc nuw nsw i32 %i.nu to i8
  %notmask66 = shl nsw i32 -1, %i.nu
  %9 = xor i32 %notmask66, -1
  %i.ov = zext nneg i32 %i.nu to i64
  %i.ow = call noundef i64 @llvm.fshl.i64(i64 %i.nt, i64 %i.nt, i64 %i.ov) ; 2 uses
  store i64 %i.ow, ptr %i.aq, align 8
  %10 = trunc i64 %i.ow to i32
  %11 = and i32 %10, %9
  %i.ox = sub i8 %i.nq, %i.ou
  store i8 %i.ox, ptr %i.ah, align 8
  %notmask737 = shl nsw i32 -1, %i.nu
  %i.oy = xor i32 %notmask737, -1
  %i.oz = add nuw i32 %11, %i.oy
  store i32 %i.oz, ptr %i.ot, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.loopexit330

bb.dg:                                            ; preds = %bb.dd, %bb.de
  %i.pa = phi i8 [ %i.nq, %bb.de ], [ %i.od, %bb.dd ]
  %.sroa.01.1 = phi i64 [ %i.os, %bb.de ], [ %i.or, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.dh

.loopexit330:                                     ; preds = %bb.dh, %bb.df
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.pb, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.di

bb.dh:                                            ; preds = %bb.dj, %bb.dg
  %i.pc = phi i8 [ %i.pa, %bb.dg ], [ %i.pt, %bb.dj ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.dg ], [ %i.pw, %bb.dj ] ; 2 uses
  %i.pd = load i8, ptr %i.au, align 2, !noundef !5
  %i.pe = zext i8 %i.pd to i64
  %i.pf = icmp ugt i64 %.sroa.01.2, %i.pe
  br i1 %i.pf, label %.loopexit330, label %bb.d

bb.di:                                            ; preds = %.loopexit330, %bb.cy, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

bb.dj:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  %i.pg = lshr i16 %i.mh, 4
  %i.ph = and i16 %i.pg, 15
  %i.pi = zext nneg i16 %i.ph to i64
  %i.pj = add nuw nsw i64 %.sroa.01.0, %i.pi      ; 2 uses
  %i.pk = ashr i16 %i.mh, 8
  %i.pl = mul i16 %i.pk, %i.ad
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.pj, i64 63)
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %..i
  %i.pn = load i64, ptr %i.pm, align 8, !noundef !5
  %i.po = and i64 %i.pn, 63
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.po
  store i16 %i.pl, ptr %i.pp, align 2
  %i.pq = trunc i16 %i.mh to i8
  %i.pr = and i8 %i.pq, 15                        ; 2 uses
  %i.ps = load i8, ptr %i.ah, align 8, !noundef !5
  %i.pt = call i8 @llvm.usub.sat.i8(i8 %i.ps, i8 %i.pr) ; 2 uses
  store i8 %i.pt, ptr %i.ah, align 8
  %i.pu = zext nneg i8 %i.pr to i64
  %i.pv = shl i64 %i.me, %i.pu
  store i64 %i.pv, ptr %i.aq, align 8
  %i.pw = add nuw nsw i64 %i.pj, 1
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
  %.pre = load i8, ptr %i.ah, align 8, !alias.scope !1652, !noalias !1653
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #31
  unreachable

bb.d:                                             ; preds = %bb.dh, %bb.b
  %i.av = phi i8 [ %.pre, %bb.b ], [ %i.pc, %bb.dh ] ; 4 uses
  %.sroa.01.0 = phi i64 [ %i.ag, %bb.b ], [ %.sroa.01.2, %bb.dh ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1652)
  %i.aw = icmp ult i8 %i.av, 32
  br i1 %i.aw, label %bb.e, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ax = load i8, ptr %i.ai, align 2, !range !7, !alias.scope !1652, !noalias !1653, !noundef !5
  %i.ay = icmp ne i8 %i.ax, -1
  %i.az = load i8, ptr %i.ak, align 1, !range !8, !alias.scope !1652, !noalias !1653
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond.i = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = load i64, ptr %1, align 8, !alias.scope !1652, !noalias !1653, !noundef !5
  %i.bc = shl i64 %i.bb, 32                       ; 2 uses
  store i64 %i.bc, ptr %1, align 8, !alias.scope !1652, !noalias !1653
  %i.bd = or disjoint i8 %i.av, 32
  store i8 %i.bd, ptr %i.ah, align 8, !alias.scope !1652, !noalias !1653
  %i.be = sub nuw nsw i8 32, %i.av
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = shl i64 %i.bc, %i.bf
  store i64 %i.bg, ptr %i.aq, align 8, !alias.scope !1652, !noalias !1653
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.bh = load i64, ptr %i.al, align 8, !alias.scope !1652, !noalias !1653, !noundef !5
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1654
  store i32 0, ptr %i.q, align 4, !noalias !1654
  %.val28.i = load ptr, ptr %i.am, align 8, !alias.scope !1655, !noalias !1656, !nonnull !5, !noundef !5 ; 9 uses
  %.val29.i = load i64, ptr %i.an, align 8, !alias.scope !1655, !noalias !1656, !noundef !5 ; 20 uses
  %.promoted = load i64, ptr %i.ao, align 8, !alias.scope !1655, !noalias !1656
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.n
  %.sroa.0.0.i465 = phi i64 [ 0, %bb.h ], [ %i.bv, %bb.n ] ; 6 uses
  %i.bi = phi i64 [ %.promoted, %bb.h ], [ %i.bp, %bb.n ] ; 3 uses
  %i.bj = sub nuw nsw i64 4, %.sroa.0.0.i465      ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i465
  call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.bi) ; 4 uses
  %i.bl = add i64 %i.bi, %i.bj                    ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %..i.i
  br i1 %i.bm, label %bb.k, label %bb.j, !prof !9

bb.j:                                             ; preds = %bb.i
  %..i30.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.bl) ; 2 uses
  %i.bn = sub nuw i64 %..i30.i, %..i.i            ; 6 uses
  %.not4.i.i = icmp ugt i64 %i.bn, %i.bj
  br i1 %.not4.i.i, label %bb.l, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit, !prof !10

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !1657
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bn, i64 noundef range(i64 0, -9223372036854775808) %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !1657
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.val28.i, i64 %..i.i
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.bk, i64 noundef %i.bn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef %i.bn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1658
  %i.bp = add i64 %i.bn, %i.bi                    ; 7 uses
  store i64 %i.bp, ptr %i.ao, align 8, !alias.scope !1655, !noalias !1656
  %i.bq = icmp eq i64 %..i30.i, %..i.i
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1659)
  %i.br = sub i64 %i.bp, %.sroa.0.0.i465          ; 3 uses
  %i.bs = icmp uge i64 %i.br, %i.bp
  %i.bt = icmp ne i64 %.sroa.0.0.i465, 0
  %i.bu = and i1 %i.bt, %i.bs
  br i1 %i.bu, label %bb.o, label %bb.p, !prof !9

bb.n:                                             ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit
end_hunk_2
begin_hunk_3_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream19decode_mcu_ac_firstINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1654
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1662
  %i.lp = load i64, ptr %i.m, align 8, !range !11, !noalias !1654, !noundef !5
  %i.lq = trunc nuw i64 %i.lp to i1
  %i.lr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ls = load i64, ptr %i.lr, align 8, !range !12, !noalias !1654, !noundef !5 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.lq, label %bb.cq, label %bb.cr, !prof !9

bb.cq:                                            ; preds = %bb.cp
  %i.lu = load i64, ptr %i.lt, align 8, !noalias !1654
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ls, i64 %i.lu) #35, !noalias !1662
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.lv = load ptr, ptr %i.lt, align 8, !noalias !1654, !nonnull !5, !noundef !5 ; 2 uses
  %i.lw = icmp samesign ugt i64 %i.ls, 27
  call void @llvm.assume(i1 %i.lw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.lv, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !1662
  %i.lx = ptrtoint ptr %i.lv to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.lx, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread305

bb.cs:                                            ; preds = %bb.co
  %i.ly = and i64 %i.kv, -256                     ; 2 uses
  store i64 %i.ly, ptr %1, align 8, !alias.scope !1652, !noalias !1653
  store i8 %i.kx, ptr %i.ah, align 8, !alias.scope !1652, !noalias !1653
  %i.lz = sub i8 0, %i.kx
  %i.ma = and i8 %i.lz, 63
  %i.mb = zext nneg i8 %i.ma to i64
  %i.mc = shl i64 %i.ly, %i.mb
  store i64 %i.mc, ptr %i.aq, align 8, !alias.scope !1652, !noalias !1653
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.y
  %i.md = ptrtoint ptr %i.dk to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift218 = and i64 %i.md, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !noalias !1662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1654
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread305

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread305: ; preds = %bb.q, %bb.bn, %bb.cr, %bb.au, %bb.cd, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0.1316 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.bn ], [ 0, %bb.cd ], [ 0, %bb.cr ], [ 0, %bb.au ], [ 10, %bb.q ]
  %.sroa.33.1314 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.hs, %bb.bn ], [ %i.jy, %bb.cd ], [ %i.ls, %bb.cr ], [ %i.fl, %bb.au ], [ undef, %bb.q ]
  %.sroa.42.sroa.0.1313 = phi i64 [ %i.md, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.hx, %bb.bn ], [ %i.kd, %bb.cd ], [ %i.lx, %bb.cr ], [ %i.fq, %bb.au ], [ 0, %bb.q ]
  %.sroa.42.sroa.13.sroa.0.1312 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift218, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.42.sroa.13.0.extract.shift214, %bb.bn ], [ %.sroa.42.sroa.13.0.extract.shift212, %bb.cd ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.cr ], [ %.sroa.42.sroa.13.0.extract.shift216, %bb.au ], [ 0, %bb.q ]
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
  %notmask = shl nsw i32 -1, %i.nv                ; 2 uses
  %5 = xor i32 %notmask, -1
  %6 = zext nneg i32 %i.nv to i64
  %i.oc = call noundef i64 @llvm.fshl.i64(i64 %i.nt, i64 %i.nt, i64 %6) ; 2 uses
  store i64 %i.oc, ptr %i.aq, align 8
  %7 = trunc i64 %i.oc to i32
  %8 = and i32 %7, %5                             ; 2 uses
  %i.od = sub i8 %i.nq, %i.ob                     ; 2 uses
  store i8 %i.od, ptr %i.ah, align 8
  %i.oe = add nuw nsw i32 %i.nv, 31
  %i.of = and i32 %i.oe, 31
  %.neg = shl nsw i32 -1, %i.of
  %i.og = add nsw i32 %8, %.neg
  %i.oh = or disjoint i32 %notmask, 1
  %isneg = icmp slt i32 %i.og, 0
  %i.oi = select i1 %isneg, i32 %i.oh, i32 0
  %i.oj = add nsw i32 %i.oi, %8                   ; 2 uses
  store i32 %i.oj, ptr %i.x, align 4
  %i.ok = trunc nsw i32 %i.oj to i16
  %i.ol = mul i16 %i.ad, %i.ok
  %i.om = and i64 %i.oa, 63
  %i.on = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.om
  %i.oo = load i64, ptr %i.on, align 8, !noundef !5
  %i.op = and i64 %i.oo, 63
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.op
  store i16 %i.ol, ptr %i.oq, align 2
  %i.or = add nuw nsw i64 %i.oa, 1
  br label %bb.dg

bb.de:                                            ; preds = %bb.dc
  %i.os = add nuw nsw i64 %.sroa.01.0, 16
  br label %bb.dg

bb.df:                                            ; preds = %bb.dc
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ou = trunc nuw nsw i32 %i.nu to i8
  %notmask66 = shl nsw i32 -1, %i.nu
  %9 = xor i32 %notmask66, -1
  %i.ov = zext nneg i32 %i.nu to i64
  %i.ow = call noundef i64 @llvm.fshl.i64(i64 %i.nt, i64 %i.nt, i64 %i.ov) ; 2 uses
  store i64 %i.ow, ptr %i.aq, align 8
  %10 = trunc i64 %i.ow to i32
  %11 = and i32 %10, %9
  %i.ox = sub i8 %i.nq, %i.ou
  store i8 %i.ox, ptr %i.ah, align 8
  %notmask737 = shl nsw i32 -1, %i.nu
  %i.oy = xor i32 %notmask737, -1
  %i.oz = add nuw i32 %11, %i.oy
  store i32 %i.oz, ptr %i.ot, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.loopexit330

bb.dg:                                            ; preds = %bb.dd, %bb.de
  %i.pa = phi i8 [ %i.nq, %bb.de ], [ %i.od, %bb.dd ]
  %.sroa.01.1 = phi i64 [ %i.os, %bb.de ], [ %i.or, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.dh

.loopexit330:                                     ; preds = %bb.dh, %bb.df
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.pb, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.di

bb.dh:                                            ; preds = %bb.dj, %bb.dg
  %i.pc = phi i8 [ %i.pa, %bb.dg ], [ %i.pt, %bb.dj ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.dg ], [ %i.pw, %bb.dj ] ; 2 uses
  %i.pd = load i8, ptr %i.au, align 2, !noundef !5
  %i.pe = zext i8 %i.pd to i64
  %i.pf = icmp ugt i64 %.sroa.01.2, %i.pe
  br i1 %i.pf, label %.loopexit330, label %bb.d

bb.di:                                            ; preds = %.loopexit330, %bb.cy, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

bb.dj:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  %i.pg = lshr i16 %i.mh, 4
  %i.ph = and i16 %i.pg, 15
  %i.pi = zext nneg i16 %i.ph to i64
  %i.pj = add nuw nsw i64 %.sroa.01.0, %i.pi      ; 2 uses
  %i.pk = ashr i16 %i.mh, 8
  %i.pl = mul i16 %i.pk, %i.ad
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.pj, i64 63)
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %..i
  %i.pn = load i64, ptr %i.pm, align 8, !noundef !5
  %i.po = and i64 %i.pn, 63
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.po
  store i16 %i.pl, ptr %i.pp, align 2
  %i.pq = trunc i16 %i.mh to i8
  %i.pr = and i8 %i.pq, 15                        ; 2 uses
  %i.ps = load i8, ptr %i.ah, align 8, !noundef !5
  %i.pt = call i8 @llvm.usub.sat.i8(i8 %i.ps, i8 %i.pr) ; 2 uses
  store i8 %i.pt, ptr %i.ah, align 8
  %i.pu = zext nneg i8 %i.pr to i64
  %i.pv = shl i64 %i.me, %i.pu
  store i64 %i.pv, ptr %i.aq, align 8
  %i.pw = add nuw nsw i64 %i.pj, 1
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
  br i1 %i.ch, label %.preheader1368, label %bb.fx

.preheader1368:                                   ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 56 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 11 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 35 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 18 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 13 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 20 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 30 uses
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
  %.pre = load i8, ptr %i.ci, align 8, !alias.scope !2108, !noalias !2109
  %i.da = sub i16 0, %i.cc
  br label %bb.b

bb.b:                                             ; preds = %.preheader1368, %bb.fw
  %i.db = phi i8 [ %i.qa, %bb.fw ], [ %.pre, %.preheader1368 ] ; 4 uses
  %.sroa.0.0 = phi i8 [ %i.acf, %bb.fw ], [ %i.ce, %.preheader1368 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2108)
  %i.dc = icmp ult i8 %i.db, 32
  br i1 %i.dc, label %bb.c, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread

bb.c:                                             ; preds = %bb.b
  %i.dd = load i8, ptr %i.cj, align 2, !range !7, !alias.scope !2108, !noalias !2109, !noundef !5
  %i.de = icmp ne i8 %i.dd, -1
  %i.df = load i8, ptr %i.cl, align 1, !range !8, !alias.scope !2108, !noalias !2109
  %i.dg = trunc nuw i8 %i.df to i1
  %or.cond.i345 = select i1 %i.de, i1 true, i1 %i.dg
  br i1 %or.cond.i345, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dh = load i64, ptr %1, align 8, !alias.scope !2108, !noalias !2109, !noundef !5
  %i.di = shl i64 %i.dh, 32                       ; 2 uses
  store i64 %i.di, ptr %1, align 8, !alias.scope !2108, !noalias !2109
  %i.dj = or disjoint i8 %i.db, 32
  store i8 %i.dj, ptr %i.ci, align 8, !alias.scope !2108, !noalias !2109
  %i.dk = sub nuw nsw i8 32, %i.db
  %i.dl = zext nneg i8 %i.dk to i64
  %i.dm = shl i64 %i.di, %i.dl
  store i64 %i.dm, ptr %i.cr, align 8, !alias.scope !2108, !noalias !2109
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread

bb.e:                                             ; preds = %bb.c
end_hunk_3
begin_hunk_4_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream20decode_mcu_ac_refineINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2120
  %i.ng = load i64, ptr %i.aw, align 8, !range !11, !noalias !2110, !noundef !5
  %i.nh = trunc nuw i64 %i.ng to i1
  %i.ni = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.nj = load i64, ptr %i.ni, align 8, !range !12, !noalias !2110, !noundef !5 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  br i1 %i.nh, label %bb.bw, label %bb.bx, !prof !9

bb.bw:                                            ; preds = %bb.bv
  %i.nl = load i64, ptr %i.nk, align 8, !noalias !2110
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.nj, i64 %i.nl) #35, !noalias !2120
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.nm = load ptr, ptr %i.nk, align 8, !noalias !2110, !nonnull !5, !noundef !5 ; 2 uses
  %i.nn = icmp samesign ugt i64 %i.nj, 27
  call void @llvm.assume(i1 %i.nn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.nm, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !2120
  %i.no = ptrtoint ptr %i.nm to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.no, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread1194

bb.by:                                            ; preds = %bb.bu
  %i.np = and i64 %i.mm, -256                     ; 2 uses
  store i64 %i.np, ptr %1, align 8, !alias.scope !2108, !noalias !2109
  store i8 %i.mo, ptr %i.ci, align 8, !alias.scope !2108, !noalias !2109
  %i.nq = sub i8 0, %i.mo
  %i.nr = and i8 %i.nq, 63
  %i.ns = zext nneg i8 %i.nr to i64
  %i.nt = shl i64 %i.np, %i.ns
  store i64 %i.nt, ptr %i.cr, align 8, !alias.scope !2108, !noalias !2109
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408: ; preds = %bb.w
  %i.nu = ptrtoint ptr %i.fo to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift805 = and i64 %i.nu, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb), !noalias !2120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2110
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread1194

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread1194: ; preds = %bb.o, %bb.bd, %bb.bx, %bb.ap, %bb.bn, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408
  %.sroa.0.111711205 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408 ], [ 0, %bb.bd ], [ 0, %bb.bn ], [ 0, %bb.bx ], [ 0, %bb.ap ], [ 10, %bb.o ]
  %.sroa.33.11203 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408 ], [ %i.jb, %bb.bd ], [ %i.lc, %bb.bn ], [ %i.nj, %bb.bx ], [ %i.hn, %bb.ap ], [ undef, %bb.o ]
  %.sroa.42.sroa.0.11202 = phi i64 [ %i.nu, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408 ], [ %i.jg, %bb.bd ], [ %i.lh, %bb.bn ], [ %i.no, %bb.bx ], [ %i.hs, %bb.ap ], [ 0, %bb.o ]
  %.sroa.42.sroa.13.sroa.0.11201 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift805, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408 ], [ %.sroa.42.sroa.13.0.extract.shift801, %bb.bd ], [ %.sroa.42.sroa.13.0.extract.shift799, %bb.bn ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.bx ], [ %.sroa.42.sroa.13.0.extract.shift803, %bb.ap ], [ 0, %bb.o ]
  %.sroa.42.sroa.0.0.insert.ext = and i64 %.sroa.42.sroa.0.11202, 255
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

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread: ; preds = %bb.o, %bb.by, %bb.bu, %bb.b, %.loopexit1361, %bb.am, %bb.aq, %bb.ba, %bb.be, %bb.bk, %bb.bo, %bb.d, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread1206
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
  %spec.select2506 = select i1 %.not134, i32 %i.cx, i32 %i.cv
  store i32 %spec.select, ptr %i.ca, align 4
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.pp = shl nuw i32 1, %i.pi
  %i.pq = trunc nuw nsw i32 %i.pi to i8
  %notmask = shl nsw i32 -1, %i.pi
  %5 = xor i32 %notmask, -1
  %i.pr = zext nneg i32 %i.pi to i64
  %i.ps = call noundef i64 @llvm.fshl.i64(i64 %i.ph, i64 %i.ph, i64 %i.pr) ; 2 uses
  store i64 %i.ps, ptr %i.cr, align 8
  %6 = trunc i64 %i.ps to i32
  %7 = and i32 %6, %5
  %i.pt = sub i8 %i.pe, %i.pq
  store i8 %i.pt, ptr %i.ci, align 8
  %i.pu = add nuw i32 %i.pp, %7                   ; 2 uses
  store i32 %i.pu, ptr %i.cf, align 8
  br label %.loopexit1369

bb.cj:                                            ; preds = %.sink.split, %bb.ch
  %i.pv = phi i32 [ 0, %bb.ch ], [ %spec.select2506, %.sink.split ] ; 2 uses
  %i.pw = phi i64 [ %i.ph, %bb.ch ], [ %i.po, %.sink.split ]
  %i.px = phi i8 [ %i.pe, %bb.ch ], [ %i.pn, %.sink.split ] ; 2 uses
  %i.py = load i8, ptr %i.cy, align 2, !noundef !5 ; 3 uses
  %.not135 = icmp ugt i8 %.sroa.0.0, %i.py
  br i1 %.not135, label %.loopexit1359, label %.preheader1358

.loopexit1369.loopexit:                           ; preds = %bb.fu
  %.pr1254.pre = load i32, ptr %i.cf, align 8
  br label %.loopexit1369

.loopexit1369:                                    ; preds = %.loopexit1369.loopexit, %bb.ci
  %.pr1254 = phi i32 [ %i.pu, %bb.ci ], [ %.pr1254.pre, %.loopexit1369.loopexit ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %bb.ci ], [ %i.acf, %.loopexit1369.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.fx

.loopexit1359:                                    ; preds = %bb.cm, %bb.ck, %bb.cj
  %i.pz = phi i8 [ %i.py, %bb.cj ], [ %.sroa.0.3, %bb.cm ], [ %i.qc, %bb.ck ]
  %i.qa = phi i8 [ %i.px, %bb.cj ], [ %i.qr, %bb.cm ], [ %i.qe, %bb.ck ]
  %.sroa.0.2 = phi i8 [ %.sroa.0.0, %bb.cj ], [ %.sroa.0.3, %bb.ck ], [ %.sroa.0.3, %bb.cm ] ; 2 uses
  %i.qb = icmp eq i32 %i.pv, 0
  br i1 %i.qb, label %bb.fu, label %bb.fv

.preheader1358:                                   ; preds = %bb.cj, %bb.ft
  %i.qc = phi i8 [ %i.qs, %bb.ft ], [ %i.py, %bb.cj ]
  %i.qd = phi i64 [ %i.qq, %bb.ft ], [ %i.pw, %bb.cj ] ; 2 uses
  %i.qe = phi i8 [ %i.qr, %bb.ft ], [ %i.px, %bb.cj ] ; 4 uses
  %.sroa.010.0 = phi i32 [ %.sroa.010.1, %bb.ft ], [ %i.pi, %bb.cj ] ; 4 uses
  %.sroa.0.3 = phi i8 [ %i.ace, %bb.ft ], [ %.sroa.0.0, %bb.cj ] ; 6 uses
  %i.qf = and i8 %.sroa.0.3, 63
  %i.qg = zext nneg i8 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.qg
  %i.qi = load i64, ptr %i.qh, align 8, !noundef !5
  %i.qj = and i64 %i.qi, 63
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.qj ; 2 uses
  %i.ql = load i16, ptr %i.qk, align 2, !noundef !5 ; 4 uses
  %i.qm = icmp eq i16 %i.ql, 0
  br i1 %i.qm, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.preheader1358
  %i.qn = add nsw i32 %.sroa.010.0, -1
  %i.qo = icmp slt i32 %.sroa.010.0, 1
  br i1 %i.qo, label %.loopexit1359, label %bb.cm

bb.cl:                                            ; preds = %.preheader1358
  %i.qp = icmp eq i8 %i.qe, 0
  br i1 %i.qp, label %bb.cn, label %bb.fr

bb.cm:                                            ; preds = %.sink.split2499, %bb.fr, %bb.ck
  %i.qq = phi i64 [ %i.qd, %bb.ck ], [ %i.abr, %.sink.split2499 ], [ %i.abr, %bb.fr ]
  %i.qr = phi i8 [ %i.qe, %bb.ck ], [ %i.abq, %.sink.split2499 ], [ %i.abq, %bb.fr ] ; 2 uses
  %.sroa.010.1 = phi i32 [ %i.qn, %bb.ck ], [ %.sroa.010.0, %.sink.split2499 ], [ %.sroa.010.0, %bb.fr ]
  %i.qs = load i8, ptr %i.cy, align 2, !noundef !5 ; 2 uses
  %i.qt = icmp eq i8 %.sroa.0.3, %i.qs
  br i1 %i.qt, label %.loopexit1359, label %bb.ft

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !2166)
  %i.qu = load i8, ptr %i.cj, align 2, !range !7, !alias.scope !2166, !noalias !2167, !noundef !5
  %i.qv = icmp ne i8 %i.qu, -1
  %i.qw = load i8, ptr %i.cl, align 1, !range !8, !alias.scope !2166, !noalias !2167
  %i.qx = trunc nuw i8 %i.qw to i1
  %or.cond.i257 = select i1 %i.qv, i1 true, i1 %i.qx
  br i1 %or.cond.i257, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread.thread, label %bb.co

.loopexit1351:                                    ; preds = %.preheader1350, %.loopexit1353, %bb.fh
  %i.qy = load i64, ptr %1, align 8, !alias.scope !2166, !noalias !2167, !noundef !5
  %i.qz = load i8, ptr %i.ci, align 8, !alias.scope !2166, !noalias !2167, !noundef !5 ; 2 uses
  %i.ra = sub i8 0, %i.qz
  %i.rb = and i8 %i.ra, 63
  %i.rc = zext nneg i8 %i.rb to i64
  %i.rd = shl i64 %i.qy, %i.rc
  store i64 %i.rd, ptr %i.cr, align 8, !alias.scope !2166, !noalias !2167
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread.thread: ; preds = %bb.cn
  %i.re = load i64, ptr %1, align 8, !alias.scope !2166, !noalias !2167, !noundef !5
  %i.rf = shl i64 %i.re, 32
  store i64 %i.rf, ptr %1, align 8, !alias.scope !2166, !noalias !2167
  store i8 32, ptr %i.ci, align 8, !alias.scope !2166, !noalias !2167
  store i64 0, ptr %i.cr, align 8, !alias.scope !2166, !noalias !2167
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread._crit_edge

bb.co:                                            ; preds = %bb.cn
  %i.rg = load i64, ptr %i.cm, align 8, !alias.scope !2166, !noalias !2167, !noundef !5
  %.not.i258 = icmp eq i64 %i.rg, 0
  br i1 %.not.i258, label %bb.cp, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread1236

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !2168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !2168
  store i32 0, ptr %i.bg, align 4, !noalias !2168
  %.val28.i612 = load ptr, ptr %i.cn, align 8, !alias.scope !2169, !noalias !2170, !nonnull !5, !noundef !5
  %.val29.i613 = load i64, ptr %i.co, align 8, !alias.scope !2169, !noalias !2170, !noundef !5 ; 2 uses
  %.pre2057 = load i64, ptr %i.cp, align 8, !alias.scope !2171, !noalias !2172
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cv
  %i.rh = phi i64 [ %.pre2057, %bb.cp ], [ %i.ro, %bb.cv ] ; 3 uses
  %.sroa.0.0.i4091745 = phi i64 [ 0, %bb.cp ], [ %i.ru, %bb.cv ] ; 6 uses
  %i.ri = sub nuw nsw i64 4, %.sroa.0.0.i4091745  ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.0.0.i4091745
  call void @llvm.experimental.noalias.scope.decl(metadata !2169)
  %..i.i614 = call noundef i64 @llvm.umin.i64(i64 %.val29.i613, i64 %i.rh) ; 4 uses
  %i.rk = add i64 %i.rh, %i.ri                    ; 2 uses
  %i.rl = icmp ult i64 %i.rk, %..i.i614
  br i1 %i.rl, label %bb.cs, label %bb.cr, !prof !9

bb.cr:                                            ; preds = %bb.cq
  %..i30.i615 = call noundef i64 @llvm.umin.i64(i64 %.val29.i613, i64 %i.rk) ; 2 uses
  %i.rm = sub nuw i64 %..i30.i615, %..i.i614      ; 6 uses
  %.not4.i.i616 = icmp ugt i64 %i.rm, %i.ri
  br i1 %.not4.i.i616, label %bb.ct, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit617, !prof !10

bb.cs:                                            ; preds = %bb.cq
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !2173
  unreachable

bb.ct:                                            ; preds = %bb.cr
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.rm, i64 noundef range(i64 0, -9223372036854775808) %i.ri, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !2173
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit617: ; preds = %bb.cr
  %i.rn = getelementptr inbounds nuw i8, ptr %.val28.i612, i64 %..i.i614
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.rj, i64 noundef %i.rm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rn, i64 noundef %i.rm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !2174
  %i.ro = add i64 %i.rm, %i.rh                    ; 6 uses
  store i64 %i.ro, ptr %i.cp, align 8, !alias.scope !2169, !noalias !2170
  %i.rp = icmp eq i64 %..i30.i615, %..i.i614
  br i1 %i.rp, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit617
  call void @llvm.experimental.noalias.scope.decl(metadata !2175)
  %i.rq = sub i64 %i.ro, %.sroa.0.0.i4091745      ; 2 uses
  %i.rr = icmp uge i64 %i.rq, %i.ro
  %i.rs = icmp ne i64 %.sroa.0.0.i4091745, 0
  %i.rt = and i1 %i.rs, %i.rr
  br i1 %i.rt, label %bb.cw, label %bb.cx, !prof !9

bb.cv:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit617
  %i.ru = add nuw nsw i64 %i.rm, %.sroa.0.0.i4091745 ; 2 uses
  %i.rv = icmp ult i64 %i.ru, 4
  br i1 %i.rv, label %bb.cq, label %bb.dd

bb.cw:                                            ; preds = %bb.cu
  %i.rw = call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 13) #32, !noalias !2176
  %i.rx = ptrtoint ptr %i.rw to i64
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cu
  store i64 %i.rq, ptr %i.cp, align 8, !alias.scope !2175, !noalias !2177
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.sroa.01003.0.ph = phi i64 [ -9223372036854775808, %bb.cw ], [ -9223372036854775806, %bb.cx ]
  %.sroa.81004.0.ph = phi i64 [ %i.rx, %bb.cw ], [ %.sroa.0.0.i4091745, %bb.cx ]
  store i64 %.sroa.01003.0.ph, ptr %i.bh, align 8, !noalias !2168
  store i64 %.sroa.81004.0.ph, ptr %i.cz, align 8, !noalias !2168
  store i64 4, ptr %.sroa.51008.0..sroa_idx, align 8, !noalias !2168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !2168
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.dh
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh), !noalias !2178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !2168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2179
  store i8 0, ptr %i.y, align 1, !noalias !2179
  call void @llvm.experimental.noalias.scope.decl(metadata !2180)
  %.val28.i622 = load ptr, ptr %i.cn, align 8, !alias.scope !2180, !noalias !2181, !nonnull !5, !noundef !5
  %.val29.i623 = load i64, ptr %i.co, align 8, !alias.scope !2180, !noalias !2181, !noundef !5 ; 2 uses
  %i.ry = load i64, ptr %i.cp, align 8, !alias.scope !2182, !noalias !2183, !noundef !5 ; 3 uses
  %..i.i624 = call noundef i64 @llvm.umin.i64(i64 %.val29.i623, i64 %i.ry) ; 3 uses
  %i.rz = add i64 %i.ry, 1                        ; 2 uses
  %i.sa = icmp ult i64 %i.rz, %..i.i624
  br i1 %i.sa, label %bb.db, label %bb.da, !prof !9

bb.da:                                            ; preds = %bb.cz
  %..i30.i625 = call noundef i64 @llvm.umin.i64(i64 %.val29.i623, i64 %i.rz)
  %i.sb = sub nuw i64 %..i30.i625, %..i.i624      ; 5 uses
  %.not4.i.i626 = icmp ugt i64 %i.sb, 1
  br i1 %.not4.i.i626, label %bb.dc, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit627, !prof !10

bb.db:                                            ; preds = %bb.cz
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !2184
  unreachable

bb.dc:                                            ; preds = %bb.da
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.sb, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !2184
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit627: ; preds = %bb.da
  %i.sc = getelementptr inbounds nuw i8, ptr %.val28.i622, i64 %..i.i624
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.y, i64 noundef %i.sb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.sc, i64 noundef %i.sb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !2185
  %i.sd = add i64 %i.sb, %i.ry                    ; 6 uses
  store i64 %i.sd, ptr %i.cp, align 8, !alias.scope !2180, !noalias !2181
  %i.se = load i8, ptr %i.y, align 1, !noalias !2179, !noundef !5 ; 2 uses
end_hunk_4
begin_hunk_5_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream20decode_mcu_ac_refineINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2730
  %i.ng = load i64, ptr %i.aw, align 8, !range !11, !noalias !2720, !noundef !5
  %i.nh = trunc nuw i64 %i.ng to i1
  %i.ni = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.nj = load i64, ptr %i.ni, align 8, !range !12, !noalias !2720, !noundef !5 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  br i1 %i.nh, label %bb.bw, label %bb.bx, !prof !9

bb.bw:                                            ; preds = %bb.bv
  %i.nl = load i64, ptr %i.nk, align 8, !noalias !2720
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.nj, i64 %i.nl) #35, !noalias !2730
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.nm = load ptr, ptr %i.nk, align 8, !noalias !2720, !nonnull !5, !noundef !5 ; 2 uses
  %i.nn = icmp samesign ugt i64 %i.nj, 27
  call void @llvm.assume(i1 %i.nn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.nm, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !2730
  %i.no = ptrtoint ptr %i.nm to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.no, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread1194

bb.by:                                            ; preds = %bb.bu
  %i.np = and i64 %i.mm, -256                     ; 2 uses
  store i64 %i.np, ptr %1, align 8, !alias.scope !2718, !noalias !2719
  store i8 %i.mo, ptr %i.ci, align 8, !alias.scope !2718, !noalias !2719
  %i.nq = sub i8 0, %i.mo
  %i.nr = and i8 %i.nq, 63
  %i.ns = zext nneg i8 %i.nr to i64
  %i.nt = shl i64 %i.np, %i.ns
  store i64 %i.nt, ptr %i.cr, align 8, !alias.scope !2718, !noalias !2719
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408: ; preds = %bb.w
  %i.nu = ptrtoint ptr %i.fo to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift805 = and i64 %i.nu, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb), !noalias !2730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2720
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread1194

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread1194: ; preds = %bb.o, %bb.bd, %bb.bx, %bb.ap, %bb.bn, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408
  %.sroa.0.111711205 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408 ], [ 0, %bb.bd ], [ 0, %bb.bn ], [ 0, %bb.bx ], [ 0, %bb.ap ], [ 10, %bb.o ]
  %.sroa.33.11203 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408 ], [ %i.jb, %bb.bd ], [ %i.lc, %bb.bn ], [ %i.nj, %bb.bx ], [ %i.hn, %bb.ap ], [ undef, %bb.o ]
  %.sroa.42.sroa.0.11202 = phi i64 [ %i.nu, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408 ], [ %i.jg, %bb.bd ], [ %i.lh, %bb.bn ], [ %i.no, %bb.bx ], [ %i.hs, %bb.ap ], [ 0, %bb.o ]
  %.sroa.42.sroa.13.sroa.0.11201 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift805, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408 ], [ %.sroa.42.sroa.13.0.extract.shift801, %bb.bd ], [ %.sroa.42.sroa.13.0.extract.shift799, %bb.bn ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.bx ], [ %.sroa.42.sroa.13.0.extract.shift803, %bb.ap ], [ 0, %bb.o ]
  %.sroa.42.sroa.0.0.insert.ext = and i64 %.sroa.42.sroa.0.11202, 255
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

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread: ; preds = %bb.o, %bb.by, %bb.bu, %bb.b, %.loopexit1361, %bb.am, %bb.aq, %bb.ba, %bb.be, %bb.bk, %bb.bo, %bb.d, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread1206
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
  %spec.select2506 = select i1 %.not134, i32 %i.cx, i32 %i.cv
  store i32 %spec.select, ptr %i.ca, align 4
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.pp = shl nuw i32 1, %i.pi
  %i.pq = trunc nuw nsw i32 %i.pi to i8
  %notmask = shl nsw i32 -1, %i.pi
  %5 = xor i32 %notmask, -1
  %i.pr = zext nneg i32 %i.pi to i64
  %i.ps = call noundef i64 @llvm.fshl.i64(i64 %i.ph, i64 %i.ph, i64 %i.pr) ; 2 uses
  store i64 %i.ps, ptr %i.cr, align 8
  %6 = trunc i64 %i.ps to i32
  %7 = and i32 %6, %5
  %i.pt = sub i8 %i.pe, %i.pq
  store i8 %i.pt, ptr %i.ci, align 8
  %i.pu = add nuw i32 %i.pp, %7                   ; 2 uses
  store i32 %i.pu, ptr %i.cf, align 8
  br label %.loopexit1369

bb.cj:                                            ; preds = %.sink.split, %bb.ch
  %i.pv = phi i32 [ 0, %bb.ch ], [ %spec.select2506, %.sink.split ] ; 2 uses
  %i.pw = phi i64 [ %i.ph, %bb.ch ], [ %i.po, %.sink.split ]
  %i.px = phi i8 [ %i.pe, %bb.ch ], [ %i.pn, %.sink.split ] ; 2 uses
  %i.py = load i8, ptr %i.cy, align 2, !noundef !5 ; 3 uses
  %.not135 = icmp ugt i8 %.sroa.0.0, %i.py
  br i1 %.not135, label %.loopexit1359, label %.preheader1358

.loopexit1369.loopexit:                           ; preds = %bb.fu
  %.pr1254.pre = load i32, ptr %i.cf, align 8
  br label %.loopexit1369

.loopexit1369:                                    ; preds = %.loopexit1369.loopexit, %bb.ci
  %.pr1254 = phi i32 [ %i.pu, %bb.ci ], [ %.pr1254.pre, %.loopexit1369.loopexit ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %bb.ci ], [ %i.acf, %.loopexit1369.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.fx

.loopexit1359:                                    ; preds = %bb.cm, %bb.ck, %bb.cj
  %i.pz = phi i8 [ %i.py, %bb.cj ], [ %.sroa.0.3, %bb.cm ], [ %i.qc, %bb.ck ]
  %i.qa = phi i8 [ %i.px, %bb.cj ], [ %i.qr, %bb.cm ], [ %i.qe, %bb.ck ]
  %.sroa.0.2 = phi i8 [ %.sroa.0.0, %bb.cj ], [ %.sroa.0.3, %bb.ck ], [ %.sroa.0.3, %bb.cm ] ; 2 uses
  %i.qb = icmp eq i32 %i.pv, 0
  br i1 %i.qb, label %bb.fu, label %bb.fv

.preheader1358:                                   ; preds = %bb.cj, %bb.ft
  %i.qc = phi i8 [ %i.qs, %bb.ft ], [ %i.py, %bb.cj ]
  %i.qd = phi i64 [ %i.qq, %bb.ft ], [ %i.pw, %bb.cj ] ; 2 uses
  %i.qe = phi i8 [ %i.qr, %bb.ft ], [ %i.px, %bb.cj ] ; 4 uses
  %.sroa.010.0 = phi i32 [ %.sroa.010.1, %bb.ft ], [ %i.pi, %bb.cj ] ; 4 uses
  %.sroa.0.3 = phi i8 [ %i.ace, %bb.ft ], [ %.sroa.0.0, %bb.cj ] ; 6 uses
  %i.qf = and i8 %.sroa.0.3, 63
  %i.qg = zext nneg i8 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.qg
  %i.qi = load i64, ptr %i.qh, align 8, !noundef !5
  %i.qj = and i64 %i.qi, 63
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.qj ; 2 uses
  %i.ql = load i16, ptr %i.qk, align 2, !noundef !5 ; 4 uses
  %i.qm = icmp eq i16 %i.ql, 0
  br i1 %i.qm, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.preheader1358
  %i.qn = add nsw i32 %.sroa.010.0, -1
  %i.qo = icmp slt i32 %.sroa.010.0, 1
  br i1 %i.qo, label %.loopexit1359, label %bb.cm

bb.cl:                                            ; preds = %.preheader1358
  %i.qp = icmp eq i8 %i.qe, 0
  br i1 %i.qp, label %bb.cn, label %bb.fr

bb.cm:                                            ; preds = %.sink.split2499, %bb.fr, %bb.ck
  %i.qq = phi i64 [ %i.qd, %bb.ck ], [ %i.abr, %.sink.split2499 ], [ %i.abr, %bb.fr ]
  %i.qr = phi i8 [ %i.qe, %bb.ck ], [ %i.abq, %.sink.split2499 ], [ %i.abq, %bb.fr ] ; 2 uses
  %.sroa.010.1 = phi i32 [ %i.qn, %bb.ck ], [ %.sroa.010.0, %.sink.split2499 ], [ %.sroa.010.0, %bb.fr ]
  %i.qs = load i8, ptr %i.cy, align 2, !noundef !5 ; 2 uses
  %i.qt = icmp eq i8 %.sroa.0.3, %i.qs
  br i1 %i.qt, label %.loopexit1359, label %bb.ft

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !2776)
  %i.qu = load i8, ptr %i.cj, align 2, !range !7, !alias.scope !2776, !noalias !2777, !noundef !5
  %i.qv = icmp ne i8 %i.qu, -1
  %i.qw = load i8, ptr %i.cl, align 1, !range !8, !alias.scope !2776, !noalias !2777
  %i.qx = trunc nuw i8 %i.qw to i1
  %or.cond.i257 = select i1 %i.qv, i1 true, i1 %i.qx
  br i1 %or.cond.i257, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread.thread, label %bb.co

.loopexit1351:                                    ; preds = %.preheader1350, %.loopexit1353, %bb.fh
  %i.qy = load i64, ptr %1, align 8, !alias.scope !2776, !noalias !2777, !noundef !5
  %i.qz = load i8, ptr %i.ci, align 8, !alias.scope !2776, !noalias !2777, !noundef !5 ; 2 uses
  %i.ra = sub i8 0, %i.qz
  %i.rb = and i8 %i.ra, 63
  %i.rc = zext nneg i8 %i.rb to i64
  %i.rd = shl i64 %i.qy, %i.rc
  store i64 %i.rd, ptr %i.cr, align 8, !alias.scope !2776, !noalias !2777
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread.thread: ; preds = %bb.cn
  %i.re = load i64, ptr %1, align 8, !alias.scope !2776, !noalias !2777, !noundef !5
  %i.rf = shl i64 %i.re, 32
  store i64 %i.rf, ptr %1, align 8, !alias.scope !2776, !noalias !2777
  store i8 32, ptr %i.ci, align 8, !alias.scope !2776, !noalias !2777
  store i64 0, ptr %i.cr, align 8, !alias.scope !2776, !noalias !2777
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread._crit_edge

bb.co:                                            ; preds = %bb.cn
  %i.rg = load i64, ptr %i.cm, align 8, !alias.scope !2776, !noalias !2777, !noundef !5
  %.not.i258 = icmp eq i64 %i.rg, 0
  br i1 %.not.i258, label %bb.cp, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread1236

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !2778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !2778
  store i32 0, ptr %i.bg, align 4, !noalias !2778
  %.val28.i612 = load ptr, ptr %i.cn, align 8, !alias.scope !2779, !noalias !2780, !nonnull !5, !noundef !5
  %.val29.i613 = load i64, ptr %i.co, align 8, !alias.scope !2779, !noalias !2780, !noundef !5 ; 2 uses
  %.pre2057 = load i64, ptr %i.cp, align 8, !alias.scope !2781, !noalias !2782
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cv
  %i.rh = phi i64 [ %.pre2057, %bb.cp ], [ %i.ro, %bb.cv ] ; 3 uses
  %.sroa.0.0.i4091745 = phi i64 [ 0, %bb.cp ], [ %i.ru, %bb.cv ] ; 6 uses
  %i.ri = sub nuw nsw i64 4, %.sroa.0.0.i4091745  ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.0.0.i4091745
  call void @llvm.experimental.noalias.scope.decl(metadata !2779)
  %..i.i614 = call noundef i64 @llvm.umin.i64(i64 %.val29.i613, i64 %i.rh) ; 4 uses
  %i.rk = add i64 %i.rh, %i.ri                    ; 2 uses
  %i.rl = icmp ult i64 %i.rk, %..i.i614
  br i1 %i.rl, label %bb.cs, label %bb.cr, !prof !9

bb.cr:                                            ; preds = %bb.cq
  %..i30.i615 = call noundef i64 @llvm.umin.i64(i64 %.val29.i613, i64 %i.rk) ; 2 uses
  %i.rm = sub nuw i64 %..i30.i615, %..i.i614      ; 6 uses
  %.not4.i.i616 = icmp ugt i64 %i.rm, %i.ri
  br i1 %.not4.i.i616, label %bb.ct, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit617, !prof !10

bb.cs:                                            ; preds = %bb.cq
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !2783
  unreachable

bb.ct:                                            ; preds = %bb.cr
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.rm, i64 noundef range(i64 0, -9223372036854775808) %i.ri, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !2783
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit617: ; preds = %bb.cr
  %i.rn = getelementptr inbounds nuw i8, ptr %.val28.i612, i64 %..i.i614
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.rj, i64 noundef %i.rm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rn, i64 noundef %i.rm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !2784
  %i.ro = add i64 %i.rm, %i.rh                    ; 6 uses
  store i64 %i.ro, ptr %i.cp, align 8, !alias.scope !2779, !noalias !2780
  %i.rp = icmp eq i64 %..i30.i615, %..i.i614
  br i1 %i.rp, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit617
  call void @llvm.experimental.noalias.scope.decl(metadata !2785)
  %i.rq = sub i64 %i.ro, %.sroa.0.0.i4091745      ; 2 uses
  %i.rr = icmp uge i64 %i.rq, %i.ro
  %i.rs = icmp ne i64 %.sroa.0.0.i4091745, 0
  %i.rt = and i1 %i.rs, %i.rr
  br i1 %i.rt, label %bb.cw, label %bb.cx, !prof !9

bb.cv:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit617
  %i.ru = add nuw nsw i64 %i.rm, %.sroa.0.0.i4091745 ; 2 uses
  %i.rv = icmp ult i64 %i.ru, 4
  br i1 %i.rv, label %bb.cq, label %bb.dd

bb.cw:                                            ; preds = %bb.cu
  %i.rw = call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 13) #32, !noalias !2786
  %i.rx = ptrtoint ptr %i.rw to i64
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cu
  store i64 %i.rq, ptr %i.cp, align 8, !alias.scope !2785, !noalias !2787
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.sroa.01003.0.ph = phi i64 [ -9223372036854775808, %bb.cw ], [ -9223372036854775806, %bb.cx ]
  %.sroa.81004.0.ph = phi i64 [ %i.rx, %bb.cw ], [ %.sroa.0.0.i4091745, %bb.cx ]
  store i64 %.sroa.01003.0.ph, ptr %i.bh, align 8, !noalias !2778
  store i64 %.sroa.81004.0.ph, ptr %i.cz, align 8, !noalias !2778
  store i64 4, ptr %.sroa.51008.0..sroa_idx, align 8, !noalias !2778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !2778
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.dh
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh), !noalias !2788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !2778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2789
  store i8 0, ptr %i.y, align 1, !noalias !2789
  call void @llvm.experimental.noalias.scope.decl(metadata !2790)
  %.val28.i622 = load ptr, ptr %i.cn, align 8, !alias.scope !2790, !noalias !2791, !nonnull !5, !noundef !5
  %.val29.i623 = load i64, ptr %i.co, align 8, !alias.scope !2790, !noalias !2791, !noundef !5 ; 2 uses
  %i.ry = load i64, ptr %i.cp, align 8, !alias.scope !2792, !noalias !2793, !noundef !5 ; 3 uses
  %..i.i624 = call noundef i64 @llvm.umin.i64(i64 %.val29.i623, i64 %i.ry) ; 3 uses
  %i.rz = add i64 %i.ry, 1                        ; 2 uses
  %i.sa = icmp ult i64 %i.rz, %..i.i624
  br i1 %i.sa, label %bb.db, label %bb.da, !prof !9

bb.da:                                            ; preds = %bb.cz
  %..i30.i625 = call noundef i64 @llvm.umin.i64(i64 %.val29.i623, i64 %i.rz)
  %i.sb = sub nuw i64 %..i30.i625, %..i.i624      ; 5 uses
  %.not4.i.i626 = icmp ugt i64 %i.sb, 1
  br i1 %.not4.i.i626, label %bb.dc, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit627, !prof !10

bb.db:                                            ; preds = %bb.cz
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !2794
  unreachable

bb.dc:                                            ; preds = %bb.da
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.sb, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !2794
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit627: ; preds = %bb.da
  %i.sc = getelementptr inbounds nuw i8, ptr %.val28.i622, i64 %..i.i624
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.y, i64 noundef %i.sb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.sc, i64 noundef %i.sb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !2795
  %i.sd = add i64 %i.sb, %i.ry                    ; 6 uses
  store i64 %i.sd, ptr %i.cp, align 8, !alias.scope !2790, !noalias !2791
  %i.se = load i8, ptr %i.y, align 1, !noalias !2789, !noundef !5 ; 2 uses
end_hunk_5
