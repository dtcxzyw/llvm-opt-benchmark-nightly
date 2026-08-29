Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/apply?download=true
inline.NumInlined: 449
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0_@apply_fragments:bb.a

bb.em:                                            ; preds = %bb.el, %bb.ek, %bb.dz, %bb.dy, %.critedge.i
  %i.acm = load i32, ptr %i.ah, align 8, !tbaa !49
  %i.acn = icmp slt i32 %i.acm, 1
  %.not220.i = icmp eq i32 %.0.i285.i, %.0156.ph.i
  %or.cond233.i = or i1 %.not220.i, %i.acn
  br i1 %or.cond233.i, label %bb.eq, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.aco = sub nsw i32 %.0.i285.i, %.0156.ph.i    ; 2 uses
  %i.acp = load i32, ptr %i.t, align 8, !tbaa !132
  %.not221.i = icmp eq i32 %i.acp, 0
  %i.acq = sub nsw i32 0, %i.aco
  %spec.select234.i = select i1 %.not221.i, i32 %i.aco, i32 %i.acq ; 3 uses
  %i.acr = load ptr, ptr @stderr, align 8, !tbaa !137
  %i.acs = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not.i308.i = icmp eq i32 %i.acs, 0
  br i1 %.not.i308.i, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.act = icmp eq i32 %spec.select234.i, 1
  %i.acu = select i1 %i.act, ptr @.str.227, ptr @.str.228
  br label %Q_.exit.i

bb.ep:                                            ; preds = %bb.en
  %i.acv = sext i32 %spec.select234.i to i64
  %i.acw = call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.228, i64 noundef range(i64 -2147483648, 2147483648) %i.acv, i32 noundef 5) #21
  br label %Q_.exit.i

Q_.exit.i:                                        ; preds = %bb.ep, %bb.eo
  %.0.i309.i = phi ptr [ %i.acw, %bb.ep ], [ %i.acu, %bb.eo ]
  %i.acx = add nuw nsw i32 %.0.i285.i, 1
  %i.acy = call i32 (ptr, ptr, ...) @fprintf_ln(ptr noundef %i.acr, ptr noundef %.0.i309.i, i32 noundef range(i32 -2147483647, -2147483648) %i.dy, i32 noundef %i.acx, i32 noundef %spec.select234.i) #21 ; 0 uses
  br label %bb.eq

bb.eq:                                            ; preds = %Q_.exit.i, %bb.em
  %i.acz = load i64, ptr %.023117, align 8, !tbaa !140
  %.not222.i = icmp eq i64 %.0160.ph.i, %i.acz
  br i1 %.not222.i, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.ada = load i64, ptr %i.oi, align 8, !tbaa !141
  %.not223.i = icmp eq i64 %.0158.ph.i.ph, %i.ada
  br i1 %.not223.i, label %bb.ev, label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.adb = load i32, ptr %i.ah, align 8, !tbaa !49
  %i.adc = icmp sgt i32 %i.adb, -1
  br i1 %i.adc, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.add = load ptr, ptr @stderr, align 8, !tbaa !137
  %i.ade = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i310.i = icmp eq i32 %i.ade, 0
  br i1 %.not4.i310.i, label %_.exit312.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.adf = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.229, i32 noundef 5) #21
  br label %_.exit312.i

_.exit312.i:                                      ; preds = %bb.eu, %bb.et
  %.0.i311.i = phi ptr [ %i.adf, %bb.eu ], [ @.str.229, %bb.et ]
  %i.adg = add nuw nsw i32 %.0.i285.i, 1
  %i.adh = call i32 (ptr, ptr, ...) @fprintf_ln(ptr noundef %i.add, ptr noundef %.0.i311.i, i64 noundef %.0160.ph.i, i64 noundef %.0158.ph.i.ph, i32 noundef %i.adg) #21 ; 0 uses
  br label %bb.ev

