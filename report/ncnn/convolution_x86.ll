Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86?download=true
inline.NumInlined: 404
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN4ncnn15Convolution_x8615create_pipelineERKNS_6OptionE:bb.a
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 24
  %i.aai = load ptr, ptr %i.aah, align 8
  call void %i.aai(ptr noundef nonnull align 8 dereferenceable(8) %i.aae, ptr noundef %i.aaf), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit179

bb.ie:                                            ; preds = %bb.ic
  %.not.i190 = icmp eq ptr %i.aaf, null
  br i1 %.not.i190, label %_ZN4ncnn3Mat7releaseEv.exit179, label %bb.if

bb.if:                                            ; preds = %bb.ie
  call void @free(ptr noundef nonnull %i.aaf) #12
  br label %_ZN4ncnn3Mat7releaseEv.exit179

_ZN4ncnn3Mat7releaseEv.exit179:                   ; preds = %bb.if, %bb.ie, %bb.ia, %bb.ib, %bb.id
  %i.aaj = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 0, ptr %i.aak, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.sb, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aaj, i8 0, i64 20, i1 false)
  br label %bb.ji

bb.ig:                                            ; preds = %bb.fq
  %i.aal = icmp eq i32 %i.rb, 3
  %or.cond255 = and i1 %.0118, %i.aal
  %i.aam = icmp eq i32 %i.rc, 3
  %or.cond256 = and i1 %or.cond255, %i.aam
  %i.aan = icmp eq i32 %i.re, 1
  %or.cond257 = and i1 %or.cond256, %i.aan
  %i.aao = icmp eq i32 %i.rg, 1
  %or.cond258 = and i1 %or.cond257, %i.aao
  br i1 %or.cond258, label %bb.ih, label %.critedge

bb.ih:                                            ; preds = %bb.ig
  switch i32 %i.ri, label %.critedge [
    i32 1, label %bb.ii
    i32 2, label %bb.ij
  ]

bb.ii:                                            ; preds = %bb.ih
  %i.aap = icmp eq i32 %i.rk, 1
  br i1 %i.aap, label %bb.ik, label %.critedge

bb.ij:                                            ; preds = %bb.ih
  %i.aaq = icmp eq i32 %i.rk, 2
  br i1 %i.aaq, label %bb.ik, label %.critedge

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 728
  call fastcc void @_ZN4ncnnL39convolution_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %i.aar, ptr noundef nonnull align 8 dereferenceable(72) %i.aas, i32 noundef %i.cj, i32 noundef %i.ra, i32 noundef 3, i32 noundef 3, i32 noundef 1, i32 noundef 4)
  br label %_ZN4ncnnL35convolution_transform_kernel_packedERKNS_3MatERS0_iiii.exit

.critedge:                                        ; preds = %bb.ih, %bb.fr, %bb.ii, %bb.ig, %bb.ij
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 12 uses
  %i.aav = mul i32 %i.rc, %i.rb                   ; 39 uses
  %i.aaw = icmp sgt i32 %i.ra, 3
  br i1 %i.aaw, label %bb.il, label %bb.iq

bb.il:                                            ; preds = %.critedge
  %i.aax = icmp sgt i32 %i.cj, 3                  ; 2 uses
  br i1 %i.aax, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.aay = shl nsw i32 %i.aav, 4
  %i.aaz = lshr i32 %i.cj, 2
  %i.aba = lshr i32 %i.cj, 1
  %i.abb = and i32 %i.aba, 1
  %i.abc = and i32 %i.cj, 1
  %i.abd = add nuw nsw i32 %i.abc, %i.aaz
  %i.abe = add nuw nsw i32 %i.abd, %i.abb
  %i.abf = lshr i32 %i.ra, 2
  %i.abg = lshr i32 %i.ra, 1
  %i.abh = and i32 %i.abg, 1
  %i.abi = and i32 %i.ra, 1
  %i.abj = add nuw nsw i32 %i.abi, %i.abf
  %i.abk = add nuw nsw i32 %i.abj, %i.abh
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aau, i32 noundef %i.aay, i32 noundef %i.abe, i32 noundef %i.abk, i64 noundef 4, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit422.lr.ph.i

bb.in:                                            ; preds = %bb.il
  %i.abl = icmp sgt i32 %i.cj, 1
  br i1 %i.abl, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in
  %i.abm = shl nsw i32 %i.aav, 3
  %i.abn = and i32 %i.cj, 1
  %i.abo = add nuw nsw i32 %i.abn, 1
  %i.abp = lshr i32 %i.ra, 2
  %i.abq = lshr i32 %i.ra, 1
  %i.abr = and i32 %i.abq, 1
  %i.abs = and i32 %i.ra, 1
  %i.abt = add nuw nsw i32 %i.abs, %i.abp
  %i.abu = add nuw nsw i32 %i.abt, %i.abr
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aau, i32 noundef %i.abm, i32 noundef %i.abo, i32 noundef %i.abu, i64 noundef 4, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit422.lr.ph.i

bb.ip:                                            ; preds = %bb.in
  %i.abv = shl nsw i32 %i.aav, 2
  %i.abw = lshr i32 %i.ra, 2
  %i.abx = lshr i32 %i.ra, 1
  %i.aby = and i32 %i.abx, 1
  %i.abz = and i32 %i.ra, 1
  %i.aca = add nuw nsw i32 %i.abz, %i.abw
  %i.acb = add nuw nsw i32 %i.aca, %i.aby
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aau, i32 noundef %i.abv, i32 noundef %i.cj, i32 noundef %i.acb, i64 noundef 4, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit422.lr.ph.i

bb.iq:                                            ; preds = %.critedge
  %i.acc = icmp sgt i32 %i.ra, 1
  %i.acd = icmp sgt i32 %i.cj, 3                  ; 2 uses
  br i1 %i.acc, label %bb.ir, label %bb.iw

bb.ir:                                            ; preds = %bb.iq
  br i1 %i.acd, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  %i.ace = shl nsw i32 %i.aav, 3
  %i.acf = lshr i32 %i.cj, 2
  %i.acg = lshr i32 %i.cj, 1
  %i.ach = and i32 %i.acg, 1
  %i.aci = and i32 %i.cj, 1
  %i.acj = add nuw nsw i32 %i.aci, %i.acf
  %i.ack = add nuw nsw i32 %i.acj, %i.ach
  %i.acl = and i32 %i.ra, 1
  %i.acm = add nuw nsw i32 %i.acl, 1
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aau, i32 noundef %i.ace, i32 noundef %i.ack, i32 noundef %i.acm, i64 noundef 4, ptr noundef null)
  br label %.preheader485.i

bb.it:                                            ; preds = %bb.ir
  %i.acn = icmp sgt i32 %i.cj, 1
  br i1 %i.acn, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.aco = shl nsw i32 %i.aav, 2
  %i.acp = and i32 %i.cj, 1
  %i.acq = add nuw nsw i32 %i.acp, 1
  %i.acr = and i32 %i.ra, 1
  %i.acs = add nuw nsw i32 %i.acr, 1
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aau, i32 noundef %i.aco, i32 noundef %i.acq, i32 noundef %i.acs, i64 noundef 4, ptr noundef null)
  br label %.preheader485.i

bb.iv:                                            ; preds = %bb.it
  %i.act = shl nsw i32 %i.aav, 1
  %i.acu = and i32 %i.ra, 1
  %i.acv = add nuw nsw i32 %i.acu, 1
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aau, i32 noundef %i.act, i32 noundef %i.cj, i32 noundef %i.acv, i64 noundef 4, ptr noundef null)
  br label %.preheader485.i

bb.iw:                                            ; preds = %bb.iq
  br i1 %i.acd, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  %i.acw = shl nsw i32 %i.aav, 2
  %i.acx = lshr i32 %i.cj, 2
  %i.acy = lshr i32 %i.cj, 1
  %i.acz = and i32 %i.acy, 1
  %i.ada = and i32 %i.cj, 1
  %i.adb = add nuw nsw i32 %i.ada, %i.acx
  %i.adc = add nuw nsw i32 %i.adb, %i.acz
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aau, i32 noundef %i.acw, i32 noundef %i.adc, i32 noundef %i.ra, i64 noundef 4, ptr noundef null)
  br label %.preheader485.i

bb.iy:                                            ; preds = %bb.iw
  %i.add = icmp sgt i32 %i.cj, 1
  br i1 %i.add, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.ade = shl nsw i32 %i.aav, 1
  %i.adf = and i32 %i.cj, 1
  %i.adg = add nuw nsw i32 %i.adf, 1
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aau, i32 noundef %i.ade, i32 noundef %i.adg, i32 noundef %i.ra, i64 noundef 4, ptr noundef null)
  br label %.preheader485.i

bb.ja:                                            ; preds = %bb.iy
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aau, i32 noundef %i.aav, i32 noundef %i.cj, i32 noundef %i.ra, i64 noundef 4, ptr noundef null)
  br label %.preheader485.i

_ZN4ncnn3MatD2Ev.exit422.lr.ph.i:                 ; preds = %bb.ip, %bb.io, %bb.im
  %i.adh = load ptr, ptr %i.aat, align 8, !tbaa !34 ; 4 uses
  %i.adi = mul i32 %i.aav, %i.cj                  ; 4 uses
  %i.adj = load ptr, ptr %i.aau, align 8, !tbaa !34, !noalias !209
  %i.adk = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.adl = load i64, ptr %i.adk, align 8, !tbaa !35, !noalias !209
  %i.adm = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.adn = load i64, ptr %i.adm, align 8, !tbaa !76, !noalias !209
  %factor.op.mul.i = mul i64 %i.adn, %i.adl
  %i.ado = icmp sgt i32 %i.aav, 0                 ; 2 uses
  %i.adp = sext i32 %i.aav to i64                 ; 21 uses
  %i.adq = shl i32 %i.aav, 2
  %i.adr = sext i32 %i.adq to i64                 ; 4 uses
  %i.ads = shl i32 %i.aav, 1                      ; 2 uses
  %i.adt = sext i32 %i.ads to i64                 ; 5 uses
  %i.adu = icmp slt i32 %i.aav, 1
  %i.adv = and i32 %i.cj, -4
  %i.adw = zext nneg i32 %i.ra to i64
  %wide.trip.count.i = zext i32 %i.aav to i64     ; 12 uses
  %i.adx = shl nuw nsw i64 %wide.trip.count.i, 4
  %i.ady = shl nuw nsw i64 %wide.trip.count.i, 2  ; 9 uses
  %i.adz = shl nuw nsw i64 %wide.trip.count.i, 5
  %i.aea = shl nsw i64 %i.adp, 2                  ; 5 uses
  %i.aeb = add nsw i64 %i.aea, %i.ady             ; 4 uses
  %i.aec = shl nsw i64 %i.adt, 2
  %i.aed = add i32 %i.cj, -2
  %min.iters.check548 = icmp ult i32 %i.aav, 16
  %stride.check = icmp slt i32 %i.ads, 0
  %n.vec550 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.aee = shl nuw nsw i64 %n.vec550, 5
  %cmp.n565 = icmp eq i64 %n.vec550, %wide.trip.count.i
  %min.iters.check = icmp ult i32 %i.aav, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.aef = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.aeg = add nsw i64 %wide.trip.count.i, -1
  br label %_ZN4ncnn3MatD2Ev.exit422.i

