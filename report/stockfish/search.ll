Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/search?download=true
inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE2EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !207, !nonnull !72, !align !73 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  store i32 %.4740.ph1007, ptr %14, align 8, !tbaa !502
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.zr = load i8, ptr %i.rw, align 1, !tbaa !242, !range !223, !noundef !72
  %i.zs = trunc nuw i8 %i.zr to i1
  call void @_ZN9Stockfish9UCIEngine4moveB5cxx11ENS_4MoveEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, i16 %i.sz, i1 noundef zeroext %i.zs) #33
  %i.zt = load ptr, ptr %15, align 8, !tbaa !229
  %i.zu = load i64, ptr %i.rx, align 8, !tbaa !228
  store i64 %i.zu, ptr %i.rv, align 8
  store ptr %i.zt, ptr %i.ry, align 8
  %i.zv = load i64, ptr %i.bk, align 8, !tbaa !255
  %i.zw = add i64 %i.zv, %indvars.iv.next
  store i64 %i.zw, ptr %i.rz, align 8, !tbaa !503
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zq, i64 80
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !221
  %.not.i.i499 = icmp eq ptr %i.zy, null
  br i1 %.not.i.i499, label %bb.by, label %_ZNKSt8functionIFvRKN9Stockfish6Search13InfoIterationEEEclES4_.exit

bb.by:                                            ; preds = %bb.bx
  call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFvRKN9Stockfish6Search13InfoIterationEEEclES4_.exit: ; preds = %bb.bx
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zq, i64 64
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zq, i64 88
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !505
  call void %i.aab(ptr noundef nonnull align 8 dereferenceable(32) %i.zz, ptr noundef nonnull align 8 dereferenceable(32) %14) #33, !inline_history !498
  %i.aac = load ptr, ptr %15, align 8, !tbaa !229 ; 2 uses
  %i.aad = icmp eq ptr %i.aac, %i.sa
  br i1 %i.aad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt8functionIFvRKN9Stockfish6Search13InfoIterationEEEclES4_.exit
  %i.aae = load i64, ptr %i.sa, align 8, !tbaa !143
  %i.aaf = add i64 %i.aae, 1
  call void @_ZdlPvm(ptr noundef %i.aac, i64 noundef %i.aaf) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt8functionIFvRKN9Stockfish6Search13InfoIterationEEEclES4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  br label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit

_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bw, %bb.bv
  store ptr null, ptr %i.sb, align 8, !tbaa !250
  %i.aag = and i16 %i.sz, 63
  %i.aah = zext nneg i16 %i.aag to i64            ; 6 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %1, i64 %i.aah ; 2 uses
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !283
  %i.aak = icmp ne i8 %i.aaj, 0
  %.not.i.i500 = icmp ult i16 %i.sz, -16384       ; 2 uses
  %or.cond.not.i.i501 = and i1 %.not.i.i500, %i.aak
  %i.aal = icmp slt i16 %i.sz, -16384             ; 2 uses
  %spec.select.i.i502 = or i1 %i.aal, %or.cond.not.i.i501
  %i.aam = and i16 %i.sz, 12288
  %i.aan = icmp eq i16 %i.aam, 12288              ; 2 uses
  %i.aao = or i1 %i.aan, %spec.select.i.i502      ; 2 uses
  %i.aap = lshr i16 %i.sz, 6
  %i.aaq = and i16 %i.aap, 63
  %i.aar = zext nneg i16 %i.aaq to i64
  %i.aas = getelementptr inbounds nuw i8, ptr %1, i64 %i.aar
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !283 ; 3 uses
  %i.aau = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.sz) #33
  %i.aav = add nsw i32 %.4740.ph1007, -1          ; 8 uses
  %i.aaw = sext i32 %.4740.ph1007 to i64
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.aaw
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !150
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv.next
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !150
  %i.abb = load i32, ptr %i.se, align 8, !tbaa !258
  %i.abc = sub nsw i32 %4, %.0369.ph1010
  %i.abd = mul nsw i32 %i.aba, %i.aay             ; 2 uses
  %i.abe = insertelement <2 x i32> poison, i32 %i.abc, i64 0
  %i.abf = insertelement <2 x i32> %i.abe, i32 %i.abd, i64 1
  %i.abg = mul nsw <2 x i32> %i.abf, <i32 608, i32 119>
  %i.abh = insertelement <2 x i32> <i32 poison, i32 256>, i32 %i.abb, i64 0
  %i.abi = sdiv <2 x i32> %i.abg, %i.abh          ; 2 uses
  %i.abj = extractelement <2 x i32> %i.abi, i64 1
  %i.abk = select i1 %i.sc, i32 0, i32 %i.abj
  %i.abl = add i32 %i.abd, 1182
  %i.abm = extractelement <2 x i32> %i.abi, i64 0
  %i.abn = sub i32 %i.abl, %i.abm
  %i.abo = add i32 %i.abn, %i.abk                 ; 2 uses
  %i.abp = load i8, ptr %i.ct, align 1, !tbaa !282, !range !223, !noundef !72
  %i.abq = trunc nuw i8 %i.abp to i1
  %i.abr = add nsw i32 %i.abo, 946
  %spec.select468 = select i1 %i.abq, i32 %i.abr, i32 %i.abo ; 2 uses
  %i.abs = load i8, ptr %i.aai, align 1, !tbaa !283
  %i.abt = load atomic i64, ptr %i.rt monotonic, align 8
  %i.abu = add i64 %i.abt, 1
  store atomic i64 %i.abu, ptr %i.rt monotonic, align 8
  %i.abv = call { ptr, ptr } @_ZN9Stockfish4Eval4NNUE16AccumulatorStack4pushEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.sf) #33 ; 2 uses
  %i.abw = extractvalue { ptr, ptr } %i.abv, 0    ; 2 uses
  %i.abx = extractvalue { ptr, ptr } %i.abv, 1
  %i.aby = load ptr, ptr %i.bd, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.abz = load ptr, ptr %i.de, align 8, !tbaa !151, !nonnull !72, !align !73
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.sz, ptr noundef nonnull align 8 dereferenceable(192) %8, i1 noundef zeroext %i.aau, ptr noundef nonnull align 1 dereferenceable(7) %i.abw, ptr noundef nonnull align 8 dereferenceable(416) %i.abx, ptr noundef nonnull %i.aby, ptr noundef nonnull %i.abz) #33
  %i.aca = icmp ne i8 %i.abs, 0
  %or.cond.not.i.i.i = and i1 %.not.i.i500, %i.aca
  %spec.select.i.i.i = or i1 %i.aal, %or.cond.not.i.i.i
  %i.acb = or i1 %i.aan, %spec.select.i.i.i
  store i16 %i.sz, ptr %i.sg, align 4, !tbaa !196
  %i.acc = load i8, ptr %i.k, align 4, !tbaa !270, !range !223, !noundef !72
  %i.acd = zext nneg i8 %i.acc to i64
  %i.ace = getelementptr inbounds nuw [4194304 x i8], ptr %i.sh, i64 %i.acd
  %i.acf = zext i1 %i.acb to i64
  %i.acg = getelementptr inbounds nuw [2097152 x i8], ptr %i.ace, i64 %i.acf
  %i.ach = load i8, ptr %i.abw, align 1, !tbaa !292
  %i.aci = zext i8 %i.ach to i64                  ; 2 uses
  %i.acj = getelementptr inbounds nuw [131072 x i8], ptr %i.acg, i64 %i.aci
  %i.ack = getelementptr inbounds nuw [2048 x i8], ptr %i.acj, i64 %i.aah
  store ptr %i.ack, ptr %i.si, align 8, !tbaa !246
  %i.acl = getelementptr inbounds nuw [131072 x i8], ptr %i.sj, i64 %i.aci
  %i.acm = getelementptr inbounds nuw [2048 x i8], ptr %i.acl, i64 %i.aah
  store ptr %i.acm, ptr %i.sk, align 8, !tbaa !247
  %i.acn = load atomic i64, ptr %i.rt seq_cst, align 8
  %i.aco = load i8, ptr %i.ct, align 1, !tbaa !282, !range !223, !noundef !72
  %i.acp = trunc nuw i8 %i.aco to i1
  br i1 %i.acp, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit
  %i.acq = load i32, ptr %i.co, align 4, !tbaa !281
  %i.acr = icmp sgt i32 %i.acq, %.0369.ph1010
  %.neg439 = select i1 %i.acr, i32 -4624, i32 -3702
  %i.acs = load i32, ptr %i.sl, align 4, !tbaa !293
  %.not438 = icmp slt i32 %i.acs, %.4740.ph1007
  %.neg441 = select i1 %.not438, i32 0, i32 %.neg440
  %.neg442 = add i32 %.neg439, %spec.select468
  %i.act = add i32 %.neg442, %.neg441
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit
  %.1389 = phi i32 [ %i.act, %bb.bz ], [ %spec.select468, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit ]
  %.neg443 = mul i32 %i.zj, -73
  %i.acu = load i16, ptr %i.bg, align 8           ; 2 uses
  %.not935 = icmp eq i16 %i.acu, 0                ; 2 uses
  %i.acv = select i1 %.not935, i32 4369, i32 3372
  %i.acw = select i1 %6, i32 %i.acv, i32 0
  %.reass.reass = add i32 %.neg443, %invariant.op
  %i.acx = add i32 %.reass.reass, %.1389
  %.2390 = add nsw i32 %i.acx, %i.acw             ; 2 uses
  %i.acy = add nsw i32 %.2390, 1119
  %spec.select469 = select i1 %i.dd, i32 %i.acy, i32 %.2390
  %i.acz = load i32, ptr %i.so, align 8, !tbaa !277 ; 2 uses
  %i.ada = icmp sgt i32 %i.acz, 1
  %.not444 = icmp eq i32 %i.acz, 2
  %i.adb = select i1 %.not444, i32 256, i32 1280
  %i.adc = select i1 %i.ada, i32 %i.adb, i32 0
  %.4392 = add nsw i32 %spec.select469, %i.adc    ; 2 uses
  %i.add = icmp eq i16 %i.sz, %i.acu
  %i.ade = add nsw i32 %.4392, -2151
  %.5393 = select i1 %i.add, i32 %i.ade, i32 %.4392
  br i1 %i.aao, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.adf = load ptr, ptr %i.f, align 8, !tbaa !218
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 184
  %i.adh = load i8, ptr %i.adg, align 8, !tbaa !271 ; 2 uses
  %i.adi = zext i8 %i.adh to i64
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.adi
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !150
  %i.adl = mul nsw i32 %i.adk, 217
  %i.adm = sdiv i32 %i.adl, 32
  %i.adn = zext i8 %i.aat to i64
  %i.ado = getelementptr inbounds nuw [1024 x i8], ptr %i.ro, i64 %i.adn
  %i.adp = getelementptr inbounds nuw [16 x i8], ptr %i.ado, i64 %i.aah
  %i.adq = and i8 %i.adh, 7
  %i.adr = zext nneg i8 %i.adq to i64
  %i.ads = getelementptr inbounds nuw [2 x i8], ptr %i.adp, i64 %i.adr
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.adt = zext i16 %i.sz to i64
  %i.adu = getelementptr inbounds nuw [2 x i8], ptr %i.sq, i64 %i.adt
  %i.adv = load i16, ptr %i.adu, align 2, !tbaa !147
  %i.adw = sext i16 %i.adv to i32
  %i.adx = shl nsw i32 %i.adw, 1
  %i.ady = load ptr, ptr %i.a, align 16, !tbaa !294
  %i.adz = zext i8 %i.aat to i64                  ; 2 uses
  %i.aea = getelementptr inbounds nuw [128 x i8], ptr %i.ady, i64 %i.adz
  %i.aeb = getelementptr inbounds nuw [2 x i8], ptr %i.aea, i64 %i.aah
  %i.aec = load i16, ptr %i.aeb, align 2, !tbaa !175
  %i.aed = sext i16 %i.aec to i32
  %i.aee = add nsw i32 %i.adx, %i.aed
  %i.aef = load ptr, ptr %i.rb, align 8, !tbaa !294
  %i.aeg = getelementptr inbounds nuw [128 x i8], ptr %i.aef, i64 %i.adz
  %i.aeh = getelementptr inbounds nuw [2 x i8], ptr %i.aeg, i64 %i.aah
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sink1155.in = phi ptr [ %i.aeh, %bb.cc ], [ %i.ads, %bb.cb ]
  %.sink = phi i32 [ %i.aee, %bb.cc ], [ %i.adm, %bb.cb ]
  %.sink1155 = load i16, ptr %.sink1155.in, align 2, !tbaa !196
  %i.aei = sext i16 %.sink1155 to i32
  %i.aej = add nsw i32 %.sink, %i.aei             ; 2 uses
  store i32 %i.aej, ptr %i.am, align 4, !tbaa !276
  %i.aek = mul nsw i32 %i.aej, 425
  %.neg445 = sdiv i32 %i.aek, -4096
  %i.ael = add i32 %.neg445, %.5393               ; 3 uses
  %i.aem = icmp sgt i32 %.4740.ph1007, 1
  %i.aen = icmp ne i64 %indvars.iv, 0             ; 4 uses
  %or.cond22 = select i1 %i.aem, i1 %i.aen, i1 false
  br i1 %or.cond22, label %bb.ce, label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  %.neg448 = sdiv i32 %i.ael, -1024
  %i.aeo = add i32 %.neg448, %i.aav
  %i.aep = add nuw nsw i32 %.4740.ph1007, 1
  %i.aeq = call i32 @llvm.smin.i32(i32 %i.aep, i32 %i.aeo)
  %.sroa.speculated574 = call i32 @llvm.smax.i32(i32 %i.aeq, i32 1)
  %i.aer = add nuw nsw i32 %.sroa.speculated574, 1 ; 4 uses
  %i.aes = sub nsw i32 %i.aav, %i.aer
  store i32 %i.aes, ptr %i.ss, align 4, !tbaa !275
  %i.aet = xor i32 %.0369.ph1010, -1              ; 2 uses
  %i.aeu = sub nsw i32 0, %.0369.ph1010           ; 2 uses
  %i.aev = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.sb, i32 noundef %i.aet, i32 noundef %i.aeu, i32 noundef %i.aer, i1 noundef zeroext true)
  %i.aew = sub nsw i32 0, %i.aev                  ; 5 uses
  store i32 0, ptr %i.ss, align 4, !tbaa !275
  %i.aex = icmp slt i32 %.0369.ph1010, %i.aew
  br i1 %i.aex, label %bb.cf, label %bb.ck