bb.ev:                                            ; preds = %_.exit312.i, %bb.es, %bb.er
  %.val.i = load i64, ptr %i.aa, align 8, !tbaa !187 ; 2 uses
  %sext.i.i = shl i64 %.val.i, 32
  %i.adi = ashr exact i64 %sext.i.i, 32
  %i.adj = load i64, ptr %i.al, align 8, !tbaa !187
  %i.adk = zext nneg i32 %.0.i285.i to i64        ; 8 uses
  %i.adl = sub i64 %i.adj, %i.adk                 ; 2 uses
  %i.adm = icmp ugt i64 %i.adi, %i.adl
  %spec.select.i313.i = select i1 %i.adm, i64 %i.adl, i64 %.val.i ; 5 uses
  %.0.i314.i = trunc i64 %spec.select.i313.i to i32 ; 2 uses
  %.not10.i315.i = icmp eq i32 %.0.i285.i, 0
  br i1 %.not10.i315.i, label %.preheader1.i.i, label %.lr.ph.i316.i

.lr.ph.i316.i:                                    ; preds = %bb.ev
  %i.adn = load ptr, ptr %i.am, align 8, !tbaa !181 ; 3 uses
  %min.iters.check435 = icmp ult i32 %.0.i285.i, 5
  br i1 %min.iters.check435, label %scalar.ph434.preheader, label %vector.ph436

vector.ph436:                                     ; preds = %.lr.ph.i316.i
  %i.ado = and i64 %i.adk, 3                      ; 2 uses
  %i.adp = icmp eq i64 %i.ado, 0
  %i.adq = select i1 %i.adp, i64 4, i64 %i.ado
  %n.vec437 = sub nsw i64 %i.adk, %i.adq          ; 2 uses
  br label %vector.body438

vector.body438:                                   ; preds = %vector.body438, %vector.ph436
  %index439 = phi i64 [ 0, %vector.ph436 ], [ %index.next446, %vector.body438 ] ; 3 uses
  %vec.phi440 = phi <2 x i64> [ zeroinitializer, %vector.ph436 ], [ %i.adu, %vector.body438 ]
  %vec.phi441 = phi <2 x i64> [ zeroinitializer, %vector.ph436 ], [ %i.adv, %vector.body438 ]
  %i.adr = getelementptr inbounds nuw [16 x i8], ptr %i.adn, i64 %index439
  %i.ads = getelementptr inbounds nuw [16 x i8], ptr %i.adn, i64 %index439
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 32
  %wide.vec442 = load <4 x i64>, ptr %i.adr, align 8, !tbaa !189
  %strided.vec443 = shufflevector <4 x i64> %wide.vec442, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec444 = load <4 x i64>, ptr %i.adt, align 8, !tbaa !189
  %strided.vec445 = shufflevector <4 x i64> %wide.vec444, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.adu = add <2 x i64> %strided.vec443, %vec.phi440 ; 2 uses
  %i.adv = add <2 x i64> %strided.vec445, %vec.phi441 ; 2 uses
  %index.next446 = add nuw i64 %index439, 4       ; 2 uses
  %i.adw = icmp eq i64 %index.next446, %n.vec437
  br i1 %i.adw, label %middle.block447, label %vector.body438, !llvm.loop !266

middle.block447:                                  ; preds = %vector.body438
  %bin.rdx448 = add <2 x i64> %i.adv, %i.adu
  %i.adx = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx448)
  br label %scalar.ph434.preheader

scalar.ph434.preheader:                           ; preds = %.lr.ph.i316.i, %middle.block447
  %indvars.iv.i317.i.ph = phi i64 [ 0, %.lr.ph.i316.i ], [ %n.vec437, %middle.block447 ]
  %.0773.i.i.ph = phi i64 [ 0, %.lr.ph.i316.i ], [ %i.adx, %middle.block447 ]
  br label %scalar.ph434

.preheader1.i.i:                                  ; preds = %scalar.ph434, %bb.ev
  %.077.lcssa.i.i = phi i64 [ 0, %bb.ev ], [ %i.aen, %scalar.ph434 ] ; 3 uses
  %i.ady = icmp sgt i32 %.0.i314.i, 0
  br i1 %i.ady, label %.lr.ph6.i.i, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.preheader1.i.i
  %i.adz = load i64, ptr %i.ap, align 8, !tbaa !185
  br label %st_sub.exit.i.i

