Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vmnc?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@decode_frame:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aac, i8 %i.zs, i64 %i.zt, i1 false)
  %i.aad = getelementptr inbounds i8, ptr %i.aac, i64 %i.op ; 2 uses
  %niter1039.next.7 = add i32 %niter1039, 8       ; 2 uses
  %niter1039.ncmp.7 = icmp eq i32 %niter1039.next.7, %unroll_iter1038
  br i1 %niter1039.ncmp.7, label %paint_rect.exit.i.loopexit.unr-lcssa, label %bb.gc, !llvm.loop !51

.preheader.i321:                                  ; preds = %.loopexit928, %.preheader200.i
  %.1.i243.i = phi i32 [ 0, %.preheader200.i ], [ %i.aai, %.loopexit928 ] ; 2 uses
  %.142.i242.i = phi ptr [ %i.zk, %.preheader200.i ], [ %i.aah, %.loopexit928 ] ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i321
  %i.aae = getelementptr i8, ptr %.142.i242.i, i64 %i.zp
  store <8 x i16> %broadcast.splat, ptr %.142.i242.i, align 2, !tbaa !114
  br i1 %i.zr, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %.142.i242.i, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep.1, align 2, !tbaa !114
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  br i1 %cmp.n, label %.loopexit928, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i321, %middle.block
  %.0.i163241.i.ph = phi ptr [ %.142.i242.i, %.preheader.i321 ], [ %i.aae, %middle.block ]
  %.039.i240.i.ph = phi i32 [ 0, %.preheader.i321 ], [ %i.zq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0.i163241.i = phi ptr [ %i.aaf, %scalar.ph ], [ %.0.i163241.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.039.i240.i = phi i32 [ %i.aag, %scalar.ph ], [ %.039.i240.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0.i163241.i, i64 2
  store i16 %i.zm, ptr %.0.i163241.i, align 2, !tbaa !114
  %i.aag = add nuw nsw i32 %.039.i240.i, 1
  %exitcond303.not.i = icmp eq i32 %.039.i240.i, %i.yy
  br i1 %exitcond303.not.i, label %.loopexit928, label %scalar.ph, !llvm.loop !60

.loopexit928:                                     ; preds = %scalar.ph, %middle.block
  %i.aah = getelementptr inbounds i8, ptr %.142.i242.i, i64 %i.op
  %i.aai = add nuw nsw i32 %.1.i243.i, 1
  %exitcond304.not.i = icmp eq i32 %.1.i243.i, %i.za
  br i1 %exitcond304.not.i, label %paint_rect.exit.i, label %.preheader.i321, !llvm.loop !55

.preheader198.i:                                  ; preds = %.loopexit929, %.preheader198.preheader.i
  %.2.i239.i = phi i32 [ %i.aao, %.loopexit929 ], [ 0, %.preheader198.preheader.i ] ; 2 uses
  %.243.i238.i = phi ptr [ %i.aan, %.loopexit929 ], [ %i.zk, %.preheader198.preheader.i ] ; 6 uses
  br i1 %min.iters.check761, label %scalar.ph760.preheader, label %vector.body766

vector.body766:                                   ; preds = %.preheader198.i
  %i.aaj = getelementptr inbounds nuw i8, ptr %.243.i238.i, i64 16
  store <4 x i32> %broadcast.splat765, ptr %.243.i238.i, align 4, !tbaa !34
  store <4 x i32> %broadcast.splat765, ptr %i.aaj, align 4, !tbaa !34
  br i1 %i.zl, label %middle.block769, label %vector.body766.1

vector.body766.1:                                 ; preds = %vector.body766
  %i.aak = getelementptr inbounds nuw i8, ptr %.243.i238.i, i64 32
  %i.aal = getelementptr inbounds nuw i8, ptr %.243.i238.i, i64 48
  store <4 x i32> %broadcast.splat765, ptr %i.aak, align 4, !tbaa !34
  store <4 x i32> %broadcast.splat765, ptr %i.aal, align 4, !tbaa !34
  br label %middle.block769

middle.block769:                                  ; preds = %vector.body766.1, %vector.body766
  br i1 %cmp.n770, label %.loopexit929, label %scalar.ph760.preheader

scalar.ph760.preheader:                           ; preds = %.preheader198.i, %middle.block769
  %indvars.iv297.i.ph = phi i64 [ 0, %.preheader198.i ], [ %n.vec763, %middle.block769 ]
  br label %scalar.ph760

scalar.ph760:                                     ; preds = %scalar.ph760.preheader, %scalar.ph760
  %indvars.iv297.i = phi i64 [ %indvars.iv.next298.i, %scalar.ph760 ], [ %indvars.iv297.i.ph, %scalar.ph760.preheader ] ; 2 uses
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %.243.i238.i, i64 %indvars.iv297.i
  store i32 %.4.i, ptr %i.aam, align 4, !tbaa !34
  %indvars.iv.next298.i = add nuw nsw i64 %indvars.iv297.i, 1 ; 2 uses
  %exitcond301.not.i = icmp eq i64 %indvars.iv.next298.i, %wide.trip.count300.i
  br i1 %exitcond301.not.i, label %.loopexit929, label %scalar.ph760, !llvm.loop !61

.loopexit929:                                     ; preds = %scalar.ph760, %middle.block769
  %i.aan = getelementptr inbounds i8, ptr %.243.i238.i, i64 %i.op
  %i.aao = add nuw nsw i32 %.2.i239.i, 1
  %exitcond302.not.i = icmp eq i32 %.2.i239.i, %i.za
  br i1 %exitcond302.not.i, label %paint_rect.exit.i, label %.preheader198.i, !llvm.loop !58

paint_rect.exit.i.loopexit.unr-lcssa:             ; preds = %bb.gc
  %lcmp.mod1036.not = icmp eq i32 %xtraiter1034, 0
  br i1 %lcmp.mod1036.not, label %paint_rect.exit.i, label %.epil.preheader1033

.epil.preheader1033:                              ; preds = %paint_rect.exit.i.loopexit.unr-lcssa, %.preheader199.i
  %.041.i244.i.epil.init = phi ptr [ %i.zk, %.preheader199.i ], [ %i.aad, %paint_rect.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod1037 = icmp ne i32 %xtraiter1034, 0
  tail call void @llvm.assume(i1 %lcmp.mod1037)
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gd, %.epil.preheader1033
  %.041.i244.i.epil = phi ptr [ %.041.i244.i.epil.init, %.epil.preheader1033 ], [ %i.aap, %bb.gd ] ; 2 uses
  %epil.iter1035 = phi i32 [ 0, %.epil.preheader1033 ], [ %epil.iter1035.next, %bb.gd ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.041.i244.i.epil, i8 %i.zs, i64 %i.zt, i1 false)
  %i.aap = getelementptr inbounds i8, ptr %.041.i244.i.epil, i64 %i.op
  %epil.iter1035.next = add i32 %epil.iter1035, 1 ; 2 uses
  %epil.iter1035.cmp.not = icmp eq i32 %epil.iter1035.next, %xtraiter1034
  br i1 %epil.iter1035.cmp.not, label %paint_rect.exit.i, label %bb.gd, !llvm.loop !62

paint_rect.exit.i:                                ; preds = %.loopexit929, %.loopexit928, %paint_rect.exit.i.loopexit.unr-lcssa, %bb.gd, %bb.gb
  %i.aaq = add nuw nsw i32 %.0100246.i, 1         ; 2 uses
  %exitcond306.not.i = icmp eq i32 %i.aaq, %.093.i
  br i1 %exitcond306.not.i, label %paint_raw.exit.i, label %.lr.ph248.i, !llvm.loop !63

paint_raw.exit.i:                                 ; preds = %._crit_edge.i316, %paint_rect.exit.i, %.preheader207.i, %.preheader206.lr.ph.i, %bb.dc
  %.399.i = phi i32 [ %.298184189.i, %.preheader207.i ], [ %.197250.i, %bb.dc ], [ %.197250.i, %.preheader206.lr.ph.i ], [ %.298184189.i, %paint_rect.exit.i ], [ %.197250.i, %._crit_edge.i316 ] ; 2 uses
  %.5.i314 = phi i32 [ %.2191.i, %.preheader207.i ], [ %.195251.i, %bb.dc ], [ %.195251.i, %.preheader206.lr.ph.i ], [ %.4.i, %paint_rect.exit.i ], [ %.195251.i, %._crit_edge.i316 ] ; 2 uses
  %i.aar = getelementptr inbounds i8, ptr %.092252.i, i64 %i.or
  %i.aas = icmp samesign ult i32 %i.pg, %.0.i297
  br i1 %i.aas, label %bb.cz, label %._crit_edge261.i, !llvm.loop !64

._crit_edge261.i:                                 ; preds = %paint_raw.exit.i
  %i.aat = getelementptr inbounds i8, ptr %.0109264.i, i64 %i.ot
  %i.aau = icmp samesign ult i32 %i.ou, %.0.i
  br i1 %i.aau, label %.lr.ph260.i, label %load_cursor.exit, !llvm.loop !65

decode_hextile.exit:                              ; preds = %bb.cz, %bb.db, %paint_rect.exit173.i, %bytestream2_get_byte.exit.i318
  %.str.14.sink.i = phi ptr [ @.str.14, %bytestream2_get_byte.exit.i318 ], [ @.str.3, %paint_rect.exit173.i ], [ @.str.3, %bb.db ], [ @.str.3, %bb.cz ]
  %i.aav = load ptr, ptr %i.f, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aav, i32 noundef 16, ptr noundef nonnull %.str.14.sink.i) #8
  br label %bb.gj

load_cursor.exit.thread:                          ; preds = %bb.t
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %.0.i305) #8
  br label %._crit_edge419

load_cursor.exit:                                 ; preds = %._crit_edge261.i, %._crit_edge, %._crit_edge105.i, %bb.cd, %.preheader.lr.ph, %bb.cy, %.lr.ph270.i, %.preheader88.lr.ph.i, %._crit_edge99.i, %bb.ag, %bb.ca, %bb.bz, %bb.bs, %bb.br, %bb.bq, %bb.bp
  %.not284 = icmp eq i32 %i.cu, 0
  br i1 %.not284, label %._crit_edge419, label %bb.j, !llvm.loop !66

._crit_edge419:                                   ; preds = %load_cursor.exit, %load_cursor.exit.thread, %.loopexit
  %i.aaw = load ptr, ptr %i.ai, align 8, !tbaa !105
  %.not285 = icmp eq ptr %i.aaw, null
  br i1 %.not285, label %put_cursor.exit, label %bb.ge

bb.ge:                                            ; preds = %._crit_edge419
  %i.aax = getelementptr inbounds nuw i8, ptr %i.f, i64 832 ; 5 uses
  %i.aay = load i32, ptr %i.aax, align 8, !tbaa !38 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.f, i64 796 ; 2 uses
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !106 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.f, i64 840 ; 2 uses
  %i.abc = load i32, ptr %i.abb, align 8, !tbaa !107 ; 4 uses
  %i.abd = add nsw i32 %i.abc, %i.aay
  %i.abe = icmp slt i32 %i.aba, %i.abd
  %i.abf = sub nsw i32 %i.aba, %i.abc
  %spec.select289 = select i1 %i.abe, i32 %i.abf, i32 %i.aay
  %i.abg = getelementptr inbounds nuw i8, ptr %i.f, i64 836 ; 2 uses
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !39 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.f, i64 800 ; 2 uses
  %i.abj = load i32, ptr %i.abi, align 8, !tbaa !108 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.f, i64 844 ; 2 uses
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !109 ; 4 uses
  %i.abm = add nsw i32 %i.abl, %i.abh
  %i.abn = icmp slt i32 %i.abj, %i.abm
  %i.abo = sub nsw i32 %i.abj, %i.abl
  %.2 = select i1 %i.abn, i32 %i.abo, i32 %i.abh
  %i.abp = tail call i32 @llvm.smin.i32(i32 %i.abc, i32 0)
  %.3248 = add nsw i32 %spec.select289, %i.abp    ; 2 uses
  %i.abq = tail call i32 @llvm.smin.i32(i32 %i.abl, i32 0)
  %.3 = add nsw i32 %.2, %i.abq                   ; 2 uses
  %i.abr = icmp sgt i32 %.3248, 0
  %i.abs = icmp sgt i32 %.3, 0
  %or.cond3 = select i1 %i.abr, i1 %i.abs, i1 false
  br i1 %or.cond3, label %bb.gf, label %put_cursor.exit

bb.gf:                                            ; preds = %bb.ge
  %.1250 = tail call i32 @llvm.smax.i32(i32 %i.abl, i32 0)
  %.1252 = tail call i32 @llvm.smax.i32(i32 %i.abc, i32 0)
  %i.abt = load ptr, ptr %i.z, align 8, !tbaa !37 ; 2 uses
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !97
  %i.abv = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 3 uses
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !36
  %i.abx = mul nsw i32 %i.abw, %.1252
  %i.aby = sext i32 %i.abx to i64
  %i.abz = getelementptr inbounds i8, ptr %i.abu, i64 %i.aby
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abt, i64 64
  %i.acb = load i32, ptr %i.aca, align 8, !tbaa !34
  %i.acc = mul nsw i32 %i.acb, %.1250
  %i.acd = sext i32 %i.acc to i64
  %i.ace = getelementptr inbounds i8, ptr %i.abz, i64 %i.acd
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.gg
  %.0421 = phi i32 [ 0, %bb.gf ], [ %i.act, %bb.gg ] ; 2 uses
  %.1254420 = phi ptr [ %i.ace, %bb.gf ], [ %i.acs, %bb.gg ] ; 2 uses
  %i.acf = load ptr, ptr %i.ai, align 8, !tbaa !105
  %i.acg = load i32, ptr %i.aax, align 8, !tbaa !38
  %i.ach = mul nsw i32 %i.acg, %.0421
  %i.aci = load i32, ptr %i.abv, align 4, !tbaa !36 ; 2 uses
  %i.acj = mul nsw i32 %i.ach, %i.aci
  %i.ack = sext i32 %i.acj to i64
  %i.acl = getelementptr inbounds i8, ptr %i.acf, i64 %i.ack
  %i.acm = mul nsw i32 %i.aci, %.3248
  %i.acn = sext i32 %i.acm to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acl, ptr align 1 %.1254420, i64 %i.acn, i1 false)
  %i.aco = load ptr, ptr %i.z, align 8, !tbaa !37 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 64
  %i.acq = load i32, ptr %i.acp, align 8, !tbaa !34 ; 5 uses
  %i.acr = sext i32 %i.acq to i64                 ; 7 uses
  %i.acs = getelementptr inbounds i8, ptr %.1254420, i64 %i.acr
  %i.act = add nuw nsw i32 %.0421, 1              ; 2 uses
  %i.acu = icmp slt i32 %i.act, %.3
  br i1 %i.acu, label %bb.gg, label %bb.gh, !llvm.loop !67

bb.gh:                                            ; preds = %bb.gg
  %i.acv = load i32, ptr %i.aax, align 8, !tbaa !38 ; 4 uses
  %i.acw = load i32, ptr %i.aaz, align 4, !tbaa !106 ; 2 uses
  %i.acx = load i32, ptr %i.abb, align 8, !tbaa !107 ; 4 uses
  %i.acy = add nsw i32 %i.acx, %i.acv
  %i.acz = icmp slt i32 %i.acw, %i.acy
  %i.ada = sub nsw i32 %i.acw, %i.acx
  %spec.select.i324 = select i1 %i.acz, i32 %i.ada, i32 %i.acv
  %i.adb = load i32, ptr %i.abg, align 4, !tbaa !39 ; 2 uses
  %i.adc = load i32, ptr %i.abi, align 8, !tbaa !108 ; 5 uses
  %i.add = load i32, ptr %i.abk, align 4, !tbaa !109 ; 7 uses
  %i.ade = add i32 %i.add, %i.adb                 ; 4 uses
  %i.adf = icmp slt i32 %i.adc, %i.ade
  %i.adg = sub nsw i32 %i.adc, %i.add
  %.0105.i = select i1 %i.adf, i32 %i.adg, i32 %i.adb
  %i.adh = tail call i32 @llvm.smin.i32(i32 %i.acx, i32 0)
  %.1107.i = add nsw i32 %spec.select.i324, %i.adh ; 9 uses
  %i.adi = tail call i32 @llvm.smin.i32(i32 %i.add, i32 0) ; 4 uses
  %.1.i = add nsw i32 %.0105.i, %i.adi            ; 4 uses
  %i.adj = icmp slt i32 %.1107.i, 1
  %i.adk = icmp slt i32 %.1.i, 1
  %or.cond.i325 = select i1 %i.adj, i1 true, i1 %i.adk
  br i1 %or.cond.i325, label %put_cursor.exit, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.adl = load ptr, ptr %i.aco, align 8, !tbaa !97 ; 4 uses
  %.0103.i = tail call i32 @llvm.smax.i32(i32 %i.add, i32 0)
  %.0104.i = tail call i32 @llvm.smax.i32(i32 %i.acx, i32 0)
  %i.adm = load i32, ptr %i.abv, align 4, !tbaa !36 ; 2 uses
  %i.adn = mul i32 %i.adm, %.0104.i
  %i.ado = mul i32 %.0103.i, %i.acq
  %i.adp = add i32 %i.adn, %i.ado
  %i.adq = sext i32 %i.adp to i64                 ; 4 uses
  %i.adr = getelementptr i8, ptr %i.adl, i64 %i.adq ; 9 uses
  switch i32 %i.adm, label %put_cursor.exit [
    i32 1, label %.preheader.preheader.i329
    i32 2, label %.preheader123.preheader.i
    i32 4, label %.preheader125.preheader.i
  ]

.preheader.preheader.i329:                        ; preds = %bb.gi
  %i.ads = getelementptr inbounds nuw i8, ptr %i.f, i64 856
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !111
  %i.adu = getelementptr inbounds nuw i8, ptr %i.f, i64 864
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !116
  %i.adw = zext nneg i32 %.1107.i to i64          ; 11 uses
  %scevgep881.a = getelementptr i8, ptr %i.adl, i64 %i.adw
  %smin882 = tail call i32 @llvm.smin.i32(i32 %i.adc, i32 %i.ade)
  %i.adx = add i32 %smin882, %i.adi
  %i.ady = xor i32 %i.add, -1
  %i.adz = add i32 %i.adx, %i.ady
  %i.aea = zext i32 %i.adz to i64
  %i.aeb = mul nsw i64 %i.aea, %i.acr
  %i.aec = getelementptr i8, ptr %scevgep881.a, i64 %i.aeb
  %scevgep883 = getelementptr i8, ptr %i.aec, i64 %i.adq ; 2 uses
  %min.iters.check896 = icmp ult i32 %.1107.i, 4
  %stride.check893 = icmp slt i32 %i.acq, 0
  %min.iters.check898 = icmp ult i32 %.1107.i, 32
  %i.aed = and i64 %i.adw, 28
  %n.vec900 = and i64 %i.adw, 2147483616          ; 4 uses
  %cmp.n911 = icmp eq i64 %n.vec900, %i.adw
  %min.epilog.iters.check916 = icmp eq i64 %i.aed, 0
  %n.vec918 = and i64 %i.adw, 2147483644          ; 3 uses
  %cmp.n926 = icmp eq i64 %n.vec918, %i.adw
  %xtraiter1044 = and i64 %i.adw, 1
  %lcmp.mod1045.not = icmp eq i64 %xtraiter1044, 0
  %i.aee = add nsw i64 %i.adw, -1
  br label %iter.check913

iter.check913:                                    ; preds = %._crit_edge139.i, %.preheader.preheader.i329
  %.0101143.i = phi ptr [ %i.afx, %._crit_edge139.i ], [ %i.adv, %.preheader.preheader.i329 ] ; 8 uses
  %.0102142.i = phi ptr [ %i.afy, %._crit_edge139.i ], [ %i.adt, %.preheader.preheader.i329 ] ; 8 uses
  %.0108141.i = phi i32 [ %i.aga, %._crit_edge139.i ], [ 0, %.preheader.preheader.i329 ]
  %.0113140.i = phi ptr [ %i.afz, %._crit_edge139.i ], [ %i.adr, %.preheader.preheader.i329 ] ; 6 uses
  br i1 %min.iters.check896, label %vec.epilog.scalar.ph914.preheader, label %vector.memcheck880

vector.memcheck880:                               ; preds = %iter.check913
  %scevgep884 = getelementptr i8, ptr %.0102142.i, i64 %i.adw
  %scevgep885 = getelementptr i8, ptr %.0101143.i, i64 %i.adw
  %bound0886 = icmp ult ptr %i.adr, %scevgep884
  %bound1887 = icmp ult ptr %.0102142.i, %scevgep883
  %found.conflict888 = and i1 %bound0886, %bound1887
  %4 = or i1 %found.conflict888, %stride.check893
  %bound0890 = icmp ult ptr %i.adr, %scevgep885
  %bound1891 = icmp ult ptr %.0101143.i, %scevgep883
  %found.conflict892 = and i1 %bound0890, %bound1891
  %conflict.rdx894 = or i1 %4, %found.conflict892
  br i1 %conflict.rdx894, label %vec.epilog.scalar.ph914.preheader, label %vector.main.loop.iter.check897

vector.main.loop.iter.check897:                   ; preds = %vector.memcheck880
  br i1 %min.iters.check898, label %vec.epilog.ph917, label %vector.body901

vector.body901:                                   ; preds = %vector.main.loop.iter.check897, %vector.body901
  %index902 = phi i64 [ %index.next909, %vector.body901 ], [ 0, %vector.main.loop.iter.check897 ] ; 4 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %.0113140.i, i64 %index902 ; 3 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 16 ; 2 uses
  %wide.load903.a = load <16 x i8>, ptr %i.aef, align 1, !tbaa !98, !alias.scope !121, !noalias !122
  %wide.load904.a = load <16 x i8>, ptr %i.aeg, align 1, !tbaa !98, !alias.scope !121, !noalias !122
  %i.aeh = getelementptr inbounds nuw i8, ptr %.0102142.i, i64 %index902 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 16
  %wide.load905 = load <16 x i8>, ptr %i.aeh, align 1, !tbaa !98, !alias.scope !123
  %wide.load906 = load <16 x i8>, ptr %i.aei, align 1, !tbaa !98, !alias.scope !123
  %i.aej = and <16 x i8> %wide.load905, %wide.load903.a
  %i.aek = and <16 x i8> %wide.load906, %wide.load904.a
  %i.ael = getelementptr inbounds nuw i8, ptr %.0101143.i, i64 %index902 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 16
  %wide.load907 = load <16 x i8>, ptr %i.ael, align 1, !tbaa !98, !alias.scope !124
  %wide.load908 = load <16 x i8>, ptr %i.aem, align 1, !tbaa !98, !alias.scope !124
  %i.aen = xor <16 x i8> %i.aej, %wide.load907
  %i.aeo = xor <16 x i8> %i.aek, %wide.load908
  store <16 x i8> %i.aen, ptr %i.aef, align 1, !tbaa !98, !alias.scope !121, !noalias !122
  store <16 x i8> %i.aeo, ptr %i.aeg, align 1, !tbaa !98, !alias.scope !121, !noalias !122
  %index.next909 = add nuw i64 %index902, 32      ; 2 uses
  %i.aep = icmp eq i64 %index.next909, %n.vec900
  br i1 %i.aep, label %middle.block910, label %vector.body901, !llvm.loop !72

middle.block910:                                  ; preds = %vector.body901
  br i1 %cmp.n911, label %._crit_edge139.i, label %vec.epilog.iter.check915

vec.epilog.iter.check915:                         ; preds = %middle.block910
  br i1 %min.epilog.iters.check916, label %vec.epilog.scalar.ph914.preheader, label %vec.epilog.ph917, !prof !125

vec.epilog.ph917:                                 ; preds = %vector.main.loop.iter.check897, %vec.epilog.iter.check915
  %vec.epilog.resume.val912 = phi i64 [ %n.vec900, %vec.epilog.iter.check915 ], [ 0, %vector.main.loop.iter.check897 ]
  br label %vec.epilog.vector.body919

vec.epilog.vector.body919:                        ; preds = %vec.epilog.vector.body919, %vec.epilog.ph917
  %index920 = phi i64 [ %vec.epilog.resume.val912, %vec.epilog.ph917 ], [ %index.next924, %vec.epilog.vector.body919 ] ; 4 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.0113140.i, i64 %index920 ; 2 uses
  %wide.load921 = load <4 x i8>, ptr %i.aeq, align 1, !tbaa !98, !alias.scope !121, !noalias !122
  %i.aer = getelementptr inbounds nuw i8, ptr %.0102142.i, i64 %index920
  %wide.load922 = load <4 x i8>, ptr %i.aer, align 1, !tbaa !98, !alias.scope !123
  %i.aes = and <4 x i8> %wide.load922, %wide.load921
  %i.aet = getelementptr inbounds nuw i8, ptr %.0101143.i, i64 %index920
  %wide.load923 = load <4 x i8>, ptr %i.aet, align 1, !tbaa !98, !alias.scope !124
  %i.aeu = xor <4 x i8> %i.aes, %wide.load923
  store <4 x i8> %i.aeu, ptr %i.aeq, align 1, !tbaa !98, !alias.scope !121, !noalias !122
  %index.next924 = add nuw i64 %index920, 4       ; 2 uses
  %i.aev = icmp eq i64 %index.next924, %n.vec918
  br i1 %i.aev, label %vec.epilog.middle.block925, label %vec.epilog.vector.body919, !llvm.loop !73

vec.epilog.middle.block925:                       ; preds = %vec.epilog.vector.body919
  br i1 %cmp.n926, label %._crit_edge139.i, label %vec.epilog.scalar.ph914.preheader

vec.epilog.scalar.ph914.preheader:                ; preds = %iter.check913, %vector.memcheck880, %vec.epilog.iter.check915, %vec.epilog.middle.block925
  %indvars.iv150.i.ph = phi i64 [ 0, %iter.check913 ], [ 0, %vector.memcheck880 ], [ %n.vec900, %vec.epilog.iter.check915 ], [ %n.vec918, %vec.epilog.middle.block925 ] ; 6 uses
  br i1 %lcmp.mod1045.not, label %vec.epilog.scalar.ph914.prol.loopexit, label %vec.epilog.scalar.ph914.prol

vec.epilog.scalar.ph914.prol:                     ; preds = %vec.epilog.scalar.ph914.preheader
  %i.aew = getelementptr inbounds nuw i8, ptr %.0113140.i, i64 %indvars.iv150.i.ph ; 2 uses
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !98
  %i.aey = getelementptr inbounds nuw i8, ptr %.0102142.i, i64 %indvars.iv150.i.ph
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !98
  %i.afa = and i8 %i.aez, %i.aex
  %i.afb = getelementptr inbounds nuw i8, ptr %.0101143.i, i64 %indvars.iv150.i.ph
  %i.afc = load i8, ptr %i.afb, align 1, !tbaa !98
  %i.afd = xor i8 %i.afa, %i.afc
  store i8 %i.afd, ptr %i.aew, align 1, !tbaa !98
  %indvars.iv.next151.i.prol = or disjoint i64 %indvars.iv150.i.ph, 1
  br label %vec.epilog.scalar.ph914.prol.loopexit

vec.epilog.scalar.ph914.prol.loopexit:            ; preds = %vec.epilog.scalar.ph914.prol, %vec.epilog.scalar.ph914.preheader
  %indvars.iv150.i.unr = phi i64 [ %indvars.iv150.i.ph, %vec.epilog.scalar.ph914.preheader ], [ %indvars.iv.next151.i.prol, %vec.epilog.scalar.ph914.prol ]
  %i.afe = icmp eq i64 %indvars.iv150.i.ph, %i.aee
  br i1 %i.afe, label %._crit_edge139.i, label %vec.epilog.scalar.ph914

vec.epilog.scalar.ph914:                          ; preds = %vec.epilog.scalar.ph914.prol.loopexit, %vec.epilog.scalar.ph914
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i.1, %vec.epilog.scalar.ph914 ], [ %indvars.iv150.i.unr, %vec.epilog.scalar.ph914.prol.loopexit ] ; 5 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %.0113140.i, i64 %indvars.iv150.i ; 2 uses
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !98
  %i.afh = getelementptr inbounds nuw i8, ptr %.0102142.i, i64 %indvars.iv150.i
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !98
  %i.afj = and i8 %i.afi, %i.afg
  %i.afk = getelementptr inbounds nuw i8, ptr %.0101143.i, i64 %indvars.iv150.i
  %i.afl = load i8, ptr %i.afk, align 1, !tbaa !98
  %i.afm = xor i8 %i.afj, %i.afl
  store i8 %i.afm, ptr %i.aff, align 1, !tbaa !98
  %indvars.iv.next151.i = add nuw nsw i64 %indvars.iv150.i, 1 ; 3 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %.0113140.i, i64 %indvars.iv.next151.i ; 2 uses
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !98
  %i.afp = getelementptr inbounds nuw i8, ptr %.0102142.i, i64 %indvars.iv.next151.i
  %i.afq = load i8, ptr %i.afp, align 1, !tbaa !98
  %i.afr = and i8 %i.afq, %i.afo
  %i.afs = getelementptr inbounds nuw i8, ptr %.0101143.i, i64 %indvars.iv.next151.i
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !98
  %i.afu = xor i8 %i.afr, %i.aft
  store i8 %i.afu, ptr %i.afn, align 1, !tbaa !98
  %indvars.iv.next151.i.1 = add nuw nsw i64 %indvars.iv150.i, 2 ; 2 uses
  %exitcond500.not.1 = icmp eq i64 %indvars.iv.next151.i.1, %i.adw
  br i1 %exitcond500.not.1, label %._crit_edge139.i, label %vec.epilog.scalar.ph914, !llvm.loop !74