bb.cf:                                            ; preds = %bb.ce
  %i.aey = icmp samesign ult i32 %i.aer, %i.aav
  %i.aez = add nsw i32 %.0746.ph1005, 50
  %i.afa = icmp slt i32 %i.aez, %i.aew
  %i.afb = select i1 %i.aey, i1 %i.afa, i1 false
  %i.afc = add nsw i32 %.0746.ph1005, 9
  %i.afd = icmp sgt i32 %i.afc, %i.aew
  %i.afe = zext i1 %i.afb to i32
  %.neg449 = sext i1 %i.afd to i32
  %i.aff = add nsw i32 %i.aav, %.neg449
  %i.afg = add nuw nsw i32 %i.aff, %i.afe         ; 3 uses
  %i.afh = icmp samesign ugt i32 %i.afg, %i.aer
  br i1 %i.afh, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.afi = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.sb, i32 noundef %i.aet, i32 noundef %i.aeu, i32 noundef %i.afg, i1 noundef zeroext %i.sr)
  %i.afj = sub nsw i32 0, %i.afi
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.2383 = phi i32 [ %i.afj, %bb.cg ], [ %i.aew, %bb.cf ]
  %i.afk = trunc i16 %i.sz to i8
  %i.afl = and i8 %i.afk, 63
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef nonnull %2, i8 noundef zeroext %i.aat, i8 noundef zeroext %i.afl, i32 noundef 1365)
  br label %bb.ck

bb.ci:                                            ; preds = %bb.cd
  br i1 %i.aen, label %bb.cj, label %.thread

bb.cj:                                            ; preds = %bb.ci
  %i.afm = add nsw i32 %i.ael, 1140
  %spec.select470 = select i1 %.not935, i32 %i.afm, i32 %i.ael ; 2 uses
  %i.afn = xor i32 %.0369.ph1010, -1
  %i.afo = sub nsw i32 0, %.0369.ph1010
  %i.afp = icmp sgt i32 %spec.select470, 3957
  %.neg446 = sext i1 %i.afp to i32
  %i.afq = add i32 %i.aav, %.neg446
  %i.afr = icmp sgt i32 %spec.select470, 5654
  %i.afs = icmp sgt i32 %.4740.ph1007, 3
  %i.aft = and i1 %i.afs, %i.afr
  %.neg447 = sext i1 %i.aft to i32
  %i.afu = add i32 %i.afq, %.neg447
  %i.afv = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.sb, i32 noundef %i.afn, i32 noundef %i.afo, i32 noundef %i.afu, i1 noundef zeroext %i.sr)
  %i.afw = sub nsw i32 0, %i.afv
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ce, %bb.ch, %bb.cj
  %.0744 = phi i32 [ %i.afg, %bb.ch ], [ %i.aav, %bb.ce ], [ %i.aav, %bb.cj ]
  %.4385 = phi i32 [ %.2383, %bb.ch ], [ %i.aew, %bb.ce ], [ %i.afw, %bb.cj ] ; 2 uses
  %i.afx = icmp sgt i32 %.4385, %.0369.ph1010
  br i1 %i.afx, label %.thread, label %bb.co