.lr.ph6.i.i:                                      ; preds = %.preheader1.i.i
  %i.aea = load ptr, ptr %i.am, align 8, !tbaa !181
  %wide.trip.count17.i.i = and i64 %spec.select.i313.i, 2147483647 ; 3 uses
  %invariant.gep.i.i = getelementptr inbounds nuw [16 x i8], ptr %i.aea, i64 %i.adk ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count17.i.i, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph6.i.i
  %i.aeb = and i64 %spec.select.i313.i, 3         ; 2 uses
  %i.aec = icmp eq i64 %i.aeb, 0
  %i.aed = select i1 %i.aec, i64 4, i64 %i.aeb
  %n.vec = sub nsw i64 %wide.trip.count17.i.i, %i.aed ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aeh, %vector.body ]
  %vec.phi431 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aei, %vector.body ]
  %i.aee = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.i.i, i64 %index
  %i.aef = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.i.i, i64 %index
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 32
  %wide.vec = load <4 x i64>, ptr %i.aee, align 8, !tbaa !189
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec432 = load <4 x i64>, ptr %i.aeg, align 8, !tbaa !189
  %strided.vec433 = shufflevector <4 x i64> %wide.vec432, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.aeh = add <2 x i64> %strided.vec, %vec.phi   ; 2 uses
  %i.aei = add <2 x i64> %strided.vec433, %vec.phi431 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aej = icmp eq i64 %index.next, %n.vec
  br i1 %i.aej, label %middle.block, label %vector.body, !llvm.loop !267

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aei, %i.aeh
  %i.aek = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph6.i.i, %middle.block
  %indvars.iv14.i.i.ph = phi i64 [ 0, %.lr.ph6.i.i ], [ %n.vec, %middle.block ]
  %.0785.i.i.ph = phi i64 [ 0, %.lr.ph6.i.i ], [ %i.aek, %middle.block ]
  br label %scalar.ph

scalar.ph434:                                     ; preds = %scalar.ph434.preheader, %scalar.ph434
  %indvars.iv.i317.i = phi i64 [ %indvars.iv.next.i318.i, %scalar.ph434 ], [ %indvars.iv.i317.i.ph, %scalar.ph434.preheader ] ; 2 uses
  %.0773.i.i = phi i64 [ %i.aen, %scalar.ph434 ], [ %.0773.i.i.ph, %scalar.ph434.preheader ]
  %i.ael = getelementptr inbounds nuw [16 x i8], ptr %i.adn, i64 %indvars.iv.i317.i
  %i.aem = load i64, ptr %i.ael, align 8, !tbaa !189
  %i.aen = add i64 %i.aem, %.0773.i.i             ; 2 uses
  %indvars.iv.next.i318.i = add nuw nsw i64 %indvars.iv.i317.i, 1 ; 2 uses
  %exitcond.not.i319.i = icmp eq i64 %indvars.iv.next.i318.i, %i.adk
  br i1 %exitcond.not.i319.i, label %.preheader1.i.i, label %scalar.ph434, !llvm.loop !268

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv14.i.i = phi i64 [ %indvars.iv.next15.i.i, %scalar.ph ], [ %indvars.iv14.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0785.i.i = phi i64 [ %i.aep, %scalar.ph ], [ %.0785.i.i.ph, %scalar.ph.preheader ]
  %gep.i.i = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv14.i.i
  %i.aeo = load i64, ptr %gep.i.i, align 8, !tbaa !189
  %i.aep = add i64 %i.aeo, %.0785.i.i             ; 4 uses
  %indvars.iv.next15.i.i = add nuw nsw i64 %indvars.iv14.i.i, 1 ; 2 uses
  %exitcond18.not.i.i = icmp eq i64 %indvars.iv.next15.i.i, %wide.trip.count17.i.i
  br i1 %exitcond18.not.i.i, label %._crit_edge.i326.i, label %scalar.ph, !llvm.loop !269

._crit_edge.i326.i:                               ; preds = %scalar.ph
  %i.aeq = load i64, ptr %i.ap, align 8, !tbaa !185 ; 3 uses
  %i.aer = icmp ult i64 %i.aeq, %i.aep
  br i1 %i.aer, label %bb.ew, label %st_sub.exit.i.i

bb.ew:                                            ; preds = %._crit_edge.i326.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.235, i64 noundef %i.aeq, i64 noundef %i.aep) #25
  unreachable

