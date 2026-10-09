Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/iffinput?download=true
inline.NumInlined: 3636
inline.NumDeleted: 1091
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN11OpenImageIO4v3_18IffInput7readimgEv:bb.a
  %i.acr = icmp ult ptr %.2.i679, %i.aby
  %i.acs = icmp ult ptr %.239.i678, %i.abx
  %i.act = select i1 %i.acr, i1 %i.acs, i1 false
  br i1 %i.act, label %.lr.ph.i672, label %.loopexit872

.loopexit872:                                     ; preds = %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i677, %bb.ed, %bb.ec, %bb.dy, %bb.dx, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit669
  %.3.i671 = phi ptr [ %.sroa.0750.01391, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit669 ], [ %.239.i678, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i677 ], [ %i.acc, %bb.dx ], [ %i.acc, %bb.ed ], [ %i.acc, %bb.ec ], [ %i.acc, %bb.dy ]
  %i.acu = ptrtoint ptr %.3.i671 to i64
  %i.acv = ptrtoint ptr %.sroa.0750.01391 to i64
  %i.acw = sub i64 %i.acu, %i.acv                 ; 3 uses
  %i.acx = icmp ugt i64 %i.acw, %.sroa.8751.01390
  br i1 %i.acx, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %.loopexit872
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.49)
          to label %.critedge510 unwind label %bb.eh

bb.eg:                                            ; preds = %bb.dv
  %i.acy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit697

bb.eh:                                            ; preds = %bb.ef
  %i.acz = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.ei:                                            ; preds = %.loopexit872
  %i.ada = sub nuw i64 %.sroa.8751.01390, %i.acw
  %i.adb = getelementptr inbounds nuw i8, ptr %.sroa.0750.01391, i64 %i.acw
  %i.adc = load i16, ptr %i.u, align 2, !tbaa !63 ; 2 uses
  %i.add = load i16, ptr %i.v, align 2, !tbaa !63 ; 2 uses
  %.not418954 = icmp ugt i16 %i.adc, %i.add
  br i1 %.not418954, label %.loopexit871, label %.lr.ph960

.lr.ph960:                                        ; preds = %bb.ei
  %i.ade = zext i16 %i.adc to i32
  %.pre1126 = load i16, ptr %i.t, align 2, !tbaa !63
  br label %bb.ej

bb.ej:                                            ; preds = %.lr.ph960, %._crit_edge952
  %i.adf = phi i16 [ %i.add, %.lr.ph960 ], [ %i.aex, %._crit_edge952 ]
  %i.adg = phi i16 [ %.pre1126, %.lr.ph960 ], [ %i.aey, %._crit_edge952 ] ; 2 uses
  %.0257957 = phi i32 [ %i.ade, %.lr.ph960 ], [ %i.aez, %._crit_edge952 ] ; 3 uses
  %.sroa.0738.0956 = phi ptr [ %.sroa.0744.0, %.lr.ph960 ], [ %.sroa.0738.1.lcssa, %._crit_edge952 ] ; 2 uses
  %.sroa.9740.0955 = phi i64 [ %i.abw, %.lr.ph960 ], [ %.sroa.9740.1.lcssa, %._crit_edge952 ] ; 3 uses
  %i.adh = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.adi = load i32, ptr %i.as, align 4, !tbaa !110
  %i.adj = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.adk = lshr i8 %i.adj, 3
  %i.adl = zext nneg i8 %i.adk to i64
  %i.adm = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.adn = zext i8 %i.adm to i64
  %i.ado = mul nuw nsw i64 %i.adl, %i.adn
  %i.adp = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i.i686 = icmp eq i8 %i.adp, 0
  %i.adq = load i8, ptr %i.an, align 1
  %i.adr = lshr i8 %i.adq, 3
  %narrow.i.i687 = select i1 %.not.i.i686, i8 0, i8 %i.adr
  %i.ads = zext nneg i8 %narrow.i.i687 to i64
  %i.adt = add nuw nsw i64 %i.ado, %i.ads
  %i.adu = mul i32 %i.adi, %.0257957
  %i.adv = zext i32 %i.adu to i64
  %i.adw = mul nuw nsw i64 %i.adt, %i.adv
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adh, i64 %i.adw
  %i.ady = load i16, ptr %i.s, align 2, !tbaa !63 ; 2 uses
  %.not419946 = icmp ugt i16 %i.ady, %i.adg
  br i1 %.not419946, label %._crit_edge952, label %.lr.ph951.preheader