._crit_edge139.i:                                 ; preds = %vec.epilog.scalar.ph914.prol.loopexit, %vec.epilog.scalar.ph914, %vec.epilog.middle.block925, %middle.block910
  %i.afv = load i32, ptr %i.aax, align 8, !tbaa !38
  %i.afw = sext i32 %i.afv to i64                 ; 2 uses
  %i.afx = getelementptr inbounds i8, ptr %.0101143.i, i64 %i.afw
  %i.afy = getelementptr inbounds i8, ptr %.0102142.i, i64 %i.afw
  %i.afz = getelementptr inbounds i8, ptr %.0113140.i, i64 %i.acr
  %i.aga = add nuw nsw i32 %.0108141.i, 1         ; 2 uses
  %i.agb = icmp slt i32 %i.aga, %.1.i
  br i1 %i.agb, label %iter.check913, label %put_cursor.exit, !llvm.loop !75

.preheader123.preheader.i:                        ; preds = %bb.gi
  %i.agc = sext i32 %i.acv to i64                 ; 3 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.f, i64 856
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !111 ; 3 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.f, i64 864
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !116 ; 3 uses
  %i.agh = zext nneg i32 %.1107.i to i64          ; 10 uses
  %i.agi = shl nuw nsw i64 %i.agh, 1
  %scevgep831 = getelementptr i8, ptr %i.adl, i64 %i.agi
  %smin832 = tail call i32 @llvm.smin.i32(i32 %i.adc, i32 %i.ade)
  %i.agj = add i32 %smin832, %i.adi
  %i.agk = xor i32 %i.add, -1
  %i.agl = add i32 %i.agj, %i.agk
  %i.agm = zext i32 %i.agl to i64                 ; 2 uses
  %i.agn = mul nsw i64 %i.agm, %i.acr
  %i.ago = getelementptr i8, ptr %scevgep831, i64 %i.agn
  %scevgep833.a = getelementptr i8, ptr %i.ago, i64 %i.adq ; 2 uses
  %i.agp = mul nsw i64 %i.agc, %i.agm
  %i.agq = add i64 %i.agp, %i.agh
  %i.agr = shl i64 %i.agq, 1                      ; 2 uses
  %scevgep834.a = getelementptr i8, ptr %i.age, i64 %i.agr
  %scevgep835 = getelementptr i8, ptr %i.agg, i64 %i.agr
  %min.iters.check848 = icmp ult i32 %.1107.i, 4
  %bound0836 = icmp ult ptr %i.adr, %scevgep834.a
  %bound1837 = icmp ult ptr %i.age, %scevgep833.a
  %found.conflict838 = and i1 %bound0836, %bound1837
  %i.ags = or i32 %i.acv, %i.acq
  %i.agt = icmp slt i32 %i.ags, 0
  %i.agu = or i1 %found.conflict838, %i.agt
  %bound0841 = icmp ult ptr %i.adr, %scevgep835
  %bound1842 = icmp ult ptr %i.agg, %scevgep833.a
  %found.conflict843 = and i1 %bound0841, %bound1842
  %conflict.rdx846 = or i1 %i.agu, %found.conflict843
  %min.iters.check850 = icmp ult i32 %.1107.i, 16
  %i.agv = and i64 %i.agh, 12
  %n.vec852 = and i64 %i.agh, 2147483632          ; 4 uses
  %cmp.n863 = icmp eq i64 %n.vec852, %i.agh
  %min.epilog.iters.check868 = icmp eq i64 %i.agv, 0
  %n.vec870 = and i64 %i.agh, 2147483644          ; 3 uses
  %cmp.n878 = icmp eq i64 %n.vec870, %i.agh
  %xtraiter1042 = and i64 %i.agh, 1
  %lcmp.mod1043.not = icmp eq i64 %xtraiter1042, 0
  %i.agw = add nsw i64 %i.agh, -1
  br label %iter.check865