st_sub.exit.i.i:                                  ; preds = %._crit_edge.i326.i, %._crit_edge.thread.i.i
  %i.aes = phi i64 [ %i.adz, %._crit_edge.thread.i.i ], [ %i.aeq, %._crit_edge.i326.i ]
  %.078.lcssa33.i.i = phi i64 [ 0, %._crit_edge.thread.i.i ], [ %i.aep, %._crit_edge.i326.i ] ; 3 uses
  %i.aet = load i64, ptr %i.ax, align 8, !tbaa !185 ; 3 uses
  %i.aeu = sub nuw i64 %i.aes, %.078.lcssa33.i.i  ; 3 uses
  %i.aev = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.aeu, i64 %i.aet)
  %i.aew = extractvalue { i64, i1 } %i.aev, 1
  br i1 %i.aew, label %bb.ex, label %st_add.exit.i.i

bb.ex:                                            ; preds = %st_sub.exit.i.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.234, i64 noundef %i.aeu, i64 noundef %i.aet) #25
  unreachable

st_add.exit.i.i:                                  ; preds = %st_sub.exit.i.i
  %10 = add nuw i64 %i.aeu, %i.aet                ; 2 uses
  %11 = icmp eq i64 %10, -1
  br i1 %11, label %bb.ey, label %st_add.exit88.i.i

bb.ey:                                            ; preds = %st_add.exit.i.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.234, i64 noundef -1, i64 noundef 1) #25
  unreachable

st_add.exit88.i.i:                                ; preds = %st_add.exit.i.i
  %12 = add nuw i64 %10, 1                        ; 2 uses
  %i.aex = call ptr @xmalloc(i64 noundef %12) #21 ; 3 uses
  %i.aey = load ptr, ptr %i.aq, align 8, !tbaa !184
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aex, ptr align 1 %i.aey, i64 %.077.lcssa.i.i, i1 false)
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aex, i64 %.077.lcssa.i.i ; 2 uses
  %i.afa = load ptr, ptr %i.ay, align 8, !tbaa !184
  %i.afb = load i64, ptr %i.ax, align 8, !tbaa !185
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aez, ptr align 1 %i.afa, i64 %i.afb, i1 false)
  %i.afc = load i64, ptr %i.ax, align 8, !tbaa !185
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aez, i64 %i.afc
  %i.afe = load ptr, ptr %i.aq, align 8, !tbaa !184
  %i.aff = add i64 %.078.lcssa33.i.i, %.077.lcssa.i.i ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afe, i64 %i.aff
  %i.afh = load i64, ptr %i.ap, align 8, !tbaa !185
  %i.afi = sub i64 %i.afh, %i.aff
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afd, ptr align 1 %i.afg, i64 %i.afi, i1 false)
  %i.afj = load i64, ptr %i.ax, align 8, !tbaa !185
  %i.afk = load i64, ptr %i.ap, align 8, !tbaa !185
  %i.afl = sub i64 %i.afj, %.078.lcssa33.i.i
  %i.afm = add i64 %i.afl, %i.afk
  call void @strbuf_attach(ptr noundef nonnull %1, ptr noundef %i.aex, i64 noundef %i.afm, i64 noundef %12) #21
  %i.afn = load i64, ptr %i.al, align 8, !tbaa !187
  %i.afo = load i64, ptr %i.ad, align 8, !tbaa !187 ; 3 uses
  %sext84.i.i = shl i64 %spec.select.i313.i, 32
  %i.afp = ashr exact i64 %sext84.i.i, 32         ; 4 uses
  %i.afq = sub i64 %i.afn, %spec.select.i313.i
  %i.afr = add i64 %i.afq, %i.afo                 ; 2 uses
  %i.afs = icmp ult i64 %i.afp, %i.afo
  br i1 %i.afs, label %bb.ez, label %st_add.exit88.i._crit_edge.i