.lr.ph951.preheader:                              ; preds = %bb.ej
  %i.adz = icmp eq i64 %.sroa.9740.0955, 0
  br i1 %i.adz, label %.lr.ph951.preheader._crit_edge, label %.lr.ph1388

.lr.ph951:                                        ; preds = %.lr.ph1388
  %i.aea = icmp eq i64 %i.aet, 0
  br i1 %i.aea, label %.lr.ph951.preheader._crit_edge, label %.lr.ph1388, !llvm.loop !360

.lr.ph951.preheader._crit_edge:                   ; preds = %.lr.ph951.preheader, %.lr.ph951
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.50)
          to label %.loopexit871 unwind label %bb.ek

bb.ek:                                            ; preds = %.lr.ph951.preheader._crit_edge
  %i.aeb = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.lr.ph1388:                                       ; preds = %.lr.ph951.preheader, %.lr.ph951
  %.sroa.9740.19471387 = phi i64 [ %i.aet, %.lr.ph951 ], [ %.sroa.9740.0955, %.lr.ph951.preheader ]
  %.sroa.0738.19481386 = phi ptr [ %i.aeu, %.lr.ph951 ], [ %.sroa.0738.0956, %.lr.ph951.preheader ] ; 2 uses
  %.02569491385 = phi i16 [ %i.aev, %.lr.ph951 ], [ %i.ady, %.lr.ph951.preheader ] ; 2 uses
  %i.aec = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.aed = lshr i8 %i.aec, 3
  %i.aee = zext nneg i8 %i.aed to i64
  %i.aef = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.aeg = zext i8 %i.aef to i64
  %i.aeh = mul nuw nsw i64 %i.aee, %i.aeg         ; 2 uses
  %i.aei = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i.i688 = icmp eq i8 %i.aei, 0
  %i.aej = load i8, ptr %i.an, align 1
  %i.aek = lshr i8 %i.aej, 3
  %narrow.i.i689 = select i1 %.not.i.i688, i8 0, i8 %i.aek
  %i.ael = zext nneg i8 %narrow.i.i689 to i64
  %i.aem = add nuw nsw i64 %i.aeh, %i.ael
  %i.aen = zext i16 %.02569491385 to i64
  %i.aeo = mul nuw nsw i64 %i.aem, %i.aen
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adx, i64 %i.aeo
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 %i.aeh
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %indvars.iv.next11071392
  %i.aes = load i8, ptr %.sroa.0738.19481386, align 1, !tbaa !55
  store i8 %i.aes, ptr %i.aer, align 1, !tbaa !55
  %i.aet = add i64 %.sroa.9740.19471387, -1       ; 3 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %.sroa.0738.19481386, i64 1 ; 2 uses
  %i.aev = add i16 %.02569491385, 1               ; 2 uses
  %i.aew = load i16, ptr %i.t, align 2, !tbaa !63 ; 2 uses
  %.not419 = icmp ugt i16 %i.aev, %i.aew
  br i1 %.not419, label %._crit_edge952.loopexit, label %.lr.ph951, !llvm.loop !360

._crit_edge952.loopexit:                          ; preds = %.lr.ph1388
  %.pre1127 = load i16, ptr %i.v, align 2, !tbaa !63
  br label %._crit_edge952

