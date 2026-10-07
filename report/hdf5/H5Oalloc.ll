Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Oalloc?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@H5O__condense_header:bb.a
bb.em:                                            ; preds = %bb.el
  %i.zv = load ptr, ptr %i.s, align 8, !tbaa !28  ; 2 uses
  %i.zw = getelementptr inbounds nuw [48 x i8], ptr %i.zv, i64 %i.xh
  %i.zx = add i32 %.077197.i, 1
  %i.zy = zext i32 %i.zx to i64
  %i.zz = getelementptr inbounds nuw [48 x i8], ptr %i.zv, i64 %i.zy
  %i.aaa = sub nuw i64 %i.zt, %i.xh
  %i.aab = mul i64 %i.aaa, 48
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.zw, ptr align 8 %i.zz, i64 %i.aab, i1 false)
  %.pre.i57 = load i64, ptr %i.t, align 8, !tbaa !41
  %.pre248.i = add i64 %.pre.i57, -1
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.pre-phi.i49 = phi i64 [ %.pre248.i, %bb.em ], [ %i.zt, %bb.el ]
  store i64 %.pre-phi.i49, ptr %i.t, align 8, !tbaa !41
  %i.aac = call fastcc i32 @H5O__remove_empty_chunks(ptr noundef %0, ptr noundef nonnull %1) ; 2 uses
  %i.aad = icmp slt i32 %i.aac, 0
  br i1 %i.aad, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.aae = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.aaf = load i64, ptr @H5E_CANTPACK_g, align 8, !tbaa !29
  %i.aag = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__merge_null, i32 noundef 2020, i64 noundef %i.aae, i64 noundef %i.aaf, ptr noundef nonnull @.str.23) #7 ; 0 uses
  br label %.loopexit72

bb.ep:                                            ; preds = %bb.en
  %.not107.i = icmp eq i32 %i.aac, 0
  br i1 %.not107.i, label %bb.eq, label %.thread129.thread.i

bb.eq:                                            ; preds = %bb.ep
  %i.aah = load i64, ptr %i.xg, align 8, !tbaa !51
  %i.aai = icmp ugt i64 %i.aah, 65535
  br i1 %i.aai, label %bb.er, label %.thread129.thread.i

bb.er:                                            ; preds = %bb.eq
  %i.aaj = load i32, ptr %i.xe, align 8, !tbaa !46 ; 10 uses
  %i.aak = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.aal = zext i32 %i.aaj to i64                 ; 2 uses
  %i.aam = getelementptr inbounds nuw [40 x i8], ptr %i.aak, i64 %i.aal ; 4 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 24 ; 5 uses
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !40 ; 6 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aam, i64 8 ; 4 uses
  %i.aaq = load i64, ptr %i.aap, align 8, !tbaa !38 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aam, i64 16 ; 2 uses
  %i.aas = load i64, ptr %i.aar, align 8, !tbaa !39
  %i.aat = sub i64 %i.aaq, %i.aas                 ; 2 uses
  %i.aau = load i8, ptr %i.w, align 8, !tbaa !30
  %i.aav = icmp eq i8 %i.aau, 1                   ; 3 uses
  %i.aaw = select i1 %i.aav, i64 24, i64 22       ; 2 uses
  %.neg.i.i = select i1 %i.aav, i64 0, i64 -4     ; 3 uses
  br i1 %i.aav, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.aax = load i8, ptr %i.x, align 1, !tbaa !31
  %i.aay = lshr i8 %i.aax, 1
  %i.aaz = and i8 %i.aay, 2
  %i.aba = or disjoint i8 %i.aaz, 4
  %i.abb = zext nneg i8 %i.aba to i64
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.abc = phi i64 [ %i.abb, %bb.es ], [ 8, %bb.er ] ; 5 uses
  %i.abd = load i8, ptr @H5O_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.abe = trunc nuw i8 %i.abd to i1
  %i.abf = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.abg = trunc nuw i8 %i.abf to i1
  %i.abh = xor i1 %i.abg, true
  %i.abi = select i1 %i.abe, i1 true, i1 %i.abh
  br i1 %i.abi, label %bb.eu, label %.thread129.thread.i, !prof !12

bb.eu:                                            ; preds = %bb.et
  %i.abj = call ptr @H5O__chunk_protect(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.aaj) #7 ; 4 uses
  %i.abk = icmp eq ptr %i.abj, null
  br i1 %i.abk, label %.thread257.i.i, label %bb.ev

