inline.NumInlined: 812
inline.NumDeleted: 371
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Z12gmx_make_ndxiPPc:bb.a
  %storemerge33.i.i329.i = phi ptr [ %storemerge.i.i332.i, %.lr.ph34.i.i328.i ], [ %storemerge29.i.i315.i, %.preheader.i.i314.i ] ; 2 uses
  %storemerge2432.i.i330.i = phi i32 [ %storemerge24.i.i331.i, %.lr.ph34.i.i328.i ], [ %isdigittmp.i.i311.i, %.preheader.i.i314.i ]
  %i.yx = mul nsw i32 %storemerge2432.i.i330.i, 10
  %i.yy = add nsw i32 %i.yw, -48
  %storemerge24.i.i331.i = add i32 %i.yy, %i.yx   ; 2 uses
  %storemerge.i.i332.i = getelementptr inbounds nuw i8, ptr %storemerge33.i.i329.i, i64 1 ; 3 uses
  store ptr %storemerge.i.i332.i, ptr %i.e, align 8, !tbaa !23
  %i.yz = load i8, ptr %storemerge.i.i332.i, align 1, !tbaa !33 ; 2 uses
  %i.za = sext i8 %i.yz to i32                    ; 3 uses
  %isdigittmp21.i.i333.i = add nsw i32 %i.za, -48
  %isdigit22.i.i334.i = icmp ult i32 %isdigittmp21.i.i333.i, 10
  br i1 %isdigit22.i.i334.i, label %.lr.ph34.i.i328.i, label %._crit_edge35.i.i318.i, !llvm.loop !76

._crit_edge35.i.i318.i:                           ; preds = %.lr.ph34.i.i328.i, %.preheader.i.i314.i
  %.8.i = phi i32 [ %isdigittmp.i.i311.i, %.preheader.i.i314.i ], [ %storemerge24.i.i331.i, %.lr.ph34.i.i328.i ] ; 3 uses
  %i.zb = phi ptr [ %i.ys, %.preheader.i.i314.i ], [ %storemerge33.i.i329.i, %.lr.ph34.i.i328.i ]
  %.lcssa25.i.i319.i = phi i8 [ %i.yu, %.preheader.i.i314.i ], [ %i.yz, %.lr.ph34.i.i328.i ] ; 2 uses
  %.lcssa.i.i320.i = phi i32 [ %i.yv, %.preheader.i.i314.i ], [ %i.za, %.lr.ph34.i.i328.i ]
  %i.zc = call i32 @isalpha(i32 noundef %.lcssa.i.i320.i) #29
  %.not.i.i321.i = icmp eq i32 %i.zc, 0
  br i1 %.not.i.i321.i, label %.thread.i326.i, label %bb.ed

bb.ed:                                            ; preds = %._crit_edge35.i.i318.i
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zb, i64 2 ; 2 uses
  store ptr %i.zd, ptr %i.e, align 8, !tbaa !23
  %.pre.i.i322.i = load i8, ptr %i.zd, align 1, !tbaa !33
  %i.ze = sext i8 %.pre.i.i322.i to i32
  %i.zf = call i32 @isalnum(i32 noundef %i.ze) #29
  %.not23.i.i323.i = icmp eq i32 %i.zf, 0
  br i1 %.not23.i.i323.i, label %_ZL14parse_int_charPPcPiPh.exit.i324.i, label %bb.ee

.thread.i326.i:                                   ; preds = %._crit_edge35.i.i318.i
  %i.zg = sext i8 %.lcssa25.i.i319.i to i32
  %i.zh = call i32 @isalnum(i32 noundef %i.zg) #29
  %.not23.i17.i327.i = icmp eq i32 %i.zh, 0
  br i1 %.not23.i17.i327.i, label %_ZL9parse_intPPcPi.exit336.i, label %bb.ee

bb.ee:                                            ; preds = %.thread.i326.i, %bb.ed
  store ptr %i.yk, ptr %i.e, align 8, !tbaa !23
  br label %_ZL9parse_intPPcPi.exit.thread.i

_ZL14parse_int_charPPcPiPh.exit.i324.i:           ; preds = %bb.ed
  %.not.i325.i = icmp eq i8 %.lcssa25.i.i319.i, 32
  br i1 %.not.i325.i, label %_ZL9parse_intPPcPi.exit336.i, label %bb.ef

bb.ef:                                            ; preds = %_ZL14parse_int_charPPcPiPh.exit.i324.i
  store ptr %i.yk, ptr %i.e, align 8, !tbaa !23
  br label %_ZL9parse_intPPcPi.exit.thread.i

_ZL9parse_intPPcPi.exit336.i:                     ; preds = %_ZL14parse_int_charPPcPiPh.exit.i324.i, %.thread.i326.i
  %i.zi = icmp sgt i32 %.8.i, -1
  br i1 %i.zi, label %bb.eg, label %_ZL9parse_intPPcPi.exit.thread.i