.preheader485.loopexit.i:                         ; preds = %._crit_edge548.split.i
  %i.aeh = trunc nuw nsw i64 %indvars.iv.next736.i to i32
  br label %.preheader485.i

.preheader485.i:                                  ; preds = %.preheader485.loopexit.i, %bb.ja, %bb.iz, %bb.ix, %bb.iv, %bb.iu, %bb.is
  %.0348.lcssa.i = phi i32 [ %i.aeh, %.preheader485.loopexit.i ], [ 0, %bb.iu ], [ 0, %bb.iv ], [ 0, %bb.is ], [ 0, %bb.iz ], [ 0, %bb.ja ], [ 0, %bb.ix ] ; 5 uses
  %i.aei = or disjoint i32 %.0348.lcssa.i, 1      ; 2 uses
  %i.aej = icmp slt i32 %i.aei, %i.ra
  br i1 %i.aej, label %_ZN4ncnn3MatD2Ev.exit421.lr.ph.i, label %.preheader479.i

_ZN4ncnn3MatD2Ev.exit421.lr.ph.i:                 ; preds = %.preheader485.i
  %i.aek = load ptr, ptr %i.aat, align 8, !tbaa !34 ; 16 uses
  %i.ael = mul i32 %i.aav, %i.cj                  ; 2 uses
  %i.aem = load ptr, ptr %i.aau, align 8, !tbaa !34, !noalias !210
  %i.aen = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.aeo = load i64, ptr %i.aen, align 8, !tbaa !35, !noalias !210
  %i.aep = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.aeq = load i64, ptr %i.aep, align 8, !tbaa !76, !noalias !210
  %factor.op.mul596.i = mul i64 %i.aeq, %i.aeo
  %i.aer = icmp sgt i32 %i.cj, 3
  %i.aes = icmp sgt i32 %i.aav, 0                 ; 2 uses
  %i.aet = sext i32 %i.aav to i64                 ; 14 uses
  %i.aeu = shl i32 %i.aav, 1                      ; 3 uses
  %i.aev = zext i32 %i.aeu to i64                 ; 5 uses
  %i.aew = mul i32 %i.aav, 3
  %i.aex = zext i32 %i.aew to i64                 ; 5 uses
  %i.aey = shl i32 %i.aav, 2                      ; 2 uses
  %i.aez = sext i32 %i.aey to i64                 ; 3 uses
  %i.afa = sext i32 %i.aeu to i64                 ; 3 uses
  %i.afb = icmp slt i32 %i.aav, 1
  %i.afc = and i32 %i.cj, -4
  %i.afd = zext i32 %.0348.lcssa.i to i64
  %i.afe = add i32 %.0348.lcssa.i, 1
  %i.aff = sext i32 %i.ra to i64
  %wide.trip.count749.i = zext i32 %i.aav to i64  ; 18 uses
  %invariant.op.i = add nsw i64 %i.aff, -1
  %i.afg = shl nuw nsw i64 %wide.trip.count749.i, 3
  %i.afh = shl nuw nsw i64 %wide.trip.count749.i, 2 ; 5 uses
  %i.afi = shl nuw nsw i64 %wide.trip.count749.i, 4
  %i.afj = shl nsw i64 %i.aet, 2                  ; 3 uses
  %i.afk = add nsw i64 %i.afj, %i.afh             ; 2 uses
  %i.afl = shl nsw i64 %i.afa, 2
  %i.afm = add i32 %i.cj, -2
  %i.afn = shl nuw nsw i64 %wide.trip.count749.i, 5
  %i.afo = shl nuw nsw i64 %i.aex, 2              ; 3 uses
  %scevgep645 = getelementptr i8, ptr %i.aek, i64 %i.afo
  %i.afp = mul i32 %i.rb, %i.rc
  %i.afq = mul i32 %i.afp, %i.cj
  %i.afr = mul i32 %i.afq, %i.aei
  %i.afs = mul i32 %i.rb, %i.rc
  %i.aft = mul i32 %i.afs, %i.cj
  %i.afu = shl i32 %i.aft, 1
  %i.afv = add i32 %i.cj, -4
  %i.afw = lshr i32 %i.afv, 2
  %i.afx = zext nneg i32 %i.afw to i64
  %i.afy = mul nsw i64 %i.afx, %i.aez
  %i.afz = shl i64 %i.afy, 2                      ; 4 uses
  %i.aga = add i64 %i.afz, %i.afo
  %i.agb = shl nuw nsw i64 %wide.trip.count749.i, 2 ; 4 uses
  %i.agc = add i64 %i.aga, %i.agb                 ; 2 uses
  %scevgep647 = getelementptr i8, ptr %i.aek, i64 %i.agc
  %i.agd = shl nuw nsw i64 %i.aev, 2              ; 3 uses
  %scevgep649 = getelementptr i8, ptr %i.aek, i64 %i.agd
  %i.age = add i64 %i.afz, %i.agd
  %i.agf = add i64 %i.age, %i.agb                 ; 2 uses
  %scevgep651 = getelementptr i8, ptr %i.aek, i64 %i.agf
  %i.agg = shl nsw i64 %i.aet, 2                  ; 3 uses
  %scevgep653 = getelementptr i8, ptr %i.aek, i64 %i.agg
  %i.agh = add i64 %i.afz, %i.agg
  %i.agi = add i64 %i.agh, %i.agb                 ; 2 uses
  %scevgep655 = getelementptr i8, ptr %i.aek, i64 %i.agi
  %i.agj = add i64 %i.afz, %i.agb                 ; 2 uses
  %scevgep657 = getelementptr i8, ptr %i.aek, i64 %i.agj
  %scevgep659 = getelementptr i8, ptr %i.aek, i64 %i.afo
  %i.agk = mul i32 %.0348.lcssa.i, %i.rb
  %i.agl = mul i32 %i.agk, %i.rc
  %i.agm = mul i32 %i.agl, %i.cj
  %scevgep661 = getelementptr i8, ptr %i.aek, i64 %i.agc
  %scevgep663 = getelementptr i8, ptr %i.aek, i64 %i.agd
  %scevgep665 = getelementptr i8, ptr %i.aek, i64 %i.agf
  %scevgep667 = getelementptr i8, ptr %i.aek, i64 %i.agg
  %scevgep669 = getelementptr i8, ptr %i.aek, i64 %i.agi
  %scevgep671 = getelementptr i8, ptr %i.aek, i64 %i.agj
  %min.iters.check706 = icmp ult i32 %i.aav, 16
  %stride.check676 = icmp slt i32 %i.aey, 0
  %n.vec708 = and i64 %wide.trip.count749.i, 2147483644 ; 4 uses
  %i.agn = shl nuw nsw i64 %n.vec708, 5
  %cmp.n723 = icmp eq i64 %n.vec708, %wide.trip.count749.i
  %min.iters.check627 = icmp ult i32 %i.aav, 8
  %stride.check613 = icmp slt i32 %i.aeu, 0
  %n.vec629 = and i64 %wide.trip.count749.i, 2147483644 ; 4 uses
  %i.ago = shl nuw nsw i64 %n.vec629, 4
  %cmp.n640 = icmp eq i64 %n.vec629, %wide.trip.count749.i
  %xtraiter860 = and i64 %wide.trip.count749.i, 1
  %lcmp.mod861.not = icmp eq i64 %xtraiter860, 0
  %i.agp = add nsw i64 %wide.trip.count749.i, -1
  %min.iters.check580 = icmp ult i32 %i.aav, 6
  %n.vec582 = and i64 %wide.trip.count749.i, 2147483644 ; 4 uses
  %i.agq = shl nuw nsw i64 %n.vec582, 3
  %cmp.n595 = icmp eq i64 %n.vec582, %wide.trip.count749.i
  %xtraiter862 = and i64 %wide.trip.count749.i, 3 ; 2 uses
  %lcmp.mod863.not = icmp eq i64 %xtraiter862, 0
  br label %_ZN4ncnn3MatD2Ev.exit421.i

_ZN4ncnn3MatD2Ev.exit422.i:                       ; preds = %._crit_edge548.split.i, %_ZN4ncnn3MatD2Ev.exit422.lr.ph.i
  %indvars.iv735.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit422.lr.ph.i ], [ %indvars.iv.next736.i, %._crit_edge548.split.i ] ; 3 uses
  %i.agr = trunc i64 %indvars.iv735.i to i32      ; 4 uses
  %i.ags = mul i32 %i.adi, %i.agr
  %i.agt = sext i32 %i.ags to i64
  %i.agu = getelementptr inbounds [4 x i8], ptr %i.adh, i64 %i.agt ; 3 uses
  %i.agv = or disjoint i32 %i.agr, 1
  %i.agw = mul i32 %i.agv, %i.adi
  %i.agx = sext i32 %i.agw to i64
  %i.agy = getelementptr inbounds [4 x i8], ptr %i.adh, i64 %i.agx ; 3 uses
  %i.agz = or disjoint i32 %i.agr, 2
  %i.aha = mul i32 %i.agz, %i.adi
  %i.ahb = sext i32 %i.aha to i64
  %i.ahc = getelementptr inbounds [4 x i8], ptr %i.adh, i64 %i.ahb ; 3 uses
  %i.ahd = or disjoint i32 %i.agr, 3
  %i.ahe = mul i32 %i.ahd, %i.adi
  %i.ahf = sext i32 %i.ahe to i64
  %i.ahg = getelementptr inbounds [4 x i8], ptr %i.adh, i64 %i.ahf ; 3 uses
  %i.ahh = lshr exact i64 %indvars.iv735.i, 2
  %.reass.i = mul i64 %factor.op.mul.i, %i.ahh
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.adj, i64 %.reass.i ; 2 uses
  %i.ahj = insertelement <4 x ptr> poison, ptr %i.ahg, i64 0
  %i.ahk = insertelement <4 x ptr> %i.ahj, ptr %i.ahc, i64 1
  %i.ahl = insertelement <4 x ptr> %i.ahk, ptr %i.agy, i64 2
  %i.ahm = insertelement <4 x ptr> %i.ahl, ptr %i.agu, i64 3
  br i1 %i.aax, label %.preheader488.lr.ph.i, label %.preheader490.i

.preheader488.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit422.i
  br i1 %i.ado, label %.preheader488.us.i, label %._crit_edge548.split.i

.preheader488.us.i:                               ; preds = %.preheader488.lr.ph.i, %._crit_edge.us.i
  %.0351504.us.i = phi ptr [ %i.ajj, %._crit_edge.us.i ], [ %i.agu, %.preheader488.lr.ph.i ] ; 2 uses
  %.0358503.us.i = phi ptr [ %i.ajk, %._crit_edge.us.i ], [ %i.agy, %.preheader488.lr.ph.i ] ; 2 uses
  %.0360502.us.i = phi ptr [ %i.ajl, %._crit_edge.us.i ], [ %i.ahc, %.preheader488.lr.ph.i ] ; 2 uses
  %.0377501.us.i = phi ptr [ %i.ajm, %._crit_edge.us.i ], [ %i.ahg, %.preheader488.lr.ph.i ] ; 2 uses
  %.0379500.us.i = phi ptr [ %i.aji, %._crit_edge.us.i ], [ %i.ahi, %.preheader488.lr.ph.i ]
  %.0387499.us.i = phi i32 [ %i.ajn, %._crit_edge.us.i ], [ 0, %.preheader488.lr.ph.i ]
  br label %bb.jb