.thread:                                          ; preds = %bb.ci, %bb.ck
  %.07441110 = phi i32 [ %.0744, %bb.ck ], [ %i.aav, %bb.ci ] ; 3 uses
  store ptr %7, ptr %i.sb, align 8, !tbaa !250
  store i16 0, ptr %7, align 16, !tbaa !196
  %i.afy = load i16, ptr %i.bg, align 8, !tbaa !234
  %i.afz = icmp eq i16 %i.sz, %i.afy
  br i1 %i.afz, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %.thread
  %i.aga = load i32, ptr %i.co, align 4, !tbaa !281 ; 2 uses
  %i.agb = icmp ne i32 %i.aga, 32002
  %i.agc = add i32 %i.aga, -31507
  %spec.select.i506 = icmp ult i32 %i.agc, -63013
  %or.cond905 = and i1 %i.agb, %spec.select.i506
  %i.agd = load i32, ptr %i.sl, align 4           ; 2 uses
  %i.age = icmp sgt i32 %i.agd, 0
  %or.cond908 = select i1 %or.cond905, i1 %i.age, i1 false
  %i.agf = icmp sgt i32 %i.agd, 1
  %or.cond911 = select i1 %or.cond908, i1 true, i1 %i.agf
  br i1 %or.cond911, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %.sroa.speculated567 = call i32 @llvm.smax.i32(i32 %.07441110, i32 1)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cl, %bb.cm, %.thread
  %.1745 = phi i32 [ %.sroa.speculated567, %bb.cm ], [ %.07441110, %bb.cl ], [ %.07441110, %.thread ]
  %i.agg = sub nsw i32 0, %.0369.ph1010
  %i.agh = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.sb, i32 noundef %i.st, i32 noundef %i.agg, i32 noundef %.1745, i1 noundef zeroext false)
  %i.agi = sub nsw i32 0, %i.agh
  br label %bb.co