.thread257.i.i:                                   ; preds = %bb.eu
  %i.abl = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.abm = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !29
  %i.abn = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__alloc_shrink_chunk, i32 noundef 2348, i64 noundef %i.abl, i64 noundef %i.abm, ptr noundef nonnull @.str.19) #7 ; 0 uses
  br label %H5O__alloc_shrink_chunk.exit.thread.i

bb.ev:                                            ; preds = %bb.eu
  %i.abo = load i64, ptr %i.t, align 8, !tbaa !41 ; 3 uses
  %invariant.gep.i.i = getelementptr i8, ptr %i.aao, i64 %.neg.i.i
  %.not276.i.i = icmp eq i64 %i.abo, 0
  br i1 %.not276.i.i, label %._crit_edge.i.i50, label %.lr.ph265.i.i

.lr.ph265.i.i:                                    ; preds = %bb.ev
  %i.abp = add i64 %i.abo, -1                     ; 2 uses
  %i.abq = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.abr = getelementptr inbounds nuw [48 x i8], ptr %i.abq, i64 %i.abp
  %i.abs = sub nsw i64 0, %i.abc
  br label %bb.ew

bb.ew:                                            ; preds = %bb.fg, %.lr.ph265.i.i
  %i.abt = phi i64 [ %i.abo, %.lr.ph265.i.i ], [ %i.adk, %bb.fg ] ; 2 uses
  %.0207263.i.i = phi i64 [ %i.abp, %.lr.ph265.i.i ], [ %i.adl, %bb.fg ] ; 4 uses
  %.0215262.i.i = phi i64 [ %i.aat, %.lr.ph265.i.i ], [ %.1216.i.i, %bb.fg ] ; 4 uses
  %.0219261.i.i = phi ptr [ %i.abr, %.lr.ph265.i.i ], [ %i.adm, %bb.fg ] ; 6 uses
  %i.abu = load ptr, ptr %.0219261.i.i, align 8, !tbaa !47
  %i.abv = load i32, ptr %i.abu, align 8, !tbaa !49
  %i.abw = icmp eq i32 %i.abv, 0
  br i1 %i.abw, label %bb.ex, label %bb.fg

bb.ex:                                            ; preds = %bb.ew
  %i.abx = getelementptr inbounds nuw i8, ptr %.0219261.i.i, i64 16
  %i.aby = load i32, ptr %i.abx, align 8, !tbaa !46
  %i.abz = icmp eq i32 %i.aaj, %i.aby
  br i1 %i.abz, label %bb.ey, label %bb.fg

bb.ey:                                            ; preds = %bb.ex
  %i.aca = getelementptr inbounds nuw i8, ptr %.0219261.i.i, i64 40
  %i.acb = load i64, ptr %i.aca, align 8, !tbaa !51 ; 2 uses
  %i.acc = add i64 %i.acb, %i.abc                 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.0219261.i.i, i64 32 ; 2 uses
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !52 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 %i.acb ; 3 uses
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %.0215262.i.i ; 2 uses
  %i.acg = icmp ult ptr %i.acf, %gep.i.i
  br i1 %i.acg, label %bb.ez, label %.loopexit.i.i

bb.ez:                                            ; preds = %bb.ey
  %i.ach = getelementptr inbounds i8, ptr %i.ace, i64 %i.abs
  %i.aci = ptrtoint ptr %gep.i.i to i64
  %i.acj = ptrtoint ptr %i.acf to i64
  %i.ack = sub i64 %i.aci, %i.acj
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ach, ptr align 1 %i.acf, i64 %i.ack, i1 false)
  %i.acl = load i64, ptr %i.t, align 8, !tbaa !41 ; 2 uses
  %.not277.i.i = icmp eq i64 %i.acl, 0
  br i1 %.not277.i.i, label %.loopexit.i.i, label %.lr.ph.i.i56

.lr.ph.i.i56:                                     ; preds = %bb.ez
  %i.acm = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.acn = sub i64 0, %i.acc
  br label %bb.fa

