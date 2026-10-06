Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMesh?download=true
inline.NumInlined: 287
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z15rcBuildPolyMeshP9rcContextRK12rcContourSetiR10rcPolyMesh:bb.a
  br label %vec.epilog.vector.body1444

vec.epilog.vector.body1444:                       ; preds = %vec.epilog.vector.body1444, %vec.epilog.ph1442
  %index1445 = phi i64 [ %vec.epilog.resume.val1437, %vec.epilog.ph1442 ], [ %index.next1447, %vec.epilog.vector.body1444 ] ; 3 uses
  %i.ayb = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index1445
  %wide.load1446 = load <4 x i16>, ptr %i.ayb, align 2, !tbaa !77
  %i.ayc = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %index1445
  store <4 x i16> %wide.load1446, ptr %i.ayc, align 2, !tbaa !77
  %index.next1447 = add nuw i64 %index1445, 4     ; 2 uses
  %i.ayd = icmp eq i64 %index.next1447, %n.vec1443
  br i1 %i.ayd, label %vec.epilog.middle.block1448, label %vec.epilog.vector.body1444, !llvm.loop !101

vec.epilog.middle.block1448:                      ; preds = %vec.epilog.vector.body1444
  br i1 %cmp.n1449, label %.critedge418.i, label %vec.epilog.scalar.ph1439.preheader

vec.epilog.scalar.ph1439.preheader:               ; preds = %iter.check1438, %vector.memcheck1423, %vec.epilog.iter.check1440, %vec.epilog.middle.block1448
  %indvars.iv764.i.ph = phi i64 [ 0, %iter.check1438 ], [ 0, %vector.memcheck1423 ], [ %n.vec1429, %vec.epilog.iter.check1440 ], [ %n.vec1443, %vec.epilog.middle.block1448 ] ; 3 uses
  br i1 %lcmp.mod1800.not, label %vec.epilog.scalar.ph1439.prol.loopexit, label %vec.epilog.scalar.ph1439.prol

vec.epilog.scalar.ph1439.prol:                    ; preds = %vec.epilog.scalar.ph1439.preheader, %vec.epilog.scalar.ph1439.prol
  %indvars.iv764.i.prol = phi i64 [ %indvars.iv.next765.i.prol, %vec.epilog.scalar.ph1439.prol ], [ %indvars.iv764.i.ph, %vec.epilog.scalar.ph1439.preheader ] ; 3 uses
  %prol.iter1801 = phi i64 [ %prol.iter1801.next, %vec.epilog.scalar.ph1439.prol ], [ 0, %vec.epilog.scalar.ph1439.preheader ]
  %gep.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv764.i.prol
  %i.aye = load i16, ptr %gep.i.prol, align 2, !tbaa !77
  %i.ayf = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %indvars.iv764.i.prol
  store i16 %i.aye, ptr %i.ayf, align 2, !tbaa !77
  %indvars.iv.next765.i.prol = add nuw nsw i64 %indvars.iv764.i.prol, 1 ; 2 uses
  %prol.iter1801.next = add i64 %prol.iter1801, 1 ; 2 uses
  %prol.iter1801.cmp.not = icmp eq i64 %prol.iter1801.next, %xtraiter1799
  br i1 %prol.iter1801.cmp.not, label %vec.epilog.scalar.ph1439.prol.loopexit, label %vec.epilog.scalar.ph1439.prol, !llvm.loop !102

vec.epilog.scalar.ph1439.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1439.prol, %vec.epilog.scalar.ph1439.preheader
  %indvars.iv764.i.unr = phi i64 [ %indvars.iv764.i.ph, %vec.epilog.scalar.ph1439.preheader ], [ %indvars.iv.next765.i.prol, %vec.epilog.scalar.ph1439.prol ]
  %i.ayg = sub nsw i64 %indvars.iv764.i.ph, %wide.trip.count767.i
  %i.ayh = icmp ugt i64 %i.ayg, -4
  br i1 %i.ayh, label %.critedge418.i, label %vec.epilog.scalar.ph1439

