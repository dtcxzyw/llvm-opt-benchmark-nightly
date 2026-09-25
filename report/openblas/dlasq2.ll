Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasq2?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dlasq2_:bb.a
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index917
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 16
  store <4 x double> %wide.masked.gather921, ptr %i.zy, align 8, !tbaa !35
  %index.next922 = add nuw i64 %index917, 4       ; 2 uses
  %vec.ind.next923 = add <4 x i32> %vec.ind918, splat (i32 4)
  %i.zz = icmp eq i64 %index.next922, %n.vec916
  br i1 %i.zz, label %.lr.ph730.preheader, label %vec.epilog.vector.body, !llvm.loop !28

.lr.ph730.preheader:                              ; preds = %vec.epilog.vector.body, %iter.check, %vector.scevcheck, %vec.epilog.iter.check
  %indvars.iv790.ph = phi i64 [ 2, %iter.check ], [ 2, %vector.scevcheck ], [ %i.zb, %vec.epilog.iter.check ], [ %i.zt, %vec.epilog.vector.body ] ; 4 uses
  %i.aaa = sub nsw i64 %wide.trip.count793, %indvars.iv790.ph
  %i.aab = zext nneg i32 %i.yq to i64
  %i.aac = sub nsw i64 %i.aab, %indvars.iv790.ph
  %xtraiter993 = and i64 %i.aaa, 7                ; 2 uses
  %lcmp.mod994.not = icmp eq i64 %xtraiter993, 0
  br i1 %lcmp.mod994.not, label %.lr.ph730.prol.loopexit, label %.lr.ph730.prol

.lr.ph730.prol:                                   ; preds = %.lr.ph730.preheader, %.lr.ph730.prol
  %indvars.iv790.prol = phi i64 [ %indvars.iv.next791.prol, %.lr.ph730.prol ], [ %indvars.iv790.ph, %.lr.ph730.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph730.prol ], [ 0, %.lr.ph730.preheader ]
  %i.aad = trunc nuw nsw i64 %indvars.iv790.prol to i32
  %i.aae = shl i32 %i.aad, 2
  %i.aaf = sext i32 %i.aae to i64
  %i.aag = getelementptr [8 x i8], ptr %i.u, i64 %i.aaf
  %i.aah = getelementptr i8, ptr %i.aag, i64 -24
  %i.aai = load double, ptr %i.aah, align 8, !tbaa !35
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv790.prol
  store double %i.aai, ptr %i.aaj, align 8, !tbaa !35
  %indvars.iv.next791.prol = add nuw nsw i64 %indvars.iv790.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter993
  br i1 %prol.iter.cmp.not, label %.lr.ph730.prol.loopexit, label %.lr.ph730.prol, !llvm.loop !29

.lr.ph730.prol.loopexit:                          ; preds = %.lr.ph730.prol, %.lr.ph730.preheader
  %indvars.iv790.unr = phi i64 [ %indvars.iv790.ph, %.lr.ph730.preheader ], [ %indvars.iv.next791.prol, %.lr.ph730.prol ]
  %i.aak = icmp ult i64 %i.aac, 7
  br i1 %i.aak, label %._crit_edge731, label %.lr.ph730