._crit_edge952:                                   ; preds = %._crit_edge952.loopexit, %bb.ej
  %i.aex = phi i16 [ %i.adf, %bb.ej ], [ %.pre1127, %._crit_edge952.loopexit ] ; 2 uses
  %i.aey = phi i16 [ %i.adg, %bb.ej ], [ %i.aew, %._crit_edge952.loopexit ]
  %.sroa.9740.1.lcssa = phi i64 [ %.sroa.9740.0955, %bb.ej ], [ %i.aet, %._crit_edge952.loopexit ]
  %.sroa.0738.1.lcssa = phi ptr [ %.sroa.0738.0956, %bb.ej ], [ %i.aeu, %._crit_edge952.loopexit ]
  %i.aez = add nuw nsw i32 %.0257957, 1
  %i.afa = zext i16 %i.aex to i32
  %.not418.not = icmp samesign ult i32 %.0257957, %i.afa
  br i1 %.not418.not, label %bb.ej, label %.loopexit871, !llvm.loop !361

.loopexit871:                                     ; preds = %._crit_edge952, %bb.ei, %.lr.ph951.preheader._crit_edge
  %.not418876 = phi i1 [ false, %.lr.ph951.preheader._crit_edge ], [ true, %bb.ei ], [ true, %._crit_edge952 ]
  %.not.i.i.i694 = icmp eq ptr %.sroa.0744.0, null
  br i1 %.not.i.i.i694, label %_ZNSt6vectorIhSaIhEED2Ev.exit695, label %bb.el

bb.el:                                            ; preds = %.loopexit871
  %i.afb = ptrtoint ptr %.sroa.13.0 to i64
  %i.afc = sub i64 %i.afb, %i.abv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0744.0, i64 noundef %i.afc) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit695

_ZNSt6vectorIhSaIhEED2Ev.exit695:                 ; preds = %.loopexit871, %bb.el
  br i1 %.not418876, label %bb.dt, label %_ZNSt6vectorIhSaIhEED2Ev.exit699

bb.em:                                            ; preds = %bb.ek, %bb.eh
  %.pn423 = phi { ptr, i32 } [ %i.acz, %bb.eh ], [ %i.aeb, %bb.ek ] ; 2 uses
  %.not.i.i.i696 = icmp eq ptr %.sroa.0744.0, null
  br i1 %.not.i.i.i696, label %_ZNSt6vectorIhSaIhEED2Ev.exit697, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.afd = ptrtoint ptr %.sroa.13.0 to i64
  %i.afe = sub i64 %i.afd, %i.abv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0744.0, i64 noundef %i.afe) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit697

.critedge510:                                     ; preds = %bb.ef
  %.not.i.i.i698 = icmp eq ptr %.sroa.0744.0, null
  br i1 %.not.i.i.i698, label %_ZNSt6vectorIhSaIhEED2Ev.exit699, label %bb.eo

bb.eo:                                            ; preds = %.critedge510
  %i.aff = ptrtoint ptr %.sroa.13.0 to i64
  %i.afg = sub i64 %i.aff, %i.abv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0744.0, i64 noundef %i.afg) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit699

bb.ep:                                            ; preds = %bb.dr
  %i.afh = zext nneg i8 %narrow.i664 to i64
  %i.afi = mul nuw nsw i64 %i.afh, %i.aan
  %i.afj = icmp ult i64 %i.abi, %i.afi
  br i1 %i.afj, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.51)
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit699 unwind label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.afk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit697

bb.es:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #30
  %i.afl = load i16, ptr %i.u, align 2, !tbaa !63 ; 3 uses
  store i16 %i.afl, ptr %i.w, align 2, !tbaa !63
  %i.afm = load i16, ptr %i.v, align 2, !tbaa !63 ; 2 uses
  %.not409941 = icmp ugt i16 %i.afl, %i.afm
  br i1 %.not409941, label %._crit_edge945, label %.lr.ph944.preheader

.lr.ph944.preheader:                              ; preds = %bb.es
  %.pre = load i16, ptr %i.t, align 2, !tbaa !63  ; 2 uses
  %scevgep1448 = getelementptr i8, ptr %i.abe, i64 1
  br label %.lr.ph944