bb.eg:                                            ; preds = %_ZL9parse_intPPcPi.exit336.i
  %i.zj = zext nneg i32 %.8.i to i64
  %i.zk = load ptr, ptr %i.go, align 8, !tbaa !54
  %i.zl = load ptr, ptr %15, align 16, !tbaa !52
  %i.zm = ptrtoint ptr %i.zk to i64
  %i.zn = ptrtoint ptr %i.zl to i64
  %i.zo = sub i64 %i.zm, %i.zn
  %i.zp = sdiv exact i64 %i.zo, 56
  %i.zq = icmp sgt i64 %i.zp, %i.zj
  br i1 %i.zq, label %.invoke, label %_ZL9parse_intPPcPi.exit.thread.i

bb.eh:                                            ; preds = %bb.eb
  %i.zr = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %storemerge.i, ptr noundef nonnull dereferenceable(8) @.str.108, i64 noundef 7) #29
  %i.zs = icmp eq i32 %i.zr, 0
  br i1 %i.zs, label %bb.ei, label %bb.en

bb.ei:                                            ; preds = %bb.eh
  %i.zt = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 7 ; 6 uses
  store ptr %i.zt, ptr %i.e, align 8, !tbaa !23
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !33  ; 2 uses
  %i.zv = icmp eq i8 %i.zu, 32
  br i1 %i.zv, label %.lr.ph.i.i362.i, label %._crit_edge.i.i337.i

.lr.ph.i.i362.i:                                  ; preds = %bb.ei, %.lr.ph.i.i362.i
  %i.zw = phi ptr [ %i.zx, %.lr.ph.i.i362.i ], [ %i.zt, %bb.ei ]
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 1 ; 4 uses
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !33  ; 2 uses
  %i.zz = icmp eq i8 %i.zy, 32
  br i1 %i.zz, label %.lr.ph.i.i362.i, label %._crit_edge.i.i337.loopexit.i, !llvm.loop !75

._crit_edge.i.i337.loopexit.i:                    ; preds = %.lr.ph.i.i362.i
  store ptr %i.zx, ptr %i.e, align 8, !tbaa !23
  br label %._crit_edge.i.i337.i

._crit_edge.i.i337.i:                             ; preds = %._crit_edge.i.i337.loopexit.i, %bb.ei
  %i.aaa = phi i8 [ %i.zu, %bb.ei ], [ %i.zy, %._crit_edge.i.i337.loopexit.i ]
  %i.aab = phi ptr [ %i.zt, %bb.ei ], [ %i.zx, %._crit_edge.i.i337.loopexit.i ] ; 2 uses
  %i.aac = sext i8 %i.aaa to i32
  %isdigittmp.i.i338.i = add nsw i32 %i.aac, -48  ; 3 uses
  %isdigit.i.i339.i = icmp ult i32 %isdigittmp.i.i338.i, 10
  br i1 %isdigit.i.i339.i, label %.preheader.i.i341.i, label %_ZL9parse_intPPcPi.exit.thread.i

.preheader.i.i341.i:                              ; preds = %._crit_edge.i.i337.i
  %storemerge29.i.i342.i = getelementptr inbounds nuw i8, ptr %i.aab, i64 1 ; 3 uses
  store ptr %storemerge29.i.i342.i, ptr %i.e, align 8, !tbaa !23
  %i.aad = load i8, ptr %storemerge29.i.i342.i, align 1, !tbaa !33 ; 2 uses
  %i.aae = sext i8 %i.aad to i32                  ; 3 uses
  %isdigittmp2130.i.i343.i = add nsw i32 %i.aae, -48
  %isdigit2231.i.i344.i = icmp ult i32 %isdigittmp2130.i.i343.i, 10
  br i1 %isdigit2231.i.i344.i, label %.lr.ph34.i.i355.i, label %._crit_edge35.i.i345.i

.lr.ph34.i.i355.i:                                ; preds = %.preheader.i.i341.i, %.lr.ph34.i.i355.i
  %i.aaf = phi i32 [ %i.aaj, %.lr.ph34.i.i355.i ], [ %i.aae, %.preheader.i.i341.i ]
  %storemerge33.i.i356.i = phi ptr [ %storemerge.i.i359.i, %.lr.ph34.i.i355.i ], [ %storemerge29.i.i342.i, %.preheader.i.i341.i ] ; 2 uses
  %storemerge2432.i.i357.i = phi i32 [ %storemerge24.i.i358.i, %.lr.ph34.i.i355.i ], [ %isdigittmp.i.i338.i, %.preheader.i.i341.i ]
  %i.aag = mul nsw i32 %storemerge2432.i.i357.i, 10
  %i.aah = add nsw i32 %i.aaf, -48
  %storemerge24.i.i358.i = add i32 %i.aah, %i.aag ; 2 uses
  %storemerge.i.i359.i = getelementptr inbounds nuw i8, ptr %storemerge33.i.i356.i, i64 1 ; 3 uses
  store ptr %storemerge.i.i359.i, ptr %i.e, align 8, !tbaa !23
  %i.aai = load i8, ptr %storemerge.i.i359.i, align 1, !tbaa !33 ; 2 uses
  %i.aaj = sext i8 %i.aai to i32                  ; 3 uses
  %isdigittmp21.i.i360.i = add nsw i32 %i.aaj, -48
  %isdigit22.i.i361.i = icmp ult i32 %isdigittmp21.i.i360.i, 10
  br i1 %isdigit22.i.i361.i, label %.lr.ph34.i.i355.i, label %._crit_edge35.i.i345.i, !llvm.loop !76