.critedge418.i:                                   ; preds = %vec.epilog.scalar.ph1439.prol.loopexit, %vec.epilog.scalar.ph1439, %middle.block1435, %vec.epilog.middle.block1448, %bb.dx
  %i.ayi = getelementptr inbounds nuw [2 x i8], ptr %i.ams, i64 %indvars.iv769.i
  %i.ayj = load i16, ptr %i.ayi, align 2, !tbaa !77
  %i.ayk = load ptr, ptr %i.bz, align 8, !tbaa !70
  %i.ayl = load i32, ptr %i.cd, align 4, !tbaa !73
  %i.aym = sext i32 %i.ayl to i64                 ; 2 uses
  %i.ayn = getelementptr inbounds [2 x i8], ptr %i.ayk, i64 %i.aym
  store i16 %i.ayj, ptr %i.ayn, align 2, !tbaa !77
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.amt, i64 %indvars.iv769.i
  %i.ayp = load i8, ptr %i.ayo, align 1, !tbaa !78
  %i.ayq = load ptr, ptr %i.cb, align 8, !tbaa !71
  %i.ayr = getelementptr inbounds i8, ptr %i.ayq, i64 %i.aym
  store i8 %i.ayp, ptr %i.ayr, align 1, !tbaa !78
  %i.ays = load i32, ptr %i.cd, align 4, !tbaa !73 ; 2 uses
  %i.ayt = add nsw i32 %i.ays, 1                  ; 3 uses
  store i32 %i.ayt, ptr %i.cd, align 4, !tbaa !73
  %.not407.i = icmp slt i32 %i.ays, %.0350.lcssa1116
  br i1 %.not407.i, label %bb.dv, label %bb.dy

vec.epilog.scalar.ph1439:                         ; preds = %vec.epilog.scalar.ph1439.prol.loopexit, %vec.epilog.scalar.ph1439
  %indvars.iv764.i = phi i64 [ %indvars.iv.next765.i.3, %vec.epilog.scalar.ph1439 ], [ %indvars.iv764.i.unr, %vec.epilog.scalar.ph1439.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv764.i
  %i.ayu = load i16, ptr %gep.i, align 2, !tbaa !77
  %i.ayv = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %indvars.iv764.i
  store i16 %i.ayu, ptr %i.ayv, align 2, !tbaa !77
  %indvars.iv.next765.i = add nuw nsw i64 %indvars.iv764.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next765.i
  %i.ayw = load i16, ptr %gep.i.1, align 2, !tbaa !77
  %i.ayx = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %indvars.iv.next765.i
  store i16 %i.ayw, ptr %i.ayx, align 2, !tbaa !77
  %indvars.iv.next765.i.1 = add nuw nsw i64 %indvars.iv764.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next765.i.1
  %i.ayy = load i16, ptr %gep.i.2, align 2, !tbaa !77
  %i.ayz = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %indvars.iv.next765.i.1
  store i16 %i.ayy, ptr %i.ayz, align 2, !tbaa !77
  %indvars.iv.next765.i.2 = add nuw nsw i64 %indvars.iv764.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next765.i.2
  %i.aza = load i16, ptr %gep.i.3, align 2, !tbaa !77
  %i.azb = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %indvars.iv.next765.i.2
  store i16 %i.aza, ptr %i.azb, align 2, !tbaa !77
  %indvars.iv.next765.i.3 = add nuw nsw i64 %indvars.iv764.i, 4 ; 2 uses
  %exitcond768.not.i.3 = icmp eq i64 %indvars.iv.next765.i.3, %wide.trip.count767.i
  br i1 %exitcond768.not.i.3, label %.critedge418.i, label %vec.epilog.scalar.ph1439, !llvm.loop !103

bb.dy:                                            ; preds = %.critedge418.i
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.46, i32 noundef %i.ayt, i32 noundef range(i32 0, -2147483648) %.0350.lcssa1116) #8
  br label %.critedge592

.loopexit.i447:                                   ; preds = %bb.dw, %bb.dv, %.thread.i446, %._crit_edge657.i, %bb.cw
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.amt) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.ams) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.amn) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.alo) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.all) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.ali) #8
  br label %.preheader