iter.check865:                                    ; preds = %._crit_edge133.i, %.preheader123.preheader.i
  %.099137.i = phi ptr [ %i.ain, %._crit_edge133.i ], [ %i.agg, %.preheader123.preheader.i ] ; 6 uses
  %.0100136.i = phi ptr [ %i.aio, %._crit_edge133.i ], [ %i.age, %.preheader123.preheader.i ] ; 6 uses
  %.1109135.i = phi i32 [ %i.aiq, %._crit_edge133.i ], [ 0, %.preheader123.preheader.i ]
  %.1114134.i = phi ptr [ %i.aip, %._crit_edge133.i ], [ %i.adr, %.preheader123.preheader.i ] ; 6 uses
  %brmerge = select i1 %min.iters.check848, i1 true, i1 %conflict.rdx846
  br i1 %brmerge, label %vec.epilog.scalar.ph866.preheader, label %vector.main.loop.iter.check849

vector.main.loop.iter.check849:                   ; preds = %iter.check865
  br i1 %min.iters.check850, label %vec.epilog.ph869, label %vector.body853

vector.body853:                                   ; preds = %vector.main.loop.iter.check849, %vector.body853
  %index854 = phi i64 [ %index.next861, %vector.body853 ], [ 0, %vector.main.loop.iter.check849 ] ; 4 uses
  %i.agx = getelementptr inbounds nuw [2 x i8], ptr %.1114134.i, i64 %index854 ; 3 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 16 ; 2 uses
  %wide.load855.a = load <8 x i16>, ptr %i.agx, align 2, !tbaa !114, !alias.scope !126, !noalias !127
  %wide.load856.a = load <8 x i16>, ptr %i.agy, align 2, !tbaa !114, !alias.scope !126, !noalias !127
  %i.agz = getelementptr inbounds nuw [2 x i8], ptr %.0100136.i, i64 %index854 ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 16
  %wide.load857.a = load <8 x i16>, ptr %i.agz, align 2, !tbaa !114, !alias.scope !128
  %wide.load858 = load <8 x i16>, ptr %i.aha, align 2, !tbaa !114, !alias.scope !128
  %i.ahb = and <8 x i16> %wide.load857.a, %wide.load855.a
  %i.ahc = and <8 x i16> %wide.load858, %wide.load856.a
  %i.ahd = getelementptr inbounds nuw [2 x i8], ptr %.099137.i, i64 %index854 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16
  %wide.load859 = load <8 x i16>, ptr %i.ahd, align 2, !tbaa !114, !alias.scope !129
  %wide.load860 = load <8 x i16>, ptr %i.ahe, align 2, !tbaa !114, !alias.scope !129
  %i.ahf = xor <8 x i16> %i.ahb, %wide.load859
  %i.ahg = xor <8 x i16> %i.ahc, %wide.load860
  store <8 x i16> %i.ahf, ptr %i.agx, align 2, !tbaa !114, !alias.scope !126, !noalias !127
  store <8 x i16> %i.ahg, ptr %i.agy, align 2, !tbaa !114, !alias.scope !126, !noalias !127
  %index.next861 = add nuw i64 %index854, 16      ; 2 uses
  %i.ahh = icmp eq i64 %index.next861, %n.vec852
  br i1 %i.ahh, label %middle.block862, label %vector.body853, !llvm.loop !80

