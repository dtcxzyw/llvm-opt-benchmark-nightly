Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFImporter?download=true
inline.NumInlined: 5894
inline.NumDeleted: 2006
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN6Assimp12glTFImporter12ImportMeshesERN4glTF5AssetE:bb.a
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aba, i64 80
  store i32 0, ptr %i.abk, align 8
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aba, i64 88
  store ptr null, ptr %i.abl, align 8
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aba, i64 96
  store i32 0, ptr %i.abm, align 8
  %i.abn = getelementptr inbounds nuw i8, ptr %i.aba, i64 104
  store ptr null, ptr %i.abn, align 8
  %i.abo = getelementptr inbounds nuw i8, ptr %i.aba, i64 112
  store i32 0, ptr %i.abo, align 8
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aba, i64 120
  store ptr null, ptr %i.abp, align 8
  %i.abq = getelementptr inbounds nuw i8, ptr %i.aba, i64 128 ; 2 uses
  %i.abr = icmp eq ptr %i.abq, %i.aat
  br i1 %i.abr, label %.lr.ph883.preheader, label %.new1999

.lr.ph883.preheader:                              ; preds = %.new1999, %.prol.loopexit1998
  br label %.lr.ph883

.lr.ph883:                                        ; preds = %.lr.ph883.preheader, %bb.cv
  %.0234881 = phi i32 [ %i.abz, %bb.cv ], [ 0, %.lr.ph883.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i32 0, ptr %i.q, align 4
  %i.abs = sext i32 %.0234881 to i64
  %i.abt = mul nsw i64 %i.aal, %i.abs
  %i.abu = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 %i.abt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 1 %i.abu, i64 %i.aah, i1 false)
  %.0..0..0..0..0..0..0..0..i.i = load i32, ptr %i.q, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.abv = zext i32 %.0234881 to i64
  %i.abw = getelementptr inbounds nuw [16 x i8], ptr %i.aar, i64 %i.abv ; 2 uses
  store i32 1, ptr %i.abw, align 8
  %i.abx = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #32
          to label %bb.cv unwind label %bb.cw     ; 2 uses

bb.cv:                                            ; preds = %.lr.ph883
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  store ptr %i.abx, ptr %i.aby, align 8
  store i32 %.0..0..0..0..0..0..0..0..i.i, ptr %i.abx, align 4
  %i.abz = add nuw i32 %.0234881, 1               ; 2 uses
  %exitcond1153.not = icmp eq i32 %i.abz, %i.xd
  br i1 %exitcond1153.not, label %.loopexit568.thread1282, label %.lr.ph883, !llvm.loop !35

.loopexit568.thread1282:                          ; preds = %bb.cv
  %i.aca = getelementptr inbounds nuw i8, ptr %i.fm, i64 208
  store ptr %i.aar, ptr %i.aca, align 8
  store i32 %i.xd, ptr %i.fo, align 8
  br label %.preheader.preheader.i

bb.cw:                                            ; preds = %.lr.ph883
  %i.acb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cx:                                            ; preds = %switch.lookup1742
  %i.acc = lshr i32 %i.xd, 1                      ; 4 uses
  %i.acd = and i32 %i.xd, -2                      ; 2 uses
  %.not292 = icmp eq i32 %i.acd, %i.xd
  br i1 %.not292, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ace = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cz unwind label %.loopexit596

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ace, ptr noundef nonnull @.str.12)
          to label %bb.da unwind label %.loopexit596

bb.da:                                            ; preds = %bb.cz, %bb.cx
  %.0235 = phi i32 [ %i.xd, %bb.cx ], [ %i.acd, %bb.cz ] ; 2 uses
  %i.acf = zext nneg i32 %i.acc to i64            ; 5 uses
  %i.acg = shl nuw nsw i64 %i.acf, 4
  %i.ach = or disjoint i64 %i.acg, 8
  %i.aci = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ach) #32
          to label %bb.db unwind label %.loopexit596 ; 2 uses