.critedge592:                                     ; preds = %bb.dy, %bb.cv
  tail call void @_Z6rcFreePv(ptr noundef %i.amt) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.ams) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.amn) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.alo) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.all) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.ali) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yj) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yh) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yf) #8
  br label %bb.dz

bb.dz:                                            ; preds = %.critedge592, %.critedge591, %.critedge590, %.critedge589, %.critedge588, %.critedge587, %.critedge585, %.critedge584, %.critedge583, %_ZL12removeVertexP9rcContextR10rcPolyMeshti.exit.thread
  %.sink = phi ptr [ %i.xd, %.critedge592 ], [ %i.xd, %.critedge591 ], [ %i.xd, %.critedge590 ], [ %i.xd, %.critedge589 ], [ %i.xd, %.critedge588 ], [ %i.xd, %.critedge587 ], [ %i.xd, %.critedge585 ], [ %i.xd, %.critedge584 ], [ %i.xd, %.critedge583 ], [ null, %_ZL12removeVertexP9rcContextR10rcPolyMeshti.exit.thread ]
  tail call void @_Z6rcFreePv(ptr noundef %.sink) #8
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef %.0314813) #8
  br label %bb.ev

.preheader:                                       ; preds = %._crit_edge635.i, %.loopexit.i447
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yj) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yh) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yf) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.xd) #8
  %i.azc = load i32, ptr %i.cc, align 8, !tbaa !72
  %i.azd = icmp slt i32 %.0314813, %i.azc
  br i1 %i.azd, label %.lr.ph810, label %._crit_edge811

._crit_edge811:                                   ; preds = %.lr.ph810, %.preheader
  %i.aze = add nsw i32 %.0314813, -1
  br label %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread

.lr.ph810:                                        ; preds = %.preheader, %.lr.ph810
  %indvars.iv1008 = phi i64 [ %indvars.iv.next1009, %.lr.ph810 ], [ %i.rb, %.preheader ] ; 2 uses
  %indvars.iv.next1009 = add nsw i64 %indvars.iv1008, 1 ; 3 uses
  %i.azf = getelementptr inbounds i8, ptr %i.bm, i64 %indvars.iv.next1009
  %i.azg = load i8, ptr %i.azf, align 1, !tbaa !78
  %i.azh = getelementptr inbounds i8, ptr %i.bm, i64 %indvars.iv1008
  store i8 %i.azg, ptr %i.azh, align 1, !tbaa !78
  %i.azi = load i32, ptr %i.cc, align 8, !tbaa !72
  %i.azj = sext i32 %i.azi to i64
  %i.azk = icmp slt i64 %indvars.iv.next1009, %i.azj
  br i1 %i.azk, label %.lr.ph810, label %._crit_edge811

_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread: ; preds = %.lr.ph125.i, %bb.bg, %._crit_edge126.i, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread580, %.lr.ph814, %._crit_edge811, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit
  %.1 = phi i32 [ %i.aze, %._crit_edge811 ], [ %.0314813, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit ], [ %.0314813, %.lr.ph814 ], [ %.0314813, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread580 ], [ %.0314813, %._crit_edge126.i ], [ %.0314813, %bb.bg ], [ %.0314813, %.lr.ph125.i ]
  %i.azl = add nsw i32 %.1, 1                     ; 2 uses
  %i.azm = load i32, ptr %i.cc, align 8, !tbaa !72 ; 2 uses
  %.not399 = icmp slt i32 %i.azl, %i.azm
  br i1 %.not399, label %.lr.ph814, label %.critedge407

.critedge407:                                     ; preds = %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread, %.critedge405.preheader
  %i.azn = phi i32 [ %i.dj, %.critedge405.preheader ], [ %i.azm, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread ]
  %i.azo = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.azp = load i32, ptr %i.cd, align 4, !tbaa !73
  %i.azq = tail call fastcc noundef zeroext i1 @_ZL18buildMeshAdjacencyPtiii(ptr noundef %i.azo, i32 noundef %i.azp, i32 noundef %i.azn, i32 noundef %2)
  br i1 %i.azq, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %.critedge407
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.14) #8
  br label %bb.ev