bb.co:                                            ; preds = %bb.ck, %bb.cn
  %.5386 = phi i32 [ %i.agi, %bb.cn ], [ %.4385, %bb.ck ] ; 16 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.sz) #33
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.sf) #33
  %i.agj = load ptr, ptr %i.su, align 64, !tbaa !222, !nonnull !72, !align !73
  %i.agk = load atomic i8, ptr %i.agj monotonic, align 8, !range !223, !noundef !72
  %i.agl = trunc nuw i8 %i.agk to i1
  br i1 %i.agl, label %.thread874, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.agm = load ptr, ptr %i.bj, align 8, !tbaa !180 ; 4 uses
  %i.agn = load ptr, ptr %i.sv, align 32, !tbaa !180 ; 3 uses
  %i.ago = ptrtoint ptr %i.agn to i64             ; 2 uses
  %i.agp = ptrtoint ptr %i.agm to i64
  %i.agq = sub i64 %i.ago, %i.agp                 ; 2 uses
  %i.agr = sdiv exact i64 %i.agq, 72
  %i.ags = ashr i64 %i.agr, 2                     ; 3 uses
  %i.agt = icmp sgt i64 %i.ags, 0
  br i1 %i.agt, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cp
  %i.agu = mul nuw nsw i64 %i.ags, 288
  %scevgep.i.i.i = getelementptr i8, ptr %i.agm, i64 %i.agu ; 2 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cu, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.ags, %.lr.ph.i.i.i ], [ %i.ahm, %bb.cu ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.agm, %.lr.ph.i.i.i ], [ %i.ahl, %bb.cu ] ; 9 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 48
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !194
  %i.agx = load i16, ptr %i.agw, align 2, !tbaa !234
  %i.agy = icmp eq i16 %i.agx, %i.sz
  br i1 %i.agy, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.agz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 120
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !194
  %i.ahb = load i16, ptr %i.aha, align 2, !tbaa !234
  %i.ahc = icmp eq i16 %i.ahb, %i.sz
  br i1 %i.ahc, label %.loopexit.split.loop.exit42.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ahd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 192
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !194
  %i.ahf = load i16, ptr %i.ahe, align 2, !tbaa !234
  %i.ahg = icmp eq i16 %i.ahf, %i.sz
  br i1 %i.ahg, label %.loopexit.split.loop.exit44.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ahh = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 264
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !194
  %i.ahj = load i16, ptr %i.ahi, align 2, !tbaa !234
  %i.ahk = icmp eq i16 %i.ahj, %i.sz
  br i1 %i.ahk, label %.loopexit.split.loop.exit46.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ahl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 288
  %i.ahm = add nsw i64 %.052.i.i.i, -1
  %i.ahn = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.ahn, label %bb.cq, label %._crit_edge.loopexit.i.i.i, !llvm.loop !1

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.cu
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ago, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.cp
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.agq, %bb.cp ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.agm, %bb.cp ] ; 5 uses
  %i.aho = sdiv exact i64 %.pre-phi61.i.i.i, 72
  switch i64 %i.aho, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit [
    i64 3, label %bb.cv
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.cv:                                            ; preds = %._crit_edge.i.i.i
  %i.ahp = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 48
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !194
  %i.ahr = load i16, ptr %i.ahq, align 2, !tbaa !234
  %i.ahs = icmp eq i16 %i.ahr, %i.sz
  br i1 %i.ahs, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.aht = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 72
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.cw
  %.sroa.032.1.i.i.i = phi ptr [ %i.aht, %bb.cw ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 48
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !194
  %i.ahw = load i16, ptr %i.ahv, align 2, !tbaa !234
  %i.ahx = icmp eq i16 %i.ahw, %i.sz
  br i1 %i.ahx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit, label %bb.cx

bb.cx:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ahy = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 72
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.cx
  %.sroa.032.2.i.i.i = phi ptr [ %i.ahy, %bb.cx ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %.sroa.032.2.i.i.i, i64 48
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !194
  %i.aib = load i16, ptr %i.aia, align 2, !tbaa !234
  %i.aic = icmp eq i16 %i.aib, %i.sz
  %spec.select.i.i.i508 = select i1 %i.aic, ptr %.sroa.032.2.i.i.i, ptr %i.agn
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit

.loopexit.split.loop.exit42.i.i.i:                ; preds = %bb.cr
  %i.aid = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 72
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit

.loopexit.split.loop.exit44.i.i.i:                ; preds = %bb.cs
  %i.aie = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 144
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit

.loopexit.split.loop.exit46.i.i.i:                ; preds = %bb.ct
  %i.aif = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 216
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit: ; preds = %bb.cq, %._crit_edge.i.i.i, %bb.cv, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i, %.loopexit.split.loop.exit42.i.i.i, %.loopexit.split.loop.exit44.i.i.i, %.loopexit.split.loop.exit46.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i508, %._crit_edge._crit_edge57.i.i.i ], [ %i.agn, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.cv ], [ %i.aie, %.loopexit.split.loop.exit44.i.i.i ], [ %i.aid, %.loopexit.split.loop.exit42.i.i.i ], [ %i.aif, %.loopexit.split.loop.exit46.i.i.i ], [ %.sroa.032.051.i.i.i, %bb.cq ] ; 13 uses
  %i.aig = load atomic i64, ptr %i.rt seq_cst, align 8
  %i.aih = sub i64 %i.aig, %i.acn
  %i.aii = load i64, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8, !tbaa !188
  %i.aij = add i64 %i.aih, %i.aii
  store i64 %i.aij, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8, !tbaa !188
  %i.aik = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 16 ; 2 uses
  %i.ail = load i32, ptr %i.aik, align 8, !tbaa !239 ; 2 uses
  %.not450 = icmp eq i32 %i.ail, -32001
  br i1 %.not450, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit
  %i.aim = add nsw i32 %i.ail, %.5386
  %i.ain = sdiv i32 %i.aim, 2
  br label %bb.cz

bb.cz:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit, %bb.cy
  %i.aio = phi i32 [ %i.ain, %bb.cy ], [ %.5386, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit ]
  store i32 %i.aio, ptr %i.aik, align 8, !tbaa !239
  %i.aip = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 20 ; 2 uses
  %i.aiq = load i32, ptr %i.aip, align 4, !tbaa !257 ; 2 uses
  %.not451 = icmp eq i32 %i.aiq, -1024064001
  %i.air = call i32 @llvm.abs.i32(i32 %.5386, i1 true)
  %i.ais = mul nsw i32 %i.air, %.5386             ; 2 uses
  br i1 %.not451, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ait = add nsw i32 %i.aiq, %i.ais
  %i.aiu = sdiv i32 %i.ait, 2
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da
  %i.aiv = phi i32 [ %i.aiu, %bb.da ], [ %i.ais, %bb.cz ]
  store i32 %i.aiv, ptr %i.aip, align 4, !tbaa !257
  %16 = icmp sle i32 %.5386, %.0369.ph1010        ; 2 uses
  %or.cond472 = select i1 %i.aen, i1 %16, i1 false
  br i1 %or.cond472, label %bb.dt, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.aiw = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 24 ; 2 uses
  store i32 %.5386, ptr %i.aiw, align 8, !tbaa !189
  %i.aix = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 8
  store i32 %.5386, ptr %i.aix, align 8, !tbaa !237
  %i.aiy = load i32, ptr %i.aa, align 16, !tbaa !256
  %i.aiz = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 32
  store i32 %i.aiy, ptr %i.aiz, align 8, !tbaa !192
  %i.aja = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 29 ; 2 uses
  store i8 0, ptr %i.aja, align 1, !tbaa !191
  %i.ajb = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 28 ; 2 uses
  store i8 0, ptr %i.ajb, align 4, !tbaa !190
  %.not452 = icmp slt i32 %.5386, %4
  br i1 %.not452, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store i8 1, ptr %i.ajb, align 4, !tbaa !190
  br label %.sink.split

bb.de:                                            ; preds = %bb.dc
  br i1 %16, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i8 1, ptr %i.aja, align 1, !tbaa !191
  br label %.sink.split

.sink.split:                                      ; preds = %bb.dd, %bb.df
  %.0369.ph1010.sink = phi i32 [ %.0369.ph1010, %bb.df ], [ %4, %bb.dd ]
  store i32 %.0369.ph1010.sink, ptr %i.aiw, align 8, !tbaa !189
  br label %bb.dg

bb.dg:                                            ; preds = %.sink.split, %bb.de
  %i.ajc = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 48 ; 4 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 56 ; 5 uses
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !197 ; 3 uses
  %i.ajf = load ptr, ptr %i.ajc, align 8, !tbaa !194 ; 3 uses
  %i.ajg = ptrtoint ptr %i.aje to i64
  %i.ajh = ptrtoint ptr %i.ajf to i64
  %i.aji = sub i64 %i.ajg, %i.ajh
  %i.ajj = ashr exact i64 %i.aji, 1               ; 2 uses
  %i.ajk = icmp eq ptr %i.aje, %i.ajf
  br i1 %i.ajk, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ajl = sub nuw nsw i64 1, %i.ajj
  call void @_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ajc, i64 noundef %i.ajl)
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit

bb.di:                                            ; preds = %bb.dg
  %i.ajm = icmp ugt i64 %i.ajj, 1
  br i1 %i.ajm, label %bb.dj, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit

bb.dj:                                            ; preds = %bb.di
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajf, i64 2 ; 2 uses
  %.not.i.i509 = icmp eq ptr %i.aje, %i.ajn
  br i1 %.not.i.i509, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  store ptr %i.ajn, ptr %i.ajd, align 8, !tbaa !197
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit: ; preds = %bb.dh, %bb.di, %bb.dj, %bb.dk
  %i.ajo = load ptr, ptr %i.sb, align 8, !tbaa !250 ; 2 uses
  %i.ajp = load i16, ptr %i.ajo, align 2, !tbaa !234 ; 2 uses
  %.not9391000 = icmp eq i16 %i.ajp, 0
  br i1 %.not9391000, label %._crit_edge1003, label %.lr.ph1002

.lr.ph1002:                                       ; preds = %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit
  %i.ajq = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 64 ; 3 uses
  %.pre1064 = load ptr, ptr %i.ajd, align 8, !tbaa !197
  %.pre1065 = load ptr, ptr %i.ajq, align 8, !tbaa !195
  br label %bb.dl

._crit_edge1003:                                  ; preds = %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit
  br i1 %i.aen, label %bb.dr, label %bb.du

bb.dl:                                            ; preds = %.lr.ph1002, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit
  %i.ajr = phi ptr [ %.pre1065, %.lr.ph1002 ], [ %i.akp, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.ajs = phi ptr [ %.pre1064, %.lr.ph1002 ], [ %i.akq, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.ajt = phi i16 [ %i.ajp, %.lr.ph1002 ], [ %i.aks, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit ]
  %.03801001 = phi ptr [ %i.ajo, %.lr.ph1002 ], [ %i.akr, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.not.i510 = icmp eq ptr %i.ajs, %i.ajr
  br i1 %.not.i510, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  store i16 %i.ajt, ptr %i.ajs, align 2, !tbaa !196
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajs, i64 2 ; 2 uses
  store ptr %i.aju, ptr %i.ajd, align 8, !tbaa !197
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit

bb.dn:                                            ; preds = %bb.dl
  %i.ajv = load ptr, ptr %i.ajc, align 8, !tbaa !194 ; 4 uses
  %i.ajw = ptrtoint ptr %i.ajr to i64
  %i.ajx = ptrtoint ptr %i.ajv to i64             ; 2 uses
  %i.ajy = sub i64 %i.ajw, %i.ajx                 ; 5 uses
  %i.ajz = icmp eq i64 %i.ajy, 9223372036854775806
  br i1 %i.ajz, label %bb.do, label %_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.do:                                            ; preds = %bb.dn
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dn
  %i.aka = ashr exact i64 %i.ajy, 1               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aka, i64 1)
  %i.akb = add i64 %.sroa.speculated.i.i.i, %i.aka ; 2 uses
  %i.akc = icmp ult i64 %i.akb, %i.aka
  %i.akd = call i64 @llvm.umin.i64(i64 %i.akb, i64 4611686018427387903)
  %i.ake = select i1 %i.akc, i64 4611686018427387903, i64 %i.akd ; 3 uses
  %.not.i.i.i511 = icmp ne i64 %i.ake, 0
  call void @llvm.assume(i1 %.not.i.i.i511)
  %i.akf = shl nuw nsw i64 %i.ake, 1
  %i.akg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akf) #36 ; 4 uses
  %i.akh = getelementptr inbounds i8, ptr %i.akg, i64 %i.ajy ; 2 uses
  %i.aki = load i16, ptr %.03801001, align 2, !tbaa !196
  store i16 %i.aki, ptr %i.akh, align 2, !tbaa !196
  %i.akj = icmp sgt i64 %i.ajy, 0
  br i1 %i.akj, label %bb.dp, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.dp:                                            ; preds = %_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.akg, ptr align 2 %i.ajv, i64 %i.ajy, i1 false)
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.dp, %_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akh, i64 2 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ajv, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.akl = load ptr, ptr %i.ajq, align 8, !tbaa !195
  %i.akm = ptrtoint ptr %i.akl to i64
  %i.akn = sub i64 %i.akm, %i.ajx
  call void @_ZdlPvm(ptr noundef nonnull %i.ajv, i64 noundef %i.akn) #38
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.dq, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.akg, ptr %i.ajc, align 8, !tbaa !194
  store ptr %i.akk, ptr %i.ajd, align 8, !tbaa !197
  %i.ako = getelementptr inbounds nuw [2 x i8], ptr %i.akg, i64 %i.ake ; 2 uses
  store ptr %i.ako, ptr %i.ajq, align 8, !tbaa !195
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.dm, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.akp = phi ptr [ %i.ajr, %bb.dm ], [ %i.ako, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.akq = phi ptr [ %i.aju, %bb.dm ], [ %i.akk, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.akr = getelementptr inbounds nuw i8, ptr %.03801001, i64 2 ; 2 uses
  %i.aks = load i16, ptr %i.akr, align 2, !tbaa !234 ; 2 uses
  %.not939 = icmp eq i16 %i.aks, 0
  br i1 %.not939, label %._crit_edge1003, label %bb.dl, !llvm.loop !499

bb.dr:                                            ; preds = %._crit_edge1003
  %i.akt = load i64, ptr %i.bk, align 8, !tbaa !255
  %.not454 = icmp eq i64 %i.akt, 0
  br i1 %.not454, label %bb.ds, label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %i.aku = atomicrmw add ptr %i.sw, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.du

bb.dt:                                            ; preds = %bb.db
  %i.akv = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 8
  store i32 -32001, ptr %i.akv, align 8, !tbaa !237
  br label %bb.du

bb.du:                                            ; preds = %._crit_edge1003, %bb.dr, %bb.ds, %bb.dt
  %i.akw = icmp eq i32 %.5386, %.0746.ph1005
  br i1 %i.akw, label %bb.dv, label %bb.dy

bb.dv:                                            ; preds = %bb.du
  %i.akx = load i32, ptr %i.ac, align 8, !tbaa !249
  %i.aky = add nsw i32 %i.akx, 2
  %i.akz = load i32, ptr %i.sx, align 16, !tbaa !253
  %.not455 = icmp slt i32 %i.aky, %i.akz
  br i1 %.not455, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ala = load atomic i64, ptr %i.rt seq_cst, align 8
  %i.alb = and i64 %i.ala, 14
  %i.alc = icmp eq i64 %i.alb, 0
  br i1 %i.alc, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.ald = add i32 %.0746.ph1005, 31505
  %i.ale = icmp ult i32 %i.ald, 63011
  %i.alf = zext i1 %i.ale to i32
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.du
  %i.alg = phi i32 [ 0, %bb.dw ], [ 0, %bb.dv ], [ 0, %bb.du ], [ %i.alf, %bb.dx ]
  %i.alh = add nsw i32 %i.alg, %.5386             ; 2 uses
  %i.ali = icmp sgt i32 %i.alh, %.0746.ph1005
  br i1 %i.ali, label %bb.dz, label %bb.ec

bb.dz:                                            ; preds = %bb.dy
  %i.alj = icmp sgt i32 %i.alh, %.0369.ph1010
  br i1 %i.alj, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %.not456 = icmp slt i32 %.5386, %4
  br i1 %.not456, label %bb.eb, label %.thread881

.thread881:                                       ; preds = %bb.ea
  %i.alk = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.all = load i32, ptr %i.alk, align 8, !tbaa !277
  %i.alm = add nsw i32 %i.all, 1
  store i32 %i.alm, ptr %i.alk, align 8, !tbaa !277
  br label %.loopexit

bb.eb:                                            ; preds = %bb.ea
  %i.aln = add i32 %.4740.ph1007, -14
  %or.cond24 = icmp ult i32 %i.aln, -11
  %i.alo = add i32 %.5386, -31507
  %spec.select.i512 = icmp ult i32 %i.alo, -63013
  %or.cond912 = select i1 %or.cond24, i1 true, i1 %spec.select.i512
  %i.alp = add nsw i32 %.4740.ph1007, -2
  %spec.select917 = select i1 %or.cond912, i32 %.4740.ph1007, i32 %i.alp
  br label %.thread868

bb.ec:                                            ; preds = %bb.dz, %bb.dy
  %.1747 = phi i32 [ %.0746.ph1005, %bb.dy ], [ %.5386, %bb.dz ] ; 3 uses
  %i.alq = icmp ne i16 %i.sz, %.sroa.0623.0.ph1006
end_hunk_0
begin_hunk_1_@_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii:bb.a
._crit_edge:                                      ; preds = %bb.g
  %.pre22 = sub nsw i32 100, %2
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = add nsw i32 %0, 32000
  %i.l = sub nsw i32 100, %2                      ; 2 uses
  %i.m = icmp sgt i32 %i.k, %i.l
  br i1 %i.m, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.pre-phi23 = phi i32 [ %.pre22, %._crit_edge ], [ %i.l, %bb.h ]
  %i.n = add nsw i32 %0, 31753
  %i.o = icmp sgt i32 %i.n, %.pre-phi23
  %i.p = add nsw i32 %1, %0
  %spec.select20 = select i1 %i.o, i32 -31506, i32 %i.p
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e, %bb.f, %bb.h, %bb.d, %bb.a
  %.0 = phi i32 [ 32002, %bb.a ], [ 31506, %bb.d ], [ %0, %bb.f ], [ %spec.select20, %bb.i ], [ -31506, %bb.h ], [ %spec.select, %bb.e ]
  ret i32 %.0
}

declare void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext, i32 noundef, i16, i32 noundef, i8 noundef zeroext) local_unnamed_addr #6

declare noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 39 uses
  %7 = alloca %"struct.Stockfish::StateInfo", align 8 ; 6 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.Stockfish::ValueList.410", align 8 ; 5 uses
  %9 = alloca %"class.Stockfish::ValueList.410", align 8 ; 5 uses
  %10 = alloca %"class.std::tuple.201", align 8   ; 18 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %11 = alloca %"class.std::tuple.201", align 8   ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %12 = alloca %class.anon.422, align 8           ; 8 uses
  %13 = alloca %"class.Stockfish::MovePicker", align 8 ; 6 uses
  %i.f = alloca [6 x ptr], align 16               ; 11 uses
  %14 = alloca %"class.Stockfish::MovePicker", align 8 ; 7 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !409
  %i.g = xor i1 %6, true                          ; 3 uses
  %i.h = icmp slt i32 %5, 1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.gb

bb.c:                                             ; preds = %bb.a
  %.sroa.speculated884 = tail call i32 @llvm.umin.i32(i32 %5, i32 245)
  %i.j = icmp slt i32 %3, 0
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !249
  %i.m = tail call noundef zeroext i1 @_ZNK9Stockfish8Position19upcoming_repetitionEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.l) #33
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11419800
  %i.o = load atomic i64, ptr %i.n seq_cst, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 2                          ; 2 uses
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  %.not564.not = icmp sgt i32 %i.q, %4
  br i1 %.not564.not, label %bb.gb, label %._crit_edge1289