bb.db:                                            ; preds = %bb.da
  store i64 %i.acf, ptr %i.aci, align 16
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 8 ; 6 uses
  %i.ack = icmp eq i32 %i.acc, 0
  br i1 %i.ack, label %.loopexit582, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.acl = getelementptr inbounds nuw [16 x i8], ptr %i.acj, i64 %i.acf
  %i.acm = add nuw nsw i64 %i.acf, 1152921504606846975
  %i.acn = and i64 %i.acm, 1152921504606846975
  %xtraiter1993 = and i64 %i.acf, 7               ; 2 uses
  %lcmp.mod1994.not = icmp eq i64 %xtraiter1993, 0
  br i1 %lcmp.mod1994.not, label %.prol.loopexit1991, label %.prol.preheader1990

.prol.preheader1990:                              ; preds = %bb.dc, %.prol.preheader1990
  %i.aco = phi ptr [ %i.acq, %.prol.preheader1990 ], [ %i.acj, %bb.dc ] ; 3 uses
  %prol.iter1995 = phi i64 [ %prol.iter1995.next, %.prol.preheader1990 ], [ 0, %bb.dc ]
  store i32 0, ptr %i.aco, align 8
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 8
  store ptr null, ptr %i.acp, align 8
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aco, i64 16 ; 2 uses
  %prol.iter1995.next = add i64 %prol.iter1995, 1 ; 2 uses
  %prol.iter1995.cmp.not = icmp eq i64 %prol.iter1995.next, %xtraiter1993
  br i1 %prol.iter1995.cmp.not, label %.prol.loopexit1991, label %.prol.preheader1990, !llvm.loop !36

.prol.loopexit1991:                               ; preds = %.prol.preheader1990, %bb.dc
  %.unr1996 = phi ptr [ %i.acj, %bb.dc ], [ %i.acq, %.prol.preheader1990 ]
  %i.acr = icmp samesign ult i64 %i.acn, 7
  br i1 %i.acr, label %.loopexit582, label %.new1992

.new1992:                                         ; preds = %.prol.loopexit1991, %.new1992
  %i.acs = phi ptr [ %i.adi, %.new1992 ], [ %.unr1996, %.prol.loopexit1991 ] ; 17 uses
  store i32 0, ptr %i.acs, align 8
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 8
  store ptr null, ptr %i.act, align 8
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acs, i64 16
  store i32 0, ptr %i.acu, align 8
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acs, i64 24
  store ptr null, ptr %i.acv, align 8
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acs, i64 32
  store i32 0, ptr %i.acw, align 8
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acs, i64 40
  store ptr null, ptr %i.acx, align 8
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acs, i64 48
  store i32 0, ptr %i.acy, align 8
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acs, i64 56
  store ptr null, ptr %i.acz, align 8
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acs, i64 64
  store i32 0, ptr %i.ada, align 8
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acs, i64 72
  store ptr null, ptr %i.adb, align 8
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acs, i64 80
  store i32 0, ptr %i.adc, align 8
  %i.add = getelementptr inbounds nuw i8, ptr %i.acs, i64 88
  store ptr null, ptr %i.add, align 8
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acs, i64 96
  store i32 0, ptr %i.ade, align 8
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acs, i64 104
  store ptr null, ptr %i.adf, align 8
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acs, i64 112
  store i32 0, ptr %i.adg, align 8
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acs, i64 120
  store ptr null, ptr %i.adh, align 8
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acs, i64 128 ; 2 uses
  %i.adj = icmp eq ptr %i.adi, %i.acl
  br i1 %i.adj, label %.loopexit582, label %.new1992

.loopexit582:                                     ; preds = %.prol.loopexit1991, %.new1992, %bb.db
  %.not926 = icmp eq i32 %.0235, 0
  br i1 %.not926, label %.loopexit568, label %.lr.ph880