st_add.exit88.i._crit_edge.i:                     ; preds = %st_add.exit88.i.i
  %.pre609.pre.i = load ptr, ptr %i.am, align 8, !tbaa !181
  br label %bb.fb

bb.ez:                                            ; preds = %st_add.exit88.i.i
  %sext85.i.i = shl i64 %i.afr, 32                ; 2 uses
  %i.aft = ashr exact i64 %sext85.i.i, 32         ; 2 uses
  %i.afu = icmp ugt i64 %i.aft, 1152921504606846975
  br i1 %i.afu, label %bb.fa, label %st_mult.exit.i324.i

bb.fa:                                            ; preds = %bb.ez
  call void (ptr, ...) @die(ptr noundef nonnull @.str.204, i64 noundef 16, i64 noundef %i.aft) #25
  unreachable

st_mult.exit.i324.i:                              ; preds = %bb.ez
  %i.afv = load ptr, ptr %i.am, align 8, !tbaa !181
  %i.afw = ashr exact i64 %sext85.i.i, 28
  %i.afx = call ptr @xrealloc(ptr noundef %i.afv, i64 noundef %i.afw) #21 ; 2 uses
  store ptr %i.afx, ptr %i.am, align 8, !tbaa !181
  %.pre.i325.i = load i64, ptr %i.ad, align 8, !tbaa !187
  br label %bb.fb

bb.fb:                                            ; preds = %st_mult.exit.i324.i, %st_add.exit88.i._crit_edge.i
  %.pre609.i = phi ptr [ %i.afx, %st_mult.exit.i324.i ], [ %.pre609.pre.i, %st_add.exit88.i._crit_edge.i ] ; 3 uses
  %i.afy = phi i64 [ %.pre.i325.i, %st_mult.exit.i324.i ], [ %i.afo, %st_add.exit88.i._crit_edge.i ] ; 3 uses
  %.not.i320.i = icmp eq i64 %i.afp, %i.afy
  br i1 %.not.i320.i, label %move_array.exit.i322.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.afz = getelementptr inbounds nuw [16 x i8], ptr %.pre609.i, i64 %i.adk ; 2 uses
  %i.aga = getelementptr inbounds nuw [16 x i8], ptr %i.afz, i64 %i.afy
  %i.agb = getelementptr inbounds [16 x i8], ptr %i.afz, i64 %i.afp
  %i.agc = load i64, ptr %i.al, align 8, !tbaa !187 ; 2 uses
  %i.agd = add nsw i32 %.0.i285.i, %.0.i314.i
  %i.age = sext i32 %i.agd to i64                 ; 2 uses
  %i.agf = sub i64 %i.agc, %i.age                 ; 3 uses
  %.not.i.i321.i = icmp eq i64 %i.agc, %i.age
  br i1 %.not.i.i321.i, label %move_array.exit.i322.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.agg = icmp ugt i64 %i.agf, 1152921504606846975
  br i1 %i.agg, label %bb.fe, label %st_mult.exit.i.i.i

bb.fe:                                            ; preds = %bb.fd
  call void (ptr, ...) @die(ptr noundef nonnull @.str.204, i64 noundef 16, i64 noundef %i.agf) #25
  unreachable

st_mult.exit.i.i.i:                               ; preds = %bb.fd
  %i.agh = shl nuw i64 %i.agf, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aga, ptr readonly align 1 %i.agb, i64 %i.agh, i1 false)
  %.pr.pre.i.i = load i64, ptr %i.ad, align 8, !tbaa !187
  %.pre608.i = load ptr, ptr %i.am, align 8, !tbaa !181
  br label %move_array.exit.i322.i