._crit_edge1289:                                  ; preds = %bb.e
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !409
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge1289, %bb.d, %bb.c
  %i.s = phi ptr [ %.pre, %._crit_edge1289 ], [ %2, %bb.d ], [ %2, %bb.c ] ; 9 uses
  %.01030 = phi i32 [ %i.r, %._crit_edge1289 ], [ %3, %bb.d ], [ %3, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  store i64 0, ptr %i.t, align 8, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  store i64 0, ptr %i.u, align 8, !tbaa !269
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 15 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !218  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.y = load i64, ptr %i.x, align 8, !tbaa !219
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 44 ; 2 uses
  %i.ab = zext i1 %i.z to i8
  store i8 %i.ab, ptr %i.aa, align 4, !tbaa !270
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !271 ; 2 uses
  %i.ae = icmp ne i8 %i.ad, 0                     ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 620 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !177 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i32 0, ptr %i.ah, align 8, !tbaa !272
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 11421120 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 64, !tbaa !131
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 11422176
  %i.am = load ptr, ptr %i.al, align 32, !tbaa !134 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !274
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(120) %i.am, ptr noundef nonnull align 64 dereferenceable(14279296) %0) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 11422208 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 64, !tbaa !222, !nonnull !72, !align !73
  %i.as = load atomic i8, ptr %i.ar monotonic, align 8, !range !223, !noundef !72
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !249
  %i.aw = tail call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.av) #33
  br i1 %i.aw, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load i32, ptr %i.au, align 8, !tbaa !249 ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 245
  br i1 %i.ay, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !249
  %i.bb = icmp sgt i32 %i.ba, 245
  br i1 %i.bb, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bc = load i8, ptr %i.aa, align 4, !tbaa !270, !range !223, !noundef !72
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !176, !nonnull !72, !align !73 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload.i = load i64, ptr %i.bg, align 8, !tbaa !55 ; 2 uses
  tail call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.bf, i64 noundef %.sroa.0.0.copyload.i)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !138
  %i.bj = getelementptr inbounds nuw [160 x i8], ptr %i.bi, i64 %.sroa.0.0.copyload.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !140
  switch i8 %i.bl, label %bb.p [
    i8 -1, label %bb.n
    i8 2, label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit
    i8 1, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  tail call void @abort() #37
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  br label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit

bb.p:                                             ; preds = %bb.m
  unreachable

_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit: ; preds = %bb.m, %bb.o
  %.0.i.i.i.in.i.i.i = phi ptr [ %i.bm, %bb.o ], [ %i.bj, %bb.m ]
  %.0.i.i.i.i.i.i = load ptr, ptr %.0.i.i.i.in.i.i.i, align 8, !tbaa !142
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 13951616
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 11419832
  %i.bq = load i8, ptr %i.af, align 4, !tbaa !177
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !150
  %i.bu = tail call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.bn, ptr noundef nonnull align 64 dereferenceable(327680) %i.bo, i32 noundef %i.bt) #33
  br label %bb.ga