bb.eb:                                            ; preds = %.critedge407
  %i.azr = load i32, ptr %i.ad, align 8, !tbaa !65
  %i.azs = icmp sgt i32 %i.azr, 0
  %.pre1026 = load i32, ptr %i.cd, align 4, !tbaa !73 ; 3 uses
  br i1 %i.azs, label %bb.ec, label %.loopexit

bb.ec:                                            ; preds = %bb.eb
  %i.azt = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.azu = load i32, ptr %i.azt, align 4, !tbaa !118 ; 2 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.azw = load i32, ptr %i.azv, align 8, !tbaa !119 ; 2 uses
  %i.azx = icmp sgt i32 %.pre1026, 0
  br i1 %i.azx, label %.lr.ph822, label %.loopexit

.lr.ph822:                                        ; preds = %bb.ec
  %i.azy = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.azz = shl i32 %2, 1
  %i.baa = icmp sgt i32 %2, 0
  br i1 %i.baa, label %.lr.ph817.preheader, label %.loopexit

.lr.ph817.preheader:                              ; preds = %.lr.ph822
  %i.bab = zext nneg i32 %2 to i64                ; 2 uses
  %wide.trip.count1022 = zext nneg i32 %.pre1026 to i64
  br label %.lr.ph817

.lr.ph817:                                        ; preds = %.lr.ph817.preheader, %._crit_edge818
  %indvars.iv1018 = phi i64 [ 0, %.lr.ph817.preheader ], [ %indvars.iv.next1019, %._crit_edge818 ] ; 2 uses
  %i.bac = trunc nuw nsw i64 %indvars.iv1018 to i32
  %i.bad = mul i32 %i.azz, %i.bac
  %i.bae = sext i32 %i.bad to i64
  %i.baf = getelementptr inbounds [2 x i8], ptr %i.azy, i64 %i.bae ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.baf, i64 %i.bab
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph817, %._crit_edge1027
  %indvars.iv1012 = phi i64 [ 0, %.lr.ph817 ], [ %i.bak, %._crit_edge1027 ] ; 3 uses
  %i.bag = getelementptr inbounds nuw [2 x i8], ptr %i.baf, i64 %indvars.iv1012
  %i.bah = load i16, ptr %i.bag, align 2, !tbaa !77 ; 2 uses
  %i.bai = icmp eq i16 %i.bah, -1
  br i1 %i.bai, label %._crit_edge818, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv1012 ; 2 uses
  %i.baj = load i16, ptr %gep, align 2, !tbaa !77
  %.not401 = icmp eq i16 %i.baj, -1
  %i.bak = add nuw nsw i64 %indvars.iv1012, 1     ; 5 uses
  br i1 %.not401, label %bb.ef, label %._crit_edge1027

bb.ef:                                            ; preds = %bb.ee
  %.not402 = icmp slt i64 %i.bak, %i.br
  br i1 %.not402, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.bal = getelementptr inbounds nuw [2 x i8], ptr %i.baf, i64 %i.bak
  %i.bam = load i16, ptr %i.bal, align 2, !tbaa !77
  %i.ban = icmp eq i16 %i.bam, -1
  br i1 %i.ban, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.0 = phi i64 [ 0, %bb.eh ], [ %i.bak, %bb.eg ]
  %i.bao = load ptr, ptr %3, align 8, !tbaa !68   ; 2 uses
  %i.bap = zext i16 %i.bah to i64
  %.idx = mul nuw nsw i64 %i.bap, 6
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bao, i64 %.idx ; 2 uses
  %4 = getelementptr inbounds [2 x i8], ptr %i.baf, i64 %.0
  %5 = load i16, ptr %4, align 2, !tbaa !77
  %i.bar = zext i16 %5 to i64
  %.idx403 = mul nuw nsw i64 %i.bar, 6
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bao, i64 %.idx403 ; 4 uses
  %i.bat = load i16, ptr %i.baq, align 2, !tbaa !77 ; 2 uses
  %i.bau = icmp eq i16 %i.bat, 0
  br i1 %i.bau, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.bav = load i16, ptr %i.bas, align 2, !tbaa !77
  %i.baw = icmp eq i16 %i.bav, 0
  br i1 %i.baw, label %._crit_edge1027.sink.split, label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baq, i64 4
  %i.bay = load i16, ptr %i.bax, align 2, !tbaa !77 ; 2 uses
  %i.baz = zext i16 %i.bay to i32
  %i.bba = icmp eq i32 %i.azw, %i.baz
  br i1 %i.bba, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bas, i64 4
  %i.bbc = load i16, ptr %i.bbb, align 2, !tbaa !77
  %i.bbd = zext i16 %i.bbc to i32
  %i.bbe = icmp eq i32 %i.azw, %i.bbd
  br i1 %i.bbe, label %._crit_edge1027.sink.split, label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.bbf = zext i16 %i.bat to i32
  %i.bbg = icmp eq i32 %i.azu, %i.bbf
  br i1 %i.bbg, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.bbh = load i16, ptr %i.bas, align 2, !tbaa !77
  %i.bbi = zext i16 %i.bbh to i32
  %i.bbj = icmp eq i32 %i.azu, %i.bbi
  br i1 %i.bbj, label %._crit_edge1027.sink.split, label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.bbk = icmp eq i16 %i.bay, 0
  br i1 %i.bbk, label %bb.ep, label %._crit_edge1027