.lr.ph730:                                        ; preds = %.lr.ph730.prol.loopexit, %.lr.ph730
  %indvars.iv790 = phi i64 [ %indvars.iv.next791.7, %.lr.ph730 ], [ %indvars.iv790.unr, %.lr.ph730.prol.loopexit ] ; 11 uses
  %i.aal = trunc nuw nsw i64 %indvars.iv790 to i32
  %i.aam = shl i32 %i.aal, 2
  %i.aan = sext i32 %i.aam to i64
  %i.aao = getelementptr [8 x i8], ptr %i.u, i64 %i.aan
  %i.aap = getelementptr i8, ptr %i.aao, i64 -24
  %i.aaq = load double, ptr %i.aap, align 8, !tbaa !35
  %i.aar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv790
  store double %i.aaq, ptr %i.aar, align 8, !tbaa !35
  %i.aas = trunc i64 %indvars.iv790 to i32
  %i.aat = shl i32 %i.aas, 2
  %i.aau = add i32 %i.aat, 4
  %i.aav = sext i32 %i.aau to i64
  %i.aaw = getelementptr [8 x i8], ptr %i.u, i64 %i.aav
  %i.aax = getelementptr i8, ptr %i.aaw, i64 -24
  %i.aay = load double, ptr %i.aax, align 8, !tbaa !35
  %i.aaz = getelementptr [8 x i8], ptr %1, i64 %indvars.iv790
  store double %i.aay, ptr %i.aaz, align 8, !tbaa !35
  %indvars.iv.next791.1 = add nuw nsw i64 %indvars.iv790, 2 ; 2 uses
  %i.aba = trunc nuw nsw i64 %indvars.iv.next791.1 to i32
  %i.abb = shl i32 %i.aba, 2
  %i.abc = sext i32 %i.abb to i64
  %i.abd = getelementptr [8 x i8], ptr %i.u, i64 %i.abc
  %i.abe = getelementptr i8, ptr %i.abd, i64 -24
  %i.abf = load double, ptr %i.abe, align 8, !tbaa !35
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next791.1
  store double %i.abf, ptr %i.abg, align 8, !tbaa !35
  %indvars.iv.next791.2 = add nuw nsw i64 %indvars.iv790, 3 ; 2 uses
  %i.abh = trunc nuw nsw i64 %indvars.iv.next791.2 to i32
  %i.abi = shl i32 %i.abh, 2
  %i.abj = sext i32 %i.abi to i64
  %i.abk = getelementptr [8 x i8], ptr %i.u, i64 %i.abj
  %i.abl = getelementptr i8, ptr %i.abk, i64 -24
  %i.abm = load double, ptr %i.abl, align 8, !tbaa !35
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next791.2
  store double %i.abm, ptr %i.abn, align 8, !tbaa !35
  %indvars.iv.next791.3 = add nuw nsw i64 %indvars.iv790, 4 ; 2 uses
  %i.abo = trunc nuw nsw i64 %indvars.iv.next791.3 to i32
  %i.abp = shl i32 %i.abo, 2
  %i.abq = sext i32 %i.abp to i64
  %i.abr = getelementptr [8 x i8], ptr %i.u, i64 %i.abq
  %i.abs = getelementptr i8, ptr %i.abr, i64 -24
  %i.abt = load double, ptr %i.abs, align 8, !tbaa !35
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next791.3
  store double %i.abt, ptr %i.abu, align 8, !tbaa !35
  %indvars.iv.next791.4 = add nuw nsw i64 %indvars.iv790, 5 ; 2 uses
  %i.abv = trunc nuw nsw i64 %indvars.iv.next791.4 to i32
  %i.abw = shl i32 %i.abv, 2
  %i.abx = sext i32 %i.abw to i64
  %i.aby = getelementptr [8 x i8], ptr %i.u, i64 %i.abx
  %i.abz = getelementptr i8, ptr %i.aby, i64 -24
  %i.aca = load double, ptr %i.abz, align 8, !tbaa !35
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next791.4
  store double %i.aca, ptr %i.acb, align 8, !tbaa !35
  %indvars.iv.next791.5 = add nuw nsw i64 %indvars.iv790, 6 ; 2 uses
  %i.acc = trunc nuw nsw i64 %indvars.iv.next791.5 to i32
  %i.acd = shl i32 %i.acc, 2
  %i.ace = sext i32 %i.acd to i64
  %i.acf = getelementptr [8 x i8], ptr %i.u, i64 %i.ace
  %i.acg = getelementptr i8, ptr %i.acf, i64 -24
  %i.ach = load double, ptr %i.acg, align 8, !tbaa !35
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next791.5
  store double %i.ach, ptr %i.aci, align 8, !tbaa !35
  %indvars.iv.next791.6 = add nuw nsw i64 %indvars.iv790, 7 ; 2 uses
  %i.acj = trunc nuw nsw i64 %indvars.iv.next791.6 to i32
  %i.ack = shl i32 %i.acj, 2
  %i.acl = sext i32 %i.ack to i64
  %i.acm = getelementptr [8 x i8], ptr %i.u, i64 %i.acl
  %i.acn = getelementptr i8, ptr %i.acm, i64 -24
  %i.aco = load double, ptr %i.acn, align 8, !tbaa !35
  %i.acp = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next791.6
  store double %i.aco, ptr %i.acp, align 8, !tbaa !35
  %indvars.iv.next791.7 = add nuw nsw i64 %indvars.iv790, 8 ; 2 uses
  %exitcond794.not.7 = icmp eq i64 %indvars.iv.next791.7, %wide.trip.count793
  br i1 %exitcond794.not.7, label %._crit_edge731, label %.lr.ph730, !llvm.loop !30