bb.q:                                             ; preds = %bb.l, %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11419800
  %i.bw = load atomic i64, ptr %i.bv seq_cst, align 8
  %i.bx = trunc i64 %i.bw to i32
  %i.by = and i32 %i.bx, 2
  %i.bz = add nsw i32 %i.by, -1
  br label %bb.ga

bb.r:                                             ; preds = %bb.j
  %i.ca = add nsw i32 %i.ax, -32000
  %.sroa.speculated824 = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 %.01030) ; 7 uses
  %i.cb = sub nsw i32 31999, %i.ax
  %.sroa.speculated819 = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.cb) ; 34 uses
  %.not565 = icmp slt i32 %.sroa.speculated824, %.sroa.speculated819
  br i1 %.not565, label %bb.s, label %bb.ga

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds i8, ptr %i.s, i64 -28
  %i.cd = load i16, ptr %i.cc, align 4, !tbaa !234 ; 2 uses
  switch i16 %i.cd, label %bb.t [
    i16 65, label %bb.u
    i16 0, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.ce = trunc i16 %i.cd to i8
  %i.cf = and i8 %i.ce, 63
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.s, %bb.t
  %i.cg = phi i8 [ %i.cf, %bb.t ], [ 64, %bb.s ], [ 64, %bb.s ] ; 9 uses
  %i.ch = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !275 ; 3 uses
  store i32 0, ptr %i.ch, align 4, !tbaa !275
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  store i32 0, ptr %i.cj, align 4, !tbaa !276
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  store i32 0, ptr %i.ck, align 8, !tbaa !277
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 30
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !196 ; 4 uses
  %i.cn = load ptr, ptr %i.v, align 8, !tbaa !218 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !265 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 52
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !266 ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 14
  br i1 %i.cs, label %_ZNK9Stockfish8Position3keyEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = add nsw i32 %i.cr, -14
  %i.cu = lshr i32 %i.ct, 3
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = mul i64 %i.cv, 6364136223846793005
  %i.cx = add i64 %i.cw, 1442695040888963407
  %i.cy = xor i64 %i.cx, %i.cp
  br label %_ZNK9Stockfish8Position3keyEv.exit

_ZNK9Stockfish8Position3keyEv.exit:               ; preds = %bb.u, %bb.v
  %i.cz = phi i64 [ %i.cy, %bb.v ], [ %i.cp, %bb.u ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 11422216 ; 8 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !179, !nonnull !72, !align !73
  call void @_ZNK9Stockfish18TranspositionTable5probeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.201") align 8 %10, ptr noundef nonnull align 8 dereferenceable(17) %i.db, i64 noundef %i.cz) #33
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 28 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 15 uses
  %i.de = load i8, ptr %i.dc, align 4, !tbaa !267, !range !223, !noundef !72 ; 2 uses
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !409 ; 15 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 46
  store i8 %i.de, ptr %i.dg, align 2, !tbaa !278
  %i.dh = trunc nuw i8 %i.de to i1                ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 13 uses
  br i1 %i.dh, label %bb.w, label %.thread1045

bb.w:                                             ; preds = %_ZNK9Stockfish8Position3keyEv.exit
  %.sroa.0188.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !196 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !281
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !249
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 52
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !266
  %i.dp = call fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii(i32 noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.do)
  store i32 %i.dp, ptr %i.di, align 4, !tbaa !281
  %.not1169 = icmp eq i16 %i.cm, 0
  br i1 %.not1169, label %bb.y, label %bb.x

.thread1045:                                      ; preds = %_ZNK9Stockfish8Position3keyEv.exit
  store i16 0, ptr %i.dd, align 8, !tbaa !196
  store i32 32002, ptr %i.di, align 4, !tbaa !281
  %.not1168 = icmp eq i16 %i.cm, 0
  br i1 %.not1168, label %.thread1052, label %bb.x

.thread1052:                                      ; preds = %.thread1045
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 45
  store i8 0, ptr %i.dq, align 1, !tbaa !282
  br label %bb.ab

bb.x:                                             ; preds = %.thread1045, %bb.w
  %.sroa.0188.010431049 = phi i16 [ 0, %.thread1045 ], [ %.sroa.0188.0.copyload, %bb.w ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 45
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !282, !range !223, !noundef !72
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 25
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !407, !range !223, !noundef !72
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dv = phi i1 [ true, %bb.x ], [ false, %bb.y ] ; 2 uses
  %.sroa.0188.010431047 = phi i16 [ %.sroa.0188.010431049, %bb.x ], [ %.sroa.0188.0.copyload, %bb.y ] ; 5 uses
  %i.dw = phi i8 [ %i.ds, %bb.x ], [ %i.du, %bb.y ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.df, i64 45
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !282
  %.not1170 = icmp eq i16 %.sroa.0188.010431047, 0
  br i1 %.not1170, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dy = and i16 %.sroa.0188.010431047, 63
  %i.dz = zext nneg i16 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !283
  %i.ec = icmp ne i8 %i.eb, 0
  %.not.i.i = icmp ult i16 %.sroa.0188.010431047, -16384
  %or.cond.not.i.i = and i1 %.not.i.i, %i.ec
  %i.ed = icmp slt i16 %.sroa.0188.010431047, -16384
  %spec.select.i.i = or i1 %i.ed, %or.cond.not.i.i
  %i.ee = and i16 %.sroa.0188.010431047, 12288
  %i.ef = icmp eq i16 %i.ee, 12288
  %i.eg = or i1 %i.ef, %spec.select.i.i
  br label %bb.ab

bb.ab:                                            ; preds = %.thread1052, %bb.aa, %bb.z
  %i.eh = phi i1 [ %i.dv, %bb.z ], [ %i.dv, %bb.aa ], [ false, %.thread1052 ] ; 6 uses
  %i.ei = phi i1 [ false, %bb.z ], [ %i.eg, %bb.aa ], [ false, %.thread1052 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 11419656 ; 7 uses
  %i.ek = load i8, ptr %i.af, align 4, !tbaa !177 ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.df, i64 -28
  %i.em = load i16, ptr %i.el, align 4, !tbaa !196 ; 2 uses
  %i.en = zext i8 %i.ek to i64                    ; 5 uses
  %i.eo = icmp ult i8 %i.ek, 2
  br i1 %i.eo, label %_ZNK9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit25.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.47, i64 noundef %i.en, i64 noundef 2) #37
  unreachable

_ZNK9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit25.i: ; preds = %bb.ab
  %.val = load ptr, ptr %i.ej, align 8, !tbaa !151 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !160 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.es = load i64, ptr %i.er, align 8, !tbaa !285 ; 4 uses
  %i.et = load ptr, ptr %i.v, align 8, !tbaa !218 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !286
  %i.ew = and i64 %i.ev, %i.es
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %i.ew
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.en
  %i.ez = load atomic i16, ptr %i.ey monotonic, align 2
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !287
  %i.fc = and i64 %i.fb, %i.es
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %i.fc
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.en
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fg = load atomic i16, ptr %i.ff monotonic, align 2
  %i.fh = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !55
  %i.fj = and i64 %i.fi, %i.es
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %i.fj
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.en
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fn = load atomic i16, ptr %i.fm monotonic, align 2
  %i.fo = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !55
  %i.fq = and i64 %i.fp, %i.es
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %i.fq
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.en
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 6
  %i.fu = load atomic i16, ptr %i.ft monotonic, align 2
  switch i16 %i.em, label %bb.ad [
    i16 65, label %_ZN9Stockfish12_GLOBAL__N_116correction_valueERKNS_6Search6WorkerERKNS_8PositionEPKNS1_5StackE.exit
    i16 0, label %_ZN9Stockfish12_GLOBAL__N_116correction_valueERKNS_6Search6WorkerERKNS_8PositionEPKNS1_5StackE.exit
  ]

bb.ad:                                            ; preds = %_ZNK9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit25.i
  %i.fv = getelementptr inbounds i8, ptr %i.df, i64 -96
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !247
  %i.fx = and i16 %i.em, 63
  %i.fy = zext nneg i16 %i.fx to i64              ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !283
  %i.gb = zext i8 %i.ga to i64                    ; 2 uses
  %i.gc = getelementptr inbounds nuw [128 x i8], ptr %i.fw, i64 %i.gb
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.gc, i64 %i.fy
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !173
  %i.gf = sext i16 %i.ge to i32
  %i.gg = getelementptr inbounds i8, ptr %i.df, i64 -208
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !247
  %i.gi = getelementptr inbounds nuw [128 x i8], ptr %i.gh, i64 %i.gb
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.fy
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !173
  %i.gl = sext i16 %i.gk to i32
  %i.gm = add nsw i32 %i.gl, %i.gf
  %i.gn = mul nsw i32 %i.gm, 7841
  br label %_ZN9Stockfish12_GLOBAL__N_116correction_valueERKNS_6Search6WorkerERKNS_8PositionEPKNS1_5StackE.exit

_ZN9Stockfish12_GLOBAL__N_116correction_valueERKNS_6Search6WorkerERKNS_8PositionEPKNS1_5StackE.exit: ; preds = %_ZNK9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit25.i, %_ZNK9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit25.i, %bb.ad
  %i.go = phi i32 [ %i.gn, %bb.ad ], [ 62728, %_ZNK9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit25.i ], [ 62728, %_ZNK9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit25.i ]
  %i.gp = sext i16 %i.fu to i32
  %i.gq = sext i16 %i.fn to i32
  %i.gr = sext i16 %i.fg to i32
  %i.gs = sext i16 %i.ez to i32
  %i.gt = mul nsw i32 %i.gs, 10347
  %i.gu = mul nsw i32 %i.gr, 8821
  %i.gv = add nsw i32 %i.gu, %i.gt
  %i.gw = add nsw i32 %i.gp, %i.gq
  %i.gx = mul nsw i32 %i.gw, 11665
  %i.gy = add nsw i32 %i.gv, %i.gx
  %i.gz = add nsw i32 %i.gy, %i.go                ; 2 uses
  store i32 %i.gz, ptr %i.d, align 4, !tbaa !150
  %i.ha = getelementptr inbounds nuw i8, ptr %i.df, i64 44
  %i.hb = load i8, ptr %i.ha, align 4, !tbaa !270, !range !223, !noundef !72
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_116correction_valueERKNS_6Search6WorkerERKNS_8PositionEPKNS1_5StackE.exit
  %i.hd = getelementptr inbounds i8, ptr %i.df, i64 -80
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !248 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  store i32 %i.he, ptr %i.hf, align 8, !tbaa !248
  br label %bb.an

bb.af:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_116correction_valueERKNS_6Search6WorkerERKNS_8PositionEPKNS1_5StackE.exit
  br i1 %i.eh, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !248 ; 3 uses
  br label %bb.an

bb.ah:                                            ; preds = %bb.af
  br i1 %i.dh, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.hi = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !288 ; 2 uses
  %.not1171 = icmp eq i32 %i.hj, 32002
  br i1 %.not1171, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hk = call noundef i32 @_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1)
  %.pre1290 = load i32, ptr %i.d, align 4, !tbaa !150
  %.pre1291 = load ptr, ptr %i.a, align 8, !tbaa !409
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.hl = phi ptr [ %i.df, %bb.ai ], [ %.pre1291, %bb.aj ] ; 3 uses
  %i.hm = phi i32 [ %i.gz, %bb.ai ], [ %.pre1290, %bb.aj ]
  %.0535 = phi i32 [ %i.hj, %bb.ai ], [ %i.hk, %bb.aj ] ; 3 uses
  %i.hn = sdiv i32 %i.hm, 131072
  %i.ho = add nsw i32 %i.hn, %.0535
  %.sroa.speculate.load.false.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.ho, i32 -31506)
  %.sroa.speculated.i = call noundef range(i32 -31506, 31507) i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i, i32 31506) ; 6 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  store i32 %.sroa.speculated.i, ptr %i.hp, align 8, !tbaa !248
  %i.hq = load i32, ptr %i.di, align 4, !tbaa !281 ; 3 uses
  %.not1172 = icmp eq i32 %i.hq, 32002
  br i1 %.not1172, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.hs = load i8, ptr %i.hr, align 8, !tbaa !289
  %i.ht = zext i8 %i.hs to i32
  %i.hu = icmp sgt i32 %i.hq, %.sroa.speculated.i
  %i.hv = select i1 %i.hu, i32 2, i32 1
  %i.hw = and i32 %i.hv, %i.ht
  %.not566 = icmp eq i32 %i.hw, 0
  %spec.select = select i1 %.not566, i32 %.sroa.speculated.i, i32 %i.hq
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.hx = call noundef i32 @_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1) ; 3 uses
  %i.hy = load i32, ptr %i.d, align 4, !tbaa !150
  %i.hz = sdiv i32 %i.hy, 131072
  %i.ia = add nsw i32 %i.hz, %i.hx
  %.sroa.speculate.load.false.sroa.speculated.i671 = call i32 @llvm.smax.i32(i32 %i.ia, i32 -31506)
  %.sroa.speculated.i672 = call noundef range(i32 -31506, 31507) i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i671, i32 31506) ; 2 uses
  %i.ib = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  store i32 %.sroa.speculated.i672, ptr %i.ic, align 8, !tbaa !248
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 45
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !282, !range !223, !noundef !72
  %i.if = trunc nuw i8 %i.ie to i1
  %i.ig = load ptr, ptr %i.da, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.ih = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.ig) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %i.cz, i32 noundef 32002, i1 noundef zeroext %i.if, i8 noundef zeroext 0, i32 noundef -2, i16 0, i32 noundef %i.hx, i8 noundef zeroext %i.ih) #33
  %.pre1292 = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre1292, i64 32
  %.pre1293 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !248
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.ag, %bb.ak, %bb.am, %bb.ae
  %i.ii = phi i32 [ %i.he, %bb.ae ], [ %i.hh, %bb.ag ], [ %.pre1293, %bb.am ], [ %.sroa.speculated.i, %bb.al ], [ %.sroa.speculated.i, %bb.ak ] ; 3 uses
  %i.ij = phi ptr [ %i.df, %bb.ae ], [ %i.df, %bb.ag ], [ %.pre1292, %bb.am ], [ %i.hl, %bb.al ], [ %i.hl, %bb.ak ] ; 3 uses
  %.1536 = phi i32 [ 32002, %bb.ae ], [ %i.hh, %bb.ag ], [ %i.hx, %bb.am ], [ %.0535, %bb.al ], [ %.0535, %bb.ak ] ; 2 uses
  %.0524 = phi i32 [ %i.he, %bb.ae ], [ %i.hh, %bb.ag ], [ %.sroa.speculated.i672, %bb.am ], [ %spec.select, %bb.al ], [ %.sroa.speculated.i, %bb.ak ] ; 5 uses
  %i.ik = getelementptr inbounds i8, ptr %i.ij, i64 -80
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !248
  %i.im = icmp sgt i32 %i.ii, %i.il
  %i.in = zext i1 %i.im to i8
  store i8 %i.in, ptr %i.b, align 1, !tbaa !267
  %i.io = getelementptr inbounds i8, ptr %i.ij, i64 -24
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !248 ; 2 uses
  %i.iq = sub nsw i32 0, %i.ip
  %i.ir = icmp sgt i32 %i.ii, %i.iq               ; 2 uses
  %i.is = zext i1 %i.ir to i8
  store i8 %i.is, ptr %i.c, align 1, !tbaa !267
  %i.it = icmp slt i32 %i.ci, 3
  %or.cond = select i1 %i.it, i1 true, i1 %i.ir
  %not.or.cond = xor i1 %or.cond, true
  %i.iu = zext i1 %not.or.cond to i32
  %spec.select1142 = add nuw nsw i32 %.sroa.speculated884, %i.iu ; 2 uses
  %i.iv = icmp sgt i32 %i.ci, 1
  %i.iw = icmp samesign ugt i32 %spec.select1142, 1
  %or.cond15 = select i1 %i.iv, i1 %i.iw, i1 false
  %i.ix = add nsw i32 %i.ip, %i.ii
  %i.iy = icmp sgt i32 %i.ix, 173
  %or.cond1144 = select i1 %or.cond15, i1 %i.iy, i1 false
  %i.iz = sext i1 %or.cond1144 to i32
  %.11035 = add nsw i32 %spec.select1142, %i.iz   ; 20 uses
  br i1 %i.eh, label %.thread1063, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ja = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !293
  %i.jc = load i32, ptr %i.di, align 4, !tbaa !281 ; 3 uses
  %i.jd = icmp sle i32 %i.jc, %.sroa.speculated819
  %.neg = sext i1 %i.jd to i32
  %i.je = add nsw i32 %.11035, %.neg
  %i.jf = icmp sgt i32 %i.jb, %i.je
  %i.jg = icmp ne i32 %i.jc, 32002
  %or.cond1145 = and i1 %i.jg, %i.jf
  br i1 %or.cond1145, label %bb.ap, label %bb.bh