bb.fa:                                            ; preds = %bb.fd, %.lr.ph.i.i56
  %.0204260.i.i = phi ptr [ %i.acm, %.lr.ph.i.i56 ], [ %i.acx, %bb.fd ] ; 3 uses
  %.0205259.i.i = phi i32 [ 0, %.lr.ph.i.i56 ], [ %i.acw, %bb.fd ]
  %i.aco = getelementptr inbounds nuw i8, ptr %.0204260.i.i, i64 16
  %i.acp = load i32, ptr %i.aco, align 8, !tbaa !46
  %i.acq = icmp eq i32 %i.aaj, %i.acp
  br i1 %i.acq, label %bb.fb, label %bb.fd

bb.fb:                                            ; preds = %bb.fa
  %i.acr = getelementptr inbounds nuw i8, ptr %.0204260.i.i, i64 32 ; 2 uses
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !52 ; 2 uses
  %i.act = load ptr, ptr %i.acd, align 8, !tbaa !52
  %i.acu = icmp ugt ptr %i.acs, %i.act
  br i1 %i.acu, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.acv = getelementptr inbounds i8, ptr %i.acs, i64 %i.acn
  store ptr %i.acv, ptr %i.acr, align 8, !tbaa !52
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %bb.fa
  %i.acw = add i32 %.0205259.i.i, 1               ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.0204260.i.i, i64 48
  %i.acy = zext i32 %i.acw to i64
  %i.acz = icmp ugt i64 %i.acl, %i.acy
  br i1 %i.acz, label %bb.fa, label %.loopexit.i.i, !llvm.loop !94

.loopexit.i.i:                                    ; preds = %bb.fd, %bb.ez, %bb.ey
  %i.ada = sub i64 %.0215262.i.i, %i.acc
  %i.adb = call i32 @H5O__msg_free_mesg(ptr noundef nonnull %.0219261.i.i) #7 ; 0 uses
  %i.adc = load i64, ptr %i.t, align 8, !tbaa !41
  %i.add = add i64 %i.adc, -1                     ; 3 uses
  %i.ade = icmp ult i64 %.0207263.i.i, %i.add
  br i1 %i.ade, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %.loopexit.i.i
  %i.adf = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.adg = getelementptr [48 x i8], ptr %i.adf, i64 %.0207263.i.i ; 2 uses
  %i.adh = getelementptr i8, ptr %i.adg, i64 48
  %i.adi = sub nuw i64 %i.add, %.0207263.i.i
  %i.adj = mul i64 %i.adi, 48
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.adg, ptr align 8 %i.adh, i64 %i.adj, i1 false)
  %.pre.i.i55 = load i64, ptr %i.t, align 8, !tbaa !41
  %.pre291.i.i = add i64 %.pre.i.i55, -1
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %.loopexit.i.i
  %.pre-phi.i.i54 = phi i64 [ %.pre291.i.i, %bb.fe ], [ %i.add, %.loopexit.i.i ] ; 2 uses
  store i64 %.pre-phi.i.i54, ptr %i.t, align 8, !tbaa !41
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.ex, %bb.ew
  %i.adk = phi i64 [ %.pre-phi.i.i54, %bb.ff ], [ %i.abt, %bb.ex ], [ %i.abt, %bb.ew ] ; 3 uses
  %.1216.i.i = phi i64 [ %i.ada, %bb.ff ], [ %.0215262.i.i, %bb.ex ], [ %.0215262.i.i, %bb.ew ] ; 2 uses
  %i.adl = add i64 %.0207263.i.i, -1              ; 2 uses
  %i.adm = getelementptr inbounds i8, ptr %.0219261.i.i, i64 -48
  %i.adn = icmp ult i64 %i.adl, %i.adk
  br i1 %i.adn, label %bb.ew, label %._crit_edge.i.i50, !llvm.loop !95

._crit_edge.i.i50:                                ; preds = %bb.fg, %bb.ev
  %.0215.lcssa.i.i = phi i64 [ %i.aat, %bb.ev ], [ %.1216.i.i, %bb.fg ] ; 4 uses
  %.lcssa.i.i51 = phi i64 [ 0, %bb.ev ], [ %i.adk, %bb.fg ] ; 2 uses
  %i.ado = icmp eq i32 %i.aaj, 0                  ; 3 uses
  %i.adp = load i8, ptr %i.w, align 8, !tbaa !30  ; 3 uses
  %i.adq = icmp eq i8 %i.adp, 1                   ; 2 uses
  br i1 %i.ado, label %bb.fh, label %bb.fj