middle.block862:                                  ; preds = %vector.body853
  br i1 %cmp.n863, label %._crit_edge133.i, label %vec.epilog.iter.check867

vec.epilog.iter.check867:                         ; preds = %middle.block862
  br i1 %min.epilog.iters.check868, label %vec.epilog.scalar.ph866.preheader, label %vec.epilog.ph869, !prof !119

vec.epilog.ph869:                                 ; preds = %vector.main.loop.iter.check849, %vec.epilog.iter.check867
  %vec.epilog.resume.val864 = phi i64 [ %n.vec852, %vec.epilog.iter.check867 ], [ 0, %vector.main.loop.iter.check849 ]
  br label %vec.epilog.vector.body871

vec.epilog.vector.body871:                        ; preds = %vec.epilog.vector.body871, %vec.epilog.ph869
  %index872 = phi i64 [ %vec.epilog.resume.val864, %vec.epilog.ph869 ], [ %index.next876, %vec.epilog.vector.body871 ] ; 4 uses
  %i.ahi = getelementptr inbounds nuw [2 x i8], ptr %.1114134.i, i64 %index872 ; 2 uses
  %wide.load873 = load <4 x i16>, ptr %i.ahi, align 2, !tbaa !114, !alias.scope !126, !noalias !127
  %i.ahj = getelementptr inbounds nuw [2 x i8], ptr %.0100136.i, i64 %index872
  %wide.load874 = load <4 x i16>, ptr %i.ahj, align 2, !tbaa !114, !alias.scope !128
  %i.ahk = and <4 x i16> %wide.load874, %wide.load873
  %i.ahl = getelementptr inbounds nuw [2 x i8], ptr %.099137.i, i64 %index872
  %wide.load875 = load <4 x i16>, ptr %i.ahl, align 2, !tbaa !114, !alias.scope !129
  %i.ahm = xor <4 x i16> %i.ahk, %wide.load875
  store <4 x i16> %i.ahm, ptr %i.ahi, align 2, !tbaa !114, !alias.scope !126, !noalias !127
  %index.next876 = add nuw i64 %index872, 4       ; 2 uses
  %i.ahn = icmp eq i64 %index.next876, %n.vec870
  br i1 %i.ahn, label %vec.epilog.middle.block877, label %vec.epilog.vector.body871, !llvm.loop !81