bb.ep:                                            ; preds = %bb.eo
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bas, i64 4
  %i.bbm = load i16, ptr %i.bbl, align 2, !tbaa !77
  %i.bbn = icmp eq i16 %i.bbm, 0
  br i1 %i.bbn, label %._crit_edge1027.sink.split, label %._crit_edge1027

._crit_edge1027.sink.split:                       ; preds = %bb.ep, %bb.en, %bb.el, %bb.ej
  %.sink1264 = phi i16 [ -32768, %bb.ej ], [ -32767, %bb.el ], [ -32766, %bb.en ], [ -32765, %bb.ep ]
  store i16 %.sink1264, ptr %gep, align 2, !tbaa !77
  br label %._crit_edge1027

._crit_edge1027:                                  ; preds = %._crit_edge1027.sink.split, %bb.ee, %bb.ep, %bb.eo
  %exitcond1017.not = icmp eq i64 %i.bak, %i.bab
  br i1 %exitcond1017.not, label %._crit_edge818, label %bb.ed

._crit_edge818:                                   ; preds = %._crit_edge1027, %bb.ed
  %indvars.iv.next1019 = add nuw nsw i64 %indvars.iv1018, 1 ; 2 uses
  %exitcond1023.not = icmp eq i64 %indvars.iv.next1019, %wide.trip.count1022
  br i1 %exitcond1023.not, label %.loopexit, label %.lr.ph817

.loopexit:                                        ; preds = %._crit_edge818, %bb.ec, %.lr.ph822, %bb.eb
  %i.bbo = sext i32 %.pre1026 to i64
  %i.bbp = shl nsw i64 %i.bbo, 1
  %i.bbq = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bbp, i32 noundef 0) #8 ; 3 uses
  %i.bbr = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.bbq, ptr %i.bbr, align 8, !tbaa !82
  %.not400 = icmp eq ptr %i.bbq, null
  %i.bbs = load i32, ptr %i.cd, align 4, !tbaa !73 ; 2 uses
  br i1 %.not400, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.loopexit
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.15, i32 noundef %i.bbs) #8
  br label %bb.ev

bb.er:                                            ; preds = %.loopexit
  %i.bbt = sext i32 %i.bbs to i64
  %i.bbu = shl nsw i64 %i.bbt, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bbq, i8 0, i64 %i.bbu, i1 false)
  %i.bbv = load i32, ptr %i.cc, align 8, !tbaa !72 ; 2 uses
  %i.bbw = icmp sgt i32 %i.bbv, 65535
  br i1 %i.bbw, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.16, i32 noundef %i.bbv, i32 noundef 65535) #8
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.bbx = load i32, ptr %i.cd, align 4, !tbaa !73 ; 2 uses
  %i.bby = icmp sgt i32 %i.bbx, 65535
  br i1 %i.bby, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.17, i32 noundef %i.bbx, i32 noundef 65535) #8
  br label %bb.ev