._crit_edge35.i.i345.i:                           ; preds = %.lr.ph34.i.i355.i, %.preheader.i.i341.i
  %.10.i = phi i32 [ %isdigittmp.i.i338.i, %.preheader.i.i341.i ], [ %storemerge24.i.i358.i, %.lr.ph34.i.i355.i ] ; 3 uses
  %i.aak = phi ptr [ %i.aab, %.preheader.i.i341.i ], [ %storemerge33.i.i356.i, %.lr.ph34.i.i355.i ]
  %.lcssa25.i.i346.i = phi i8 [ %i.aad, %.preheader.i.i341.i ], [ %i.aai, %.lr.ph34.i.i355.i ] ; 2 uses
  %.lcssa.i.i347.i = phi i32 [ %i.aae, %.preheader.i.i341.i ], [ %i.aaj, %.lr.ph34.i.i355.i ]
  %i.aal = call i32 @isalpha(i32 noundef %.lcssa.i.i347.i) #29
  %.not.i.i348.i = icmp eq i32 %i.aal, 0
  br i1 %.not.i.i348.i, label %.thread.i353.i, label %bb.ej

bb.ej:                                            ; preds = %._crit_edge35.i.i345.i
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aak, i64 2 ; 2 uses
  store ptr %i.aam, ptr %i.e, align 8, !tbaa !23
  %.pre.i.i349.i = load i8, ptr %i.aam, align 1, !tbaa !33
  %i.aan = sext i8 %.pre.i.i349.i to i32
  %i.aao = call i32 @isalnum(i32 noundef %i.aan) #29
  %.not23.i.i350.i = icmp eq i32 %i.aao, 0
  br i1 %.not23.i.i350.i, label %_ZL14parse_int_charPPcPiPh.exit.i351.i, label %bb.ek

.thread.i353.i:                                   ; preds = %._crit_edge35.i.i345.i
  %i.aap = sext i8 %.lcssa25.i.i346.i to i32
  %i.aaq = call i32 @isalnum(i32 noundef %i.aap) #29
  %.not23.i17.i354.i = icmp eq i32 %i.aaq, 0
  br i1 %.not23.i17.i354.i, label %_ZL9parse_intPPcPi.exit363.i, label %bb.ek

bb.ek:                                            ; preds = %.thread.i353.i, %bb.ej
  store ptr %i.zt, ptr %i.e, align 8, !tbaa !23
  br label %_ZL9parse_intPPcPi.exit.thread.i

_ZL14parse_int_charPPcPiPh.exit.i351.i:           ; preds = %bb.ej
  %.not.i352.i = icmp eq i8 %.lcssa25.i.i346.i, 32
  br i1 %.not.i352.i, label %_ZL9parse_intPPcPi.exit363.i, label %bb.el

bb.el:                                            ; preds = %_ZL14parse_int_charPPcPiPh.exit.i351.i
  store ptr %i.zt, ptr %i.e, align 8, !tbaa !23
  br label %_ZL9parse_intPPcPi.exit.thread.i

_ZL9parse_intPPcPi.exit363.i:                     ; preds = %_ZL14parse_int_charPPcPiPh.exit.i351.i, %.thread.i353.i
  %i.aar = icmp sgt i32 %.10.i, -1
  br i1 %i.aar, label %bb.em, label %_ZL9parse_intPPcPi.exit.thread.i

bb.em:                                            ; preds = %_ZL9parse_intPPcPi.exit363.i
  %i.aas = zext nneg i32 %.10.i to i64
  %i.aat = load ptr, ptr %i.go, align 8, !tbaa !54
  %i.aau = load ptr, ptr %15, align 16, !tbaa !52
  %i.aav = ptrtoint ptr %i.aat to i64
  %i.aaw = ptrtoint ptr %i.aau to i64
  %i.aax = sub i64 %i.aav, %i.aaw
  %i.aay = sdiv exact i64 %i.aax, 56
  %i.aaz = icmp sgt i64 %i.aay, %i.aas
  br i1 %i.aaz, label %.invoke, label %_ZL9parse_intPPcPi.exit.thread.i

.invoke:                                          ; preds = %bb.em, %bb.eg
  %i.aba = phi i32 [ %.8.i, %bb.eg ], [ %.10.i, %bb.em ]
  invoke fastcc void @_ZL11split_groupPK7t_atomsiPSt6vectorI10IndexGroupSaIS3_EEb(ptr noundef nonnull readonly %9, i32 noundef %i.aba, ptr noundef nonnull %15, i1 noundef zeroext %i.yj)
          to label %_ZL9parse_intPPcPi.exit.thread.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.en:                                            ; preds = %bb.eh
  switch i8 %i.in, label %bb.eo [
    i8 0, label %_ZL9parse_intPPcPi.exit.thread.i
    i8 113, label %.fold.split.i
  ]