.lr.ph944:                                        ; preds = %.lr.ph944.preheader, %.thread853
  %i.afn = phi i16 [ %i.agl, %.thread853 ], [ %i.afm, %.lr.ph944.preheader ]
  %i.afo = phi i16 [ %i.agn, %.thread853 ], [ %.pre, %.lr.ph944.preheader ] ; 2 uses
  %i.afp = phi i16 [ %i.ago, %.thread853 ], [ %.pre, %.lr.ph944.preheader ] ; 2 uses
  %i.afq = phi i16 [ %i.agp, %.thread853 ], [ %i.afl, %.lr.ph944.preheader ] ; 2 uses
  %.0255942 = phi i32 [ %i.agq, %.thread853 ], [ 0, %.lr.ph944.preheader ] ; 2 uses
  %i.afr = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 3 uses
  %i.afs = load i32, ptr %i.as, align 4, !tbaa !110
  %i.aft = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.afu = lshr i8 %i.aft, 3
  %i.afv = zext nneg i8 %i.afu to i64
  %i.afw = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.afx = zext i8 %i.afw to i64
  %i.afy = mul nuw nsw i64 %i.afv, %i.afx
  %i.afz = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i.i702 = icmp eq i8 %i.afz, 0
  %i.aga = load i8, ptr %i.an, align 1
  %i.agb = lshr i8 %i.aga, 3
  %narrow.i.i703 = select i1 %.not.i.i702, i8 0, i8 %i.agb
  %i.agc = zext nneg i8 %narrow.i.i703 to i64
  %i.agd = add nuw nsw i64 %i.afy, %i.agc
  %i.age = zext i16 %i.afq to i32
  %i.agf = mul i32 %i.afs, %i.age
  %i.agg = zext i32 %i.agf to i64
  %i.agh = mul nuw nsw i64 %i.agd, %i.agg         ; 3 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.afr, i64 %i.agh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #30
  %i.agj = load i16, ptr %i.s, align 2, !tbaa !63 ; 3 uses
  store i16 %i.agj, ptr %i.x, align 2, !tbaa !63
  %.not410937 = icmp ugt i16 %i.agj, %i.afp
  br i1 %.not410937, label %.thread853, label %.lr.ph940

.lr.ph940:                                        ; preds = %.lr.ph944
  %i.agk = mul i32 %.0255942, %i.zy
  %scevgep1443 = getelementptr i8, ptr %i.afr, i64 %i.agh
  %scevgep1445.a = getelementptr i8, ptr %i.afr, i64 1
  %scevgep1446 = getelementptr i8, ptr %scevgep1445.a, i64 %i.agh
  br label %bb.et

.thread853.loopexit:                              ; preds = %._crit_edge
  %.pre1124 = load i16, ptr %i.w, align 2, !tbaa !63
  %.pre1125 = load i16, ptr %i.v, align 2, !tbaa !63
  br label %.thread853

.thread853:                                       ; preds = %.thread853.loopexit, %.lr.ph944
  %i.agl = phi i16 [ %.pre1125, %.thread853.loopexit ], [ %i.afn, %.lr.ph944 ] ; 2 uses
  %i.agm = phi i16 [ %.pre1124, %.thread853.loopexit ], [ %i.afq, %.lr.ph944 ]
  %i.agn = phi i16 [ %i.ajn, %.thread853.loopexit ], [ %i.afo, %.lr.ph944 ]
  %i.ago = phi i16 [ %i.ajn, %.thread853.loopexit ], [ %i.afp, %.lr.ph944 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #30
  %i.agp = add i16 %i.agm, 1                      ; 3 uses
  store i16 %i.agp, ptr %i.w, align 2, !tbaa !63
  %i.agq = add nuw nsw i32 %.0255942, 1
  %.not409 = icmp ugt i16 %i.agp, %i.agl
  br i1 %.not409, label %._crit_edge945, label %.lr.ph944, !llvm.loop !362

bb.et:                                            ; preds = %.lr.ph940, %._crit_edge
  %i.agr = phi i16 [ %i.afo, %.lr.ph940 ], [ %i.ajn, %._crit_edge ]
  %indvars.iv1104 = phi i64 [ 0, %.lr.ph940 ], [ %indvars.iv.next1105, %._crit_edge ] ; 2 uses
  %i.ags = phi i16 [ %i.agj, %.lr.ph940 ], [ %i.ajp, %._crit_edge ] ; 2 uses
  %i.agt = trunc nuw nsw i64 %indvars.iv1104 to i32
  %i.agu = add i32 %i.agk, %i.agt
  %i.agv = zext i32 %i.agu to i64
  %i.agw = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i704 = icmp eq i8 %i.agw, 0
  %i.agx = load i8, ptr %i.an, align 1
  %i.agy = lshr i8 %i.agx, 3
  %narrow.i705 = select i1 %.not.i704, i8 0, i8 %i.agy ; 3 uses
  %i.agz = zext nneg i8 %narrow.i705 to i64       ; 3 uses
  %i.aha = mul nuw nsw i64 %i.agz, %i.agv         ; 3 uses
  %i.ahb = add nuw nsw i64 %i.aha, %i.agz
  %.not415 = icmp ugt i64 %i.ahb, %i.abi
  br i1 %.not415, label %bb.eu, label %bb.ew

bb.eu:                                            ; preds = %bb.et
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJttEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.52, ptr noundef nonnull align 2 dereferenceable(2) %i.x, ptr noundef nonnull align 2 dereferenceable(2) %i.w)
          to label %.thread855 unwind label %bb.ev