vec.epilog.middle.block877:                       ; preds = %vec.epilog.vector.body871
  br i1 %cmp.n878, label %._crit_edge133.i, label %vec.epilog.scalar.ph866.preheader

vec.epilog.scalar.ph866.preheader:                ; preds = %iter.check865, %vec.epilog.iter.check867, %vec.epilog.middle.block877
  %indvars.iv147.i.ph = phi i64 [ 0, %iter.check865 ], [ %n.vec870, %vec.epilog.middle.block877 ], [ %n.vec852, %vec.epilog.iter.check867 ] ; 6 uses
  br i1 %lcmp.mod1043.not, label %vec.epilog.scalar.ph866.prol.loopexit, label %vec.epilog.scalar.ph866.prol

vec.epilog.scalar.ph866.prol:                     ; preds = %vec.epilog.scalar.ph866.preheader
  %i.aho = getelementptr inbounds nuw [2 x i8], ptr %.1114134.i, i64 %indvars.iv147.i.ph ; 2 uses
  %i.ahp = load i16, ptr %i.aho, align 2, !tbaa !114
  %i.ahq = getelementptr inbounds nuw [2 x i8], ptr %.0100136.i, i64 %indvars.iv147.i.ph
  %i.ahr = load i16, ptr %i.ahq, align 2, !tbaa !114
  %i.ahs = and i16 %i.ahr, %i.ahp
  %i.aht = getelementptr inbounds nuw [2 x i8], ptr %.099137.i, i64 %indvars.iv147.i.ph
  %i.ahu = load i16, ptr %i.aht, align 2, !tbaa !114
  %i.ahv = xor i16 %i.ahs, %i.ahu
  store i16 %i.ahv, ptr %i.aho, align 2, !tbaa !114
  %indvars.iv.next148.i.prol = or disjoint i64 %indvars.iv147.i.ph, 1
  br label %vec.epilog.scalar.ph866.prol.loopexit