bb.fh:                                            ; preds = %._crit_edge.i.i50
  br i1 %i.adq, label %bb.fk, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.adr = load i8, ptr %i.x, align 1, !tbaa !31
  %i.ads = zext i8 %i.adr to i32                  ; 3 uses
  %i.adt = lshr i32 %i.ads, 1
  %i.adu = and i32 %i.adt, 16
  %i.adv = lshr i32 %i.ads, 2
  %i.adw = and i32 %i.adv, 4
  %i.adx = and i32 %i.ads, 3
  %i.ady = shl nuw nsw i32 1, %i.adx
  %i.adz = add nuw nsw i32 %i.ady, 10
  %i.aea = add nuw nsw i32 %i.adz, %i.adw
  %i.aeb = add nuw nsw i32 %i.aea, %i.adu
  br label %bb.fk

bb.fj:                                            ; preds = %._crit_edge.i.i50
  %i.aec = select i1 %i.adq, i32 0, i32 8
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi, %bb.fh
  %2 = phi i8 [ %i.adp, %bb.fj ], [ %i.adp, %bb.fi ], [ 1, %bb.fh ] ; 2 uses
  %i.aed = phi i32 [ %i.aec, %bb.fj ], [ %i.aeb, %bb.fi ], [ 16, %bb.fh ]
  %i.aee = zext nneg i32 %i.aed to i64
  %i.aef = sub i64 %.0215.lcssa.i.i, %i.aee       ; 2 uses
  %i.aeg = icmp ult i64 %i.aef, %i.aaw
  br i1 %i.aeg, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.aeh = add i64 %.lcssa.i.i51, 1
  store i64 %i.aeh, ptr %i.t, align 8, !tbaa !41
  %i.aei = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.aej = getelementptr inbounds nuw [48 x i8], ptr %i.aei, i64 %.lcssa.i.i51 ; 6 uses
  store ptr @H5O_MSG_NULL, ptr %i.aej, align 8, !tbaa !47
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 8
  store i8 1, ptr %i.aek, align 8, !tbaa !54
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aej, i64 24
  store ptr null, ptr %i.ael, align 8, !tbaa !55
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aao, i64 %.0215.lcssa.i.i
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 %i.abc
  %i.aeo = getelementptr inbounds i8, ptr %i.aen, i64 %.neg.i.i
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aej, i64 32
  store ptr %i.aeo, ptr %i.aep, align 8, !tbaa !52
  %3 = icmp eq i8 %2, 1
  %i.aeq = sub nuw nsw i64 %i.aaw, %i.aef         ; 2 uses
  %i.aer = add nuw nsw i64 %i.aeq, 7
  %i.aes = and i64 %i.aer, 56
  %i.aet = select i1 %3, i64 %i.aes, i64 %i.aeq
  %i.aeu = call i64 @llvm.umax.i64(i64 %i.aet, i64 %i.abc) ; 2 uses
  %i.aev = sub nsw i64 %i.aeu, %i.abc
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aej, i64 40
  store i64 %i.aev, ptr %i.aew, align 8, !tbaa !51
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aej, i64 16
  store i32 %i.aaj, ptr %i.aex, align 8, !tbaa !46
  %i.aey = add i64 %i.aeu, %.0215.lcssa.i.i
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.2217.i.i = phi i64 [ %i.aey, %bb.fl ], [ %.0215.lcssa.i.i, %bb.fk ] ; 5 uses
  %i.aez = icmp ugt i8 %2, 1
  %or.cond.i.i = and i1 %i.ado, %i.aez
  br i1 %or.cond.i.i, label %bb.fn, label %bb.fr