bb.eo:                                            ; preds = %bb.en
  store i32 -1, ptr %i.j, align 4, !tbaa !9
  store ptr %3, ptr %5, align 8, !tbaa !107
  store ptr %i.gn, ptr %i.gr, align 8, !tbaa !107
  %i.abb = invoke fastcc noundef zeroext i1 @_ZL11parse_entryPPciPK7t_atomsPSt6vectorI10IndexGroupSaIS5_EEPiS9_S_N3gmx8ArrayRefIS_EE(ptr noundef %i.e, i32 noundef %i.gd, ptr noundef nonnull readonly %9, ptr noundef nonnull %15, ptr noundef %i.i, ptr noundef %i.gi, ptr noundef %i.f, ptr noundef nonnull byval(%"class.gmx::ArrayRef.72") align 8 %5)
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc78:                                         ; preds = %bb.eo
  br i1 %i.abb, label %.preheader447.i, label %..critedge190_crit_edge.i

..critedge190_crit_edge.i:                        ; preds = %.noexc78
  %.promoted549.pre.i = load ptr, ptr %i.e, align 8, !tbaa !23
  br label %.critedge190.i.preheader

.preheader447.i:                                  ; preds = %.noexc78
  %.promoted543.i = load i32, ptr %i.i, align 4
  br label %.outer

.outer:                                           ; preds = %.sink.split.i, %.preheader447.i
  %.lcssa542545.i.ph = phi i32 [ %.lcssa542544.ph.i, %.sink.split.i ], [ %.promoted543.i, %.preheader447.i ] ; 14 uses
  %18 = zext i32 %.lcssa542545.i.ph to i64        ; 2 uses
  %i.abc = icmp sgt i32 %.lcssa542545.i.ph, 0     ; 5 uses
  %wide.trip.count642.i = zext nneg i32 %.lcssa542545.i.ph to i64 ; 6 uses
  %min.iters.check587 = icmp ult i32 %.lcssa542545.i.ph, 4
  %or.cond615 = or i1 %min.iters.check587, %diff.check
  %min.iters.check589 = icmp ult i32 %.lcssa542545.i.ph, 32
  %i.abd = and i64 %wide.trip.count642.i, 28
  %n.vec591 = and i64 %wide.trip.count642.i, 2147483616 ; 4 uses
  %cmp.n600 = icmp eq i64 %n.vec591, %wide.trip.count642.i
  %min.epilog.iters.check605 = icmp eq i64 %i.abd, 0
  %n.vec607 = and i64 %wide.trip.count642.i, 2147483644 ; 3 uses
  %cmp.n613 = icmp eq i64 %n.vec607, %wide.trip.count642.i
  br label %bb.ep

bb.ep:                                            ; preds = %.outer, %.noexc79
  %.promoted.i = load ptr, ptr %i.e, align 8, !tbaa !23
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eq, %bb.ep
  %i.abe = phi ptr [ %i.abh, %bb.eq ], [ %.promoted.i, %bb.ep ] ; 4 uses
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !33 ; 3 uses
  %i.abg = icmp eq i8 %i.abf, 32
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abe, i64 1 ; 2 uses
  br i1 %i.abg, label %bb.eq, label %bb.er, !llvm.loop !109

bb.er:                                            ; preds = %bb.eq
  store ptr %i.abe, ptr %i.e, align 8
  switch i8 %i.abf, label %.critedge190.loopexit.i [
    i8 124, label %bb.es
    i8 38, label %bb.es
  ]

bb.es:                                            ; preds = %bb.er, %bb.er
  store ptr %i.abh, ptr %i.e, align 8, !tbaa !23
  br i1 %i.abc, label %iter.check602, label %._crit_edge536.i

iter.check602:                                    ; preds = %bb.es
  br i1 %or.cond615, label %.lr.ph535.i.preheader, label %vector.main.loop.iter.check588

vector.main.loop.iter.check588:                   ; preds = %iter.check602
  br i1 %min.iters.check589, label %vec.epilog.ph606, label %vector.body592

vector.body592:                                   ; preds = %vector.main.loop.iter.check588, %vector.body592
  %index593 = phi i64 [ %index.next598, %vector.body592 ], [ 0, %vector.main.loop.iter.check588 ] ; 3 uses
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %index593 ; 4 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 32
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abi, i64 64
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abi, i64 96
  %wide.load594 = load <8 x i32>, ptr %i.abi, align 4, !tbaa !9
  %wide.load595 = load <8 x i32>, ptr %i.abj, align 4, !tbaa !9
  %wide.load596 = load <8 x i32>, ptr %i.abk, align 4, !tbaa !9
  %wide.load597 = load <8 x i32>, ptr %i.abl, align 4, !tbaa !9
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %index593 ; 4 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 32
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 64
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abm, i64 96
  store <8 x i32> %wide.load594, ptr %i.abm, align 4, !tbaa !9
  store <8 x i32> %wide.load595, ptr %i.abn, align 4, !tbaa !9
  store <8 x i32> %wide.load596, ptr %i.abo, align 4, !tbaa !9
  store <8 x i32> %wide.load597, ptr %i.abp, align 4, !tbaa !9
  %index.next598 = add nuw i64 %index593, 32      ; 2 uses
  %i.abq = icmp eq i64 %index.next598, %n.vec591
  br i1 %i.abq, label %middle.block599, label %vector.body592, !llvm.loop !110