.lr.ph880:                                        ; preds = %.loopexit582, %bb.dd
  %.0233878 = phi i32 [ %i.adx, %bb.dd ], [ 0, %.loopexit582 ] ; 4 uses
  %i.adk = lshr exact i32 %.0233878, 1
  %i.adl = zext nneg i32 %i.adk to i64
  %i.adm = getelementptr inbounds nuw [16 x i8], ptr %i.acj, i64 %i.adl ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i32 0, ptr %i.p, align 4
  %i.adn = sext i32 %.0233878 to i64
  %i.ado = mul nsw i64 %i.aal, %i.adn
  %i.adp = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 %i.ado
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr align 1 %i.adp, i64 %i.aah, i1 false)
  %.0..0..0..0..0..0..0..0..i.i390 = load i32, ptr %i.p, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.adq = or disjoint i32 %.0233878, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i32 0, ptr %i.o, align 4
  %i.adr = sext i32 %i.adq to i64
  %i.ads = mul nsw i64 %i.aal, %i.adr
  %i.adt = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 %i.ads
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 1 %i.adt, i64 %i.aah, i1 false)
  %.0..0..0..0..0..0..0..0..i.i391 = load i32, ptr %i.o, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i32 2, ptr %i.adm, align 8
  %i.adu = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #32
          to label %bb.dd unwind label %bb.de     ; 3 uses

bb.dd:                                            ; preds = %.lr.ph880
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adm, i64 8
  store ptr %i.adu, ptr %i.adv, align 8
  store i32 %.0..0..0..0..0..0..0..0..i.i390, ptr %i.adu, align 4
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adu, i64 4
  store i32 %.0..0..0..0..0..0..0..0..i.i391, ptr %i.adw, align 4
  %i.adx = add nuw i32 %.0233878, 2               ; 2 uses
  %i.ady = icmp ult i32 %i.adx, %.0235
  br i1 %i.ady, label %.lr.ph880, label %.loopexit568, !llvm.loop !37

bb.de:                                            ; preds = %.lr.ph880
  %i.adz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.df:                                            ; preds = %switch.lookup1742, %switch.lookup1742
  %i.aea = icmp eq i32 %i.aam, 3
  %.neg291 = sext i1 %i.aea to i32
  %i.aeb = add i32 %i.xd, %.neg291                ; 4 uses
  %i.aec = zext i32 %i.aeb to i64                 ; 5 uses
  %i.aed = shl nuw nsw i64 %i.aec, 4
  %i.aee = or disjoint i64 %i.aed, 8
  %i.aef = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aee) #32
          to label %bb.dg unwind label %.loopexit596 ; 3 uses

bb.dg:                                            ; preds = %bb.df
  store i64 %i.aec, ptr %i.aef, align 16
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 8 ; 10 uses
  %i.aeh = icmp eq i32 %i.aeb, 0
  br i1 %i.aeh, label %.loopexit583, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.aei = getelementptr inbounds nuw [16 x i8], ptr %i.aeg, i64 %i.aec
  %i.aej = add nuw nsw i64 %i.aec, 1152921504606846975
  %i.aek = and i64 %i.aej, 1152921504606846975
  %xtraiter1986 = and i64 %i.aec, 7               ; 2 uses
  %lcmp.mod1987.not = icmp eq i64 %xtraiter1986, 0
  br i1 %lcmp.mod1987.not, label %.prol.loopexit1984, label %.prol.preheader1983

.prol.preheader1983:                              ; preds = %bb.dh, %.prol.preheader1983
  %i.ael = phi ptr [ %i.aen, %.prol.preheader1983 ], [ %i.aeg, %bb.dh ] ; 3 uses
  %prol.iter1988 = phi i64 [ %prol.iter1988.next, %.prol.preheader1983 ], [ 0, %bb.dh ]
  store i32 0, ptr %i.ael, align 8
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 8
  store ptr null, ptr %i.aem, align 8
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ael, i64 16 ; 2 uses
  %prol.iter1988.next = add i64 %prol.iter1988, 1 ; 2 uses
  %prol.iter1988.cmp.not = icmp eq i64 %prol.iter1988.next, %xtraiter1986
  br i1 %prol.iter1988.cmp.not, label %.prol.loopexit1984, label %.prol.preheader1983, !llvm.loop !38