bb.fn:                                            ; preds = %bb.fm
  %i.afa = load i8, ptr %i.x, align 1, !tbaa !31  ; 3 uses
  %i.afb = zext i8 %i.afa to i32                  ; 3 uses
  %i.afc = lshr i32 %i.afb, 1
  %i.afd = and i32 %i.afc, 16
  %i.afe = lshr i32 %i.afb, 2
  %i.aff = and i32 %i.afe, 4
  %i.afg = and i32 %i.afb, 3
  %i.afh = shl nuw nsw i32 1, %i.afg
  %i.afi = add nuw nsw i32 %i.afh, 10
  %i.afj = add nuw nsw i32 %i.afi, %i.aff
  %i.afk = add nuw nsw i32 %i.afj, %i.afd
  %i.afl = zext nneg i32 %i.afk to i64
  %i.afm = sub i64 %.2217.i.i, %i.afl             ; 3 uses
  %i.afn = and i8 %i.afa, 3                       ; 4 uses
  %i.afo = zext nneg i8 %i.afn to i64
  %i.afp = shl nuw nsw i64 1, %i.afo
  %i.afq = icmp ne i8 %i.afn, 0
  %i.afr = icmp ult i64 %i.afm, 256
  %or.cond3.i.i = select i1 %i.afq, i1 %i.afr, i1 false
  br i1 %or.cond3.i.i, label %bb.fq, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.afs = icmp samesign ugt i8 %i.afn, 1
  %i.aft = icmp ult i64 %i.afm, 65536
  %or.cond5.i.i = select i1 %i.afs, i1 %i.aft, i1 false
  br i1 %or.cond5.i.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.afu = icmp eq i8 %i.afn, 3
  %i.afv = icmp ult i64 %i.afm, 4294967296
  %or.cond7.i.i = select i1 %i.afu, i1 %i.afv, i1 false
  br i1 %or.cond7.i.i, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %bb.fn
  %.sink.i.i = phi i64 [ -2, %bb.fo ], [ -1, %bb.fn ], [ -4, %bb.fp ]
  %.1214.ph.i.i = phi i8 [ 1, %bb.fo ], [ 0, %bb.fn ], [ 2, %bb.fp ]
  %i.afw = add nsw i64 %.sink.i.i, %i.afp         ; 3 uses
  %i.afx = and i8 %i.afa, -4
  %i.afy = or disjoint i8 %.1214.ph.i.i, %i.afx   ; 2 uses
  store i8 %i.afy, ptr %i.x, align 1, !tbaa !31
  %i.afz = load ptr, ptr %i.aan, align 8, !tbaa !40
  %i.aga = zext i8 %i.afy to i32                  ; 3 uses
  %i.agb = lshr i32 %i.aga, 1
  %i.agc = and i32 %i.agb, 16                     ; 2 uses
  %i.agd = or disjoint i32 %i.agc, 6
  %i.age = lshr i32 %i.aga, 2
  %i.agf = and i32 %i.age, 4                      ; 2 uses
  %i.agg = add nuw nsw i32 %i.agd, %i.agf
  %i.agh = and i32 %i.aga, 3
  %i.agi = shl nuw nsw i32 1, %i.agh              ; 2 uses
  %i.agj = add nuw nsw i32 %i.agg, %i.agi
  %i.agk = zext nneg i32 %i.agj to i64
  %i.agl = getelementptr inbounds nuw i8, ptr %i.afz, i64 %i.agk
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 4
  %i.agn = getelementptr inbounds i8, ptr %i.agm, i64 %.neg.i.i ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 %i.afw
  %i.agp = add nuw nsw i32 %i.agi, 10
  %i.agq = add nuw nsw i32 %i.agp, %i.agf
  %i.agr = add nuw nsw i32 %i.agq, %i.agc
  %i.ags = zext nneg i32 %i.agr to i64
  %i.agt = sub i64 %.2217.i.i, %i.ags
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.agn, ptr nonnull align 1 %i.ago, i64 %i.agt, i1 false)
  %i.agu = sub i64 %.2217.i.i, %i.afw
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp, %bb.fm
  %.1210248.i.i = phi i64 [ %i.afw, %bb.fq ], [ 0, %bb.fm ], [ 0, %bb.fp ]
  %.1212245.i.i = phi i1 [ true, %bb.fq ], [ false, %bb.fm ], [ false, %bb.fp ] ; 2 uses
  %.3218.i.i = phi i64 [ %i.agu, %bb.fq ], [ %.2217.i.i, %bb.fm ], [ %.2217.i.i, %bb.fp ] ; 4 uses
  store i64 %.3218.i.i, ptr %i.aap, align 8, !tbaa !38
  %i.agv = call ptr @H5FL_blk_realloc(ptr noundef nonnull @H5_chunk_image_blk_free_list, ptr noundef %i.aao, i64 noundef %.3218.i.i) #7 ; 4 uses
  store ptr %i.agv, ptr %i.aan, align 8, !tbaa !40
  store i64 0, ptr %i.aar, align 8, !tbaa !39
  %i.agw = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.agx = getelementptr inbounds nuw [40 x i8], ptr %i.agw, i64 %i.aal
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 24
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !40
  %i.aha = icmp eq ptr %i.agz, null
  br i1 %i.aha, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.ahb = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !29
  %i.ahc = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !29
  %i.ahd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__alloc_shrink_chunk, i32 noundef 2456, i64 noundef %i.ahb, i64 noundef %i.ahc, ptr noundef nonnull @.str.1) #7 ; 0 uses
  br label %.thread254.i.i