bb.jb:                                            ; preds = %bb.jb, %.preheader488.us.i
  %indvars.iv717.i = phi i64 [ 0, %.preheader488.us.i ], [ %indvars.iv.next718.i, %bb.jb ] ; 5 uses
  %.1380498.us.i = phi ptr [ %.0379500.us.i, %.preheader488.us.i ], [ %i.aji, %bb.jb ] ; 17 uses
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %.0351504.us.i, i64 %indvars.iv717.i ; 2 uses
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %.0358503.us.i, i64 %indvars.iv717.i ; 2 uses
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %.0360502.us.i, i64 %indvars.iv717.i ; 2 uses
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %.0377501.us.i, i64 %indvars.iv717.i ; 2 uses
  %i.ahr = load float, ptr %i.ahn, align 4, !tbaa !53
  store float %i.ahr, ptr %.1380498.us.i, align 4, !tbaa !53
  %i.ahs = load float, ptr %i.aho, align 4, !tbaa !53
  %i.aht = getelementptr inbounds nuw i8, ptr %.1380498.us.i, i64 4
  store float %i.ahs, ptr %i.aht, align 4, !tbaa !53
  %i.ahu = load float, ptr %i.ahp, align 4, !tbaa !53
  %i.ahv = getelementptr inbounds nuw i8, ptr %.1380498.us.i, i64 8
  store float %i.ahu, ptr %i.ahv, align 4, !tbaa !53
  %i.ahw = load float, ptr %i.ahq, align 4, !tbaa !53
  %i.ahx = getelementptr inbounds nuw i8, ptr %.1380498.us.i, i64 12
  store float %i.ahw, ptr %i.ahx, align 4, !tbaa !53
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %i.adp ; 2 uses
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %i.adp ; 2 uses
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.adp ; 2 uses
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.ahq, i64 %i.adp ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %.1380498.us.i, i64 16
  %i.aid = load float, ptr %i.ahy, align 4, !tbaa !53
  store float %i.aid, ptr %i.aic, align 4, !tbaa !53
  %i.aie = load float, ptr %i.ahz, align 4, !tbaa !53
  %i.aif = getelementptr inbounds nuw i8, ptr %.1380498.us.i, i64 20
  store float %i.aie, ptr %i.aif, align 4, !tbaa !53
  %i.aig = load float, ptr %i.aia, align 4, !tbaa !53
  %i.aih = getelementptr inbounds nuw i8, ptr %.1380498.us.i, i64 24
  store float %i.aig, ptr %i.aih, align 4, !tbaa !53
  %i.aii = load float, ptr %i.aib, align 4, !tbaa !53
  %i.aij = getelementptr inbounds nuw i8, ptr %.1380498.us.i, i64 28
  store float %i.aii, ptr %i.aij, align 4, !tbaa !53
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.ahy, i64 %i.adp ; 2 uses
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.adp ; 2 uses
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %i.adp ; 2 uses
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.aib, i64 %i.adp ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %.1380498.us.i, i64 32
  %i.aip = load float, ptr %i.aik, align 4, !tbaa !53
  store float %i.aip, ptr %i.aio, align 4, !tbaa !53
  %i.aiq = load float, ptr %i.ail, align 4, !tbaa !53
  %i.air = getelementptr inbounds nuw i8, ptr %.1380498.us.i, i64 36
  store float %i.aiq, ptr %i.air, align 4, !tbaa !53
  %i.ais = load float, ptr %i.aim, align 4, !tbaa !53
  %i.ait = getelementptr inbounds nuw i8, ptr %.1380498.us.i, i64 40
  store float %i.ais, ptr %i.ait, align 4, !tbaa !53
  %i.aiu = load float, ptr %i.ain, align 4, !tbaa !53
  %i.aiv = getelementptr inbounds nuw i8, ptr %.1380498.us.i, i64 44
  store float %i.aiu, ptr %i.aiv, align 4, !tbaa !53
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %i.aik, i64 %i.adp
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.ail, i64 %i.adp
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %i.aim, i64 %i.adp
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.ain, i64 %i.adp
  %i.aja = getelementptr inbounds nuw i8, ptr %.1380498.us.i, i64 48
  %i.ajb = load float, ptr %i.aiw, align 4, !tbaa !53
  store float %i.ajb, ptr %i.aja, align 4, !tbaa !53
  %i.ajc = load float, ptr %i.aix, align 4, !tbaa !53
  %i.ajd = getelementptr inbounds nuw i8, ptr %.1380498.us.i, i64 52
  store float %i.ajc, ptr %i.ajd, align 4, !tbaa !53
  %i.aje = load float, ptr %i.aiy, align 4, !tbaa !53
  %i.ajf = getelementptr inbounds nuw i8, ptr %.1380498.us.i, i64 56
  store float %i.aje, ptr %i.ajf, align 4, !tbaa !53
  %i.ajg = load float, ptr %i.aiz, align 4, !tbaa !53
  %i.ajh = getelementptr inbounds nuw i8, ptr %.1380498.us.i, i64 60
  store float %i.ajg, ptr %i.ajh, align 4, !tbaa !53
  %i.aji = getelementptr inbounds nuw i8, ptr %.1380498.us.i, i64 64 ; 3 uses
  %indvars.iv.next718.i = add nuw nsw i64 %indvars.iv717.i, 1 ; 2 uses
  %exitcond.not.i222 = icmp eq i64 %indvars.iv.next718.i, %wide.trip.count.i
  br i1 %exitcond.not.i222, label %._crit_edge.us.i, label %bb.jb, !llvm.loop !127

._crit_edge.us.i:                                 ; preds = %bb.jb
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %.0351504.us.i, i64 %i.adr ; 3 uses
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %.0358503.us.i, i64 %i.adr ; 3 uses
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %.0360502.us.i, i64 %i.adr ; 3 uses
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %.0377501.us.i, i64 %i.adr ; 3 uses
  %i.ajn = add nuw nsw i32 %.0387499.us.i, 4      ; 2 uses
  %i.ajo = or disjoint i32 %i.ajn, 3
  %i.ajp = icmp slt i32 %i.ajo, %i.cj
  br i1 %i.ajp, label %.preheader488.us.i, label %.preheader490.i.loopexit, !llvm.loop !128

.preheader490.i.loopexit:                         ; preds = %._crit_edge.us.i
  %i.ajq = insertelement <4 x ptr> poison, ptr %i.ajm, i64 0
  %i.ajr = insertelement <4 x ptr> %i.ajq, ptr %i.ajl, i64 1
  %i.ajs = insertelement <4 x ptr> %i.ajr, ptr %i.ajk, i64 2
  %i.ajt = insertelement <4 x ptr> %i.ajs, ptr %i.ajj, i64 3
  br label %.preheader490.i

.preheader490.i:                                  ; preds = %.preheader490.i.loopexit, %_ZN4ncnn3MatD2Ev.exit422.i
  %.0387.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit422.i ], [ %i.adv, %.preheader490.i.loopexit ] ; 4 uses
  %.0379.lcssa.i = phi ptr [ %i.ahi, %_ZN4ncnn3MatD2Ev.exit422.i ], [ %i.aji, %.preheader490.i.loopexit ] ; 2 uses
  %.0377.lcssa.i = phi ptr [ %i.ahg, %_ZN4ncnn3MatD2Ev.exit422.i ], [ %i.ajm, %.preheader490.i.loopexit ] ; 5 uses
  %.0360.lcssa.i = phi ptr [ %i.ahc, %_ZN4ncnn3MatD2Ev.exit422.i ], [ %i.ajl, %.preheader490.i.loopexit ] ; 5 uses
  %.0358.lcssa.i = phi ptr [ %i.agy, %_ZN4ncnn3MatD2Ev.exit422.i ], [ %i.ajk, %.preheader490.i.loopexit ] ; 5 uses
  %.0351.lcssa.i = phi ptr [ %i.agu, %_ZN4ncnn3MatD2Ev.exit422.i ], [ %i.ajj, %.preheader490.i.loopexit ] ; 5 uses
  %i.aju = phi <4 x ptr> [ %i.ahm, %_ZN4ncnn3MatD2Ev.exit422.i ], [ %i.ajt, %.preheader490.i.loopexit ]
  %i.ajv = or disjoint i32 %.0387.lcssa.i, 1
  %i.ajw = icmp slt i32 %i.ajv, %i.cj
  br i1 %i.ajw, label %.preheader487.lr.ph.i, label %.preheader489.i

.preheader487.lr.ph.i:                            ; preds = %.preheader490.i
  br i1 %i.ado, label %.preheader487.us.i.preheader, label %._crit_edge548.split.i

.preheader487.us.i.preheader:                     ; preds = %.preheader487.lr.ph.i
  %scevgep496 = getelementptr i8, ptr %.0377.lcssa.i, i64 %i.aea
  %scevgep497 = getelementptr i8, ptr %.0377.lcssa.i, i64 %i.aeb
  %i.ajx = sub i32 %i.aed, %.0387.lcssa.i
  %i.ajy = lshr i32 %i.ajx, 1
  %i.ajz = zext nneg i32 %i.ajy to i64
  %i.aka = mul i64 %i.aec, %i.ajz                 ; 8 uses
  %scevgep498 = getelementptr i8, ptr %scevgep497, i64 %i.aka
  %scevgep499 = getelementptr i8, ptr %.0360.lcssa.i, i64 %i.aea
  %scevgep500 = getelementptr i8, ptr %.0360.lcssa.i, i64 %i.aeb
  %scevgep501 = getelementptr i8, ptr %scevgep500, i64 %i.aka
  %scevgep502 = getelementptr i8, ptr %.0358.lcssa.i, i64 %i.aea
  %scevgep503 = getelementptr i8, ptr %.0358.lcssa.i, i64 %i.aeb
  %scevgep504 = getelementptr i8, ptr %scevgep503, i64 %i.aka
  %scevgep505 = getelementptr i8, ptr %.0351.lcssa.i, i64 %i.aea
  %scevgep506 = getelementptr i8, ptr %.0351.lcssa.i, i64 %i.aeb
  %scevgep507 = getelementptr i8, ptr %scevgep506, i64 %i.aka
  %scevgep508 = getelementptr i8, ptr %.0377.lcssa.i, i64 %i.ady
  %scevgep509 = getelementptr i8, ptr %scevgep508, i64 %i.aka
  %scevgep510 = getelementptr i8, ptr %.0360.lcssa.i, i64 %i.ady
  %scevgep511 = getelementptr i8, ptr %scevgep510, i64 %i.aka
end_hunk_0
begin_hunk_1_@_ZN4ncnn15Convolution_x8615create_pipelineERKNS_6OptionE:bb.a
  %exitcond728.not.i = icmp eq i64 %indvars.iv.next725.i, %wide.trip.count.i
  br i1 %exitcond728.not.i, label %._crit_edge.us536.i, label %scalar.ph547, !llvm.loop !140

._crit_edge.us536.i:                              ; preds = %scalar.ph547, %middle.block564
  %.lcssa468 = phi ptr [ %i.aky, %middle.block564 ], [ %i.amm, %scalar.ph547 ] ; 2 uses
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %.1352529.us.i, i64 %i.adt ; 2 uses
  %i.amo = getelementptr inbounds nuw [4 x i8], ptr %.1359528.us.i, i64 %i.adt ; 2 uses
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %.1361527.us.i, i64 %i.adt ; 2 uses
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %.1378526.us.i, i64 %i.adt ; 2 uses
  %i.amr = add nuw nsw i32 %.1388524.us.i, 2      ; 3 uses
  %i.ams = or disjoint i32 %i.amr, 1
  %i.amt = icmp slt i32 %i.ams, %i.cj
  br i1 %i.amt, label %.preheader487.us.i, label %.preheader489.i, !llvm.loop !141