move_array.exit.i322.i:                           ; preds = %st_mult.exit.i.i.i, %bb.fc, %bb.fb
  %i.agi = phi i64 [ %i.afp, %bb.fb ], [ %i.afy, %bb.fc ], [ %.pr.pre.i.i, %st_mult.exit.i.i.i ] ; 4 uses
  %i.agj = phi ptr [ %.pre609.i, %bb.fb ], [ %.pre609.i, %bb.fc ], [ %.pre608.i, %st_mult.exit.i.i.i ]
  %i.agk = getelementptr inbounds nuw [16 x i8], ptr %i.agj, i64 %i.adk
  %i.agl = load ptr, ptr %.phi.trans.insert.i266.i, align 8, !tbaa !181
  %.not.i89.i.i = icmp eq i64 %i.agi, 0
  br i1 %.not.i89.i.i, label %update_image.exit.i, label %bb.ff

bb.ff:                                            ; preds = %move_array.exit.i322.i
  %i.agm = icmp ugt i64 %i.agi, 1152921504606846975
  br i1 %i.agm, label %bb.fg, label %copy_array.exit.i.i

bb.fg:                                            ; preds = %bb.ff
  call void (ptr, ...) @die(ptr noundef nonnull @.str.204, i64 noundef 16, i64 noundef %i.agi) #25
  unreachable

copy_array.exit.i.i:                              ; preds = %bb.ff
  %i.agn = shl nuw i64 %i.agi, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.agk, ptr readonly align 1 %i.agl, i64 %i.agn, i1 false)
  %.pre610.i = load i64, ptr %i.ad, align 8
  %i.ago = icmp eq i64 %.pre610.i, 0
  %i.agp = load i32, ptr %i.ak, align 4, !tbaa !243
  %.not86.i.i = icmp ne i32 %i.agp, 0
  %or.cond396.i = select i1 %.not86.i.i, i1 true, i1 %i.ago
  br i1 %or.cond396.i, label %update_image.exit.i, label %.lr.ph9.i.i

.lr.ph9.i.i:                                      ; preds = %copy_array.exit.i.i, %.lr.ph9.i.i
  %indvars.iv19.i.i = phi i64 [ %indvars.iv.next20.i.i, %.lr.ph9.i.i ], [ 0, %copy_array.exit.i.i ] ; 2 uses
  %i.agq = load ptr, ptr %i.am, align 8, !tbaa !181
  %i.agr = getelementptr inbounds nuw [16 x i8], ptr %i.agq, i64 %indvars.iv19.i.i
  %i.ags = getelementptr inbounds nuw [16 x i8], ptr %i.agr, i64 %i.adk
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 8 ; 2 uses
  %i.agu = load i32, ptr %i.agt, align 8
  %i.agv = or i32 %i.agu, 33554432
  store i32 %i.agv, ptr %i.agt, align 8
  %indvars.iv.next20.i.i = add nuw nsw i64 %indvars.iv19.i.i, 1 ; 2 uses
  %i.agw = load i64, ptr %i.ad, align 8, !tbaa !187
  %i.agx = icmp ugt i64 %i.agw, %indvars.iv.next20.i.i
  br i1 %i.agx, label %.lr.ph9.i.i, label %update_image.exit.i, !llvm.loop !270

update_image.exit.i:                              ; preds = %.lr.ph9.i.i, %copy_array.exit.i.i, %move_array.exit.i322.i
  %sext87.i.i = shl i64 %i.afr, 32
  %i.agy = ashr exact i64 %sext87.i.i, 32
  store i64 %i.agy, ptr %i.al, align 8, !tbaa !187
  br label %apply_one_fragment.exit

bb.fh:                                            ; preds = %find_pos.exit.thread.i
  %i.agz = load i32, ptr %i.ah, align 8, !tbaa !49
  %i.aha = icmp sgt i32 %i.agz, 0
  br i1 %i.aha, label %bb.fi, label %apply_one_fragment.exit