.prol.loopexit1984:                               ; preds = %.prol.preheader1983, %bb.dh
  %.unr1989 = phi ptr [ %i.aeg, %bb.dh ], [ %i.aen, %.prol.preheader1983 ]
  %i.aeo = icmp samesign ult i64 %i.aek, 7
  br i1 %i.aeo, label %.loopexit583, label %.new1985

.new1985:                                         ; preds = %.prol.loopexit1984, %.new1985
  %i.aep = phi ptr [ %i.aff, %.new1985 ], [ %.unr1989, %.prol.loopexit1984 ] ; 17 uses
  store i32 0, ptr %i.aep, align 8
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 8
  store ptr null, ptr %i.aeq, align 8
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aep, i64 16
  store i32 0, ptr %i.aer, align 8
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aep, i64 24
  store ptr null, ptr %i.aes, align 8
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aep, i64 32
  store i32 0, ptr %i.aet, align 8
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aep, i64 40
  store ptr null, ptr %i.aeu, align 8
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aep, i64 48
  store i32 0, ptr %i.aev, align 8
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aep, i64 56
  store ptr null, ptr %i.aew, align 8
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aep, i64 64
  store i32 0, ptr %i.aex, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aep, i64 72
  store ptr null, ptr %i.aey, align 8
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aep, i64 80
  store i32 0, ptr %i.aez, align 8
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aep, i64 88
  store ptr null, ptr %i.afa, align 8
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aep, i64 96
  store i32 0, ptr %i.afb, align 8
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aep, i64 104
  store ptr null, ptr %i.afc, align 8
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aep, i64 112
  store i32 0, ptr %i.afd, align 8
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aep, i64 120
  store ptr null, ptr %i.afe, align 8
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aep, i64 128 ; 2 uses
  %i.afg = icmp eq ptr %i.aff, %i.aei
  br i1 %i.afg, label %.loopexit583, label %.new1985

.loopexit583:                                     ; preds = %.prol.loopexit1984, %.new1985, %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 0, ptr %i.n, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 1 %.3.i.i.i, i64 %i.aah, i1 false)
  %.0..0..0..0..0..0..0..0..i.i393 = load i32, ptr %i.n, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 0, ptr %i.m, align 4
  %i.afh = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 %i.aal
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 1 %i.afh, i64 %i.aah, i1 false)
  %.0..0..0..0..0..0..0..0..i.i394 = load i32, ptr %i.m, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i32 2, ptr %i.aeg, align 8
  %i.afi = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #32
          to label %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit396 unwind label %.loopexit596 ; 3 uses

_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit396:     ; preds = %.loopexit583
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aef, i64 16 ; 2 uses
  store ptr %i.afi, ptr %i.afj, align 16
  store i32 %.0..0..0..0..0..0..0..0..i.i393, ptr %i.afi, align 4
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afi, i64 4
  store i32 %.0..0..0..0..0..0..0..0..i.i394, ptr %i.afk, align 4
  %i.afl = icmp ugt i32 %i.xd, 2
  br i1 %i.afl, label %.lr.ph876.preheader, label %._crit_edge877

.lr.ph876.preheader:                              ; preds = %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit396
  %wide.trip.count = zext i32 %i.xd to i64
  br label %.lr.ph876

._crit_edge877:                                   ; preds = %bb.di, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit396
  %i.afm = load i32, ptr %i.fl, align 8
  %i.afn = icmp eq i32 %i.afm, 2
  br i1 %i.afn, label %bb.dk, label %.loopexit568