.preheader489.i:                                  ; preds = %._crit_edge.us536.i, %.preheader490.i
  %.1388.lcssa.i = phi i32 [ %.0387.lcssa.i, %.preheader490.i ], [ %i.amr, %._crit_edge.us536.i ] ; 2 uses
  %.3382.lcssa.i = phi ptr [ %.0379.lcssa.i, %.preheader490.i ], [ %.lcssa468, %._crit_edge.us536.i ]
  %.1378.lcssa.i = phi ptr [ %.0377.lcssa.i, %.preheader490.i ], [ %i.amq, %._crit_edge.us536.i ] ; 6 uses
  %.1361.lcssa.i = phi ptr [ %.0360.lcssa.i, %.preheader490.i ], [ %i.amp, %._crit_edge.us536.i ] ; 6 uses
  %.1359.lcssa.i = phi ptr [ %.0358.lcssa.i, %.preheader490.i ], [ %i.amo, %._crit_edge.us536.i ] ; 6 uses
  %.1352.lcssa.i = phi ptr [ %.0351.lcssa.i, %.preheader490.i ], [ %i.amn, %._crit_edge.us536.i ] ; 6 uses
  %i.amu = icmp sge i32 %.1388.lcssa.i, %i.cj
  %brmerge.i = or i1 %i.adu, %i.amu
  br i1 %brmerge.i, label %._crit_edge548.split.i, label %.preheader486.i.preheader

.preheader486.i.preheader:                        ; preds = %.preheader489.i
  %scevgep475 = getelementptr i8, ptr %.1378.lcssa.i, i64 %i.ady
  %scevgep476 = getelementptr i8, ptr %.1361.lcssa.i, i64 %i.ady
  %scevgep477 = getelementptr i8, ptr %.1359.lcssa.i, i64 %i.ady
  %scevgep478 = getelementptr i8, ptr %.1352.lcssa.i, i64 %i.ady
  %i.amv = insertelement <4 x ptr> poison, ptr %scevgep475, i64 0
  %i.amw = insertelement <4 x ptr> %i.amv, ptr %scevgep476, i64 1
  %i.amx = insertelement <4 x ptr> %i.amw, ptr %scevgep477, i64 2
  %i.amy = insertelement <4 x ptr> %i.amx, ptr %scevgep478, i64 3
  %i.amz = insertelement <4 x ptr> poison, ptr %.1378.lcssa.i, i64 0
  %i.ana = insertelement <4 x ptr> %i.amz, ptr %.1361.lcssa.i, i64 1
  %i.anb = insertelement <4 x ptr> %i.ana, ptr %.1359.lcssa.i, i64 2
  %i.anc = insertelement <4 x ptr> %i.anb, ptr %.1352.lcssa.i, i64 3
  br label %.preheader486.i