vec.epilog.scalar.ph866.prol.loopexit:            ; preds = %vec.epilog.scalar.ph866.prol, %vec.epilog.scalar.ph866.preheader
  %indvars.iv147.i.unr = phi i64 [ %indvars.iv147.i.ph, %vec.epilog.scalar.ph866.preheader ], [ %indvars.iv.next148.i.prol, %vec.epilog.scalar.ph866.prol ]
  %i.ahw = icmp eq i64 %indvars.iv147.i.ph, %i.agw
  br i1 %i.ahw, label %._crit_edge133.i, label %vec.epilog.scalar.ph866

vec.epilog.scalar.ph866:                          ; preds = %vec.epilog.scalar.ph866.prol.loopexit, %vec.epilog.scalar.ph866
  %indvars.iv147.i = phi i64 [ %indvars.iv.next148.i.1, %vec.epilog.scalar.ph866 ], [ %indvars.iv147.i.unr, %vec.epilog.scalar.ph866.prol.loopexit ] ; 5 uses
  %i.ahx = getelementptr inbounds nuw [2 x i8], ptr %.1114134.i, i64 %indvars.iv147.i ; 2 uses
  %i.ahy = load i16, ptr %i.ahx, align 2, !tbaa !114
  %i.ahz = getelementptr inbounds nuw [2 x i8], ptr %.0100136.i, i64 %indvars.iv147.i
  %i.aia = load i16, ptr %i.ahz, align 2, !tbaa !114
  %i.aib = and i16 %i.aia, %i.ahy
  %i.aic = getelementptr inbounds nuw [2 x i8], ptr %.099137.i, i64 %indvars.iv147.i
  %i.aid = load i16, ptr %i.aic, align 2, !tbaa !114
  %i.aie = xor i16 %i.aib, %i.aid
  store i16 %i.aie, ptr %i.ahx, align 2, !tbaa !114
  %indvars.iv.next148.i = add nuw nsw i64 %indvars.iv147.i, 1 ; 3 uses
  %i.aif = getelementptr inbounds nuw [2 x i8], ptr %.1114134.i, i64 %indvars.iv.next148.i ; 2 uses
  %i.aig = load i16, ptr %i.aif, align 2, !tbaa !114
  %i.aih = getelementptr inbounds nuw [2 x i8], ptr %.0100136.i, i64 %indvars.iv.next148.i
  %i.aii = load i16, ptr %i.aih, align 2, !tbaa !114
  %i.aij = and i16 %i.aii, %i.aig
  %i.aik = getelementptr inbounds nuw [2 x i8], ptr %.099137.i, i64 %indvars.iv.next148.i
  %i.ail = load i16, ptr %i.aik, align 2, !tbaa !114
  %i.aim = xor i16 %i.aij, %i.ail
  store i16 %i.aim, ptr %i.aif, align 2, !tbaa !114
  %indvars.iv.next148.i.1 = add nuw nsw i64 %indvars.iv147.i, 2 ; 2 uses
  %exitcond499.not.1 = icmp eq i64 %indvars.iv.next148.i.1, %i.agh
  br i1 %exitcond499.not.1, label %._crit_edge133.i, label %vec.epilog.scalar.ph866, !llvm.loop !82