.lr.ph876:                                        ; preds = %.lr.ph876.preheader, %bb.di
  %indvars.iv1152 = phi i64 [ 2, %.lr.ph876.preheader ], [ %indvars.iv.next1153, %bb.di ] ; 4 uses
  %9 = add nuw i64 %indvars.iv1152, 4294967294
  %10 = and i64 %9, 4294967295
  %11 = getelementptr inbounds nuw [16 x i8], ptr %i.aeg, i64 %10
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %15 = load i32, ptr %14, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i32 0, ptr %i.l, align 4
  %i.afo = mul nuw nsw i64 %i.aal, %indvars.iv1152
  %i.afp = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 %i.afo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr align 1 %i.afp, i64 %i.aah, i1 false)
  %.0..0..0..0..0..0..0..0..i.i397 = load i32, ptr %i.l, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %16 = add nuw i64 %indvars.iv1152, 4294967295
  %17 = and i64 %16, 4294967295
  %i.afq = getelementptr inbounds nuw [16 x i8], ptr %i.aeg, i64 %17 ; 2 uses
  store i32 2, ptr %i.afq, align 8
  %i.afr = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #32
          to label %bb.di unwind label %bb.dj     ; 3 uses

bb.di:                                            ; preds = %.lr.ph876
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afq, i64 8
  store ptr %i.afr, ptr %i.afs, align 8
  store i32 %15, ptr %i.afr, align 4
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afr, i64 4
  store i32 %.0..0..0..0..0..0..0..0..i.i397, ptr %i.aft, align 4
  %indvars.iv.next1153 = add nuw nsw i64 %indvars.iv1152, 1 ; 2 uses
  %exitcond1152.not = icmp eq i64 %indvars.iv.next1153, %wide.trip.count
  br i1 %exitcond1152.not, label %._crit_edge877, label %.lr.ph876, !llvm.loop !39

bb.dj:                                            ; preds = %.lr.ph876
  %i.afu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dk:                                            ; preds = %._crit_edge877
  %i.afv = add i32 %i.xd, -1
  %i.afw = zext i32 %i.afv to i64
  %i.afx = getelementptr inbounds nuw [16 x i8], ptr %i.aeg, i64 %i.afw ; 2 uses
  %i.afy = add i32 %i.xd, -2
  %i.afz = zext i32 %i.afy to i64
  %i.aga = getelementptr inbounds nuw [16 x i8], ptr %i.aeg, i64 %i.afz
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 8
  %i.agc = load ptr, ptr %i.agb, align 8
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 4
  %i.age = load i32, ptr %i.agd, align 4
  %i.agf = load ptr, ptr %i.afj, align 16
  %i.agg = load i32, ptr %i.agf, align 4
  store i32 2, ptr %i.afx, align 8
  %i.agh = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #32
          to label %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit401 unwind label %.loopexit596 ; 3 uses

_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit401:     ; preds = %bb.dk
  %i.agi = getelementptr inbounds nuw i8, ptr %i.afx, i64 8
  store ptr %i.agh, ptr %i.agi, align 8
  store i32 %i.age, ptr %i.agh, align 4
  br label %.loopexit568.sink.split

bb.dl:                                            ; preds = %switch.lookup1742
  %i.agj = udiv i32 %i.xd, 3                      ; 4 uses
  %i.agk = mul nuw i32 %i.agj, 3                  ; 2 uses
  %.not290 = icmp eq i32 %i.agk, %i.xd
  br i1 %.not290, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.agl = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.dn unwind label %.loopexit596

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.agl, ptr noundef nonnull @.str.13)
          to label %bb.do unwind label %.loopexit596

bb.do:                                            ; preds = %bb.dn, %bb.dl
  %.1236 = phi i32 [ %i.xd, %bb.dl ], [ %i.agk, %bb.dn ] ; 2 uses
  %i.agm = zext nneg i32 %i.agj to i64            ; 5 uses
  %i.agn = shl nuw nsw i64 %i.agm, 4
  %i.ago = or disjoint i64 %i.agn, 8
  %i.agp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ago) #32
          to label %bb.dp unwind label %.loopexit596 ; 2 uses