._crit_edge731:                                   ; preds = %.lr.ph730.prol.loopexit, %.lr.ph730, %bb.cb
  call void @dlasrt_(ptr noundef nonnull @.str.3, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.l) #7
  %i.acq = load i32, ptr %0, align 4, !tbaa !33   ; 6 uses
  %i.acr = icmp sgt i32 %i.acq, 0
  br i1 %i.acr, label %.lr.ph735.preheader, label %._crit_edge736

.lr.ph735.preheader:                              ; preds = %._crit_edge731
  %i.acs = zext nneg i32 %i.acq to i64            ; 3 uses
  %xtraiter995 = and i64 %i.acs, 7                ; 2 uses
  %lcmp.mod996.not = icmp eq i64 %xtraiter995, 0
  br i1 %lcmp.mod996.not, label %.lr.ph735.prol.loopexit, label %.lr.ph735.prol

.lr.ph735.prol:                                   ; preds = %.lr.ph735.preheader, %.lr.ph735.prol
  %indvars.iv795.prol = phi i64 [ %indvars.iv.next796.prol, %.lr.ph735.prol ], [ %i.acs, %.lr.ph735.preheader ] ; 2 uses
  %.1553732.prol = phi double [ %i.acv, %.lr.ph735.prol ], [ 0.000000e+00, %.lr.ph735.preheader ]
  %prol.iter997 = phi i64 [ %prol.iter997.next, %.lr.ph735.prol ], [ 0, %.lr.ph735.preheader ]
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv795.prol
  %i.acu = load double, ptr %i.act, align 8, !tbaa !35
  %i.acv = fadd double %.1553732.prol, %i.acu     ; 3 uses
  %indvars.iv.next796.prol = add nsw i64 %indvars.iv795.prol, -1 ; 2 uses
  %prol.iter997.next = add i64 %prol.iter997, 1   ; 2 uses
  %prol.iter997.cmp.not = icmp eq i64 %prol.iter997.next, %xtraiter995
  br i1 %prol.iter997.cmp.not, label %.lr.ph735.prol.loopexit, label %.lr.ph735.prol, !llvm.loop !31

.lr.ph735.prol.loopexit:                          ; preds = %.lr.ph735.prol, %.lr.ph735.preheader
  %indvars.iv795.unr = phi i64 [ %i.acs, %.lr.ph735.preheader ], [ %indvars.iv.next796.prol, %.lr.ph735.prol ]
  %.1553732.unr = phi double [ 0.000000e+00, %.lr.ph735.preheader ], [ %i.acv, %.lr.ph735.prol ]
  %.lcssa.unr = phi double [ poison, %.lr.ph735.preheader ], [ %i.acv, %.lr.ph735.prol ]
  %i.acw = icmp ult i32 %i.acq, 8
  br i1 %i.acw, label %._crit_edge736, label %.lr.ph735