._crit_edge133.i:                                 ; preds = %vec.epilog.scalar.ph866.prol.loopexit, %vec.epilog.scalar.ph866, %vec.epilog.middle.block877, %middle.block862
  %i.ain = getelementptr inbounds [2 x i8], ptr %.099137.i, i64 %i.agc
  %i.aio = getelementptr inbounds [2 x i8], ptr %.0100136.i, i64 %i.agc
  %i.aip = getelementptr inbounds i8, ptr %.1114134.i, i64 %i.acr
  %i.aiq = add nuw nsw i32 %.1109135.i, 1         ; 2 uses
  %i.air = icmp slt i32 %i.aiq, %.1.i
  br i1 %i.air, label %iter.check865, label %put_cursor.exit, !llvm.loop !83

.preheader125.preheader.i:                        ; preds = %bb.gi
  %i.ais = getelementptr inbounds nuw i8, ptr %i.f, i64 856
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !111
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.f, i64 864
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !116
  %i.aiw = zext nneg i32 %.1107.i to i64          ; 6 uses
  %i.aix = shl nuw nsw i64 %i.aiw, 2              ; 3 uses
  %scevgep = getelementptr i8, ptr %i.adl, i64 %i.aix
  %smin = tail call i32 @llvm.smin.i32(i32 %i.adc, i32 %i.ade)
  %i.aiy = add i32 %smin, %i.adi
  %i.aiz = xor i32 %i.add, -1
  %i.aja = add i32 %i.aiy, %i.aiz
  %i.ajb = zext i32 %i.aja to i64
  %i.ajc = mul nsw i64 %i.ajb, %i.acr
  %i.ajd = getelementptr i8, ptr %scevgep, i64 %i.ajc
  %scevgep808 = getelementptr i8, ptr %i.ajd, i64 %i.adq ; 2 uses
  %min.iters.check816 = icmp ult i32 %.1107.i, 8
  %stride.check814 = icmp slt i32 %i.acq, 0
  %n.vec818 = and i64 %i.aiw, 2147483640          ; 3 uses
  %cmp.n828 = icmp eq i64 %n.vec818, %i.aiw
  %xtraiter1040 = and i64 %i.aiw, 1
  %lcmp.mod1041.not = icmp eq i64 %xtraiter1040, 0
  %i.aje = add nsw i64 %i.aiw, -1
  br label %.preheader125.i

.preheader125.i:                                  ; preds = %._crit_edge.i328, %.preheader125.preheader.i
  %.0131.i = phi ptr [ %i.akr, %._crit_edge.i328 ], [ %i.aiv, %.preheader125.preheader.i ] ; 7 uses
  %.098130.i = phi ptr [ %i.aks, %._crit_edge.i328 ], [ %i.ait, %.preheader125.preheader.i ] ; 7 uses
  %.2129.i = phi i32 [ %i.aku, %._crit_edge.i328 ], [ 0, %.preheader125.preheader.i ]
  %.2115128.i = phi ptr [ %i.akt, %._crit_edge.i328 ], [ %i.adr, %.preheader125.preheader.i ] ; 5 uses
  br i1 %min.iters.check816, label %scalar.ph815.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader125.i
  %scevgep809 = getelementptr i8, ptr %.098130.i, i64 %i.aix
  %scevgep810 = getelementptr i8, ptr %.0131.i, i64 %i.aix
  %bound0 = icmp ult ptr %i.adr, %scevgep809
  %bound1 = icmp ult ptr %.098130.i, %scevgep808
  %found.conflict = and i1 %bound0, %bound1
  %5 = or i1 %found.conflict, %stride.check814
  %bound0811 = icmp ult ptr %i.adr, %scevgep810
  %bound1812 = icmp ult ptr %.0131.i, %scevgep808
  %found.conflict813 = and i1 %bound0811, %bound1812
  %conflict.rdx = or i1 %5, %found.conflict813
  br i1 %conflict.rdx, label %scalar.ph815.preheader, label %vector.body819

vector.body819:                                   ; preds = %vector.memcheck, %vector.body819
  %index820 = phi i64 [ %index.next826, %vector.body819 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %.2115128.i, i64 %index820 ; 3 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ajf, align 4, !tbaa !34, !alias.scope !130, !noalias !131
  %wide.load821.a = load <4 x i32>, ptr %i.ajg, align 4, !tbaa !34, !alias.scope !130, !noalias !131
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %.098130.i, i64 %index820 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 16
  %wide.load822.a = load <4 x i32>, ptr %i.ajh, align 4, !tbaa !34, !alias.scope !132
  %wide.load823.a = load <4 x i32>, ptr %i.aji, align 4, !tbaa !34, !alias.scope !132
  %i.ajj = and <4 x i32> %wide.load822.a, %wide.load
  %i.ajk = and <4 x i32> %wide.load823.a, %wide.load821.a
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %.0131.i, i64 %index820 ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 16
  %wide.load824.a = load <4 x i32>, ptr %i.ajl, align 4, !tbaa !34, !alias.scope !133
  %wide.load825 = load <4 x i32>, ptr %i.ajm, align 4, !tbaa !34, !alias.scope !133
  %i.ajn = xor <4 x i32> %i.ajj, %wide.load824.a
  %i.ajo = xor <4 x i32> %i.ajk, %wide.load825
  store <4 x i32> %i.ajn, ptr %i.ajf, align 4, !tbaa !34, !alias.scope !130, !noalias !131
  store <4 x i32> %i.ajo, ptr %i.ajg, align 4, !tbaa !34, !alias.scope !130, !noalias !131
  %index.next826 = add nuw i64 %index820, 8       ; 2 uses
  %i.ajp = icmp eq i64 %index.next826, %n.vec818
  br i1 %i.ajp, label %middle.block827, label %vector.body819, !llvm.loop !88

middle.block827:                                  ; preds = %vector.body819
  br i1 %cmp.n828, label %._crit_edge.i328, label %scalar.ph815.preheader

scalar.ph815.preheader:                           ; preds = %vector.memcheck, %.preheader125.i, %middle.block827
  %indvars.iv.i326.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader125.i ], [ %n.vec818, %middle.block827 ] ; 6 uses
  br i1 %lcmp.mod1041.not, label %scalar.ph815.prol.loopexit, label %scalar.ph815.prol