.preheader486.i:                                  ; preds = %.preheader486.i.preheader, %._crit_edge.i
  %.6385547.i = phi ptr [ %.lcssa474, %._crit_edge.i ], [ %.3382.lcssa.i, %.preheader486.i.preheader ] ; 6 uses
  %.2389546.i = phi i32 [ %i.aoh, %._crit_edge.i ], [ %.1388.lcssa.i, %.preheader486.i.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader486.i
  %scevgep = getelementptr i8, ptr %.6385547.i, i64 %i.adx
  %i.and = insertelement <4 x ptr> poison, ptr %.6385547.i, i64 0
  %i.ane = shufflevector <4 x ptr> %i.and, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.anf = icmp ult <4 x ptr> %i.ane, %i.amy
  %i.ang = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.anh = shufflevector <4 x ptr> %i.ang, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ani = icmp ult <4 x ptr> %i.anc, %i.anh
  %i.anj = and <4 x i1> %i.anf, %i.ani
  %i.ank = bitcast <4 x i1> %i.anj to i4
  %.not832 = icmp eq i4 %i.ank, 0
  br i1 %.not832, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.anl = getelementptr i8, ptr %.6385547.i, i64 %i.aef ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.anm = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.6385547.i, i64 %i.anm
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %.1352.lcssa.i, i64 %index
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %.1359.lcssa.i, i64 %index
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %.1361.lcssa.i, i64 %index
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %.1378.lcssa.i, i64 %index
  %wide.load = load <4 x float>, ptr %i.ann, align 4, !tbaa !53, !alias.scope !221
  %wide.load490 = load <4 x float>, ptr %i.ano, align 4, !tbaa !53, !alias.scope !222
  %wide.load491 = load <4 x float>, ptr %i.anp, align 4, !tbaa !53, !alias.scope !223
  %wide.load492 = load <4 x float>, ptr %i.anq, align 4, !tbaa !53, !alias.scope !224
  %i.anr = shufflevector <4 x float> %wide.load, <4 x float> %wide.load490, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ans = shufflevector <4 x float> %wide.load491, <4 x float> %wide.load492, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.anr, <8 x float> %i.ans, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !53, !alias.scope !225, !noalias !226
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ant = icmp eq i64 %index.next, %n.vec
  br i1 %i.ant, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader486.i, %middle.block
  %indvars.iv729.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader486.i ], [ %n.vec, %middle.block ] ; 7 uses
  %.7386545.i.ph = phi ptr [ %.6385547.i, %vector.memcheck ], [ %.6385547.i, %.preheader486.i ], [ %i.anl, %middle.block ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %.1352.lcssa.i, i64 %indvars.iv729.i.ph
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %.1359.lcssa.i, i64 %indvars.iv729.i.ph
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %.1361.lcssa.i, i64 %indvars.iv729.i.ph
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %.1378.lcssa.i, i64 %indvars.iv729.i.ph
  %i.any = load float, ptr %i.anu, align 4, !tbaa !53
  store float %i.any, ptr %.7386545.i.ph, align 4, !tbaa !53
  %i.anz = load float, ptr %i.anv, align 4, !tbaa !53
  %i.aoa = getelementptr inbounds nuw i8, ptr %.7386545.i.ph, i64 4
  store float %i.anz, ptr %i.aoa, align 4, !tbaa !53
  %i.aob = load float, ptr %i.anw, align 4, !tbaa !53
  %i.aoc = getelementptr inbounds nuw i8, ptr %.7386545.i.ph, i64 8
  store float %i.aob, ptr %i.aoc, align 4, !tbaa !53
  %i.aod = load float, ptr %i.anx, align 4, !tbaa !53
  %i.aoe = getelementptr inbounds nuw i8, ptr %.7386545.i.ph, i64 12
  store float %i.aod, ptr %i.aoe, align 4, !tbaa !53
  %i.aof = getelementptr inbounds nuw i8, ptr %.7386545.i.ph, i64 16 ; 2 uses
  %indvars.iv.next730.i.prol = or disjoint i64 %indvars.iv729.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa859.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.aof, %scalar.ph.prol ]
  %indvars.iv729.i.unr = phi i64 [ %indvars.iv729.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next730.i.prol, %scalar.ph.prol ]
  %.7386545.i.unr = phi ptr [ %.7386545.i.ph, %scalar.ph.preheader ], [ %i.aof, %scalar.ph.prol ]
  %i.aog = icmp eq i64 %indvars.iv729.i.ph, %i.aeg
  br i1 %i.aog, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa474 = phi ptr [ %i.anl, %middle.block ], [ %.lcssa859.unr, %scalar.ph.prol.loopexit ], [ %i.apf, %scalar.ph ]
  %i.aoh = add nuw nsw i32 %.2389546.i, 1         ; 2 uses
  %exitcond734.not.i = icmp eq i32 %i.aoh, %i.cj
  br i1 %exitcond734.not.i, label %._crit_edge548.split.i, label %.preheader486.i, !llvm.loop !149

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv729.i = phi i64 [ %indvars.iv.next730.i.1, %scalar.ph ], [ %indvars.iv729.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.7386545.i = phi ptr [ %i.apf, %scalar.ph ], [ %.7386545.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %.1352.lcssa.i, i64 %indvars.iv729.i
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %.1359.lcssa.i, i64 %indvars.iv729.i
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %.1361.lcssa.i, i64 %indvars.iv729.i
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %.1378.lcssa.i, i64 %indvars.iv729.i
  %i.aom = load float, ptr %i.aoi, align 4, !tbaa !53
  store float %i.aom, ptr %.7386545.i, align 4, !tbaa !53
  %i.aon = load float, ptr %i.aoj, align 4, !tbaa !53
  %i.aoo = getelementptr inbounds nuw i8, ptr %.7386545.i, i64 4
  store float %i.aon, ptr %i.aoo, align 4, !tbaa !53
  %i.aop = load float, ptr %i.aok, align 4, !tbaa !53
  %i.aoq = getelementptr inbounds nuw i8, ptr %.7386545.i, i64 8
  store float %i.aop, ptr %i.aoq, align 4, !tbaa !53
  %i.aor = load float, ptr %i.aol, align 4, !tbaa !53
  %i.aos = getelementptr inbounds nuw i8, ptr %.7386545.i, i64 12
  store float %i.aor, ptr %i.aos, align 4, !tbaa !53
  %i.aot = getelementptr inbounds nuw i8, ptr %.7386545.i, i64 16
  %indvars.iv.next730.i = add nuw nsw i64 %indvars.iv729.i, 1 ; 4 uses
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %.1352.lcssa.i, i64 %indvars.iv.next730.i
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %.1359.lcssa.i, i64 %indvars.iv.next730.i
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr %.1361.lcssa.i, i64 %indvars.iv.next730.i
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %.1378.lcssa.i, i64 %indvars.iv.next730.i
  %i.aoy = load float, ptr %i.aou, align 4, !tbaa !53
  store float %i.aoy, ptr %i.aot, align 4, !tbaa !53
  %i.aoz = load float, ptr %i.aov, align 4, !tbaa !53
  %i.apa = getelementptr inbounds nuw i8, ptr %.7386545.i, i64 20
  store float %i.aoz, ptr %i.apa, align 4, !tbaa !53
  %i.apb = load float, ptr %i.aow, align 4, !tbaa !53
  %i.apc = getelementptr inbounds nuw i8, ptr %.7386545.i, i64 24
  store float %i.apb, ptr %i.apc, align 4, !tbaa !53
  %i.apd = load float, ptr %i.aox, align 4, !tbaa !53
  %i.ape = getelementptr inbounds nuw i8, ptr %.7386545.i, i64 28
  store float %i.apd, ptr %i.ape, align 4, !tbaa !53
  %i.apf = getelementptr inbounds nuw i8, ptr %.7386545.i, i64 32 ; 2 uses
  %indvars.iv.next730.i.1 = add nuw nsw i64 %indvars.iv729.i, 2 ; 2 uses
  %exitcond733.not.i.1 = icmp eq i64 %indvars.iv.next730.i.1, %wide.trip.count.i
  br i1 %exitcond733.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !150

._crit_edge548.split.i:                           ; preds = %._crit_edge.i, %.preheader489.i, %.preheader487.lr.ph.i, %.preheader488.lr.ph.i
  %indvars.iv.next736.i = add nuw nsw i64 %indvars.iv735.i, 4 ; 3 uses
  %i.apg = or disjoint i64 %indvars.iv.next736.i, 3
  %i.aph = icmp samesign ult i64 %i.apg, %i.adw
  br i1 %i.aph, label %_ZN4ncnn3MatD2Ev.exit422.i, label %.preheader485.loopexit.i, !llvm.loop !151

.preheader479.loopexit.i:                         ; preds = %._crit_edge593.split.i
  %i.api = trunc nuw nsw i64 %indvars.iv.next767.i to i32
  br label %.preheader479.i

.preheader479.i:                                  ; preds = %.preheader479.loopexit.i, %.preheader485.i
  %.1349.lcssa.i = phi i32 [ %.0348.lcssa.i, %.preheader485.i ], [ %i.api, %.preheader479.loopexit.i ] ; 3 uses
  %i.apj = icmp slt i32 %.1349.lcssa.i, %i.ra
  br i1 %i.apj, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL35convolution_transform_kernel_packedERKNS_3MatERS0_iiii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader479.i
  %i.apk = load ptr, ptr %i.aat, align 8, !tbaa !34 ; 8 uses
  %i.apl = mul i32 %i.aav, %i.cj
  %i.apm = load ptr, ptr %i.aau, align 8, !tbaa !34, !noalias !227
  %i.apn = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.apo = load i64, ptr %i.apn, align 8, !tbaa !35, !noalias !227
  %i.app = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.apq = load i64, ptr %i.app, align 8, !tbaa !76, !noalias !227
  %factor.op.mul639.i = mul i64 %i.apq, %i.apo
  %i.apr = icmp sgt i32 %i.cj, 3
  %i.aps = icmp sgt i32 %i.aav, 0                 ; 2 uses
  %i.apt = sext i32 %i.aav to i64                 ; 22 uses
  %i.apu = shl i32 %i.aav, 2                      ; 2 uses
  %i.apv = sext i32 %i.apu to i64                 ; 2 uses
  %i.apw = shl i32 %i.aav, 1                      ; 2 uses
  %i.apx = sext i32 %i.apw to i64                 ; 2 uses
  %i.apy = icmp slt i32 %i.aav, 1
  %i.apz = and i32 %i.cj, -4
  %i.aqa = zext i32 %.1349.lcssa.i to i64
  %wide.trip.count796.i = zext i32 %i.ra to i64
  %wide.trip.count779.i = zext i32 %i.aav to i64  ; 19 uses
  %i.aqb = shl nuw nsw i64 %wide.trip.count779.i, 3
  %i.aqc = shl nsw i64 %i.apt, 2                  ; 2 uses
  %i.aqd = shl nuw nsw i64 %wide.trip.count779.i, 2 ; 2 uses
  %i.aqe = shl nsw i64 %i.apx, 2
  %i.aqf = add i32 %i.cj, -2
  %i.aqg = shl nuw nsw i64 %wide.trip.count779.i, 4
  %i.aqh = mul nsw i64 %i.apt, 12                 ; 2 uses
  %scevgep779 = getelementptr i8, ptr %i.apk, i64 %i.aqh
  %i.aqi = mul i32 %.1349.lcssa.i, %i.rb
  %i.aqj = mul i32 %i.aqi, %i.rc
  %i.aqk = mul i32 %i.aqj, %i.cj
  %i.aql = mul i32 %i.rb, %i.rc
  %i.aqm = mul i32 %i.aql, %i.cj
  %i.aqn = add i32 %i.cj, -4
  %i.aqo = lshr i32 %i.aqn, 2
  %i.aqp = zext nneg i32 %i.aqo to i64
  %i.aqq = mul nsw i64 %i.aqp, %i.apv
  %i.aqr = shl i64 %i.aqq, 2                      ; 4 uses
  %i.aqs = shl nuw nsw i64 %wide.trip.count779.i, 2 ; 4 uses
  %i.aqt = getelementptr i8, ptr %i.apk, i64 %i.aqr
  %i.aqu = getelementptr i8, ptr %i.aqt, i64 %i.aqh
  %scevgep783 = getelementptr i8, ptr %i.aqu, i64 %i.aqs
  %i.aqv = shl nsw i64 %i.apt, 3                  ; 2 uses
  %scevgep785 = getelementptr i8, ptr %i.apk, i64 %i.aqv
  %i.aqw = getelementptr i8, ptr %i.apk, i64 %i.aqr
  %i.aqx = getelementptr i8, ptr %i.aqw, i64 %i.aqv
  %scevgep787 = getelementptr i8, ptr %i.aqx, i64 %i.aqs
  %i.aqy = shl nsw i64 %i.apt, 2                  ; 2 uses
  %scevgep789 = getelementptr i8, ptr %i.apk, i64 %i.aqy
  %i.aqz = getelementptr i8, ptr %i.apk, i64 %i.aqr
  %i.ara = getelementptr i8, ptr %i.aqz, i64 %i.aqy
  %scevgep791 = getelementptr i8, ptr %i.ara, i64 %i.aqs
  %i.arb = getelementptr i8, ptr %i.apk, i64 %i.aqr
  %scevgep793 = getelementptr i8, ptr %i.arb, i64 %i.aqs
  %min.iters.check812 = icmp ult i32 %i.aav, 8
  %stride.check798 = icmp slt i32 %i.apu, 0
  %n.vec814 = and i64 %wide.trip.count779.i, 2147483644 ; 4 uses
  %i.arc = shl nuw nsw i64 %n.vec814, 4
  %cmp.n825 = icmp eq i64 %n.vec814, %wide.trip.count779.i
  %xtraiter864 = and i64 %wide.trip.count779.i, 1
  %lcmp.mod865.not = icmp eq i64 %xtraiter864, 0
  %i.ard = add nsw i64 %wide.trip.count779.i, -1
  %min.iters.check759 = icmp ult i32 %i.aav, 8
  %stride.check753 = icmp slt i32 %i.apw, 0
  %n.vec761 = and i64 %wide.trip.count779.i, 2147483644 ; 4 uses
  %i.are = shl nuw nsw i64 %n.vec761, 3
  %cmp.n774 = icmp eq i64 %n.vec761, %wide.trip.count779.i
  %xtraiter867 = and i64 %wide.trip.count779.i, 3 ; 2 uses
  %lcmp.mod868.not = icmp eq i64 %xtraiter867, 0
  %min.iters.check730 = icmp ult i32 %i.aav, 8
  %n.vec732 = and i64 %wide.trip.count779.i, 2147483640 ; 4 uses
  %i.arf = shl nuw nsw i64 %n.vec732, 2
  %cmp.n740 = icmp eq i64 %n.vec732, %wide.trip.count779.i
  %xtraiter870 = and i64 %wide.trip.count779.i, 7 ; 2 uses
  %lcmp.mod871.not = icmp eq i64 %xtraiter870, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i221

_ZN4ncnn3MatD2Ev.exit421.i:                       ; preds = %._crit_edge593.split.i, %_ZN4ncnn3MatD2Ev.exit421.lr.ph.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge593.split.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit421.lr.ph.i ] ; 2 uses
  %indvars.iv766.i = phi i64 [ %indvars.iv.next767.i, %._crit_edge593.split.i ], [ %i.afd, %_ZN4ncnn3MatD2Ev.exit421.lr.ph.i ] ; 2 uses
  %indvars.iv764.i = phi i32 [ %indvars.iv.next765.i, %._crit_edge593.split.i ], [ %i.afe, %_ZN4ncnn3MatD2Ev.exit421.lr.ph.i ] ; 2 uses
  %i.arg = mul i32 %i.afu, %indvar                ; 2 uses
  %i.arh = add i32 %i.afr, %i.arg
  %i.ari = sext i32 %i.arh to i64
  %i.arj = shl nsw i64 %i.ari, 2                  ; 7 uses
  %scevgep646 = getelementptr i8, ptr %scevgep645, i64 %i.arj
  %scevgep648 = getelementptr i8, ptr %scevgep647, i64 %i.arj
  %scevgep650 = getelementptr i8, ptr %scevgep649, i64 %i.arj
  %scevgep652 = getelementptr i8, ptr %scevgep651, i64 %i.arj
  %scevgep654 = getelementptr i8, ptr %scevgep653, i64 %i.arj
  %scevgep656 = getelementptr i8, ptr %scevgep655, i64 %i.arj
  %scevgep658 = getelementptr i8, ptr %scevgep657, i64 %i.arj
  %i.ark = add i32 %i.agm, %i.arg
  %i.arl = sext i32 %i.ark to i64
  %i.arm = shl nsw i64 %i.arl, 2                  ; 7 uses
  %scevgep660 = getelementptr i8, ptr %scevgep659, i64 %i.arm
  %scevgep662 = getelementptr i8, ptr %scevgep661, i64 %i.arm
  %scevgep664 = getelementptr i8, ptr %scevgep663, i64 %i.arm
  %scevgep666 = getelementptr i8, ptr %scevgep665, i64 %i.arm
  %scevgep668 = getelementptr i8, ptr %scevgep667, i64 %i.arm
  %scevgep670 = getelementptr i8, ptr %scevgep669, i64 %i.arm
  %scevgep672 = getelementptr i8, ptr %scevgep671, i64 %i.arm
  %i.arn = trunc i64 %indvars.iv766.i to i32      ; 3 uses
  %i.aro = mul i32 %i.ael, %i.arn
  %i.arp = sext i32 %i.aro to i64
  %i.arq = getelementptr [4 x i8], ptr %i.aek, i64 %i.arp ; 3 uses
  %i.arr = mul i32 %indvars.iv764.i, %i.ael
  %i.ars = sext i32 %i.arr to i64
  %i.art = getelementptr [4 x i8], ptr %i.aek, i64 %i.ars ; 3 uses
  %i.aru = lshr i32 %i.arn, 2
  %i.arv = lshr i32 %i.arn, 1
  %i.arw = and i32 %i.arv, 1
  %i.arx = add nuw nsw i32 %i.arw, %i.aru
  %i.ary = zext nneg i32 %i.arx to i64
  %.reass597.i = mul i64 %factor.op.mul596.i, %i.ary
  %i.arz = getelementptr inbounds nuw i8, ptr %i.aem, i64 %.reass597.i ; 2 uses
  br i1 %i.aer, label %.preheader482.lr.ph.i, label %.preheader484.i

.preheader482.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit421.i
  br i1 %i.aes, label %.preheader482.us.i.preheader, label %._crit_edge593.split.i

.preheader482.us.i.preheader:                     ; preds = %.preheader482.lr.ph.i
  %i.asa = insertelement <8 x ptr> poison, ptr %scevgep648, i64 0
  %i.asb = insertelement <8 x ptr> %i.asa, ptr %scevgep652, i64 1
  %i.asc = insertelement <8 x ptr> %i.asb, ptr %scevgep656, i64 2
  %i.asd = insertelement <8 x ptr> %i.asc, ptr %scevgep658, i64 3
  %i.ase = insertelement <8 x ptr> %i.asd, ptr %scevgep662, i64 4
  %i.asf = insertelement <8 x ptr> %i.ase, ptr %scevgep666, i64 5
  %i.asg = insertelement <8 x ptr> %i.asf, ptr %scevgep670, i64 6
  %i.ash = insertelement <8 x ptr> %i.asg, ptr %scevgep672, i64 7
  %i.asi = insertelement <8 x ptr> poison, ptr %scevgep646, i64 0
  %i.asj = insertelement <8 x ptr> %i.asi, ptr %scevgep650, i64 1
  %i.ask = insertelement <8 x ptr> %i.asj, ptr %scevgep654, i64 2
  %i.asl = insertelement <8 x ptr> %i.ask, ptr %i.art, i64 3
  %i.asm = insertelement <8 x ptr> %i.asl, ptr %scevgep660, i64 4
  %i.asn = insertelement <8 x ptr> %i.asm, ptr %scevgep664, i64 5
  %i.aso = insertelement <8 x ptr> %i.asn, ptr %scevgep668, i64 6
  %i.asp = insertelement <8 x ptr> %i.aso, ptr %i.arq, i64 7
  br label %.preheader482.us.i

.preheader482.us.i:                               ; preds = %.preheader482.us.i.preheader, %._crit_edge553.us.i
  %.0363558.us.i = phi i32 [ %i.auq, %._crit_edge553.us.i ], [ 0, %.preheader482.us.i.preheader ]
  %.0366557.us.i = phi ptr [ %.lcssa455, %._crit_edge553.us.i ], [ %i.arz, %.preheader482.us.i.preheader ] ; 6 uses
  %.0373556.us.i = phi ptr [ %i.aup, %._crit_edge553.us.i ], [ %i.art, %.preheader482.us.i.preheader ] ; 3 uses
  %.0375555.us.i = phi ptr [ %i.auo, %._crit_edge553.us.i ], [ %i.arq, %.preheader482.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check706, label %scalar.ph705.preheader, label %vector.memcheck643

vector.memcheck643:                               ; preds = %.preheader482.us.i
  %scevgep644 = getelementptr i8, ptr %.0366557.us.i, i64 %i.afn
  %i.asq = insertelement <8 x ptr> poison, ptr %.0366557.us.i, i64 0
  %i.asr = shufflevector <8 x ptr> %i.asq, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ass = icmp ult <8 x ptr> %i.asr, %i.ash
  %i.ast = insertelement <8 x ptr> poison, ptr %scevgep644, i64 0
  %i.asu = shufflevector <8 x ptr> %i.ast, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.asv = icmp ult <8 x ptr> %i.asp, %i.asu
  %i.asw = and <8 x i1> %i.ass, %i.asv
  %i.asx = bitcast <8 x i1> %i.asw to i8
  %i.asy = icmp ne i8 %i.asx, 0
  %op.rdx830 = or i1 %i.asy, %stride.check676
  br i1 %op.rdx830, label %scalar.ph705.preheader, label %vector.ph707

vector.ph707:                                     ; preds = %vector.memcheck643
  %i.asz = getelementptr i8, ptr %.0366557.us.i, i64 %i.agn ; 2 uses
  br label %vector.body709

vector.body709:                                   ; preds = %vector.body709, %vector.ph707
  %index710 = phi i64 [ 0, %vector.ph707 ], [ %index.next721, %vector.body709 ] ; 4 uses
  %i.ata = shl i64 %index710, 5
  %next.gep711 = getelementptr i8, ptr %.0366557.us.i, i64 %i.ata
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %.0375555.us.i, i64 %index710 ; 4 uses
  %i.atc = getelementptr inbounds nuw [4 x i8], ptr %.0373556.us.i, i64 %index710 ; 4 uses
  %wide.load712 = load <4 x float>, ptr %i.atb, align 4, !tbaa !53, !alias.scope !228
  %i.atd = getelementptr inbounds nuw [4 x i8], ptr %i.atb, i64 %i.aet
  %wide.load713 = load <4 x float>, ptr %i.atd, align 4, !tbaa !53, !alias.scope !229
  %i.ate = getelementptr inbounds nuw [4 x i8], ptr %i.atb, i64 %i.aev
  %wide.load714 = load <4 x float>, ptr %i.ate, align 4, !tbaa !53, !alias.scope !230
  %i.atf = getelementptr inbounds nuw [4 x i8], ptr %i.atb, i64 %i.aex
  %wide.load715 = load <4 x float>, ptr %i.atf, align 4, !tbaa !53, !alias.scope !231
  %wide.load716 = load <4 x float>, ptr %i.atc, align 4, !tbaa !53, !alias.scope !232
  %i.atg = getelementptr inbounds nuw [4 x i8], ptr %i.atc, i64 %i.aet
  %wide.load717 = load <4 x float>, ptr %i.atg, align 4, !tbaa !53, !alias.scope !233
  %i.ath = getelementptr inbounds nuw [4 x i8], ptr %i.atc, i64 %i.aev
  %wide.load718 = load <4 x float>, ptr %i.ath, align 4, !tbaa !53, !alias.scope !234
  %i.ati = getelementptr inbounds nuw [4 x i8], ptr %i.atc, i64 %i.aex
  %wide.load719 = load <4 x float>, ptr %i.ati, align 4, !tbaa !53, !alias.scope !235
  %i.atj = shufflevector <4 x float> %wide.load712, <4 x float> %wide.load713, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.atk = shufflevector <4 x float> %wide.load714, <4 x float> %wide.load715, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.atl = shufflevector <4 x float> %wide.load716, <4 x float> %wide.load717, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.atm = shufflevector <4 x float> %wide.load718, <4 x float> %wide.load719, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.atn = shufflevector <8 x float> %i.atj, <8 x float> %i.atk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ato = shufflevector <8 x float> %i.atl, <8 x float> %i.atm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec720 = shufflevector <16 x float> %i.atn, <16 x float> %i.ato, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec720, ptr %next.gep711, align 4, !tbaa !53, !alias.scope !236, !noalias !237
  %index.next721 = add nuw i64 %index710, 4       ; 2 uses
  %i.atp = icmp eq i64 %index.next721, %n.vec708
  br i1 %i.atp, label %middle.block722, label %vector.body709, !llvm.loop !164

middle.block722:                                  ; preds = %vector.body709
  br i1 %cmp.n723, label %._crit_edge553.us.i, label %scalar.ph705.preheader

scalar.ph705.preheader:                           ; preds = %vector.memcheck643, %.preheader482.us.i, %middle.block722
  %indvars.iv746.i.ph = phi i64 [ 0, %vector.memcheck643 ], [ 0, %.preheader482.us.i ], [ %n.vec708, %middle.block722 ]
  %.1367551.us.i.ph = phi ptr [ %.0366557.us.i, %vector.memcheck643 ], [ %.0366557.us.i, %.preheader482.us.i ], [ %i.asz, %middle.block722 ]
  br label %scalar.ph705

scalar.ph705:                                     ; preds = %scalar.ph705.preheader, %scalar.ph705
  %indvars.iv746.i = phi i64 [ %indvars.iv.next747.i, %scalar.ph705 ], [ %indvars.iv746.i.ph, %scalar.ph705.preheader ] ; 3 uses
  %.1367551.us.i = phi ptr [ %i.aun, %scalar.ph705 ], [ %.1367551.us.i.ph, %scalar.ph705.preheader ] ; 9 uses
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %.0375555.us.i, i64 %indvars.iv746.i ; 4 uses
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr %.0373556.us.i, i64 %indvars.iv746.i ; 4 uses
  %i.ats = load float, ptr %i.atq, align 4, !tbaa !53
  store float %i.ats, ptr %.1367551.us.i, align 4, !tbaa !53
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %i.atq, i64 %i.aet
  %i.atu = load float, ptr %i.att, align 4, !tbaa !53
  %i.atv = getelementptr inbounds nuw i8, ptr %.1367551.us.i, i64 4
  store float %i.atu, ptr %i.atv, align 4, !tbaa !53
  %i.atw = getelementptr inbounds nuw [4 x i8], ptr %i.atq, i64 %i.aev
  %i.atx = load float, ptr %i.atw, align 4, !tbaa !53
  %i.aty = getelementptr inbounds nuw i8, ptr %.1367551.us.i, i64 8
  store float %i.atx, ptr %i.aty, align 4, !tbaa !53
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr %i.atq, i64 %i.aex
  %i.aua = load float, ptr %i.atz, align 4, !tbaa !53
  %i.aub = getelementptr inbounds nuw i8, ptr %.1367551.us.i, i64 12
  store float %i.aua, ptr %i.aub, align 4, !tbaa !53
  %i.auc = load float, ptr %i.atr, align 4, !tbaa !53
  %i.aud = getelementptr inbounds nuw i8, ptr %.1367551.us.i, i64 16
  store float %i.auc, ptr %i.aud, align 4, !tbaa !53
  %i.aue = getelementptr inbounds nuw [4 x i8], ptr %i.atr, i64 %i.aet
  %i.auf = load float, ptr %i.aue, align 4, !tbaa !53
  %i.aug = getelementptr inbounds nuw i8, ptr %.1367551.us.i, i64 20
  store float %i.auf, ptr %i.aug, align 4, !tbaa !53
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr %i.atr, i64 %i.aev
  %i.aui = load float, ptr %i.auh, align 4, !tbaa !53
  %i.auj = getelementptr inbounds nuw i8, ptr %.1367551.us.i, i64 24
  store float %i.aui, ptr %i.auj, align 4, !tbaa !53
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %i.atr, i64 %i.aex
  %i.aul = load float, ptr %i.auk, align 4, !tbaa !53
  %i.aum = getelementptr inbounds nuw i8, ptr %.1367551.us.i, i64 28
  store float %i.aul, ptr %i.aum, align 4, !tbaa !53
  %i.aun = getelementptr inbounds nuw i8, ptr %.1367551.us.i, i64 32 ; 2 uses
  %indvars.iv.next747.i = add nuw nsw i64 %indvars.iv746.i, 1 ; 2 uses
  %exitcond750.not.i = icmp eq i64 %indvars.iv.next747.i, %wide.trip.count749.i
  br i1 %exitcond750.not.i, label %._crit_edge553.us.i, label %scalar.ph705, !llvm.loop !165

._crit_edge553.us.i:                              ; preds = %scalar.ph705, %middle.block722
  %.lcssa455 = phi ptr [ %i.asz, %middle.block722 ], [ %i.aun, %scalar.ph705 ] ; 2 uses
  %i.auo = getelementptr inbounds nuw [4 x i8], ptr %.0375555.us.i, i64 %i.aez ; 2 uses
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %.0373556.us.i, i64 %i.aez ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined.12:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 52
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 52
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 52
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph154, %_ZN4ncnn3MatD2Ev.exit
  %.045152 = phi i32 [ %i.k, %.lr.ph154 ], [ %i.cz, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.bj = load i32, ptr %3, align 4, !tbaa !78    ; 2 uses
  %i.bk = mul nsw i32 %i.bj, %.045152             ; 4 uses
  %i.bl = load i32, ptr %4, align 4, !tbaa !78
  %i.bm = sub nsw i32 %i.bl, %i.bk
  %.sroa.speculated115 = call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.bm) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.bn = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1550)
  %i.bo = load i32, ptr %i.l, align 4, !tbaa !86, !noalias !1550 ; 2 uses
  %i.bp = load i32, ptr %i.m, align 8, !tbaa !87, !noalias !1550 ; 2 uses
  %i.bq = load i32, ptr %i.n, align 4, !tbaa !99, !noalias !1550
  %i.br = load ptr, ptr %5, align 8, !tbaa !34, !noalias !1550
  %i.bs = load i64, ptr %i.o, align 8, !tbaa !35, !noalias !1550
  %i.bt = sext i32 %i.bn to i64
  %i.bu = mul i64 %i.bs, %i.bt
  %i.bv = load i64, ptr %i.p, align 8, !tbaa !76, !noalias !1550 ; 4 uses
  %i.bw = mul i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bw
  %i.by = load i32, ptr %i.q, align 8, !tbaa !77, !noalias !1550
  %i.bz = load ptr, ptr %i.r, align 8, !tbaa !33, !noalias !1550
  store ptr %i.bx, ptr %13, align 8, !tbaa !34, !alias.scope !1550
  store ptr null, ptr %i.s, align 8, !tbaa !32, !alias.scope !1550
  store i64 %i.bv, ptr %i.t, align 8, !tbaa !76, !alias.scope !1550
  store i32 %i.by, ptr %i.u, align 8, !tbaa !77, !alias.scope !1550
  store ptr %i.bz, ptr %i.v, align 8, !tbaa !33, !alias.scope !1550
  store i32 %i.bo, ptr %i.x, align 4, !tbaa !86, !alias.scope !1550
  store i32 %i.bp, ptr %i.y, align 8, !tbaa !87, !alias.scope !1550
  store i32 1, ptr %i.z, align 4, !tbaa !99, !alias.scope !1550
  store i32 %i.bq, ptr %i.aa, align 8, !tbaa !79, !alias.scope !1550
  %i.ca = sext i32 %i.bo to i64
  %i.cb = sext i32 %i.bp to i64
  %i.cc = mul nsw i64 %i.cb, %i.ca                ; 2 uses
  %i.cd = mul i64 %i.bv, %i.cc
  %i.ce = add i64 %i.cd, 15
  %i.cf = and i64 %i.ce, -16
  %i.cg = udiv i64 %i.cf, %i.bv
  store i64 %i.cg, ptr %i.ab, align 8, !tbaa !35, !alias.scope !1550
  %i.ch = load i32, ptr %i.ac, align 8, !tbaa !98, !noalias !1550 ; 2 uses
  %i.ci = add nsw i32 %i.ch, -1
  store i32 %i.ci, ptr %i.w, align 8, !tbaa !98, !alias.scope !1550
  %i.cj = icmp eq i32 %i.ch, 4
  br i1 %i.cj, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit76

bb.e:                                             ; preds = %bb.d
  store i64 %i.cc, ptr %i.ab, align 8, !tbaa !35, !alias.scope !1550
  br label %_ZN4ncnn3Mat7channelEi.exit76

_ZN4ncnn3Mat7channelEi.exit76:                    ; preds = %bb.d, %bb.e
  %i.ck = load i32, ptr %6, align 4, !tbaa !78    ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit76
  %i.cm = icmp sgt i32 %.sroa.speculated115, 3
  %i.cn = zext i32 %.sroa.speculated115 to i64    ; 3 uses
  %i.co = sext i32 %i.bk to i64                   ; 4 uses
  %i.cp = sext i32 %.sroa.speculated115 to i64
  %invariant.op.i = add nsw i64 %i.cp, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !78
  br label %bb.l

._crit_edge150:                                   ; preds = %_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit
  %.pre190 = load ptr, ptr %i.s, align 8, !tbaa !32 ; 2 uses
  %.not.i63 = icmp eq ptr %.pre190, null
  br i1 %.not.i63, label %_ZN4ncnn3MatD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge150
  %i.cq = atomicrmw add ptr %.pre190, i32 -1 acq_rel, align 4
  %i.cr = icmp eq i32 %i.cq, 1
  br i1 %i.cr, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.cs = load ptr, ptr %i.v, align 8, !tbaa !33  ; 3 uses
  %.not3.i64 = icmp eq ptr %i.cs, null
  %i.ct = load ptr, ptr %13, align 8, !tbaa !34   ; 3 uses
  br i1 %.not3.i64, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !26
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  invoke void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef %i.ct)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.k, !inline_history !0