.lr.ph735:                                        ; preds = %.lr.ph735.prol.loopexit, %.lr.ph735
  %indvars.iv795 = phi i64 [ %indvars.iv.next796.7, %.lr.ph735 ], [ %indvars.iv795.unr, %.lr.ph735.prol.loopexit ] ; 10 uses
  %.1553732 = phi double [ %i.aeb, %.lr.ph735 ], [ %.1553732.unr, %.lr.ph735.prol.loopexit ]
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv795
  %i.acy = load double, ptr %i.acx, align 8, !tbaa !35
  %i.acz = fadd double %.1553732, %i.acy
  %i.ada = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv795
  %i.adb = getelementptr i8, ptr %i.ada, i64 -8
  %i.adc = load double, ptr %i.adb, align 8, !tbaa !35
  %i.add = fadd double %i.acz, %i.adc
  %i.ade = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv795
  %i.adf = getelementptr i8, ptr %i.ade, i64 -16
  %i.adg = load double, ptr %i.adf, align 8, !tbaa !35
  %i.adh = fadd double %i.add, %i.adg
  %i.adi = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv795
  %i.adj = getelementptr i8, ptr %i.adi, i64 -24
  %i.adk = load double, ptr %i.adj, align 8, !tbaa !35
  %i.adl = fadd double %i.adh, %i.adk
  %i.adm = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv795
  %i.adn = getelementptr i8, ptr %i.adm, i64 -32
  %i.ado = load double, ptr %i.adn, align 8, !tbaa !35
  %i.adp = fadd double %i.adl, %i.ado
  %i.adq = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv795
  %i.adr = getelementptr i8, ptr %i.adq, i64 -40
  %i.ads = load double, ptr %i.adr, align 8, !tbaa !35
  %i.adt = fadd double %i.adp, %i.ads
  %i.adu = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv795
  %i.adv = getelementptr i8, ptr %i.adu, i64 -48
  %i.adw = load double, ptr %i.adv, align 8, !tbaa !35
  %i.adx = fadd double %i.adt, %i.adw
  %i.ady = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv795
  %i.adz = getelementptr i8, ptr %i.ady, i64 -56
  %i.aea = load double, ptr %i.adz, align 8, !tbaa !35
  %i.aeb = fadd double %i.adx, %i.aea             ; 2 uses
  %indvars.iv.next796.7 = add nsw i64 %indvars.iv795, -8
  %i.aec = icmp sgt i64 %indvars.iv795, 8
  br i1 %i.aec, label %.lr.ph735, label %._crit_edge736, !llvm.loop !32

._crit_edge736:                                   ; preds = %.lr.ph735.prol.loopexit, %.lr.ph735, %._crit_edge731
  %.1553.lcssa = phi double [ 0.000000e+00, %._crit_edge731 ], [ %.lcssa.unr, %.lr.ph735.prol.loopexit ], [ %i.aeb, %.lr.ph735 ]
  %i.aed = shl i32 %i.acq, 1
  %i.aee = sext i32 %i.aed to i64
  %i.aef = getelementptr [8 x i8], ptr %i.u, i64 %i.aee ; 4 uses
  %i.aeg = getelementptr i8, ptr %i.aef, i64 8
  store double %i.hg, ptr %i.aeg, align 8, !tbaa !35
  %i.aeh = getelementptr i8, ptr %i.aef, i64 16
  store double %.1553.lcssa, ptr %i.aeh, align 8, !tbaa !35
  %i.aei = load i32, ptr %i.d, align 4, !tbaa !33
  %i.aej = getelementptr i8, ptr %i.aef, i64 24
  %i.aek = load i32, ptr %i.c, align 4, !tbaa !33
  %i.ael = mul nsw i32 %i.acq, %i.acq
  %i.aem = getelementptr i8, ptr %i.aef, i64 32
  %i.aen = load i32, ptr %i.i, align 4, !tbaa !33
  %i.aeo = sitofp i32 %i.aei to double            ; 2 uses
  store double %i.aeo, ptr %i.aej, align 8, !tbaa !35
  %3 = uitofp nneg i32 %i.ael to double
  %i.aep = insertelement <2 x i32> poison, i32 %i.aek, i64 0
  %i.aeq = insertelement <2 x i32> %i.aep, i32 %i.aen, i64 1
  %i.aer = sitofp <2 x i32> %i.aeq to <2 x double>
  %i.aes = fmul nnan <2 x double> %i.aer, <double 1.000000e+00, double 1.000000e+02>
  %i.aet = insertelement <2 x double> poison, double %3, i64 0
  %i.aeu = insertelement <2 x double> %i.aet, double %i.aeo, i64 1
  %i.aev = fdiv <2 x double> %i.aes, %i.aeu
  store <2 x double> %i.aev, ptr %i.aem, align 8, !tbaa !35
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.bz
  %lcmp.mod991.not = icmp eq i64 %xtraiter990, 0
  br i1 %lcmp.mod991.not, label %.loopexit, label %.lr.ph726.epil.preheader