.thread855:                                       ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit699

bb.ev:                                            ; preds = %bb.eu
  %i.ahc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit697

bb.ew:                                            ; preds = %bb.et
  %i.ahd = getelementptr i8, ptr %i.abe, i64 %i.aha ; 13 uses
  %.not1044 = icmp eq i8 %narrow.i705, 0
  br i1 %.not1044, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ew
  %i.ahe = zext nneg i8 %narrow.i705 to i64
  %.0252934 = add nuw nsw i64 %i.ahe, 4294967295
  %i.ahf = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.ahg = lshr i8 %i.ahf, 3
  %i.ahh = zext nneg i8 %i.ahg to i64
  %i.ahi = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.ahj = zext i8 %i.ahi to i64
  %i.ahk = mul nuw nsw i64 %i.ahh, %i.ahj         ; 3 uses
  %i.ahl = add nuw nsw i64 %i.ahk, %i.agz
  %i.ahm = zext i16 %i.ags to i64
  %i.ahn = mul nuw nsw i64 %i.ahl, %i.ahm         ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.agi, i64 %i.ahn
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 %i.ahk ; 6 uses
  %i.ahq = and i64 %.0252934, 4294967295          ; 10 uses
  %i.ahr = add nuw nsw i64 %i.ahq, 1              ; 2 uses
  %min.iters.check1454 = icmp samesign ult i64 %i.ahq, 7
  br i1 %min.iters.check1454, label %.lr.ph.preheader1468, label %vector.memcheck1442

vector.memcheck1442:                              ; preds = %.lr.ph.preheader
  %7 = add nuw nsw i64 %i.ahk, %i.ahn             ; 2 uses
  %scevgep1444 = getelementptr i8, ptr %scevgep1443, i64 %7
  %i.ahs = getelementptr i8, ptr %scevgep1446, i64 %7
  %scevgep1447.a = getelementptr i8, ptr %i.ahs, i64 %i.ahq
  %i.aht = getelementptr i8, ptr %scevgep1448, i64 %i.aha
  %scevgep1449 = getelementptr i8, ptr %i.aht, i64 %i.ahq
  %bound01450 = icmp ult ptr %scevgep1444, %scevgep1449
  %bound11451 = icmp ult ptr %i.ahd, %scevgep1447.a
  %found.conflict1452 = and i1 %bound01450, %bound11451
  br i1 %found.conflict1452, label %.lr.ph.preheader1468, label %vector.ph1455

vector.ph1455:                                    ; preds = %vector.memcheck1442
  %n.vec1456 = and i64 %i.ahr, 8589934584         ; 5 uses
  %i.ahu = sub nsw i64 %i.ahq, %n.vec1456
  %i.ahv = getelementptr i8, ptr %i.ahp, i64 %n.vec1456
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahd, i64 %i.ahq
  %i.ahx = getelementptr inbounds i8, ptr %i.ahw, i64 -7
  %wide.load1460 = load <8 x i8>, ptr %i.ahx, align 1, !tbaa !55, !alias.scope !374
  %reverse1461 = shufflevector <8 x i8> %wide.load1460, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse1461, ptr %i.ahp, align 1, !tbaa !55, !alias.scope !375, !noalias !374
  %i.ahy = icmp eq i64 %n.vec1456, 8
  br i1 %i.ahy, label %middle.block1463, label %vector.body1457.1