bb.fi:                                            ; preds = %bb.fh
  %i.ahb = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i327.i = icmp eq i32 %i.ahb, 0
  br i1 %.not4.i327.i, label %_.exit329.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ahc = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.230, i32 noundef 5) #21
  br label %_.exit329.i

_.exit329.i:                                      ; preds = %bb.fj, %bb.fi
  %.0.i328.i = phi ptr [ %i.ahc, %bb.fj ], [ @.str.230, %bb.fi ]
  %i.ahd = trunc i64 %i.oy to i32
  %i.ahe = call i32 (ptr, ...) @error(ptr noundef %.0.i328.i, i32 noundef %i.ahd, ptr noundef %i.eg) #21 ; 0 uses
  br label %apply_one_fragment.exit

apply_one_fragment.exit:                          ; preds = %bb.bd, %_.exit.i34, %update_image.exit.i, %bb.fh, %_.exit329.i
  %.not28 = phi i1 [ true, %update_image.exit.i ], [ false, %_.exit329.i ], [ false, %bb.fh ], [ false, %_.exit.i34 ], [ false, %bb.bd ]
  call void @free(ptr noundef %i.eg) #21
  call void @strbuf_release(ptr noundef nonnull %6) #21
  call void @strbuf_release(ptr noundef nonnull %7) #21
  %i.ahf = load ptr, ptr %.phi.trans.insert.i253.i, align 8, !tbaa !181
  call void @free(ptr noundef %i.ahf) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) @__const.image_init.empty, i64 48, i1 false)
  call void @strbuf_release(ptr noundef nonnull %8) #21
  %i.ahg = load ptr, ptr %.phi.trans.insert.i266.i, align 8, !tbaa !181
  call void @free(ptr noundef %i.ahg) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.not28, label %bb.fn, label %bb.fk

bb.fk:                                            ; preds = %apply_one_fragment.exit
  %i.ahh = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i = icmp eq i32 %i.ahh, 0
  br i1 %.not4.i, label %_.exit, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ahi = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.215, i32 noundef 5) #21
  br label %_.exit

_.exit:                                           ; preds = %bb.fk, %bb.fl
  %.0.i = phi ptr [ %i.ahi, %bb.fl ], [ @.str.215, %bb.fk ]
  %i.ahj = getelementptr inbounds nuw i8, ptr %.023117, i64 16
  %i.ahk = load i64, ptr %i.ahj, align 8, !tbaa !203
  %i.ahl = call i32 (ptr, ...) @error(ptr noundef %.0.i, ptr noundef %i.r, i64 noundef %i.ahk) #21 ; 0 uses
  %i.ahm = load i32, ptr %i.bc, align 4, !tbaa !46
  %.not29 = icmp eq i32 %i.ahm, 0
  br i1 %.not29, label %.loopexit, label %bb.fm

bb.fm:                                            ; preds = %_.exit
  %i.ahn = getelementptr inbounds nuw i8, ptr %.023117, i64 56 ; 2 uses
  %i.aho = load i8, ptr %i.ahn, align 8
  %i.ahp = or i8 %i.aho, 2
  store i8 %i.ahp, ptr %i.ahn, align 8
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %apply_one_fragment.exit
  %i.ahq = getelementptr inbounds nuw i8, ptr %.023117, i64 72
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !64 ; 2 uses
  %.not27 = icmp eq ptr %i.ahr, null
  br i1 %.not27, label %.loopexit, label %bb.ac, !llvm.loop !271

.loopexit:                                        ; preds = %_.exit, %bb.fn, %.preheader, %apply_binary.exit
  %.024 = phi i32 [ %.1.i, %apply_binary.exit ], [ 0, %.preheader ], [ -1, %_.exit ], [ 0, %bb.fn ]
  ret i32 %.024
}

; Function Attrs: nounwind uwtable
define internal fastcc void @image_clear(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @strbuf_release(ptr noundef nonnull %0) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181
  tail call void @free(ptr noundef %i.b) #21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) @__const.image_init.empty, i64 48, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @load_patch_target(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54
  %.not = icmp eq i32 %i.d, 0
end_hunk_0