bb.i:                                             ; preds = %bb.g
  %.not.i67 = icmp eq ptr %i.ct, null
  br i1 %.not.i67, label %_ZN4ncnn3MatD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.ct) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3Mat7channelEi.exit76, %bb.f, %._crit_edge150, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %i.cz = add nsw i32 %.045152, 1
  %i.da = load i32, ptr %i.b, align 4, !tbaa !78
  %.not.not = icmp slt i32 %.045152, %i.da
  br i1 %.not.not, label %bb.c, label %._crit_edge155

bb.l:                                             ; preds = %.lr.ph, %_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit
  %i.db = phi i32 [ %.pre, %.lr.ph ], [ %i.za, %_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit ]
  %i.dc = phi i32 [ %i.ck, %.lr.ph ], [ %i.zc, %_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit ]
  %.044149 = phi i32 [ 0, %.lr.ph ], [ %i.zb, %_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit ] ; 7 uses
  %i.dd = sub i32 %i.dc, %.044149
  %.sroa.speculated111 = call i32 @llvm.smin.i32(i32 %i.db, i32 %i.dd) ; 51 uses
  %i.de = load i32, ptr %8, align 4, !tbaa !78    ; 2 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %bb.l
  %.pre187 = load i32, ptr %9, align 4, !tbaa !78
  br label %.noexc

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit46, %bb.l
  %.val = load ptr, ptr %13, align 8, !tbaa !34   ; 2 uses
  %i.dg = load i32, ptr %i.bh, align 8, !tbaa !77 ; 5 uses
  %i.dh = load i64, ptr %i.bi, align 8, !tbaa !35 ; 20 uses
  br i1 %i.cm, label %.lr.ph149.i, label %.preheader111.i