vector.body1457.1:                                ; preds = %vector.ph1455
  %next.gep1459.1 = getelementptr i8, ptr %i.ahp, i64 8
  %i.ahz = getelementptr i8, ptr %i.ahd, i64 %i.ahq
  %i.aia = getelementptr i8, ptr %i.ahz, i64 -15
  %wide.load1460.1 = load <8 x i8>, ptr %i.aia, align 1, !tbaa !55, !alias.scope !374
  %reverse1461.1 = shufflevector <8 x i8> %wide.load1460.1, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse1461.1, ptr %next.gep1459.1, align 1, !tbaa !55, !alias.scope !375, !noalias !374
  %i.aib = icmp eq i64 %n.vec1456, 16
  br i1 %i.aib, label %middle.block1463, label %vector.body1457.2

vector.body1457.2:                                ; preds = %vector.body1457.1
  %next.gep1459.2 = getelementptr i8, ptr %i.ahp, i64 16
  %i.aic = getelementptr i8, ptr %i.ahd, i64 %i.ahq
  %i.aid = getelementptr i8, ptr %i.aic, i64 -23
  %wide.load1460.2 = load <8 x i8>, ptr %i.aid, align 1, !tbaa !55, !alias.scope !374
  %reverse1461.2 = shufflevector <8 x i8> %wide.load1460.2, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse1461.2, ptr %next.gep1459.2, align 1, !tbaa !55, !alias.scope !375, !noalias !374
  br label %middle.block1463

middle.block1463:                                 ; preds = %vector.body1457.2, %vector.body1457.1, %vector.ph1455
  %cmp.n1464 = icmp eq i64 %i.ahr, %n.vec1456
  br i1 %cmp.n1464, label %._crit_edge.loopexit, label %.lr.ph.preheader1468