.lr.ph726.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph726.preheader
  %indvars.iv785.epil.init = phi i64 [ 1, %.lr.ph726.preheader ], [ %indvars.iv.next786.1, %.loopexit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod992 = trunc i32 %i.xl to i1
  call void @llvm.assume(i1 %lcmp.mod992)
  %i.aew = trunc nuw nsw i64 %indvars.iv785.epil.init to i32
  %i.aex = shl i32 %i.aew, 2
  %i.aey = sext i32 %i.aex to i64
  %i.aez = getelementptr [8 x i8], ptr %i.u, i64 %i.aey ; 2 uses
  %i.afa = getelementptr i8, ptr %i.aez, i64 -24
  %i.afb = load double, ptr %i.afa, align 8, !tbaa !35
  %sext.epil = shl i64 %indvars.iv785.epil.init, 33
  %i.afc = ashr exact i64 %sext.epil, 29
  %i.afd = getelementptr i8, ptr %i.u, i64 %i.afc
  %i.afe = getelementptr i8, ptr %i.afd, i64 -8
  store double %i.afb, ptr %i.afe, align 8, !tbaa !35
  %i.aff = icmp slt i64 %indvars.iv785.epil.init, %i.xm
  br i1 %i.aff, label %bb.cc, label %.loopexit.loopexit.epilog-lcssa

bb.cc:                                            ; preds = %.lr.ph726.epil.preheader
  %i.afg = getelementptr i8, ptr %i.aez, i64 -8
  %i.afh = load double, ptr %i.afg, align 8, !tbaa !35
  br label %.loopexit.loopexit.epilog-lcssa

.loopexit.loopexit.epilog-lcssa:                  ; preds = %bb.cc, %.lr.ph726.epil.preheader
  %.sink.epil = phi double [ %i.afh, %bb.cc ], [ 0.000000e+00, %.lr.ph726.epil.preheader ]
  %.idx857.epil = shl nuw nsw i64 %indvars.iv785.epil.init, 4
  %i.afi = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx857.epil
  store double %.sink.epil, ptr %i.afi, align 8, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.epilog-lcssa, %.loopexit.loopexit.unr-lcssa, %bb.bw, %bb.c, %bb.d, %bb.e, %._crit_edge736, %._crit_edge714, %bb.bd, %bb.aa, %._crit_edge741, %bb.x, %bb.v, %bb.t, %bb.s, %bb.k, %bb.i, %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare void @dlasrt_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @dlasq3_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !36}
!9 = distinct !{!9, !36, !37, !38}
!10 = distinct !{!10, !36, !37, !38}
!11 = distinct !{!11, !40}
!12 = distinct !{!12, !36, !37}
!13 = distinct !{!13, !36}
!14 = distinct !{!14, !36}
!15 = distinct !{!15, !36}
!16 = distinct !{!16, !36}
!17 = distinct !{!17, !36}
!18 = distinct !{!18, !36}
!19 = distinct !{!19, !36}
!20 = distinct !{!20, !36}
!21 = distinct !{!21, !36}
!22 = distinct !{!22, !36}
!23 = distinct !{!23, !36}
!24 = distinct !{!24, !36}
!25 = distinct !{!25, !36}
!26 = distinct !{!26, !36}
!27 = distinct !{!27, !36, !37, !38}
!28 = distinct !{!28, !36, !37, !38}
!29 = distinct !{!29, !40}
!30 = distinct !{!30, !36, !37}
!31 = distinct !{!31, !40}
!32 = distinct !{!32, !36}
!33 = !{!5, !5, i64 0}
!34 = !{!"double", !4, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{!"branch_weights", i32 4, i32 12}
!40 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