middle.block599:                                  ; preds = %vector.body592
  br i1 %cmp.n600, label %._crit_edge536.i, label %vec.epilog.iter.check604

vec.epilog.iter.check604:                         ; preds = %middle.block599
  br i1 %min.epilog.iters.check605, label %.lr.ph535.i.preheader, label %vec.epilog.ph606, !prof !111

vec.epilog.ph606:                                 ; preds = %vector.main.loop.iter.check588, %vec.epilog.iter.check604
  %vec.epilog.resume.val601 = phi i64 [ %n.vec591, %vec.epilog.iter.check604 ], [ 0, %vector.main.loop.iter.check588 ]
  br label %vec.epilog.vector.body608

vec.epilog.vector.body608:                        ; preds = %vec.epilog.vector.body608, %vec.epilog.ph606
  %index609 = phi i64 [ %vec.epilog.resume.val601, %vec.epilog.ph606 ], [ %index.next611, %vec.epilog.vector.body608 ] ; 3 uses
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %index609
  %wide.load610 = load <4 x i32>, ptr %i.abr, align 4, !tbaa !9
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %index609
  store <4 x i32> %wide.load610, ptr %i.abs, align 4, !tbaa !9
  %index.next611 = add nuw i64 %index609, 4       ; 2 uses
  %i.abt = icmp eq i64 %index.next611, %n.vec607
  br i1 %i.abt, label %vec.epilog.middle.block612, label %vec.epilog.vector.body608, !llvm.loop !112

vec.epilog.middle.block612:                       ; preds = %vec.epilog.vector.body608
  br i1 %cmp.n613, label %._crit_edge536.i, label %.lr.ph535.i.preheader

.lr.ph535.i.preheader:                            ; preds = %iter.check602, %vec.epilog.iter.check604, %vec.epilog.middle.block612
  %indvars.iv639.i.ph = phi i64 [ 0, %iter.check602 ], [ %n.vec591, %vec.epilog.iter.check604 ], [ %n.vec607, %vec.epilog.middle.block612 ] ; 4 uses
  %i.abu = sub nsw i64 %18, %indvars.iv639.i.ph
  %xtraiter = and i64 %i.abu, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph535.i.prol.loopexit, label %.lr.ph535.i.prol

.lr.ph535.i.prol:                                 ; preds = %.lr.ph535.i.preheader, %.lr.ph535.i.prol
  %indvars.iv639.i.prol = phi i64 [ %indvars.iv.next640.i.prol, %.lr.ph535.i.prol ], [ %indvars.iv639.i.ph, %.lr.ph535.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph535.i.prol ], [ 0, %.lr.ph535.i.preheader ]
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv639.i.prol
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !9
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv639.i.prol
  store i32 %i.abw, ptr %i.abx, align 4, !tbaa !9
  %indvars.iv.next640.i.prol = add nuw nsw i64 %indvars.iv639.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph535.i.prol.loopexit, label %.lr.ph535.i.prol, !llvm.loop !113

.lr.ph535.i.prol.loopexit:                        ; preds = %.lr.ph535.i.prol, %.lr.ph535.i.preheader
  %indvars.iv639.i.unr = phi i64 [ %indvars.iv639.i.ph, %.lr.ph535.i.preheader ], [ %indvars.iv.next640.i.prol, %.lr.ph535.i.prol ]
  %i.aby = sub nsw i64 %indvars.iv639.i.ph, %18
  %i.abz = icmp ugt i64 %i.aby, -8
  br i1 %i.abz, label %._crit_edge536.i, label %.lr.ph535.i