.lr.ph149.i:                                      ; preds = %._crit_edge
  %i.di = mul nsw i32 %i.dg, %.044149
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp sgt i32 %.sroa.speculated111, 7
  %.idx347.i = shl i64 %i.dh, 3                   ; 4 uses
  %.idx348.i = mul i64 %i.dh, 12                  ; 4 uses
  %i.dl = and i32 %.sroa.speculated111, -8
  br label %bb.m

.preheader111.loopexit.i:                         ; preds = %._crit_edge.i
  %i.dm = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader111.i

.preheader111.i:                                  ; preds = %.preheader111.loopexit.i, %._crit_edge
  %.0307.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.dm, %.preheader111.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.val, %._crit_edge ], [ %.4.lcssa.i, %.preheader111.loopexit.i ] ; 2 uses
  %i.dn = or disjoint i32 %.0307.lcssa.i, 1
  %i.do = icmp slt i32 %i.dn, %.sroa.speculated115
  br i1 %i.do, label %.lr.ph182.i, label %.preheader107.i

.lr.ph182.i:                                      ; preds = %.preheader111.i
  %i.dp = sext i32 %.044149 to i64
  %i.dq = icmp sgt i32 %.sroa.speculated111, 7
  %i.dr = and i32 %.sroa.speculated111, -8
  %i.ds = zext nneg i32 %.0307.lcssa.i to i64
  %i.dt = shl i64 %i.dh, 2                        ; 2 uses
  br label %bb.u