bb.dp:                                            ; preds = %bb.do
  store i64 %i.agm, ptr %i.agp, align 16
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 8 ; 6 uses
  %i.agr = icmp ult i32 %i.xd, 3
  br i1 %i.agr, label %.loopexit585, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ags = getelementptr inbounds nuw [16 x i8], ptr %i.agq, i64 %i.agm
  %i.agt = add nuw nsw i64 %i.agm, 1152921504606846975
  %i.agu = and i64 %i.agt, 1152921504606846975
  %xtraiter1979 = and i64 %i.agm, 7               ; 2 uses
  %lcmp.mod1980.not = icmp eq i64 %xtraiter1979, 0
  br i1 %lcmp.mod1980.not, label %.prol.loopexit1977, label %.prol.preheader1976

.prol.preheader1976:                              ; preds = %bb.dq, %.prol.preheader1976
  %i.agv = phi ptr [ %i.agx, %.prol.preheader1976 ], [ %i.agq, %bb.dq ] ; 3 uses
  %prol.iter1981 = phi i64 [ %prol.iter1981.next, %.prol.preheader1976 ], [ 0, %bb.dq ]
  store i32 0, ptr %i.agv, align 8
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 8
  store ptr null, ptr %i.agw, align 8
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agv, i64 16 ; 2 uses
  %prol.iter1981.next = add i64 %prol.iter1981, 1 ; 2 uses
  %prol.iter1981.cmp.not = icmp eq i64 %prol.iter1981.next, %xtraiter1979
  br i1 %prol.iter1981.cmp.not, label %.prol.loopexit1977, label %.prol.preheader1976, !llvm.loop !40

.prol.loopexit1977:                               ; preds = %.prol.preheader1976, %bb.dq
  %.unr1982 = phi ptr [ %i.agq, %bb.dq ], [ %i.agx, %.prol.preheader1976 ]
  %i.agy = icmp samesign ult i64 %i.agu, 7
  br i1 %i.agy, label %.loopexit585, label %.new1978

.new1978:                                         ; preds = %.prol.loopexit1977, %.new1978
  %i.agz = phi ptr [ %i.ahp, %.new1978 ], [ %.unr1982, %.prol.loopexit1977 ] ; 17 uses
  store i32 0, ptr %i.agz, align 8
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 8
  store ptr null, ptr %i.aha, align 8
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agz, i64 16
  store i32 0, ptr %i.ahb, align 8
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agz, i64 24
  store ptr null, ptr %i.ahc, align 8
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agz, i64 32
  store i32 0, ptr %i.ahd, align 8
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.agz, i64 40
  store ptr null, ptr %i.ahe, align 8
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agz, i64 48
  store i32 0, ptr %i.ahf, align 8
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agz, i64 56
  store ptr null, ptr %i.ahg, align 8
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agz, i64 64
  store i32 0, ptr %i.ahh, align 8
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.agz, i64 72
  store ptr null, ptr %i.ahi, align 8
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.agz, i64 80
  store i32 0, ptr %i.ahj, align 8
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.agz, i64 88
  store ptr null, ptr %i.ahk, align 8
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.agz, i64 96
  store i32 0, ptr %i.ahl, align 8
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.agz, i64 104
  store ptr null, ptr %i.ahm, align 8
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.agz, i64 112
  store i32 0, ptr %i.ahn, align 8
  %i.aho = getelementptr inbounds nuw i8, ptr %i.agz, i64 120
  store ptr null, ptr %i.aho, align 8
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.agz, i64 128 ; 2 uses
  %i.ahq = icmp eq ptr %i.ahp, %i.ags
  br i1 %i.ahq, label %.loopexit585, label %.new1978

.loopexit585:                                     ; preds = %.prol.loopexit1977, %.new1978, %bb.dp
  %.not925 = icmp eq i32 %.1236, 0
  br i1 %.not925, label %.loopexit568, label %.lr.ph874