bb.ft:                                            ; preds = %bb.fr
  %i.ahe = load ptr, ptr %i.s, align 8, !tbaa !28 ; 6 uses
  %i.ahf = load i64, ptr %i.t, align 8, !tbaa !41 ; 11 uses
  %.not278.i.i = icmp eq i64 %i.ahf, 0
  br i1 %.not278.i.i, label %._crit_edge271.i.i, label %.lr.ph270.i.i

.lr.ph270.i.i:                                    ; preds = %bb.ft
  %i.ahg = sub nsw i64 0, %.1210248.i.i           ; 4 uses
  %i.ahh = ptrtoint ptr %i.aao to i64             ; 8 uses
  br i1 %i.ado, label %.lr.ph270.split.us.i.i, label %.lr.ph270.split.i.i

.lr.ph270.split.us.i.i:                           ; preds = %.lr.ph270.i.i
  br i1 %.1212245.i.i, label %.lr.ph270.split.us.split.us.preheader.i.i, label %.lr.ph270.split.us.split.i.i

.lr.ph270.split.us.split.us.preheader.i.i:        ; preds = %.lr.ph270.split.us.i.i
  %i.ahi = getelementptr inbounds i8, ptr %i.agv, i64 %i.ahg ; 3 uses
  %xtraiter889 = and i64 %i.ahf, 1
  %i.ahj = icmp eq i64 %i.ahf, 1
  br i1 %i.ahj, label %.lr.ph270.split.us.split.us.i.i.epil.preheader, label %.lr.ph270.split.us.split.us.preheader.i.i.new

.lr.ph270.split.us.split.us.preheader.i.i.new:    ; preds = %.lr.ph270.split.us.split.us.preheader.i.i
  %unroll_iter892 = and i64 %i.ahf, -2
  br label %.lr.ph270.split.us.split.us.i.i

.lr.ph270.split.us.split.us.i.i:                  ; preds = %bb.fw, %.lr.ph270.split.us.split.us.preheader.i.i.new
  %.1220267.us.us.i.i = phi ptr [ %i.ahe, %.lr.ph270.split.us.split.us.preheader.i.i.new ], [ %i.aia, %bb.fw ] ; 5 uses
  %niter893 = phi i64 [ 0, %.lr.ph270.split.us.split.us.preheader.i.i.new ], [ %niter893.next.1, %bb.fw ]
  %i.ahk = getelementptr inbounds nuw i8, ptr %.1220267.us.us.i.i, i64 16
  %i.ahl = load i32, ptr %i.ahk, align 8, !tbaa !46
  %i.ahm = icmp eq i32 %i.ahl, 0
  br i1 %i.ahm, label %bb.fu, label %.lr.ph270.split.us.split.us.i.i.1

bb.fu:                                            ; preds = %.lr.ph270.split.us.split.us.i.i
  %i.ahn = getelementptr inbounds nuw i8, ptr %.1220267.us.us.i.i, i64 32 ; 2 uses
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !52
  %i.ahp = ptrtoint ptr %i.aho to i64
  %i.ahq = sub i64 %i.ahp, %i.ahh
  %i.ahr = getelementptr inbounds i8, ptr %i.ahi, i64 %i.ahq
  store ptr %i.ahr, ptr %i.ahn, align 8, !tbaa !52
  br label %.lr.ph270.split.us.split.us.i.i.1