.lr.ph535.i:                                      ; preds = %.lr.ph535.i.prol.loopexit, %.lr.ph535.i
  %indvars.iv639.i = phi i64 [ %indvars.iv.next640.i.7, %.lr.ph535.i ], [ %indvars.iv639.i.unr, %.lr.ph535.i.prol.loopexit ] ; 10 uses
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv639.i
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !9
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv639.i
  store i32 %i.acb, ptr %i.acc, align 4, !tbaa !9
  %indvars.iv.next640.i = add nuw nsw i64 %indvars.iv639.i, 1 ; 2 uses
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.next640.i
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !9
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next640.i
  store i32 %i.ace, ptr %i.acf, align 4, !tbaa !9
  %indvars.iv.next640.i.1 = add nuw nsw i64 %indvars.iv639.i, 2 ; 2 uses
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.next640.i.1
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !9
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next640.i.1
  store i32 %i.ach, ptr %i.aci, align 4, !tbaa !9
  %indvars.iv.next640.i.2 = add nuw nsw i64 %indvars.iv639.i, 3 ; 2 uses
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.next640.i.2
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !9
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next640.i.2
  store i32 %i.ack, ptr %i.acl, align 4, !tbaa !9
  %indvars.iv.next640.i.3 = add nuw nsw i64 %indvars.iv639.i, 4 ; 2 uses
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.next640.i.3
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !9
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next640.i.3
  store i32 %i.acn, ptr %i.aco, align 4, !tbaa !9
  %indvars.iv.next640.i.4 = add nuw nsw i64 %indvars.iv639.i, 5 ; 2 uses
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.next640.i.4
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !9
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next640.i.4
  store i32 %i.acq, ptr %i.acr, align 4, !tbaa !9
  %indvars.iv.next640.i.5 = add nuw nsw i64 %indvars.iv639.i, 6 ; 2 uses
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.next640.i.5
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !9
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next640.i.5
  store i32 %i.act, ptr %i.acu, align 4, !tbaa !9
  %indvars.iv.next640.i.6 = add nuw nsw i64 %indvars.iv639.i, 7 ; 2 uses
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.next640.i.6
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !9
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next640.i.6
  store i32 %i.acw, ptr %i.acx, align 4, !tbaa !9
  %indvars.iv.next640.i.7 = add nuw nsw i64 %indvars.iv639.i, 8 ; 2 uses
  %exitcond643.not.i.7 = icmp eq i64 %indvars.iv.next640.i.7, %wide.trip.count642.i
  br i1 %exitcond643.not.i.7, label %._crit_edge536.i, label %.lr.ph535.i, !llvm.loop !115

._crit_edge536.i:                                 ; preds = %.lr.ph535.i.prol.loopexit, %.lr.ph535.i, %middle.block599, %vec.epilog.middle.block612, %bb.es
  %i.acy = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) %i.f) #25 ; 0 uses
  store ptr %3, ptr %6, align 8, !tbaa !107
  store ptr %i.gn, ptr %i.gs, align 8, !tbaa !107
  %i.acz = invoke fastcc noundef zeroext i1 @_ZL11parse_entryPPciPK7t_atomsPSt6vectorI10IndexGroupSaIS5_EEPiS9_S_N3gmx8ArrayRefIS_EE(ptr noundef %i.e, i32 noundef %i.gd, ptr noundef nonnull readonly %9, ptr noundef nonnull %15, ptr noundef %i.j, ptr noundef %i.gm, ptr noundef %i.h, ptr noundef nonnull byval(%"class.gmx::ArrayRef.72") align 8 %6)
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc79:                                         ; preds = %._crit_edge536.i
  br i1 %i.acz, label %bb.et, label %bb.ep, !llvm.loop !116

bb.et:                                            ; preds = %.noexc79
  %i.ada = icmp eq i8 %i.abf, 124
  %i.adb = load i32, ptr %i.j, align 4, !tbaa !9  ; 11 uses
  br i1 %i.ada, label %bb.eu, label %bb.fi

bb.eu:                                            ; preds = %bb.et
  br i1 %i.abc, label %bb.ev, label %.preheader.i364.i

bb.ev:                                            ; preds = %bb.eu
  %wide.trip.count.i368.i = zext nneg i32 %.lcssa542545.i.ph to i64 ; 2 uses
  %exitcond.peel.not.i.i = icmp eq i32 %.lcssa542545.i.ph, 1
  br i1 %exitcond.peel.not.i.i, label %.preheader.i364.i, label %.lr.ph.peel.next.i.preheader.i

.lr.ph.peel.next.i.preheader.i:                   ; preds = %bb.ev
  %.pre.i369.i = load i32, ptr %i.gk, align 4, !tbaa !9 ; 2 uses
  %i.adc = add nsw i64 %wide.trip.count.i368.i, -1 ; 2 uses
  %min.iters.check561 = icmp ult i32 %.lcssa542545.i.ph, 33
  br i1 %min.iters.check561, label %.lr.ph.peel.next.i.i.preheader, label %vector.ph562

vector.ph562:                                     ; preds = %.lr.ph.peel.next.i.preheader.i
  %n.vec563 = and i64 %i.adc, -32                 ; 3 uses
  %i.add = or disjoint i64 %n.vec563, 1
  %vector.recur.init570 = insertelement <8 x i32> poison, i32 %.pre.i369.i, i64 7
  br label %vector.body564