.lr.ph874:                                        ; preds = %.loopexit585, %bb.dr
  %.0231872 = phi i32 [ %i.aij, %bb.dr ], [ 0, %.loopexit585 ] ; 5 uses
  %i.ahr = udiv i32 %.0231872, 3
  %i.ahs = zext nneg i32 %i.ahr to i64
  %i.aht = getelementptr inbounds nuw [16 x i8], ptr %i.agq, i64 %i.ahs ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i32 0, ptr %i.k, align 4
  %i.ahu = sext i32 %.0231872 to i64
  %i.ahv = mul nsw i64 %i.aal, %i.ahu
  %i.ahw = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 %i.ahv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr align 1 %i.ahw, i64 %i.aah, i1 false)
  %.0..0..0..0..0..0..0..0..i.i402 = load i32, ptr %i.k, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ahx = add nuw i32 %.0231872, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 0, ptr %i.j, align 4
  %i.ahy = sext i32 %i.ahx to i64
  %i.ahz = mul nsw i64 %i.aal, %i.ahy
  %i.aia = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 %i.ahz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 1 %i.aia, i64 %i.aah, i1 false)
  %.0..0..0..0..0..0..0..0..i.i403 = load i32, ptr %i.j, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.aib = add i32 %.0231872, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 0, ptr %i.i, align 4
  %i.aic = sext i32 %i.aib to i64
  %i.aid = mul nsw i64 %i.aal, %i.aic
  %i.aie = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 %i.aid
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr align 1 %i.aie, i64 %i.aah, i1 false)
  %.0..0..0..0..0..0..0..0..i.i404 = load i32, ptr %i.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i32 3, ptr %i.aht, align 8
  %i.aif = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #32
          to label %bb.dr unwind label %bb.ds     ; 4 uses

bb.dr:                                            ; preds = %.lr.ph874
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  store ptr %i.aif, ptr %i.aig, align 8
  store i32 %.0..0..0..0..0..0..0..0..i.i402, ptr %i.aif, align 4
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aif, i64 4
  store i32 %.0..0..0..0..0..0..0..0..i.i403, ptr %i.aih, align 4
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aif, i64 8
  store i32 %.0..0..0..0..0..0..0..0..i.i404, ptr %i.aii, align 4
  %i.aij = add i32 %.0231872, 3                   ; 2 uses
  %i.aik = icmp ult i32 %i.aij, %.1236
  br i1 %i.aik, label %.lr.ph874, label %.loopexit568, !llvm.loop !41

bb.ds:                                            ; preds = %.lr.ph874
  %i.ail = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dt:                                            ; preds = %switch.lookup1742
  %i.aim = add i32 %i.xd, -2                      ; 4 uses
  %i.ain = zext i32 %i.aim to i64                 ; 5 uses
  %i.aio = shl nuw nsw i64 %i.ain, 4
  %i.aip = or disjoint i64 %i.aio, 8
  %i.aiq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aip) #32
          to label %bb.du unwind label %.loopexit596 ; 3 uses

bb.du:                                            ; preds = %bb.dt
  store i64 %i.ain, ptr %i.aiq, align 16
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 8 ; 8 uses
  %i.ais = icmp eq i32 %i.aim, 0
  br i1 %i.ais, label %.loopexit587, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ait = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %i.ain
  %i.aiu = add nuw nsw i64 %i.ain, 1152921504606846975
  %i.aiv = and i64 %i.aiu, 1152921504606846975
  %xtraiter1972 = and i64 %i.ain, 7               ; 2 uses
  %lcmp.mod1973.not = icmp eq i64 %xtraiter1972, 0
  br i1 %lcmp.mod1973.not, label %.prol.loopexit1970, label %.prol.preheader1969

.prol.preheader1969:                              ; preds = %bb.dv, %.prol.preheader1969
  %i.aiw = phi ptr [ %i.aiy, %.prol.preheader1969 ], [ %i.air, %bb.dv ] ; 3 uses
  %prol.iter1974 = phi i64 [ %prol.iter1974.next, %.prol.preheader1969 ], [ 0, %bb.dv ]
end_hunk_0