.lr.ph270.split.us.split.us.i.i.1:                ; preds = %bb.fu, %.lr.ph270.split.us.split.us.i.i
  %i.ahs = getelementptr inbounds nuw i8, ptr %.1220267.us.us.i.i, i64 64
  %i.aht = load i32, ptr %i.ahs, align 8, !tbaa !46
  %i.ahu = icmp eq i32 %i.aht, 0
  br i1 %i.ahu, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %.lr.ph270.split.us.split.us.i.i.1
  %i.ahv = getelementptr inbounds nuw i8, ptr %.1220267.us.us.i.i, i64 80 ; 2 uses
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !52
  %i.ahx = ptrtoint ptr %i.ahw to i64
  %i.ahy = sub i64 %i.ahx, %i.ahh
  %i.ahz = getelementptr inbounds i8, ptr %i.ahi, i64 %i.ahy
  store ptr %i.ahz, ptr %i.ahv, align 8, !tbaa !52
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %.lr.ph270.split.us.split.us.i.i.1
  %i.aia = getelementptr inbounds nuw i8, ptr %.1220267.us.us.i.i, i64 96 ; 2 uses
  %niter893.next.1 = add nuw i64 %niter893, 2     ; 2 uses
  %niter893.ncmp.1 = icmp eq i64 %niter893.next.1, %unroll_iter892
  br i1 %niter893.ncmp.1, label %._crit_edge271.i.i.loopexit.unr-lcssa, label %.lr.ph270.split.us.split.us.i.i, !llvm.loop !96

.lr.ph270.split.us.split.i.i:                     ; preds = %.lr.ph270.split.us.i.i
  %.not.us.i.i = icmp eq ptr %i.agv, %i.aao
  br i1 %.not.us.i.i, label %._crit_edge271.i.i, label %.lr.ph270.split.us.split.split.preheader.i.i

.lr.ph270.split.us.split.split.preheader.i.i:     ; preds = %.lr.ph270.split.us.split.i.i
  %i.aib = getelementptr inbounds i8, ptr %i.agv, i64 %i.ahg ; 3 uses
  %xtraiter = and i64 %i.ahf, 1
  %i.aic = icmp eq i64 %i.ahf, 1
  br i1 %i.aic, label %.lr.ph270.split.us.split.split.i.i.epil.preheader, label %.lr.ph270.split.us.split.split.preheader.i.i.new

.lr.ph270.split.us.split.split.preheader.i.i.new: ; preds = %.lr.ph270.split.us.split.split.preheader.i.i
  %unroll_iter = and i64 %i.ahf, -2
  br label %.lr.ph270.split.us.split.split.i.i

.lr.ph270.split.us.split.split.i.i:               ; preds = %bb.fz, %.lr.ph270.split.us.split.split.preheader.i.i.new
  %.1220267.us.i.i = phi ptr [ %i.ahe, %.lr.ph270.split.us.split.split.preheader.i.i.new ], [ %i.ait, %bb.fz ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph270.split.us.split.split.preheader.i.i.new ], [ %niter.next.1, %bb.fz ]
  %i.aid = getelementptr inbounds nuw i8, ptr %.1220267.us.i.i, i64 16
  %i.aie = load i32, ptr %i.aid, align 8, !tbaa !46
  %i.aif = icmp eq i32 %i.aie, 0
  br i1 %i.aif, label %bb.fx, label %.lr.ph270.split.us.split.split.i.i.1

bb.fx:                                            ; preds = %.lr.ph270.split.us.split.split.i.i
  %i.aig = getelementptr inbounds nuw i8, ptr %.1220267.us.i.i, i64 32 ; 2 uses
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !52
  %i.aii = ptrtoint ptr %i.aih to i64
  %i.aij = sub i64 %i.aii, %i.ahh
  %i.aik = getelementptr inbounds i8, ptr %i.aib, i64 %i.aij
  store ptr %i.aik, ptr %i.aig, align 8, !tbaa !52
  br label %.lr.ph270.split.us.split.split.i.i.1

.lr.ph270.split.us.split.split.i.i.1:             ; preds = %bb.fx, %.lr.ph270.split.us.split.split.i.i
  %i.ail = getelementptr inbounds nuw i8, ptr %.1220267.us.i.i, i64 64
  %i.aim = load i32, ptr %i.ail, align 8, !tbaa !46
  %i.ain = icmp eq i32 %i.aim, 0
  br i1 %i.ain, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %.lr.ph270.split.us.split.split.i.i.1
  %i.aio = getelementptr inbounds nuw i8, ptr %.1220267.us.i.i, i64 80 ; 2 uses
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !52
  %i.aiq = ptrtoint ptr %i.aip to i64
  %i.air = sub i64 %i.aiq, %i.ahh
  %i.ais = getelementptr inbounds i8, ptr %i.aib, i64 %i.air
  store ptr %i.ais, ptr %i.aio, align 8, !tbaa !52
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %.lr.ph270.split.us.split.split.i.i.1
  %i.ait = getelementptr inbounds nuw i8, ptr %.1220267.us.i.i, i64 96 ; 2 uses
end_hunk_0