bb.m:                                             ; preds = %._crit_edge.i, %.lr.ph149.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph149.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.0147.i = phi ptr [ %.val, %.lr.ph149.i ], [ %.4.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.du = load ptr, ptr %12, align 8, !tbaa !34
  %i.dv = add nsw i64 %indvars.iv.i, %i.co
  %i.dw = mul i64 %i.dv, %i.dh
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dw
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.dj ; 2 uses
  br i1 %i.dk, label %.lr.ph.i, label %.preheader114.i

.preheader114.i:                                  ; preds = %bb.o, %bb.m
  %.0322.lcssa.i = phi i32 [ 0, %bb.m ], [ %i.dl, %bb.o ] ; 3 uses
  %.0310.lcssa.i = phi ptr [ %i.dy, %bb.m ], [ %.2312.i, %bb.o ] ; 2 uses
  %.1.lcssa.i = phi ptr [ %.0147.i, %bb.m ], [ %i.ho, %bb.o ] ; 2 uses
  %i.dz = or disjoint i32 %.0322.lcssa.i, 3
  %i.ea = icmp slt i32 %i.dz, %.sroa.speculated111
  br i1 %i.ea, label %.lr.ph123.i, label %.preheader113.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.o
  %.1117.i = phi ptr [ %i.ho, %bb.o ], [ %.0147.i, %bb.m ] ; 9 uses
  %.0310116.i = phi ptr [ %.2312.i, %bb.o ], [ %i.dy, %bb.m ] ; 16 uses
  %.0322115.i = phi i32 [ %i.hp, %bb.o ], [ 0, %bb.m ]
  %i.eb = load <4 x i32>, ptr %.1117.i, align 16, !tbaa !108 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.1117.i, i64 16
  %i.ed = load <4 x i32>, ptr %i.ec, align 16, !tbaa !108 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.1117.i, i64 32
  %i.ef = load <4 x i32>, ptr %i.ee, align 16, !tbaa !108 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.1117.i, i64 48
  %i.eh = load <4 x i32>, ptr %i.eg, align 16, !tbaa !108 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.1117.i, i64 64
  %i.ej = load <4 x i32>, ptr %i.ei, align 16, !tbaa !108 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.1117.i, i64 80
  %i.el = load <4 x i32>, ptr %i.ek, align 16, !tbaa !108 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.1117.i, i64 96
  %i.en = load <4 x i32>, ptr %i.em, align 16, !tbaa !108 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.1117.i, i64 112
  %i.ep = load <4 x i32>, ptr %i.eo, align 16, !tbaa !108 ; 2 uses
  %i.eq = shufflevector <4 x i32> %i.eb, <4 x i32> %i.en, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.er = bitcast <4 x i32> %i.eq to <2 x i64>    ; 2 uses
  %i.es = shufflevector <4 x i32> %i.eb, <4 x i32> %i.en, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.et = bitcast <4 x i32> %i.es to <2 x i64>    ; 2 uses
  %i.eu = shufflevector <4 x i32> %i.ed, <4 x i32> %i.ep, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.ev = bitcast <4 x i32> %i.eu to <2 x i64>    ; 2 uses
  %i.ew = shufflevector <4 x i32> %i.ed, <4 x i32> %i.ep, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.ex = bitcast <4 x i32> %i.ew to <2 x i64>    ; 2 uses
  %i.ey = shufflevector <4 x i32> %i.ef, <4 x i32> %i.ej, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.ez = bitcast <4 x i32> %i.ey to <2 x i64>    ; 2 uses
  %i.fa = shufflevector <4 x i32> %i.ef, <4 x i32> %i.ej, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.fb = bitcast <4 x i32> %i.fa to <2 x i64>    ; 2 uses
  %i.fc = shufflevector <4 x i32> %i.eh, <4 x i32> %i.el, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.fd = bitcast <4 x i32> %i.fc to <2 x i64>    ; 2 uses
  %i.fe = shufflevector <4 x i32> %i.eh, <4 x i32> %i.el, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.ff = bitcast <4 x i32> %i.fe to <2 x i64>    ; 2 uses
  %i.fg = shufflevector <2 x i64> %i.er, <2 x i64> %i.ez, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fh = shufflevector <2 x i64> %i.er, <2 x i64> %i.ez, <2 x i32> <i32 1, i32 3>
  %i.fi = shufflevector <2 x i64> %i.fb, <2 x i64> %i.et, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fj = shufflevector <2 x i64> %i.fb, <2 x i64> %i.et, <2 x i32> <i32 1, i32 3>
  %i.fk = shufflevector <2 x i64> %i.ev, <2 x i64> %i.fd, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fl = shufflevector <2 x i64> %i.ev, <2 x i64> %i.fd, <2 x i32> <i32 1, i32 3>
  %i.fm = shufflevector <2 x i64> %i.ff, <2 x i64> %i.ex, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fn = shufflevector <2 x i64> %i.ff, <2 x i64> %i.ex, <2 x i32> <i32 1, i32 3>
  %i.fo = bitcast <2 x i64> %i.fh to <4 x i32>    ; 3 uses
  %i.fp = bitcast <2 x i64> %i.fj to <4 x i32>    ; 3 uses
  %i.fq = bitcast <2 x i64> %i.fl to <4 x i32>    ; 3 uses
  %i.fr = bitcast <2 x i64> %i.fn to <4 x i32>    ; 3 uses
  switch i32 %i.dg, label %bb.o [
    i32 4, label %.thread.i
    i32 1, label %bb.n
  ]

.thread.i:                                        ; preds = %.lr.ph.i
  %i.fs = shufflevector <4 x i32> %i.fr, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ft = shufflevector <4 x i32> %i.fq, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.fu = shufflevector <4 x i32> %i.fp, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.fv = shufflevector <4 x i32> %i.fo, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <2 x i64> %i.fg, ptr %.0310116.i, align 16, !tbaa !108
  %i.fw = getelementptr inbounds nuw i8, ptr %.0310116.i, i64 16
  store <4 x i32> %i.fv, ptr %i.fw, align 16, !tbaa !108
  %i.fx = getelementptr inbounds nuw i8, ptr %.0310116.i, i64 32
  store <2 x i64> %i.fi, ptr %i.fx, align 16, !tbaa !108
  %i.fy = getelementptr inbounds nuw i8, ptr %.0310116.i, i64 48
  store <4 x i32> %i.fu, ptr %i.fy, align 16, !tbaa !108
  %i.fz = getelementptr inbounds nuw i8, ptr %.0310116.i, i64 64
  store <2 x i64> %i.fk, ptr %i.fz, align 16, !tbaa !108
  %i.ga = getelementptr inbounds nuw i8, ptr %.0310116.i, i64 80
  store <4 x i32> %i.ft, ptr %i.ga, align 16, !tbaa !108
  %i.gb = getelementptr inbounds nuw i8, ptr %.0310116.i, i64 96
  store <2 x i64> %i.fm, ptr %i.gb, align 16, !tbaa !108
  %i.gc = getelementptr inbounds nuw i8, ptr %.0310116.i, i64 112
  store <4 x i32> %i.fs, ptr %i.gc, align 16, !tbaa !108
  %i.gd = getelementptr inbounds nuw i8, ptr %.0310116.i, i64 128
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  %i.ge = bitcast <2 x i64> %i.fg to <4 x i32>    ; 2 uses
  %i.gf = shufflevector <4 x i32> %i.ge, <4 x i32> %i.fo, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.gg = bitcast <4 x i32> %i.gf to <2 x i64>    ; 2 uses
  %i.gh = shufflevector <4 x i32> %i.ge, <4 x i32> %i.fo, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.gi = bitcast <4 x i32> %i.gh to <2 x i64>    ; 2 uses
  %i.gj = bitcast <2 x i64> %i.fi to <4 x i32>    ; 2 uses
  %i.gk = shufflevector <4 x i32> %i.gj, <4 x i32> %i.fp, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.gl = bitcast <4 x i32> %i.gk to <2 x i64>    ; 2 uses
  %i.gm = shufflevector <4 x i32> %i.gj, <4 x i32> %i.fp, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.gn = bitcast <4 x i32> %i.gm to <2 x i64>    ; 2 uses
  %i.go = shufflevector <2 x i64> %i.gg, <2 x i64> %i.gl, <2 x i32> <i32 0, i32 2>
  %i.gp = shufflevector <2 x i64> %i.gg, <2 x i64> %i.gl, <2 x i32> <i32 1, i32 3>
  %i.gq = shufflevector <2 x i64> %i.gi, <2 x i64> %i.gn, <2 x i32> <i32 0, i32 2>
  %i.gr = shufflevector <2 x i64> %i.gi, <2 x i64> %i.gn, <2 x i32> <i32 1, i32 3>
  %i.gs = bitcast <2 x i64> %i.fk to <4 x i32>    ; 2 uses
  %i.gt = shufflevector <4 x i32> %i.gs, <4 x i32> %i.fq, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.gu = bitcast <4 x i32> %i.gt to <2 x i64>    ; 2 uses
  %i.gv = shufflevector <4 x i32> %i.gs, <4 x i32> %i.fq, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.gw = bitcast <4 x i32> %i.gv to <2 x i64>    ; 2 uses
  %i.gx = bitcast <2 x i64> %i.fm to <4 x i32>    ; 2 uses
  %i.gy = shufflevector <4 x i32> %i.gx, <4 x i32> %i.fr, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.gz = bitcast <4 x i32> %i.gy to <2 x i64>    ; 2 uses
  %i.ha = shufflevector <4 x i32> %i.gx, <4 x i32> %i.fr, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.hb = bitcast <4 x i32> %i.ha to <2 x i64>    ; 2 uses
  %i.hc = shufflevector <2 x i64> %i.gu, <2 x i64> %i.gz, <2 x i32> <i32 0, i32 2>
  %i.hd = shufflevector <2 x i64> %i.gu, <2 x i64> %i.gz, <2 x i32> <i32 1, i32 3>
  %i.he = shufflevector <2 x i64> %i.gw, <2 x i64> %i.hb, <2 x i32> <i32 0, i32 2>
  %i.hf = shufflevector <2 x i64> %i.gw, <2 x i64> %i.hb, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.go, ptr %.0310116.i, align 1, !tbaa !108
  %i.hg = getelementptr inbounds nuw i8, ptr %.0310116.i, i64 16
  store <2 x i64> %i.hc, ptr %i.hg, align 1, !tbaa !108
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.0310116.i, i64 %i.dh ; 2 uses
  store <2 x i64> %i.gp, ptr %i.hh, align 1, !tbaa !108
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <2 x i64> %i.hd, ptr %i.hi, align 1, !tbaa !108
  %i.hj = getelementptr inbounds nuw i8, ptr %.0310116.i, i64 %.idx347.i ; 2 uses
  store <2 x i64> %i.gq, ptr %i.hj, align 1, !tbaa !108
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store <2 x i64> %i.he, ptr %i.hk, align 1, !tbaa !108
  %i.hl = getelementptr inbounds nuw i8, ptr %.0310116.i, i64 %.idx348.i ; 2 uses
  store <2 x i64> %i.gr, ptr %i.hl, align 1, !tbaa !108
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store <2 x i64> %i.hf, ptr %i.hm, align 1, !tbaa !108
  %i.hn = getelementptr inbounds nuw i8, ptr %.0310116.i, i64 32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.i, %.lr.ph.i
  %.2312.i = phi ptr [ %i.hn, %bb.n ], [ %.0310116.i, %.lr.ph.i ], [ %i.gd, %.thread.i ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.1117.i, i64 128 ; 2 uses
  %i.hp = add nuw nsw i32 %.0322115.i, 8          ; 2 uses
  %i.hq = or disjoint i32 %i.hp, 7
  %i.hr = icmp slt i32 %i.hq, %.sroa.speculated111
  br i1 %i.hr, label %.lr.ph.i, label %.preheader114.i, !llvm.loop !1503

.preheader113.i:                                  ; preds = %bb.q, %.preheader114.i
  %.1323.lcssa.i = phi i32 [ %.0322.lcssa.i, %.preheader114.i ], [ %i.jn, %bb.q ] ; 3 uses
  %.3313.lcssa.i = phi ptr [ %.0310.lcssa.i, %.preheader114.i ], [ %.5315.i, %bb.q ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.1.lcssa.i, %.preheader114.i ], [ %i.jm, %bb.q ] ; 2 uses
  %i.hs = or disjoint i32 %.1323.lcssa.i, 1
  %i.ht = icmp slt i32 %i.hs, %.sroa.speculated111
  br i1 %i.ht, label %.lr.ph130.i, label %.preheader112.i

.lr.ph123.i:                                      ; preds = %.preheader114.i, %bb.q
  %.2122.i = phi ptr [ %i.jm, %bb.q ], [ %.1.lcssa.i, %.preheader114.i ] ; 5 uses
  %.3313121.i = phi ptr [ %.5315.i, %bb.q ], [ %.0310.lcssa.i, %.preheader114.i ] ; 11 uses
  %.1323120.i = phi i32 [ %i.jn, %bb.q ], [ %.0322.lcssa.i, %.preheader114.i ]
  %i.hu = load <4 x i32>, ptr %.2122.i, align 16, !tbaa !108 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.2122.i, i64 16
  %i.hw = load <4 x i32>, ptr %i.hv, align 16, !tbaa !108 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.2122.i, i64 32
  %i.hy = load <4 x i32>, ptr %i.hx, align 16, !tbaa !108 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.2122.i, i64 48
  %i.ia = load <4 x i32>, ptr %i.hz, align 16, !tbaa !108 ; 2 uses
  %i.ib = shufflevector <4 x i32> %i.hu, <4 x i32> %i.ia, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.ic = bitcast <4 x i32> %i.ib to <2 x i64>    ; 2 uses
  %i.id = shufflevector <4 x i32> %i.hu, <4 x i32> %i.ia, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.ie = bitcast <4 x i32> %i.id to <2 x i64>    ; 2 uses
  %i.if = shufflevector <4 x i32> %i.hy, <4 x i32> %i.hw, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.ig = bitcast <4 x i32> %i.if to <2 x i64>    ; 2 uses
  %i.ih = shufflevector <4 x i32> %i.hy, <4 x i32> %i.hw, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.ii = bitcast <4 x i32> %i.ih to <2 x i64>    ; 2 uses
  %i.ij = shufflevector <2 x i64> %i.ic, <2 x i64> %i.ig, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ik = shufflevector <2 x i64> %i.ic, <2 x i64> %i.ig, <2 x i32> <i32 1, i32 3>
  %i.il = shufflevector <2 x i64> %i.ii, <2 x i64> %i.ie, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.im = shufflevector <2 x i64> %i.ii, <2 x i64> %i.ie, <2 x i32> <i32 1, i32 3>
  %i.in = bitcast <2 x i64> %i.ik to <4 x i32>    ; 3 uses
  %.cast343.i = bitcast <2 x i64> %i.im to <4 x i32> ; 3 uses
  switch i32 %i.dg, label %bb.q [
    i32 4, label %.thread97.i
    i32 1, label %bb.p
  ]

.thread97.i:                                      ; preds = %.lr.ph123.i
  %i.io = shufflevector <4 x i32> %.cast343.i, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ip = shufflevector <4 x i32> %i.in, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <2 x i64> %i.ij, ptr %.3313121.i, align 16, !tbaa !108
  %i.iq = getelementptr inbounds nuw i8, ptr %.3313121.i, i64 16
  store <4 x i32> %i.ip, ptr %i.iq, align 16, !tbaa !108
  %i.ir = getelementptr inbounds nuw i8, ptr %.3313121.i, i64 32
  store <2 x i64> %i.il, ptr %i.ir, align 16, !tbaa !108
  %i.is = getelementptr inbounds nuw i8, ptr %.3313121.i, i64 48
  store <4 x i32> %i.io, ptr %i.is, align 16, !tbaa !108
  %i.it = getelementptr inbounds nuw i8, ptr %.3313121.i, i64 64
  br label %bb.q
end_hunk_2