bb.ap:                                            ; preds = %bb.ao
  %i.jh = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ji = load i8, ptr %i.jh, align 8, !tbaa !289
  %i.jj = zext i8 %i.ji to i32
  %i.jk = icmp sge i32 %i.jc, %.sroa.speculated819 ; 3 uses
  %i.jl = select i1 %i.jk, i32 2, i32 1
  %i.jm = and i32 %i.jl, %i.jj
  %.not567 = icmp eq i32 %i.jm, 0
  br i1 %.not567, label %bb.bh, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jn = xor i1 %6, %i.jk
  %i.jo = icmp samesign ult i32 %.11035, 6
  %or.cond17.not = select i1 %i.jn, i1 %i.jo, i1 false
  br i1 %or.cond17.not, label %bb.bh, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jp = load i16, ptr %i.dd, align 8, !tbaa !234 ; 2 uses
  %15 = icmp ne i16 %i.jp, 0
  %or.cond1146.not = and i1 %15, %i.jk
  br i1 %or.cond1146.not, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  br i1 %i.ei, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jq = mul nuw nsw i32 %.11035, 132
  %i.jr = add nsw i32 %i.jq, -72
  %.sroa.speculated812 = call i32 @llvm.umin.i32(i32 %i.jr, i32 985)
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_122update_quiet_historiesERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.ij, ptr noundef nonnull align 64 dereferenceable(14279296) %0, i16 %i.jp, i32 noundef %.sroa.speculated812)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.not570 = icmp eq i8 %i.cg, 64
  br i1 %.not570, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.js = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 -16
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !272
  %i.jv = icmp sgt i32 %i.ju, 3
  %or.cond19 = or i1 %i.ae, %i.jv
  br i1 %or.cond19, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jw = getelementptr inbounds i8, ptr %i.js, i64 -56
  %i.jx = zext nneg i8 %i.cg to i64
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !283
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef nonnull %i.jw, i8 noundef zeroext %i.jz, i8 noundef zeroext %i.cg, i32 noundef -2060)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.au, %bb.av, %bb.aw, %bb.ar
  %i.ka = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 52
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !266
  %i.kd = icmp slt i32 %i.kc, 96
  br i1 %i.kd, label %bb.ay, label %bb.bh