scalar.ph815.prol:                                ; preds = %scalar.ph815.preheader
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %.2115128.i, i64 %indvars.iv.i326.ph ; 2 uses
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !34
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %.098130.i, i64 %indvars.iv.i326.ph
  %i.ajt = load i32, ptr %i.ajs, align 4, !tbaa !34
  %i.aju = and i32 %i.ajt, %i.ajr
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %.0131.i, i64 %indvars.iv.i326.ph
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !34
  %i.ajx = xor i32 %i.aju, %i.ajw
  store i32 %i.ajx, ptr %i.ajq, align 4, !tbaa !34
  %indvars.iv.next.i327.prol = or disjoint i64 %indvars.iv.i326.ph, 1
  br label %scalar.ph815.prol.loopexit

scalar.ph815.prol.loopexit:                       ; preds = %scalar.ph815.prol, %scalar.ph815.preheader
  %indvars.iv.i326.unr = phi i64 [ %indvars.iv.i326.ph, %scalar.ph815.preheader ], [ %indvars.iv.next.i327.prol, %scalar.ph815.prol ]
  %i.ajy = icmp eq i64 %indvars.iv.i326.ph, %i.aje
  br i1 %i.ajy, label %._crit_edge.i328, label %scalar.ph815

scalar.ph815:                                     ; preds = %scalar.ph815.prol.loopexit, %scalar.ph815
  %indvars.iv.i326 = phi i64 [ %indvars.iv.next.i327.1, %scalar.ph815 ], [ %indvars.iv.i326.unr, %scalar.ph815.prol.loopexit ] ; 5 uses
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %.2115128.i, i64 %indvars.iv.i326 ; 2 uses
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !34
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %.098130.i, i64 %indvars.iv.i326
  %i.akc = load i32, ptr %i.akb, align 4, !tbaa !34
  %i.akd = and i32 %i.akc, %i.aka
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %.0131.i, i64 %indvars.iv.i326
  %i.akf = load i32, ptr %i.ake, align 4, !tbaa !34
  %i.akg = xor i32 %i.akd, %i.akf
  store i32 %i.akg, ptr %i.ajz, align 4, !tbaa !34
  %indvars.iv.next.i327 = add nuw nsw i64 %indvars.iv.i326, 1 ; 3 uses
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %.2115128.i, i64 %indvars.iv.next.i327 ; 2 uses
  %i.aki = load i32, ptr %i.akh, align 4, !tbaa !34
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %.098130.i, i64 %indvars.iv.next.i327
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !34
  %i.akl = and i32 %i.akk, %i.aki
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr %.0131.i, i64 %indvars.iv.next.i327
  %i.akn = load i32, ptr %i.akm, align 4, !tbaa !34
  %i.ako = xor i32 %i.akl, %i.akn
  store i32 %i.ako, ptr %i.akh, align 4, !tbaa !34
  %indvars.iv.next.i327.1 = add nuw nsw i64 %indvars.iv.i326, 2 ; 2 uses
  %exitcond498.not.1 = icmp eq i64 %indvars.iv.next.i327.1, %i.aiw
  br i1 %exitcond498.not.1, label %._crit_edge.i328, label %scalar.ph815, !llvm.loop !89

._crit_edge.i328:                                 ; preds = %scalar.ph815.prol.loopexit, %scalar.ph815, %middle.block827
  %i.akp = load i32, ptr %i.aax, align 8, !tbaa !38
  %i.akq = sext i32 %i.akp to i64                 ; 2 uses
  %i.akr = getelementptr inbounds [4 x i8], ptr %.0131.i, i64 %i.akq
  %i.aks = getelementptr inbounds [4 x i8], ptr %.098130.i, i64 %i.akq
  %i.akt = getelementptr inbounds i8, ptr %.2115128.i, i64 %i.acr
  %i.aku = add nuw nsw i32 %.2129.i, 1            ; 2 uses
  %i.akv = icmp slt i32 %i.aku, %.1.i
  br i1 %i.akv, label %.preheader125.i, label %put_cursor.exit, !llvm.loop !90

put_cursor.exit:                                  ; preds = %._crit_edge.i328, %._crit_edge133.i, %._crit_edge139.i, %bb.gi, %bb.gh, %bb.ge, %._crit_edge419
  store i32 1, ptr %2, align 4, !tbaa !34
  %i.akw = load ptr, ptr %i.z, align 8, !tbaa !37
  %i.akx = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.akw) #8 ; 2 uses
  %i.aky = icmp slt i32 %i.akx, 0
  %. = select i1 %i.aky, i32 %i.akx, i32 %i.d
  br label %bb.gj

bb.gj:                                            ; preds = %decode_hextile.exit, %bb.af, %put_cursor.exit, %bb.e, %bytestream2_get_be16.exit304, %bb.cc, %bb.by, %bb.ab, %bb.x, %bb.v, %bb.s, %bb.k
  %.3258 = phi i32 [ -1094995529, %decode_hextile.exit ], [ -1094995529, %bytestream2_get_be16.exit304 ], [ -1, %bb.k ], [ -1094995529, %bb.s ], [ -1094995529, %bb.v ], [ -1094995529, %bb.x ], [ -22, %bb.ab ], [ %.0241, %bb.af ], [ -1094995529, %bb.by ], [ -1094995529, %bb.cc ], [ %i.ab, %bb.e ], [ %., %put_cursor.exit ]
  ret i32 %.3258
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 856
  tail call void @av_freep(ptr noundef nonnull %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 864
  tail call void @av_freep(ptr noundef nonnull %i.e) #8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 872
  tail call void @av_freep(ptr noundef nonnull %i.f) #8
  ret i32 0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @av_frame_alloc() local_unnamed_addr #2

declare i32 @ff_reget_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @reset_buffers(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @av_freep(ptr noundef nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 864
  tail call void @av_freep(ptr noundef nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 872
  tail call void @av_freep(ptr noundef nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 836
  store i32 0, ptr %i.d, align 4, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 832
  store i32 0, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 852
  store i32 0, ptr %i.f, align 4, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 848
  store i32 0, ptr %i.g, align 8, !tbaa !40
  ret void
}

declare i32 @av_reallocp(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
end_hunk_0