vector.body564:                                   ; preds = %vector.body564, %vector.ph562
  %index565 = phi i64 [ 0, %vector.ph562 ], [ %index.next576, %vector.body564 ] ; 2 uses
  %vec.phi566 = phi <8 x i1> [ zeroinitializer, %vector.ph562 ], [ %i.adr, %vector.body564 ]
  %vec.phi567 = phi <8 x i1> [ zeroinitializer, %vector.ph562 ], [ %i.ads, %vector.body564 ]
  %vec.phi568 = phi <8 x i1> [ zeroinitializer, %vector.ph562 ], [ %i.adt, %vector.body564 ]
  %vec.phi569 = phi <8 x i1> [ zeroinitializer, %vector.ph562 ], [ %i.adu, %vector.body564 ]
  %vector.recur571 = phi <8 x i32> [ %vector.recur.init570, %vector.ph562 ], [ %wide.load575, %vector.body564 ]
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %index565 ; 4 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 4
  %i.adg = getelementptr inbounds nuw i8, ptr %i.ade, i64 36
  %i.adh = getelementptr inbounds nuw i8, ptr %i.ade, i64 68
  %i.adi = getelementptr inbounds nuw i8, ptr %i.ade, i64 100
  %wide.load572 = load <8 x i32>, ptr %i.adf, align 4, !tbaa !9 ; 3 uses
  %wide.load573 = load <8 x i32>, ptr %i.adg, align 4, !tbaa !9 ; 3 uses
  %wide.load574 = load <8 x i32>, ptr %i.adh, align 4, !tbaa !9 ; 3 uses
  %wide.load575 = load <8 x i32>, ptr %i.adi, align 4, !tbaa !9 ; 4 uses
  %i.adj = shufflevector <8 x i32> %vector.recur571, <8 x i32> %wide.load572, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.adk = shufflevector <8 x i32> %wide.load572, <8 x i32> %wide.load573, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.adl = shufflevector <8 x i32> %wide.load573, <8 x i32> %wide.load574, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.adm = shufflevector <8 x i32> %wide.load574, <8 x i32> %wide.load575, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.adn = icmp sle <8 x i32> %wide.load572, %i.adj
  %i.ado = icmp sle <8 x i32> %wide.load573, %i.adk
  %i.adp = icmp sle <8 x i32> %wide.load574, %i.adl
  %i.adq = icmp sle <8 x i32> %wide.load575, %i.adm
  %i.adr = or <8 x i1> %vec.phi566, %i.adn        ; 2 uses
  %i.ads = or <8 x i1> %vec.phi567, %i.ado        ; 2 uses
  %i.adt = or <8 x i1> %vec.phi568, %i.adp        ; 2 uses
  %i.adu = or <8 x i1> %vec.phi569, %i.adq        ; 2 uses
  %index.next576 = add nuw i64 %index565, 32      ; 2 uses
  %i.adv = icmp eq i64 %index.next576, %n.vec563
  br i1 %i.adv, label %middle.block577, label %vector.body564, !llvm.loop !117

middle.block577:                                  ; preds = %vector.body564
  %bin.rdx578 = or <8 x i1> %i.ads, %i.adr
  %bin.rdx579 = or <8 x i1> %i.adt, %bin.rdx578
  %bin.rdx580 = or <8 x i1> %i.adu, %bin.rdx579
  %bin.rdx580.fr = freeze <8 x i1> %bin.rdx580
  %i.adw = bitcast <8 x i1> %bin.rdx580.fr to i8
  %i.adx = icmp ne i8 %i.adw, 0                   ; 2 uses
  %vector.recur.extract581 = extractelement <8 x i32> %wide.load575, i64 7
  %cmp.n582 = icmp eq i64 %i.adc, %n.vec563
  br i1 %cmp.n582, label %.preheader.i364.i, label %.lr.ph.peel.next.i.i.preheader

.lr.ph.peel.next.i.i.preheader:                   ; preds = %.lr.ph.peel.next.i.preheader.i, %middle.block577
  %indvars.iv.i370.i.ph = phi i64 [ 1, %.lr.ph.peel.next.i.preheader.i ], [ %i.add, %middle.block577 ]
  %.072.i.i.ph = phi i1 [ false, %.lr.ph.peel.next.i.preheader.i ], [ %i.adx, %middle.block577 ]
  %.05671.i.i.ph = phi i32 [ %.pre.i369.i, %.lr.ph.peel.next.i.preheader.i ], [ %vector.recur.extract581, %middle.block577 ]
  br label %.lr.ph.peel.next.i.i

.preheader.i364.i:                                ; preds = %.lr.ph.peel.next.i.i, %middle.block577, %bb.ev, %bb.eu
  %.0.lcssa.i365.i = phi i1 [ false, %bb.eu ], [ false, %bb.ev ], [ %i.adx, %middle.block577 ], [ %spec.select.i.i, %.lr.ph.peel.next.i.i ] ; 4 uses
  %i.ady = icmp sgt i32 %i.adb, 0                 ; 3 uses
  br i1 %i.ady, label %bb.ew, label %._crit_edge.i366.i

bb.ew:                                            ; preds = %.preheader.i364.i
  %wide.trip.count88.i.i = zext nneg i32 %i.adb to i64 ; 2 uses
  %exitcond89.peel.not.i.i = icmp eq i32 %i.adb, 1
  br i1 %exitcond89.peel.not.i.i, label %._crit_edge.i366.i, label %.lr.ph77.peel.next.i.preheader.i