bb.ev:                                            ; preds = %bb.dz, %bb.bf, %bb.ea, %bb.eq, %bb.eu, %bb.et, %bb.aa
  %.9 = phi i1 [ false, %bb.aa ], [ false, %bb.bf ], [ false, %bb.eq ], [ false, %bb.ea ], [ false, %bb.dz ], [ true, %bb.eu ], [ true, %bb.et ]
  tail call void @_Z6rcFreePv(ptr noundef %i.cw) #8
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.y
  %.10 = phi i1 [ %.9, %bb.ev ], [ false, %bb.y ]
  tail call void @_Z6rcFreePv(ptr noundef %i.cr) #8
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.w
  %.11 = phi i1 [ %.10, %bb.ew ], [ false, %bb.w ]
  tail call void @_Z6rcFreePv(ptr noundef %i.cp) #8
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.v
  %.12 = phi i1 [ %.11, %bb.ex ], [ false, %bb.v ]
  tail call void @_Z6rcFreePv(ptr noundef %i.cm) #8
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.t
  %.13 = phi i1 [ %.12, %bb.ey ], [ false, %bb.t ]
  tail call void @_Z6rcFreePv(ptr noundef %i.cl) #8
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j
  %.14 = phi i1 [ %.13, %bb.ez ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ]
  tail call void @_Z6rcFreePv(ptr noundef %i.bm) #8
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.i
  %.15 = phi i1 [ false, %bb.i ], [ %.14, %bb.fa ]
  %i.bbz = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.bca = trunc nuw i8 %i.bbz to i1
  br i1 %i.bca, label %bb.fc, label %_ZN13rcScopedTimerD2Ev.exit

bb.fc:                                            ; preds = %bb.fb
  %i.bcb = load ptr, ptr %0, align 8, !tbaa !21
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bcb, i64 48
  %i.bcd = load ptr, ptr %i.bcc, align 8
  tail call void %i.bcd(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 11) #8, !call_target !83, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %bb.fb, %bb.fc
  ret i1 %.15
}

declare void @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 -2147483647, -2147483648) i32 @_ZL11triangulateiPKiPiS1_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge186

.preheader168:                                    ; preds = %bb.c
  %i.b = icmp sgt i32 %0, 3
  br i1 %i.b, label %.preheader167.preheader, label %._crit_edge186

.preheader167.preheader:                          ; preds = %.preheader168
  %scevgep198 = getelementptr i8, ptr %2, i64 4
  %i.c = add nsw i32 %0, -2
  %i.d = zext nneg i32 %0 to i64
  %i.e = add nsw i32 %0, -4
  br label %.preheader167

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0145171 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.f = add nuw nsw i32 %.0145171, 1             ; 4 uses
  %i.g = icmp slt i32 %i.f, %0
  %i.h = select i1 %i.g, i32 %i.f, i32 0          ; 2 uses
  %i.i = add nuw nsw i32 %i.h, 1                  ; 2 uses
  %i.j = icmp slt i32 %i.i, %0
  %i.k = select i1 %i.j, i32 %i.i, i32 0
  %i.l = tail call fastcc noundef zeroext i1 @_ZL8diagonaliiiPKiPi(i32 noundef %.0145171, i32 noundef %i.k, i32 noundef %0, ptr noundef %1, ptr noundef %2)
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.m = zext nneg i32 %i.h to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !76
  %i.p = or i32 %i.o, -2147483648
  store i32 %i.p, ptr %i.n, align 4, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %exitcond.not = icmp eq i32 %i.f, %0
  br i1 %exitcond.not, label %.preheader168, label %.lr.ph

.preheader167:                                    ; preds = %.preheader167.preheader, %bb.q
  %indvars.iv203 = phi i64 [ %i.d, %.preheader167.preheader ], [ %indvars.iv.next204, %bb.q ] ; 13 uses
  %.0146185 = phi ptr [ %3, %.preheader167.preheader ], [ %i.ij, %bb.q ] ; 4 uses
  %.0148184 = phi i32 [ 0, %.preheader167.preheader ], [ %i.ik, %bb.q ] ; 4 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.g
  %i.q = icmp eq i32 %.2, -1
  br i1 %i.q, label %.lr.ph178, label %bb.p

bb.e:                                             ; preds = %.preheader167, %bb.g
end_hunk_0