.lr.ph.preheader1468:                             ; preds = %vector.memcheck1442, %.lr.ph.preheader, %middle.block1463
  %indvars.iv.ph = phi i64 [ %i.ahq, %vector.memcheck1442 ], [ %i.ahq, %.lr.ph.preheader ], [ %i.ahu, %middle.block1463 ] ; 4 uses
  %.0253935.ph = phi ptr [ %i.ahp, %vector.memcheck1442 ], [ %i.ahp, %.lr.ph.preheader ], [ %i.ahv, %middle.block1463 ] ; 2 uses
  %i.aie = add nsw i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.aie, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader1468, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader1468 ] ; 2 uses
  %.0253935.prol = phi ptr [ %i.aih, %.lr.ph.prol ], [ %.0253935.ph, %.lr.ph.preheader1468 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader1468 ]
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ahd, i64 %indvars.iv.prol
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !55
  %i.aih = getelementptr inbounds nuw i8, ptr %.0253935.prol, i64 1 ; 2 uses
  store i8 %i.aig, ptr %.0253935.prol, align 1, !tbaa !55
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !366

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader1468
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader1468 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0253935.unr = phi ptr [ %.0253935.ph, %.lr.ph.preheader1468 ], [ %i.aih, %.lr.ph.prol ]
  %i.aii = icmp ult i64 %indvars.iv.ph, 7
  br i1 %i.aii, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0253935 = phi ptr [ %i.ajm, %.lr.ph ], [ %.0253935.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.ahd, i64 %indvars.iv
  %i.aik = load i8, ptr %i.aij, align 1, !tbaa !55
  %i.ail = getelementptr inbounds nuw i8, ptr %.0253935, i64 1
  store i8 %i.aik, ptr %.0253935, align 1, !tbaa !55
  %i.aim = getelementptr i8, ptr %i.ahd, i64 %indvars.iv
  %i.ain = getelementptr i8, ptr %i.aim, i64 -1
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !55
  %i.aip = getelementptr inbounds nuw i8, ptr %.0253935, i64 2
  store i8 %i.aio, ptr %i.ail, align 1, !tbaa !55
  %i.aiq = getelementptr i8, ptr %i.ahd, i64 %indvars.iv
  %i.air = getelementptr i8, ptr %i.aiq, i64 -2
  %i.ais = load i8, ptr %i.air, align 1, !tbaa !55
  %i.ait = getelementptr inbounds nuw i8, ptr %.0253935, i64 3
  store i8 %i.ais, ptr %i.aip, align 1, !tbaa !55
  %i.aiu = getelementptr i8, ptr %i.ahd, i64 %indvars.iv
  %i.aiv = getelementptr i8, ptr %i.aiu, i64 -3
  %i.aiw = load i8, ptr %i.aiv, align 1, !tbaa !55
  %i.aix = getelementptr inbounds nuw i8, ptr %.0253935, i64 4
  store i8 %i.aiw, ptr %i.ait, align 1, !tbaa !55
  %i.aiy = getelementptr i8, ptr %i.ahd, i64 %indvars.iv
  %i.aiz = getelementptr i8, ptr %i.aiy, i64 -4
  %i.aja = load i8, ptr %i.aiz, align 1, !tbaa !55
  %i.ajb = getelementptr inbounds nuw i8, ptr %.0253935, i64 5
  store i8 %i.aja, ptr %i.aix, align 1, !tbaa !55
  %i.ajc = getelementptr i8, ptr %i.ahd, i64 %indvars.iv
  %i.ajd = getelementptr i8, ptr %i.ajc, i64 -5
  %i.aje = load i8, ptr %i.ajd, align 1, !tbaa !55
  %i.ajf = getelementptr inbounds nuw i8, ptr %.0253935, i64 6
  store i8 %i.aje, ptr %i.ajb, align 1, !tbaa !55
  %i.ajg = getelementptr i8, ptr %i.ahd, i64 %indvars.iv
  %i.ajh = getelementptr i8, ptr %i.ajg, i64 -6
  %i.aji = load i8, ptr %i.ajh, align 1, !tbaa !55
  %i.ajj = getelementptr inbounds nuw i8, ptr %.0253935, i64 7
  store i8 %i.aji, ptr %i.ajf, align 1, !tbaa !55
  %indvars.iv.next.6 = add nsw i64 %indvars.iv, -7 ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ahd, i64 %indvars.iv.next.6
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !55
  %i.ajm = getelementptr inbounds nuw i8, ptr %.0253935, i64 8
  store i8 %i.ajl, ptr %i.ajj, align 1, !tbaa !55
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, -8
  %.not1305.7 = icmp eq i64 %indvars.iv.next.6, 0
  br i1 %.not1305.7, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !367

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block1463
  %.pre1122 = load i16, ptr %i.x, align 2, !tbaa !63
  %.pre1123 = load i16, ptr %i.t, align 2, !tbaa !63
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ew
  %i.ajn = phi i16 [ %.pre1123, %._crit_edge.loopexit ], [ %i.agr, %bb.ew ] ; 4 uses
  %i.ajo = phi i16 [ %.pre1122, %._crit_edge.loopexit ], [ %i.ags, %bb.ew ]
  %i.ajp = add i16 %i.ajo, 1                      ; 3 uses
  store i16 %i.ajp, ptr %i.x, align 2, !tbaa !63
  %indvars.iv.next1105 = add nuw nsw i64 %indvars.iv1104, 1
  %.not410 = icmp ugt i16 %i.ajp, %i.ajn
  br i1 %.not410, label %.thread853.loopexit, label %bb.et, !llvm.loop !368

._crit_edge945:                                   ; preds = %.thread853, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #30
  br label %.critedge512

.critedge512:                                     ; preds = %bb.dt, %bb.ds, %._crit_edge945
  %i.ajq = add i16 %.0264.ph, 1
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit699

_ZNSt6vectorIhSaIhEED2Ev.exit699:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit695, %bb.eq, %.thread855, %.critedge510, %bb.eo, %bb.dp, %.critedge512
  %.33309 = phi i1 [ true, %.critedge512 ], [ false, %bb.eq ], [ false, %.thread855 ], [ false, %bb.dp ], [ false, %bb.eo ], [ false, %.critedge510 ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit695 ]
  %.1265 = phi i16 [ %i.ajq, %.critedge512 ], [ %.0264.ph, %bb.eq ], [ %.0264.ph, %.thread855 ], [ %.0264.ph, %bb.dp ], [ %.0264.ph, %bb.eo ], [ %.0264.ph, %.critedge510 ], [ %.0264.ph, %_ZNSt6vectorIhSaIhEED2Ev.exit695 ]
  %i.ajr = load ptr, ptr %6, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i718 = icmp eq ptr %i.ajr, null
  br i1 %.not.i.i.i718, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit699
  %i.ajs = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.ajt = ptrtoint ptr %i.ajs to i64
  %i.aju = ptrtoint ptr %i.ajr to i64
  %i.ajv = sub i64 %i.ajt, %i.aju
  call void @_ZdlPvm(ptr noundef nonnull %i.ajr, i64 noundef %i.ajv) #31
  br label %bb.ey

.thread861:                                       ; preds = %.lr.ph.i.i657.preheader, %bb.dl, %bb.dm, %bb.dk, %.lr.ph.i.i639.preheader, %.lr.ph.i.i645.preheader, %.lr.ph.i.i651.preheader
  %.str.40.sink = phi ptr [ @.str.40, %bb.dk ], [ @.str.40, %.lr.ph.i.i651.preheader ], [ @.str.40, %.lr.ph.i.i645.preheader ], [ @.str.40, %.lr.ph.i.i639.preheader ], [ @.str.41, %bb.dm ], [ @.str.41, %bb.dl ], [ @.str.41, %.lr.ph.i.i657.preheader ]
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %.str.40.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit731

bb.ey:                                            ; preds = %bb.ex, %_ZNSt6vectorIhSaIhEED2Ev.exit699
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #30
  br i1 %.33309, label %.outer, label %_ZNSt6vectorIhSaIhEED2Ev.exit731, !llvm.loop !359

_ZNSt6vectorIhSaIhEED2Ev.exit697:                 ; preds = %bb.er, %bb.ev, %bb.eg, %bb.em, %bb.en, %bb.dq
  %.pn423.pn.pn = phi { ptr, i32 } [ %i.abd, %bb.dq ], [ %.pn423, %bb.en ], [ %i.acy, %bb.eg ], [ %.pn423, %bb.em ], [ %i.afk, %bb.er ], [ %i.ahc, %bb.ev ]
  %i.ajw = load ptr, ptr %6, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i720 = icmp eq ptr %i.ajw, null
  br i1 %.not.i.i.i720, label %_ZNSt6vectorIhSaIhEED2Ev.exit721, label %bb.ez

bb.ez:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit697
  %i.ajx = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.ajy = ptrtoint ptr %i.ajx to i64
  %i.ajz = ptrtoint ptr %i.ajw to i64
  %i.aka = sub i64 %i.ajy, %i.ajz
  call void @_ZdlPvm(ptr noundef nonnull %i.ajw, i64 noundef %i.aka) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit721

_ZNSt6vectorIhSaIhEED2Ev.exit721:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit697, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #30
  br label %bb.fd

bb.fa:                                            ; preds = %bb.dj
  %i.akb = zext i32 %.0.i to i64
  %i.akc = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.akb, i32 noundef 1)
  br i1 %i.akc, label %bb.e, label %_ZNSt6vectorIhSaIhEED2Ev.exit731, !llvm.loop !359

.critedge40:                                      ; preds = %bb.g
  %i.akd = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.ake = lshr i8 %i.akd, 3
  %i.akf = zext nneg i8 %i.ake to i32
  %i.akg = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.akh = zext i8 %i.akg to i32
  %i.aki = mul nuw nsw i32 %i.akf, %i.akh
end_hunk_0