.lr.ph77.peel.next.i.preheader.i:                 ; preds = %bb.ew
  %.pre92.i.i = load i32, ptr %i.gm, align 4, !tbaa !9 ; 2 uses
  %i.adz = add nsw i64 %wide.trip.count88.i.i, -1 ; 2 uses
  %min.iters.check541 = icmp ult i32 %i.adb, 33
  br i1 %min.iters.check541, label %.lr.ph77.peel.next.i.i.preheader, label %vector.ph542

vector.ph542:                                     ; preds = %.lr.ph77.peel.next.i.preheader.i
  %n.vec543 = and i64 %i.adz, -32                 ; 3 uses
  %i.aea = or disjoint i64 %n.vec543, 1
  %vector.recur.init = insertelement <8 x i32> poison, i32 %.pre92.i.i, i64 7
  br label %vector.body544

vector.body544:                                   ; preds = %vector.body544, %vector.ph542
  %index545 = phi i64 [ 0, %vector.ph542 ], [ %index.next554, %vector.body544 ] ; 2 uses
  %vec.phi546 = phi <8 x i1> [ zeroinitializer, %vector.ph542 ], [ %i.aeo, %vector.body544 ]
  %vec.phi547 = phi <8 x i1> [ zeroinitializer, %vector.ph542 ], [ %i.aep, %vector.body544 ]
  %vec.phi548 = phi <8 x i1> [ zeroinitializer, %vector.ph542 ], [ %i.aeq, %vector.body544 ]
  %vec.phi549 = phi <8 x i1> [ zeroinitializer, %vector.ph542 ], [ %i.aer, %vector.body544 ]
  %vector.recur = phi <8 x i32> [ %vector.recur.init, %vector.ph542 ], [ %wide.load553, %vector.body544 ]
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %index545 ; 4 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 4
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aeb, i64 36
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aeb, i64 68
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aeb, i64 100
  %wide.load550 = load <8 x i32>, ptr %i.aec, align 4, !tbaa !9 ; 3 uses
  %wide.load551 = load <8 x i32>, ptr %i.aed, align 4, !tbaa !9 ; 3 uses
  %wide.load552 = load <8 x i32>, ptr %i.aee, align 4, !tbaa !9 ; 3 uses
  %wide.load553 = load <8 x i32>, ptr %i.aef, align 4, !tbaa !9 ; 4 uses
  %i.aeg = shufflevector <8 x i32> %vector.recur, <8 x i32> %wide.load550, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.aeh = shufflevector <8 x i32> %wide.load550, <8 x i32> %wide.load551, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.aei = shufflevector <8 x i32> %wide.load551, <8 x i32> %wide.load552, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.aej = shufflevector <8 x i32> %wide.load552, <8 x i32> %wide.load553, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.aek = icmp sle <8 x i32> %wide.load550, %i.aeg
  %i.ael = icmp sle <8 x i32> %wide.load551, %i.aeh
  %i.aem = icmp sle <8 x i32> %wide.load552, %i.aei
  %i.aen = icmp sle <8 x i32> %wide.load553, %i.aej
  %i.aeo = or <8 x i1> %vec.phi546, %i.aek        ; 2 uses
  %i.aep = or <8 x i1> %vec.phi547, %i.ael        ; 2 uses
  %i.aeq = or <8 x i1> %vec.phi548, %i.aem        ; 2 uses
  %i.aer = or <8 x i1> %vec.phi549, %i.aen        ; 2 uses
  %index.next554 = add nuw i64 %index545, 32      ; 2 uses
  %i.aes = icmp eq i64 %index.next554, %n.vec543
  br i1 %i.aes, label %middle.block555, label %vector.body544, !llvm.loop !119

middle.block555:                                  ; preds = %vector.body544
  %bin.rdx = or <8 x i1> %i.aep, %i.aeo
  %bin.rdx556 = or <8 x i1> %i.aeq, %bin.rdx
  %bin.rdx557 = or <8 x i1> %i.aer, %bin.rdx556
  %bin.rdx557.fr = freeze <8 x i1> %bin.rdx557
  %i.aet = bitcast <8 x i1> %bin.rdx557.fr to i8
  %i.aeu = icmp ne i8 %i.aet, 0
  %rdx.select = select i1 %i.aeu, i1 true, i1 %.0.lcssa.i365.i ; 2 uses
  %vector.recur.extract = extractelement <8 x i32> %wide.load553, i64 7
  %cmp.n558 = icmp eq i64 %i.adz, %n.vec543
  br i1 %cmp.n558, label %._crit_edge.i366.i, label %.lr.ph77.peel.next.i.i.preheader

.lr.ph77.peel.next.i.i.preheader:                 ; preds = %.lr.ph77.peel.next.i.preheader.i, %middle.block555
  %indvars.iv86.i.i.ph = phi i64 [ 1, %.lr.ph77.peel.next.i.preheader.i ], [ %i.aea, %middle.block555 ]
end_hunk_0