bb.ay:                                            ; preds = %bb.ax
  %i.ke = icmp samesign ugt i32 %.11035, 7
  br i1 %i.ke, label %bb.az, label %bb.bg

bb.az:                                            ; preds = %bb.ay
  %i.kf = load i16, ptr %i.dd, align 8, !tbaa !234 ; 2 uses
  %.not1173 = icmp eq i16 %i.kf, 0
  br i1 %.not1173, label %bb.bg, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kg = call noundef zeroext i1 @_ZNK9Stockfish8Position12pseudo_legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.kf) #33
  br i1 %i.kg, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %.sroa.0177.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !196
  %i.kh = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0177.0.copyload) #33
  br i1 %i.kh, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.ki = load i32, ptr %i.di, align 4, !tbaa !281
  %i.kj = add i32 %i.ki, -31507
  %spec.select.i674 = icmp ult i32 %i.kj, -63013
  br i1 %spec.select.i674, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.sroa.0176.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !196
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEPKNS_18TranspositionTableE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0176.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %7, ptr noundef null)
  %i.kk = load ptr, ptr %i.v, align 8, !tbaa !218 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 64
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !265 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 52
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !266 ; 2 uses
  %i.kp = icmp slt i32 %i.ko, 14
  br i1 %i.kp, label %_ZNK9Stockfish8Position3keyEv.exit675, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kq = add nsw i32 %i.ko, -14
  %i.kr = lshr i32 %i.kq, 3
  %i.ks = zext nneg i32 %i.kr to i64
  %i.kt = mul i64 %i.ks, 6364136223846793005
  %i.ku = add i64 %i.kt, 1442695040888963407
  %i.kv = xor i64 %i.ku, %i.km
  br label %_ZNK9Stockfish8Position3keyEv.exit675

_ZNK9Stockfish8Position3keyEv.exit675:            ; preds = %bb.bd, %bb.be
  %i.kw = phi i64 [ %i.kv, %bb.be ], [ %i.km, %bb.bd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.kx = load ptr, ptr %i.da, align 8, !tbaa !179, !nonnull !72, !align !73
  call void @_ZNK9Stockfish18TranspositionTable5probeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.201") align 8 %11, ptr noundef nonnull align 8 dereferenceable(17) %i.kx, i64 noundef %i.kw) #33
  %.sroa.0173.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !196
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0173.0.copyload) #33
  %i.ky = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !281 ; 2 uses
  %.not1174 = icmp eq i32 %i.kz, 32002
  %i.la = load i32, ptr %i.di, align 4, !tbaa !281 ; 3 uses
  br i1 %.not1174, label %.thread1054, label %bb.bf

.thread1054:                                      ; preds = %_ZNK9Stockfish8Position3keyEv.exit675
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %.thread1079

bb.bf:                                            ; preds = %_ZNK9Stockfish8Position3keyEv.exit675
  %i.lb = icmp sge i32 %i.la, %.sroa.speculated819
  %i.lc = sub nsw i32 0, %i.kz
  %i.ld = icmp sle i32 %.sroa.speculated819, %i.lc
  %not. = xor i1 %i.ld, %i.lb
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br i1 %not., label %bb.bh, label %.thread1079

bb.bg:                                            ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay
  %i.le = load i32, ptr %i.di, align 4, !tbaa !281
  br label %.thread1079

bb.bh:                                            ; preds = %bb.ax, %bb.bf, %bb.aq, %bb.ap, %bb.ao
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 11422184
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !410 ; 3 uses
  %.not571 = icmp eq i32 %i.lg, 0
  br i1 %.not571, label %.thread1063, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !150
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !150
  %i.ll = add nsw i32 %i.lk, %i.li                ; 2 uses
  %.not572 = icmp sgt i32 %i.ll, %i.lg
  br i1 %.not572, label %.thread1063, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lm = icmp slt i32 %i.ll, %i.lg
  br i1 %i.lm, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 11422192
  %i.lo = load i32, ptr %i.ln, align 16, !tbaa !411
  %.not573 = icmp slt i32 %.11035, %i.lo
  br i1 %.not573, label %.thread1063, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.lp = load ptr, ptr %i.v, align 8, !tbaa !218 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 52
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !266
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %bb.bm, label %.thread1063

bb.bm:                                            ; preds = %bb.bl
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !412
  %i.lv = and i32 %i.lu, 15
  %.not1175 = icmp eq i32 %i.lv, 0
  br i1 %.not1175, label %bb.bn, label %.thread1063

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.lw = call noundef i32 @_ZN9Stockfish10Tablebases9probe_wdlERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.e) #33 ; 3 uses
  %i.lx = load i64, ptr %i.ai, align 64, !tbaa !131
  %i.ly = icmp eq i64 %i.lx, 0
  br i1 %i.ly, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 11422176
  %i.ma = load ptr, ptr %i.lz, align 32, !tbaa !134
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 56
  store i32 0, ptr %i.mb, align 8, !tbaa !300
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.mc = load i32, ptr %i.e, align 4, !tbaa !414
  %.not574 = icmp eq i32 %i.mc, 0
  br i1 %.not574, label %.thread1067, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 11419808 ; 2 uses
  %i.me = load atomic i64, ptr %i.md monotonic, align 32
  %i.mf = add i64 %i.me, 1
  store atomic i64 %i.mf, ptr %i.md monotonic, align 32
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 11422189
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !415, !range !223, !noundef !72
  %i.mi = zext nneg i8 %i.mh to i32               ; 3 uses
  %i.mj = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !249 ; 4 uses
  %i.mm = sub nsw i32 0, %i.mi
  %.not1176 = icmp slt i32 %i.lw, %i.mm
  br i1 %.not1176, label %.thread1061, label %bb.br

.thread1061:                                      ; preds = %bb.bq
  %.neg575 = add nsw i32 %i.ml, -31753            ; 2 uses
  %.not576 = icmp sgt i32 %.neg575, %.sroa.speculated824
  br i1 %.not576, label %.thread1067, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.mn = icmp sgt i32 %i.lw, %i.mi
  %i.mo = shl nsw i32 %i.lw, 1
  %i.mp = mul nuw nsw i32 %i.mo, %i.mi
  br i1 %i.mn, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.mq = sub nsw i32 31753, %i.ml                ; 2 uses
  %.not577 = icmp slt i32 %i.mq, %.sroa.speculated819
  br i1 %.not577, label %.thread1067, label %bb.bt

end_hunk_1
