Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaLf?download=true
inline.NumInlined: 854
inline.NumDeleted: 177
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@Lf_ObjMergeOrder:bb.a
  %i.zt = and i32 %i.zs, 16777215
  %i.zu = or disjoint i32 %i.zt, %i.xs            ; 2 uses
  store i32 %i.zu, ptr %i.zr, align 4
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  store i32 -1, ptr %i.zv, align 8, !tbaa !83
  br label %bb.dd

bb.cv:                                            ; preds = %bb.ct
  %i.zw = icmp eq i32 %i.zf, 0
  br i1 %i.zw, label %.loopexit122.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.zx = icmp eq i32 %i.zh, 0
  br i1 %i.zx, label %.loopexit123.i, label %.preheader120.i

.preheader120.i:                                  ; preds = %bb.cw
  br i1 %i.xr, label %Lf_CutMergeOrder.exit.thread, label %.lr.ph.i523

.lr.ph.i523:                                      ; preds = %.preheader120.i, %bb.dc
  %indvars.iv.i524 = phi i64 [ %indvars.iv.next.pre-phi.i, %bb.dc ], [ 0, %.preheader120.i ] ; 8 uses
  %.093125.i = phi i32 [ %.194.i, %bb.dc ], [ 0, %.preheader120.i ] ; 5 uses
  %.198124.i = phi i32 [ %.299.i, %bb.dc ], [ 0, %.preheader120.i ] ; 5 uses
  %i.zy = sext i32 %.198124.i to i64
  %i.zz = getelementptr inbounds [4 x i8], ptr %i.yh, i64 %i.zy
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !57 ; 4 uses
  %i.aab = sext i32 %.093125.i to i64
  %i.aac = getelementptr inbounds [4 x i8], ptr %i.zi, i64 %i.aab
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !57 ; 3 uses
  %i.aae = icmp slt i32 %i.aaa, %i.aad
  br i1 %i.aae, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.lr.ph.i523
  %i.aaf = add nsw i32 %.198124.i, 1              ; 2 uses
  %i.aag = add nuw nsw i64 %indvars.iv.i524, 1    ; 2 uses
  %i.aah = getelementptr inbounds [4 x i8], ptr %i.zj, i64 %indvars.iv.i524
  store i32 %i.aaa, ptr %i.aah, align 4, !tbaa !57
  %.not116.i = icmp slt i32 %i.aaf, %i.zf
  br i1 %.not116.i, label %bb.dc, label %.loopexit122.loopexit.split.loop.exit.i

bb.cy:                                            ; preds = %.lr.ph.i523
  %i.aai = icmp sgt i32 %i.aaa, %i.aad
  br i1 %i.aai, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.aaj = add nsw i32 %.093125.i, 1              ; 2 uses
  %i.aak = add nuw nsw i64 %indvars.iv.i524, 1    ; 2 uses
  %i.aal = getelementptr inbounds [4 x i8], ptr %i.zj, i64 %indvars.iv.i524
  store i32 %i.aad, ptr %i.aal, align 4, !tbaa !57
  %.not115.i = icmp slt i32 %i.aaj, %i.zh
  br i1 %.not115.i, label %bb.dc, label %.loopexit123.loopexit.split.loop.exit.i

bb.da:                                            ; preds = %bb.cy
  %i.aam = add nsw i32 %.198124.i, 1              ; 3 uses
  %i.aan = getelementptr inbounds [4 x i8], ptr %i.zj, i64 %indvars.iv.i524
  store i32 %i.aaa, ptr %i.aan, align 4, !tbaa !57
  %i.aao = add nsw i32 %.093125.i, 1              ; 3 uses
  %.not.i525 = icmp slt i32 %i.aam, %i.zf
  br i1 %.not.i525, label %bb.db, label %.loopexit122.loopexit.split.loop.exit184.i

bb.db:                                            ; preds = %bb.da
  %.not114.i = icmp slt i32 %i.aao, %i.zh
  br i1 %.not114.i, label %._crit_edge169.i, label %.loopexit123.loopexit.split.loop.exit181.i

._crit_edge169.i:                                 ; preds = %bb.db
  %.pre.i = add nuw nsw i64 %indvars.iv.i524, 1
  br label %bb.dc

bb.dc:                                            ; preds = %._crit_edge169.i, %bb.cz, %bb.cx
  %indvars.iv.next.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge169.i ], [ %i.aak, %bb.cz ], [ %i.aag, %bb.cx ] ; 2 uses
  %.299.i = phi i32 [ %i.aam, %._crit_edge169.i ], [ %.198124.i, %bb.cz ], [ %i.aaf, %bb.cx ]
  %.194.i = phi i32 [ %i.aao, %._crit_edge169.i ], [ %i.aaj, %bb.cz ], [ %.093125.i, %bb.cx ]
  %exitcond.i = icmp eq i64 %indvars.iv.next.pre-phi.i, %wide.trip.count.i522
  br i1 %exitcond.i, label %Lf_CutMergeOrder.exit.thread, label %.lr.ph.i523

.loopexit123.loopexit.split.loop.exit.i:          ; preds = %bb.cz
  %i.aap = trunc nuw nsw i64 %i.aak to i32
  br label %.loopexit123.i

.loopexit123.loopexit.split.loop.exit181.i:       ; preds = %bb.db
  %indvars.le.i = trunc i64 %indvars.iv.i524 to i32
  %i.aaq = add nuw nsw i32 %indvars.le.i, 1
  br label %.loopexit123.i

.loopexit123.i:                                   ; preds = %.loopexit123.loopexit.split.loop.exit181.i, %.loopexit123.loopexit.split.loop.exit.i, %bb.cw
  %.3100.i = phi i32 [ 0, %bb.cw ], [ %.198124.i, %.loopexit123.loopexit.split.loop.exit.i ], [ %i.aam, %.loopexit123.loopexit.split.loop.exit181.i ] ; 3 uses
  %.2.i = phi i32 [ 0, %bb.cw ], [ %i.aap, %.loopexit123.loopexit.split.loop.exit.i ], [ %i.aaq, %.loopexit123.loopexit.split.loop.exit181.i ] ; 3 uses
  %i.aar = add nsw i32 %.2.i, %i.zf
  %i.aas = add nsw i32 %.3100.i, %i.ac
  %i.aat = icmp sgt i32 %i.aar, %i.aas
  br i1 %i.aat, label %Lf_CutMergeOrder.exit.thread, label %.preheader119.i

.preheader119.i:                                  ; preds = %.loopexit123.i
  %i.aau = icmp slt i32 %.3100.i, %i.zf
  br i1 %i.aau, label %.lr.ph129.preheader.i, label %._crit_edge.i

.lr.ph129.preheader.i:                            ; preds = %.preheader119.i
  %i.aav = zext i32 %.2.i to i64                  ; 5 uses
  %i.aaw = sext i32 %.3100.i to i64               ; 6 uses
  %wide.trip.count150.i = zext nneg i32 %i.zf to i64 ; 4 uses
  %i.aax = sub nsw i64 %wide.trip.count150.i, %i.aaw ; 3 uses
  %min.iters.check1116 = icmp ult i64 %i.aax, 8
  br i1 %min.iters.check1116, label %.lr.ph129.i.preheader, label %vector.memcheck1110

vector.memcheck1110:                              ; preds = %.lr.ph129.preheader.i
  %i.aay = add i64 %i.yd, %i.zd
  %i.aaz = shl nuw nsw i64 %i.aav, 2
  %i.aba = add i64 %i.aay, %i.aaz
  %i.abb = shl nsw i64 %i.aaw, 2
  %i.abc = sub i64 %i.abb, %i.aba
  %diff.check1114 = icmp ugt i64 %i.abc, -32
  br i1 %diff.check1114, label %.lr.ph129.i.preheader, label %vector.ph1117

vector.ph1117:                                    ; preds = %vector.memcheck1110
  %n.vec1118 = and i64 %i.aax, -8                 ; 4 uses
  %i.abd = add nsw i64 %n.vec1118, %i.aaw
  %i.abe = add nsw i64 %n.vec1118, %i.aav         ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.yh, i64 %i.aaw
  %invariant.gep1228 = getelementptr [4 x i8], ptr %i.zj, i64 %i.aav
  br label %vector.body1119

vector.body1119:                                  ; preds = %vector.body1119, %vector.ph1117
  %index1120 = phi i64 [ 0, %vector.ph1117 ], [ %index.next1123, %vector.body1119 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index1120 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load1121 = load <4 x i32>, ptr %gep, align 4, !tbaa !57
  %wide.load1122 = load <4 x i32>, ptr %i.abf, align 4, !tbaa !57
  %gep1229 = getelementptr [4 x i8], ptr %invariant.gep1228, i64 %index1120 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %gep1229, i64 16
  store <4 x i32> %wide.load1121, ptr %gep1229, align 4, !tbaa !57
  store <4 x i32> %wide.load1122, ptr %i.abg, align 4, !tbaa !57
  %index.next1123 = add nuw i64 %index1120, 8     ; 2 uses
  %i.abh = icmp eq i64 %index.next1123, %n.vec1118
  br i1 %i.abh, label %middle.block1124, label %vector.body1119, !llvm.loop !186

middle.block1124:                                 ; preds = %vector.body1119
  %cmp.n1125 = icmp eq i64 %i.aax, %n.vec1118
  br i1 %cmp.n1125, label %._crit_edge.loopexit.i526, label %.lr.ph129.i.preheader

.lr.ph129.i.preheader:                            ; preds = %vector.memcheck1110, %.lr.ph129.preheader.i, %middle.block1124
  %indvars.iv144.i.ph = phi i64 [ %i.aaw, %vector.memcheck1110 ], [ %i.aaw, %.lr.ph129.preheader.i ], [ %i.abd, %middle.block1124 ] ; 4 uses
  %indvars.iv142.i.ph = phi i64 [ %i.aav, %vector.memcheck1110 ], [ %i.aav, %.lr.ph129.preheader.i ], [ %i.abe, %middle.block1124 ] ; 2 uses
  %i.abi = sub nsw i64 %wide.trip.count150.i, %indvars.iv144.i.ph
  %xtraiter1191 = and i64 %i.abi, 3               ; 2 uses
  %lcmp.mod1192.not = icmp eq i64 %xtraiter1191, 0
  br i1 %lcmp.mod1192.not, label %.lr.ph129.i.prol.loopexit, label %.lr.ph129.i.prol

.lr.ph129.i.prol:                                 ; preds = %.lr.ph129.i.preheader, %.lr.ph129.i.prol
  %indvars.iv144.i.prol = phi i64 [ %indvars.iv.next145.i.prol, %.lr.ph129.i.prol ], [ %indvars.iv144.i.ph, %.lr.ph129.i.preheader ] ; 2 uses
  %indvars.iv142.i.prol = phi i64 [ %indvars.iv.next143.i.prol, %.lr.ph129.i.prol ], [ %indvars.iv142.i.ph, %.lr.ph129.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph129.i.prol ], [ 0, %.lr.ph129.i.preheader ]
  %indvars.iv.next145.i.prol = add nsw i64 %indvars.iv144.i.prol, 1 ; 2 uses
  %i.abj = getelementptr inbounds [4 x i8], ptr %i.yh, i64 %indvars.iv144.i.prol
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !57
  %indvars.iv.next143.i.prol = add nuw nsw i64 %indvars.iv142.i.prol, 1 ; 3 uses
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %indvars.iv142.i.prol
  store i32 %i.abk, ptr %i.abl, align 4, !tbaa !57
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1191
  br i1 %prol.iter.cmp.not, label %.lr.ph129.i.prol.loopexit, label %.lr.ph129.i.prol, !llvm.loop !187

.lr.ph129.i.prol.loopexit:                        ; preds = %.lr.ph129.i.prol, %.lr.ph129.i.preheader
  %indvars.iv.next143.i.lcssa1161.unr = phi i64 [ poison, %.lr.ph129.i.preheader ], [ %indvars.iv.next143.i.prol, %.lr.ph129.i.prol ]
  %indvars.iv144.i.unr = phi i64 [ %indvars.iv144.i.ph, %.lr.ph129.i.preheader ], [ %indvars.iv.next145.i.prol, %.lr.ph129.i.prol ]
  %indvars.iv142.i.unr = phi i64 [ %indvars.iv142.i.ph, %.lr.ph129.i.preheader ], [ %indvars.iv.next143.i.prol, %.lr.ph129.i.prol ]
  %i.abm = sub nsw i64 %indvars.iv144.i.ph, %wide.trip.count150.i
  %i.abn = icmp ugt i64 %i.abm, -4
  br i1 %i.abn, label %._crit_edge.loopexit.i526, label %.lr.ph129.i

.lr.ph129.i:                                      ; preds = %.lr.ph129.i.prol.loopexit, %.lr.ph129.i
  %indvars.iv144.i = phi i64 [ %indvars.iv.next145.i.3, %.lr.ph129.i ], [ %indvars.iv144.i.unr, %.lr.ph129.i.prol.loopexit ] ; 5 uses
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i.3, %.lr.ph129.i ], [ %indvars.iv142.i.unr, %.lr.ph129.i.prol.loopexit ] ; 5 uses
  %i.abo = getelementptr inbounds [4 x i8], ptr %i.yh, i64 %indvars.iv144.i
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !57
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %indvars.iv142.i
  store i32 %i.abp, ptr %i.abq, align 4, !tbaa !57
  %i.abr = getelementptr [4 x i8], ptr %i.yh, i64 %indvars.iv144.i
  %i.abs = getelementptr i8, ptr %i.abr, i64 4
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !57
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %indvars.iv142.i
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 4
  store i32 %i.abt, ptr %i.abv, align 4, !tbaa !57
  %i.abw = getelementptr [4 x i8], ptr %i.yh, i64 %indvars.iv144.i
  %i.abx = getelementptr i8, ptr %i.abw, i64 8
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !57
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %indvars.iv142.i
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  store i32 %i.aby, ptr %i.aca, align 4, !tbaa !57
  %indvars.iv.next145.i.3 = add nsw i64 %indvars.iv144.i, 4 ; 2 uses
  %i.acb = getelementptr [4 x i8], ptr %i.yh, i64 %indvars.iv144.i
  %i.acc = getelementptr i8, ptr %i.acb, i64 12
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !57
  %indvars.iv.next143.i.3 = add nuw nsw i64 %indvars.iv142.i, 4 ; 2 uses
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %indvars.iv142.i
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 12
  store i32 %i.acd, ptr %i.acf, align 4, !tbaa !57
  %exitcond151.not.i.3 = icmp eq i64 %indvars.iv.next145.i.3, %wide.trip.count150.i
  br i1 %exitcond151.not.i.3, label %._crit_edge.loopexit.i526, label %.lr.ph129.i, !llvm.loop !188

._crit_edge.loopexit.i526:                        ; preds = %.lr.ph129.i.prol.loopexit, %.lr.ph129.i, %middle.block1124
  %indvars.iv.next143.i.lcssa = phi i64 [ %i.abe, %middle.block1124 ], [ %indvars.iv.next143.i.lcssa1161.unr, %.lr.ph129.i.prol.loopexit ], [ %indvars.iv.next143.i.3, %.lr.ph129.i ]
  %i.acg = trunc nuw nsw i64 %indvars.iv.next143.i.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i526, %.preheader119.i
  %.3.lcssa.i = phi i32 [ %.2.i, %.preheader119.i ], [ %i.acg, %._crit_edge.loopexit.i526 ]
  %i.ach = getelementptr inbounds nuw i8, ptr %i.zc, i64 20 ; 2 uses
  %i.aci = load i32, ptr %i.ach, align 4
  %i.acj = shl i32 %.3.lcssa.i, 24
  %i.ack = and i32 %i.aci, 8388607
  %i.acl = or disjoint i32 %i.ack, %i.acj         ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  store i32 -1, ptr %i.acm, align 8, !tbaa !83
  store i32 %i.acl, ptr %i.ach, align 4
  br label %bb.dd

.loopexit122.loopexit.split.loop.exit.i:          ; preds = %bb.cx
  %i.acn = trunc nuw nsw i64 %i.aag to i32
  br label %.loopexit122.i

.loopexit122.loopexit.split.loop.exit184.i:       ; preds = %bb.da
  %indvars.le189.i = trunc i64 %indvars.iv.i524 to i32
  %i.aco = add nuw nsw i32 %indvars.le189.i, 1
  br label %.loopexit122.i

.loopexit122.i:                                   ; preds = %.loopexit122.loopexit.split.loop.exit184.i, %.loopexit122.loopexit.split.loop.exit.i, %bb.cv
  %.295.i = phi i32 [ 0, %bb.cv ], [ %.093125.i, %.loopexit122.loopexit.split.loop.exit.i ], [ %i.aao, %.loopexit122.loopexit.split.loop.exit184.i ] ; 3 uses
  %.4.i = phi i32 [ 0, %bb.cv ], [ %i.acn, %.loopexit122.loopexit.split.loop.exit.i ], [ %i.aco, %.loopexit122.loopexit.split.loop.exit184.i ] ; 3 uses
  %i.acp = add nsw i32 %.4.i, %i.zh
  %i.acq = add nsw i32 %.295.i, %i.ac
  %i.acr = icmp sgt i32 %i.acp, %i.acq
  br i1 %i.acr, label %Lf_CutMergeOrder.exit.thread, label %.preheader118.i

.preheader118.i:                                  ; preds = %.loopexit122.i
  %i.acs = icmp slt i32 %.295.i, %i.zh
  br i1 %i.acs, label %.lr.ph132.preheader.i, label %._crit_edge133.i

.lr.ph132.preheader.i:                            ; preds = %.preheader118.i
  %i.act = zext i32 %.4.i to i64                  ; 5 uses
  %i.acu = sext i32 %.295.i to i64                ; 6 uses
  %wide.trip.count161.i = zext nneg i32 %i.zh to i64 ; 4 uses
  %i.acv = sub nsw i64 %wide.trip.count161.i, %i.acu ; 3 uses
  %min.iters.check1098 = icmp ult i64 %i.acv, 8
  br i1 %min.iters.check1098, label %.lr.ph132.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph132.preheader.i
  %i.acw = add i64 %i.yk, %i.zd
  %i.acx = shl nuw nsw i64 %i.act, 2
  %i.acy = add i64 %i.acw, %i.acx
  %i.acz = shl nsw i64 %i.acu, 2
  %i.ada = sub i64 %i.acz, %i.acy
  %diff.check = icmp ugt i64 %i.ada, -32
  br i1 %diff.check, label %.lr.ph132.i.preheader, label %vector.ph1099

vector.ph1099:                                    ; preds = %vector.memcheck
  %n.vec1100 = and i64 %i.acv, -8                 ; 4 uses
  %i.adb = add nsw i64 %n.vec1100, %i.acu
  %i.adc = add nsw i64 %n.vec1100, %i.act         ; 2 uses
  %invariant.gep1230 = getelementptr [4 x i8], ptr %i.zi, i64 %i.acu
  %invariant.gep1232 = getelementptr [4 x i8], ptr %i.zj, i64 %i.act
  br label %vector.body1101

vector.body1101:                                  ; preds = %vector.body1101, %vector.ph1099
  %index1102 = phi i64 [ 0, %vector.ph1099 ], [ %index.next1105, %vector.body1101 ] ; 3 uses
  %gep1231 = getelementptr [4 x i8], ptr %invariant.gep1230, i64 %index1102 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %gep1231, i64 16
  %wide.load1103 = load <4 x i32>, ptr %gep1231, align 4, !tbaa !57
  %wide.load1104 = load <4 x i32>, ptr %i.add, align 4, !tbaa !57
  %gep1233 = getelementptr [4 x i8], ptr %invariant.gep1232, i64 %index1102 ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %gep1233, i64 16
  store <4 x i32> %wide.load1103, ptr %gep1233, align 4, !tbaa !57
  store <4 x i32> %wide.load1104, ptr %i.ade, align 4, !tbaa !57
  %index.next1105 = add nuw i64 %index1102, 8     ; 2 uses
  %i.adf = icmp eq i64 %index.next1105, %n.vec1100
  br i1 %i.adf, label %middle.block1106, label %vector.body1101, !llvm.loop !189

middle.block1106:                                 ; preds = %vector.body1101
  %cmp.n1107 = icmp eq i64 %i.acv, %n.vec1100
  br i1 %cmp.n1107, label %._crit_edge133.loopexit.i, label %.lr.ph132.i.preheader

.lr.ph132.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph132.preheader.i, %middle.block1106
  %indvars.iv155.i.ph = phi i64 [ %i.acu, %vector.memcheck ], [ %i.acu, %.lr.ph132.preheader.i ], [ %i.adb, %middle.block1106 ] ; 4 uses
  %indvars.iv153.i.ph = phi i64 [ %i.act, %vector.memcheck ], [ %i.act, %.lr.ph132.preheader.i ], [ %i.adc, %middle.block1106 ] ; 2 uses
  %i.adg = sub nsw i64 %wide.trip.count161.i, %indvars.iv155.i.ph
  %xtraiter1193 = and i64 %i.adg, 3               ; 2 uses
  %lcmp.mod1194.not = icmp eq i64 %xtraiter1193, 0
  br i1 %lcmp.mod1194.not, label %.lr.ph132.i.prol.loopexit, label %.lr.ph132.i.prol

.lr.ph132.i.prol:                                 ; preds = %.lr.ph132.i.preheader, %.lr.ph132.i.prol
  %indvars.iv155.i.prol = phi i64 [ %indvars.iv.next156.i.prol, %.lr.ph132.i.prol ], [ %indvars.iv155.i.ph, %.lr.ph132.i.preheader ] ; 2 uses
  %indvars.iv153.i.prol = phi i64 [ %indvars.iv.next154.i.prol, %.lr.ph132.i.prol ], [ %indvars.iv153.i.ph, %.lr.ph132.i.preheader ] ; 2 uses
  %prol.iter1195 = phi i64 [ %prol.iter1195.next, %.lr.ph132.i.prol ], [ 0, %.lr.ph132.i.preheader ]
  %indvars.iv.next156.i.prol = add nsw i64 %indvars.iv155.i.prol, 1 ; 2 uses
  %i.adh = getelementptr inbounds [4 x i8], ptr %i.zi, i64 %indvars.iv155.i.prol
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !57
  %indvars.iv.next154.i.prol = add nuw nsw i64 %indvars.iv153.i.prol, 1 ; 3 uses
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %indvars.iv153.i.prol
  store i32 %i.adi, ptr %i.adj, align 4, !tbaa !57
  %prol.iter1195.next = add i64 %prol.iter1195, 1 ; 2 uses
  %prol.iter1195.cmp.not = icmp eq i64 %prol.iter1195.next, %xtraiter1193
  br i1 %prol.iter1195.cmp.not, label %.lr.ph132.i.prol.loopexit, label %.lr.ph132.i.prol, !llvm.loop !190

.lr.ph132.i.prol.loopexit:                        ; preds = %.lr.ph132.i.prol, %.lr.ph132.i.preheader
  %indvars.iv.next154.i.lcssa1162.unr = phi i64 [ poison, %.lr.ph132.i.preheader ], [ %indvars.iv.next154.i.prol, %.lr.ph132.i.prol ]
  %indvars.iv155.i.unr = phi i64 [ %indvars.iv155.i.ph, %.lr.ph132.i.preheader ], [ %indvars.iv.next156.i.prol, %.lr.ph132.i.prol ]
  %indvars.iv153.i.unr = phi i64 [ %indvars.iv153.i.ph, %.lr.ph132.i.preheader ], [ %indvars.iv.next154.i.prol, %.lr.ph132.i.prol ]
  %i.adk = sub nsw i64 %indvars.iv155.i.ph, %wide.trip.count161.i
  %i.adl = icmp ugt i64 %i.adk, -4
  br i1 %i.adl, label %._crit_edge133.loopexit.i, label %.lr.ph132.i

.lr.ph132.i:                                      ; preds = %.lr.ph132.i.prol.loopexit, %.lr.ph132.i
  %indvars.iv155.i = phi i64 [ %indvars.iv.next156.i.3, %.lr.ph132.i ], [ %indvars.iv155.i.unr, %.lr.ph132.i.prol.loopexit ] ; 5 uses
  %indvars.iv153.i = phi i64 [ %indvars.iv.next154.i.3, %.lr.ph132.i ], [ %indvars.iv153.i.unr, %.lr.ph132.i.prol.loopexit ] ; 5 uses
  %i.adm = getelementptr inbounds [4 x i8], ptr %i.zi, i64 %indvars.iv155.i
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !57
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %indvars.iv153.i
  store i32 %i.adn, ptr %i.ado, align 4, !tbaa !57
  %i.adp = getelementptr [4 x i8], ptr %i.zi, i64 %indvars.iv155.i
  %i.adq = getelementptr i8, ptr %i.adp, i64 4
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !57
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %indvars.iv153.i
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 4
  store i32 %i.adr, ptr %i.adt, align 4, !tbaa !57
  %i.adu = getelementptr [4 x i8], ptr %i.zi, i64 %indvars.iv155.i
  %i.adv = getelementptr i8, ptr %i.adu, i64 8
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !57
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %indvars.iv153.i
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 8
  store i32 %i.adw, ptr %i.ady, align 4, !tbaa !57
  %indvars.iv.next156.i.3 = add nsw i64 %indvars.iv155.i, 4 ; 2 uses
  %i.adz = getelementptr [4 x i8], ptr %i.zi, i64 %indvars.iv155.i
  %i.aea = getelementptr i8, ptr %i.adz, i64 12
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !57
  %indvars.iv.next154.i.3 = add nuw nsw i64 %indvars.iv153.i, 4 ; 2 uses
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %indvars.iv153.i
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 12
  store i32 %i.aeb, ptr %i.aed, align 4, !tbaa !57
  %exitcond162.not.i.3 = icmp eq i64 %indvars.iv.next156.i.3, %wide.trip.count161.i
  br i1 %exitcond162.not.i.3, label %._crit_edge133.loopexit.i, label %.lr.ph132.i, !llvm.loop !191

._crit_edge133.loopexit.i:                        ; preds = %.lr.ph132.i.prol.loopexit, %.lr.ph132.i, %middle.block1106
  %indvars.iv.next154.i.lcssa = phi i64 [ %i.adc, %middle.block1106 ], [ %indvars.iv.next154.i.lcssa1162.unr, %.lr.ph132.i.prol.loopexit ], [ %indvars.iv.next154.i.3, %.lr.ph132.i ]
  %i.aee = trunc nuw nsw i64 %indvars.iv.next154.i.lcssa to i32
  br label %._crit_edge133.i

._crit_edge133.i:                                 ; preds = %._crit_edge133.loopexit.i, %.preheader118.i
  %.5.lcssa.i = phi i32 [ %.4.i, %.preheader118.i ], [ %i.aee, %._crit_edge133.loopexit.i ]
  %i.aef = getelementptr inbounds nuw i8, ptr %i.zc, i64 20 ; 2 uses
  %i.aeg = load i32, ptr %i.aef, align 4
  %i.aeh = shl i32 %.5.lcssa.i, 24
  %i.aei = and i32 %i.aeg, 8388607
  %i.aej = or disjoint i32 %i.aei, %i.aeh         ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  store i32 -1, ptr %i.aek, align 8, !tbaa !83
  store i32 %i.aej, ptr %i.aef, align 4
  br label %bb.dd

bb.dd:                                            ; preds = %._crit_edge133.i, %._crit_edge.i, %._crit_edge137.i
  %i.ael = phi i32 [ %i.aej, %._crit_edge133.i ], [ %i.acl, %._crit_edge.i ], [ %i.zu, %._crit_edge137.i ]
  %i.aem = load i64, ptr %.3345723, align 8, !tbaa !89
  %i.aen = load i64, ptr %.2341717, align 8, !tbaa !89
  %i.aeo = or i64 %i.aen, %i.aem                  ; 3 uses
  store i64 %i.aeo, ptr %i.zc, align 8, !tbaa !89
  %i.aep = icmp sgt i32 %.17719, 0
  br i1 %i.aep, label %.lr.ph.i528, label %Lf_SetLastCutIsContained.exit555

.lr.ph.i528:                                      ; preds = %bb.dd
  %i.aeq = zext nneg i32 %.17719 to i64           ; 2 uses
  %.fr31.i529 = freeze i32 %i.ael
  %i.aer = lshr i32 %.fr31.i529, 24               ; 4 uses
  %wide.trip.count.i.i530 = zext nneg i32 %i.aer to i64 ; 2 uses
  %.not49.i.i531 = icmp eq i32 %i.aer, 0
  br i1 %.not49.i.i531, label %.lr.ph.split.us.i549, label %.lr.ph.split.i532

.lr.ph.split.us.i549:                             ; preds = %.lr.ph.i528, %Lf_SetCutIsContainedOrder.exit.thread.us.i552
  %indvars.iv39.i550 = phi i64 [ %indvars.iv.next40.i553, %Lf_SetCutIsContainedOrder.exit.thread.us.i552 ], [ 0, %.lr.ph.i528 ] ; 2 uses
  %i.aes = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv39.i550
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !94 ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 20
  %i.aev = load i32, ptr %i.aeu, align 4
  %.not.us.not.i551 = icmp ult i32 %i.aev, 16777216
  br i1 %.not.us.not.i551, label %bb.de, label %Lf_SetCutIsContainedOrder.exit.thread.us.i552

bb.de:                                            ; preds = %.lr.ph.split.us.i549
  %i.aew = load i64, ptr %i.aet, align 8, !tbaa !89 ; 2 uses
  %i.aex = and i64 %i.aeo, %i.aew
  %i.aey = icmp eq i64 %i.aex, %i.aew
  br i1 %i.aey, label %Lf_CutMergeOrder.exit.thread, label %Lf_SetCutIsContainedOrder.exit.thread.us.i552

Lf_SetCutIsContainedOrder.exit.thread.us.i552:    ; preds = %bb.de, %.lr.ph.split.us.i549
  %indvars.iv.next40.i553 = add nuw nsw i64 %indvars.iv39.i550, 1 ; 2 uses
  %exitcond43.not.i554 = icmp eq i64 %indvars.iv.next40.i553, %i.aeq
  br i1 %exitcond43.not.i554, label %Lf_SetLastCutIsContained.exit555, label %.lr.ph.split.us.i549, !llvm.loop !175

.lr.ph.split.i532:                                ; preds = %.lr.ph.i528, %Lf_SetCutIsContainedOrder.exit.thread.i535
  %indvars.iv.i533 = phi i64 [ %indvars.iv.next.i536, %Lf_SetCutIsContainedOrder.exit.thread.i535 ], [ 0, %.lr.ph.i528 ] ; 2 uses
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i533
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !94 ; 4 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 20
  %i.afc = load i32, ptr %i.afb, align 4
  %i.afd = lshr i32 %i.afc, 24                    ; 4 uses
  %.not.i534 = icmp samesign ugt i32 %i.afd, %i.aer
  br i1 %.not.i534, label %Lf_SetCutIsContainedOrder.exit.thread.i535, label %bb.df

bb.df:                                            ; preds = %.lr.ph.split.i532
  %i.afe = load i64, ptr %i.afa, align 8, !tbaa !89 ; 2 uses
  %i.aff = and i64 %i.aeo, %i.afe
  %i.afg = icmp eq i64 %i.aff, %i.afe
  br i1 %i.afg, label %bb.dg, label %Lf_SetCutIsContainedOrder.exit.thread.i535

bb.dg:                                            ; preds = %bb.df
  %i.afh = icmp eq i32 %i.aer, %i.afd
  br i1 %i.afh, label %.preheader.i.i544, label %bb.dj

.preheader.i.i544:                                ; preds = %bb.dg
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afa, i64 24
  br label %bb.di

bb.dh:                                            ; preds = %bb.di
  %indvars.iv.next54.i.i547 = add nuw nsw i64 %indvars.iv53.i.i545, 1 ; 2 uses
  %exitcond57.not.i.i548 = icmp eq i64 %indvars.iv.next54.i.i547, %wide.trip.count.i.i530
  br i1 %exitcond57.not.i.i548, label %Lf_CutMergeOrder.exit.thread, label %bb.di, !llvm.loop !174

bb.di:                                            ; preds = %bb.dh, %.preheader.i.i544
  %indvars.iv53.i.i545 = phi i64 [ 0, %.preheader.i.i544 ], [ %indvars.iv.next54.i.i547, %bb.dh ] ; 3 uses
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %indvars.iv53.i.i545
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !57
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.afi, i64 %indvars.iv53.i.i545
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !57
  %.not.i.i546 = icmp eq i32 %i.afk, %i.afm
  br i1 %.not.i.i546, label %bb.dh, label %Lf_SetCutIsContainedOrder.exit.thread.i535

bb.dj:                                            ; preds = %bb.dg
  %i.afn = icmp eq i32 %i.afd, 0
  br i1 %i.afn, label %Lf_CutMergeOrder.exit.thread, label %.lr.ph.i.i538

.lr.ph.i.i538:                                    ; preds = %bb.dj
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afa, i64 24
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dn, %.lr.ph.i.i538
  %indvars.iv.i.i539 = phi i64 [ 0, %.lr.ph.i.i538 ], [ %indvars.iv.next.i.i542, %bb.dn ] ; 2 uses
  %.038.i.i540 = phi i32 [ 0, %.lr.ph.i.i538 ], [ %.1.i.i541, %bb.dn ] ; 3 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %indvars.iv.i.i539
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !57 ; 2 uses
  %i.afr = sext i32 %.038.i.i540 to i64
  %i.afs = getelementptr inbounds [4 x i8], ptr %i.afo, i64 %i.afr
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !57 ; 2 uses
  %i.afu = icmp sgt i32 %i.afq, %i.aft
  br i1 %i.afu, label %Lf_SetCutIsContainedOrder.exit.thread.i535, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.afv = icmp eq i32 %i.afq, %i.aft
  br i1 %i.afv, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.afw = add nsw i32 %.038.i.i540, 1            ; 2 uses
  %i.afx = icmp eq i32 %i.afw, %i.afd
  br i1 %i.afx, label %Lf_CutMergeOrder.exit.thread, label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.1.i.i541 = phi i32 [ %i.afw, %bb.dm ], [ %.038.i.i540, %bb.dl ]
  %indvars.iv.next.i.i542 = add nuw nsw i64 %indvars.iv.i.i539, 1 ; 2 uses
  %exitcond.not.i.i543 = icmp eq i64 %indvars.iv.next.i.i542, %wide.trip.count.i.i530
  br i1 %exitcond.not.i.i543, label %Lf_SetCutIsContainedOrder.exit.thread.i535, label %bb.dk, !llvm.loop !3

Lf_SetCutIsContainedOrder.exit.thread.i535:       ; preds = %bb.dn, %bb.dk, %bb.di, %bb.df, %.lr.ph.split.i532
  %indvars.iv.next.i536 = add nuw nsw i64 %indvars.iv.i533, 1 ; 2 uses
  %exitcond.not.i537 = icmp eq i64 %indvars.iv.next.i536, %i.aeq
  br i1 %exitcond.not.i537, label %Lf_SetLastCutIsContained.exit555, label %.lr.ph.split.i532, !llvm.loop !175

Lf_SetLastCutIsContained.exit555:                 ; preds = %Lf_SetCutIsContainedOrder.exit.thread.i535, %Lf_SetCutIsContainedOrder.exit.thread.us.i552, %bb.dd
  %i.afy = load double, ptr %i.xt, align 8, !tbaa !98
  %i.afz = fadd double %i.afy, 1.000000e+00
  store double %i.afz, ptr %i.xt, align 8, !tbaa !98
  %i.aga = load ptr, ptr %i.w, align 8, !tbaa !69 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 88
  %i.agc = load i32, ptr %i.agb, align 8, !tbaa !82
  %.not369 = icmp eq i32 %i.agc, 0
  br i1 %.not369, label %bb.ep, label %bb.do

bb.do:                                            ; preds = %Lf_SetLastCutIsContained.exit555
  %i.agd = load i32, ptr %i.aga, align 8, !tbaa !77 ; 5 uses
  %i.age = icmp slt i32 %i.agd, 7
  br i1 %i.age, label %bb.dp, label %bb.ed

bb.dp:                                            ; preds = %bb.do
  %i.agf = getelementptr inbounds nuw i8, ptr %i.zc, i64 20 ; 4 uses
  %i.agg = load i32, ptr %i.agf, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %.val39.i.i = load ptr, ptr %i.xu, align 8, !tbaa !100 ; 4 uses
  %.val40.i.i = load i32, ptr %i.yi, align 8, !tbaa !83 ; 2 uses
  %i.agh = ashr i32 %.val40.i.i, 1                ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %.val39.i.i, i64 24
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !103 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %.val39.i.i, i64 8
  %i.agl = load i32, ptr %i.agk, align 8, !tbaa !104 ; 2 uses
  %i.agm = ashr i32 %i.agh, %i.agl
  %i.agn = sext i32 %i.agm to i64
  %i.ago = getelementptr inbounds [8 x i8], ptr %i.agj, i64 %i.agn
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !106
  %i.agq = load i32, ptr %.val39.i.i, align 8, !tbaa !107 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %.val39.i.i, i64 12
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !108 ; 2 uses
  %i.agt = and i32 %i.ags, %i.agh
  %i.agu = mul nsw i32 %i.agt, %i.agq
  %i.agv = sext i32 %i.agu to i64
  %i.agw = getelementptr inbounds [8 x i8], ptr %i.agp, i64 %i.agv
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !109
  %i.agy = getelementptr i8, ptr %.2341717, i64 16
  %.val38.i.i = load i32, ptr %i.agy, align 8, !tbaa !83 ; 2 uses
  %i.agz = ashr i32 %.val38.i.i, 1                ; 2 uses
  %i.aha = ashr i32 %i.agz, %i.agl
  %i.ahb = sext i32 %i.aha to i64
  %i.ahc = getelementptr inbounds [8 x i8], ptr %i.agj, i64 %i.ahb
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !106
  %i.ahe = and i32 %i.agz, %i.ags
  %i.ahf = mul nsw i32 %i.ahe, %i.agq
  %i.ahg = sext i32 %i.ahf to i64
  %i.ahh = getelementptr inbounds [8 x i8], ptr %i.ahd, i64 %i.ahg
  %i.ahi = load i64, ptr %i.ahh, align 8, !tbaa !109
  %i.ahj = and i32 %.val40.i.i, 1
  %.not.i.i565 = icmp ne i32 %i.ahj, %i.aj
  %i.ahk = sext i1 %.not.i.i565 to i64
  %spec.select.i.i = xor i64 %i.agx, %i.ahk       ; 2 uses
  %i.ahl = and i32 %.val38.i.i, 1
  %.not35.i.i = icmp ne i32 %i.ahl, %i.am
  %i.ahm = sext i1 %.not35.i.i to i64
  %.0.i.i = xor i64 %i.ahi, %i.ahm                ; 2 uses
  %i.ahn = load i32, ptr %i.ye, align 4
  %i.aho = lshr i32 %i.ahn, 24                    ; 2 uses
  %i.ahp = lshr i32 %i.agg, 24                    ; 7 uses
  %i.ahq = icmp ne i32 %i.ahp, 0                  ; 2 uses
  %i.ahr = icmp ne i32 %i.aho, 0
  %i.ahs = and i1 %i.ahq, %i.ahr
  br i1 %i.ahs, label %.lr.ph.preheader.i.i.i, label %Abc_Tt6Expand.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.dp
  %i.aht = add nsw i32 %i.aho, -1
  %i.ahu = zext nneg i32 %i.ahp to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.dt, %.lr.ph.preheader.i.i.i
end_hunk_0
begin_hunk_1_@Lf_ManFindCofVar:bb.a
  store <2 x i64> %i.af, ptr %i.ah, align 16, !tbaa !109
  store <2 x i64> %i.ag, ptr %i.ai, align 16, !tbaa !109
  %index.next153 = add nuw i64 %index150, 4       ; 2 uses
  %i.aj = icmp eq i64 %index.next153, %n.vec144
  br i1 %i.aj, label %middle.block154, label %vector.body149, !llvm.loop !227

middle.block154:                                  ; preds = %vector.body149
  br i1 %cmp.n155, label %.lr.ph.i15, label %scalar.ph141.preheader

scalar.ph141.preheader:                           ; preds = %.lr.ph.i, %middle.block154
  %indvars.iv56.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec144, %middle.block154 ]
  br label %scalar.ph141

scalar.ph141:                                     ; preds = %scalar.ph141.preheader, %scalar.ph141
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %scalar.ph141 ], [ %indvars.iv56.i.ph, %scalar.ph141.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv56.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !109
  %i.am = and i64 %i.al, %i.x                     ; 2 uses
  %i.an = shl i64 %i.am, %i.y
  %i.ao = or i64 %i.an, %i.am
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv56.i
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !109
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next57.i, %wide.trip.count59.i
  br i1 %exitcond60.not.i, label %.lr.ph.i15, label %scalar.ph141, !llvm.loop !228

bb.f:                                             ; preds = %bb.d
  %i.aq = add nsw i64 %indvars.iv, -6             ; 3 uses
  %i.ar = trunc nsw i64 %i.aq to i32              ; 2 uses
  %i.as = shl nuw i32 1, %i.ar                    ; 4 uses
  br i1 %i.e, label %.preheader.lr.ph.i, label %.lr.ph.i15

.preheader.lr.ph.i:                               ; preds = %bb.f
  %i.at = icmp eq i64 %i.aq, 31
  %i.au = shl i32 2, %i.ar
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  br i1 %i.at, label %.lr.ph.i15, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.aw = sext i32 %i.as to i64
  %smax.i = call i32 @llvm.smax.i32(i32 %i.as, i32 1)
  %min.iters.check160 = icmp slt i32 %i.as, 4
  %i.ax = and i32 %smax.i, 2147483644
  %n.vec162 = zext nneg i32 %i.ax to i64
  %exitcond.not.i = icmp slt i32 %i.as, 2
  %exitcond.not.i.1 = icmp eq i64 %i.aq, 1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.04251.us.i = phi ptr [ %i.bn, %._crit_edge.us.i ], [ %i.a, %.preheader.us.preheader.i ] ; 6 uses
  %.04350.us.i = phi ptr [ %i.bm, %._crit_edge.us.i ], [ %0, %.preheader.us.preheader.i ] ; 5 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.04251.us.i, i64 %i.aw ; 4 uses
  br i1 %min.iters.check160, label %scalar.ph159, label %vector.body163

vector.body163:                                   ; preds = %.preheader.us.i, %vector.body163
  %index164 = phi i64 [ %index.next167, %vector.body163 ], [ 0, %.preheader.us.i ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %index164 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load165 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !109 ; 2 uses
  %wide.load166 = load <2 x i64>, ptr %i.az, align 8, !tbaa !109 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %index164 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x i64> %wide.load165, ptr %i.ba, align 8, !tbaa !109
  store <2 x i64> %wide.load166, ptr %i.bb, align 8, !tbaa !109
  %i.bc = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index164 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  store <2 x i64> %wide.load165, ptr %i.bc, align 8, !tbaa !109
  store <2 x i64> %wide.load166, ptr %i.bd, align 8, !tbaa !109
  %index.next167 = add nuw i64 %index164, 4       ; 2 uses
  %i.be = icmp eq i64 %index.next167, %n.vec162
  br i1 %i.be, label %._crit_edge.us.i, label %vector.body163, !llvm.loop !229

scalar.ph159:                                     ; preds = %.preheader.us.i
  %i.bf = load i64, ptr %.04350.us.i, align 8, !tbaa !109 ; 2 uses
  store i64 %i.bf, ptr %.04251.us.i, align 8, !tbaa !109
  store i64 %i.bf, ptr %invariant.gep.i, align 8, !tbaa !109
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %scalar.ph159.1

scalar.ph159.1:                                   ; preds = %scalar.ph159
  %i.bg = getelementptr inbounds nuw i8, ptr %.04350.us.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !109 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.04251.us.i, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !109
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 8
  store i64 %i.bh, ptr %gep.i.1, align 8, !tbaa !109
  br i1 %exitcond.not.i.1, label %._crit_edge.us.i, label %scalar.ph159.2

scalar.ph159.2:                                   ; preds = %scalar.ph159.1
  %i.bj = getelementptr inbounds nuw i8, ptr %.04350.us.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !109 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.04251.us.i, i64 16
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !109
  %gep.i.2 = getelementptr i8, ptr %invariant.gep.i, i64 16
  store i64 %i.bk, ptr %gep.i.2, align 8, !tbaa !109
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %vector.body163, %scalar.ph159, %scalar.ph159.1, %scalar.ph159.2
  %i.bm = getelementptr inbounds [8 x i8], ptr %.04350.us.i, i64 %i.av ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %.04251.us.i, i64 %i.av
  %i.bo = icmp ult ptr %i.bm, %i.d
  br i1 %i.bo, label %.preheader.us.i, label %.lr.ph.i15, !llvm.loop !7

.lr.ph.i15:                                       ; preds = %._crit_edge.us.i, %scalar.ph141, %middle.block154, %.preheader.lr.ph.i, %bb.f, %bb.e, %bb.c
  br i1 %i.f, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i15
  %i.bp = load i64, ptr %i.a, align 16, !tbaa !109 ; 12 uses
  %i.bq = lshr i64 %i.bp, 1
  %i.br = xor i64 %i.bq, %i.bp
  %.fr = freeze i64 %i.br
  %i.bs = and i64 %.fr, 6148914691236517205
  %.not17.us.i = icmp ne i64 %i.bs, 0
  %i.bt = zext i1 %.not17.us.i to i32             ; 2 uses
  br i1 %exitcond55.not.i, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.1

Abc_TtHasVar.exit.us.i.1:                         ; preds = %.lr.ph.split.us.i
  %i.bu = lshr i64 %i.bp, 2
  %i.bv = xor i64 %i.bu, %i.bp
  %.fr183 = freeze i64 %i.bv
  %i.bw = and i64 %.fr183, 3689348814741910323
  %.not17.us.i.1 = icmp ne i64 %i.bw, 0
  %i.bx = zext i1 %.not17.us.i.1 to i32
  %spec.select.i.1 = add nuw nsw i32 %i.bt, %i.bx ; 2 uses
  br i1 %exitcond55.not.i.1, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.2

Abc_TtHasVar.exit.us.i.2:                         ; preds = %Abc_TtHasVar.exit.us.i.1
  %i.by = lshr i64 %i.bp, 4
  %i.bz = xor i64 %i.by, %i.bp
  %.fr184 = freeze i64 %i.bz
  %i.ca = and i64 %.fr184, 1085102592571150095
  %.not17.us.i.2 = icmp ne i64 %i.ca, 0
  %i.cb = zext i1 %.not17.us.i.2 to i32
  %spec.select.i.2 = add nuw nsw i32 %spec.select.i.1, %i.cb ; 2 uses
  br i1 %exitcond55.not.i.2, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.3

Abc_TtHasVar.exit.us.i.3:                         ; preds = %Abc_TtHasVar.exit.us.i.2
  %i.cc = lshr i64 %i.bp, 8
  %i.cd = xor i64 %i.cc, %i.bp
  %.fr185 = freeze i64 %i.cd
  %i.ce = and i64 %.fr185, 71777214294589695
  %.not17.us.i.3 = icmp ne i64 %i.ce, 0
  %i.cf = zext i1 %.not17.us.i.3 to i32
  %spec.select.i.3 = add nuw nsw i32 %spec.select.i.2, %i.cf ; 2 uses
  br i1 %exitcond55.not.i.3, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.4

Abc_TtHasVar.exit.us.i.4:                         ; preds = %Abc_TtHasVar.exit.us.i.3
  %i.cg = lshr i64 %i.bp, 16
  %i.ch = xor i64 %i.cg, %i.bp
  %.fr186 = freeze i64 %i.ch
  %i.ci = and i64 %.fr186, 281470681808895
  %.not17.us.i.4 = icmp ne i64 %i.ci, 0
  %i.cj = zext i1 %.not17.us.i.4 to i32
  %spec.select.i.4 = add nuw nsw i32 %spec.select.i.3, %i.cj ; 2 uses
  br i1 %exitcond55.not.i.4, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.5

Abc_TtHasVar.exit.us.i.5:                         ; preds = %Abc_TtHasVar.exit.us.i.4
  %i.ck = lshr i64 %i.bp, 32
  %.masked = and i64 %i.bp, 4294967295
  %i.cl = xor i64 %i.ck, %.masked
  %.fr.us.i.5 = freeze i64 %i.cl
  %.not17.us.i.5 = icmp ne i64 %.fr.us.i.5, 0
  %i.cm = zext i1 %.not17.us.i.5 to i32
  %spec.select.i.5 = add nuw nsw i32 %spec.select.i.4, %i.cm
  br label %Abc_TtSupportSize.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i15
  br i1 %.not48.i.i, label %Abc_TtSupportSize.exit.thread, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.i, %Abc_TtHasVar.exit.thread.i
  %indvars.iv.i17 = phi i64 [ %indvars.iv.next.i18, %Abc_TtHasVar.exit.thread.i ], [ 0, %.lr.ph.split.i ] ; 5 uses
  %.022.i = phi i32 [ %i.dk, %Abc_TtHasVar.exit.thread.i ], [ 0, %.lr.ph.split.i ] ; 4 uses
  %i.cn = icmp samesign ult i64 %indvars.iv.i17, 6
  br i1 %i.cn, label %.lr.ph.i.i, label %.preheader.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.split.split.i
  %i.co = trunc nuw nsw i64 %indvars.iv.i17 to i32
  %i.cp = shl nuw nsw i32 1, %i.co
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i17
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !109
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %exitcond58.not.i.i = icmp eq i64 %indvars.iv.next54.i.i, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %bb.h, !llvm.loop !8

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next54.i.i, %bb.g ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv53.i.i
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !109 ; 2 uses
  %i.cv = lshr i64 %i.cu, %i.cq
  %i.cw = xor i64 %i.cv, %i.cu
  %i.cx = and i64 %i.cw, %i.cs
  %.not39.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not39.i.i, label %bb.g, label %Abc_TtHasVar.exit.thread13.i

.preheader.lr.ph.i.i:                             ; preds = %.lr.ph.split.split.split.i
  %i.cy = add nsw i64 %indvars.iv.i17, -6         ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 31
  %i.da = trunc nuw nsw i64 %i.cy to i32          ; 2 uses
  %i.db = shl i32 2, %i.da
  %i.dc = sext i32 %i.db to i64
  br i1 %i.cz, label %Abc_TtHasVar.exit.thread.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.dd = shl nuw nsw i32 1, %i.da                ; 2 uses
  %3 = zext nneg i32 %i.dd to i64
  %wide.trip.count.i.i = zext nneg i32 %i.dd to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.03343.us.i.i = phi ptr [ %i.dh, %._crit_edge.us.i.i ], [ %i.a, %.preheader.us.preheader.i.i ] ; 3 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.03343.us.i.i, i64 %3
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.j, !llvm.loop !9

bb.j:                                             ; preds = %bb.i, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i, i64 %indvars.iv.i.i
  %i.df = load i64, ptr %i.de, align 8, !tbaa !109
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.dg = load i64, ptr %gep.i.i, align 8, !tbaa !109
  %.not.us.i.i = icmp eq i64 %i.df, %i.dg
  br i1 %.not.us.i.i, label %bb.i, label %Abc_TtHasVar.exit.thread13.i

._crit_edge.us.i.i:                               ; preds = %bb.i
  %i.dh = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i, i64 %i.dc ; 2 uses
  %i.di = icmp ult ptr %i.dh, %i.j
  br i1 %i.di, label %.preheader.us.i.i, label %Abc_TtHasVar.exit.thread.i, !llvm.loop !10

Abc_TtHasVar.exit.thread13.i:                     ; preds = %bb.h, %bb.j
  %i.dj = add nsw i32 %.022.i, 1
  br label %Abc_TtHasVar.exit.thread.i

Abc_TtHasVar.exit.thread.i:                       ; preds = %._crit_edge.us.i.i, %bb.g, %Abc_TtHasVar.exit.thread13.i, %.preheader.lr.ph.i.i
  %i.dk = phi i32 [ %i.dj, %Abc_TtHasVar.exit.thread13.i ], [ %.022.i, %bb.g ], [ %.022.i, %.preheader.lr.ph.i.i ], [ %.022.i, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next.i18 = add nuw nsw i64 %indvars.iv.i17, 1 ; 2 uses
  %exitcond.not.i19 = icmp eq i64 %indvars.iv.next.i18, %wide.trip.count.i16
  br i1 %exitcond.not.i19, label %Abc_TtSupportSize.exit, label %.lr.ph.split.split.split.i, !llvm.loop !230

Abc_TtSupportSize.exit:                           ; preds = %Abc_TtHasVar.exit.thread.i, %.lr.ph.split.us.i, %Abc_TtHasVar.exit.us.i.1, %Abc_TtHasVar.exit.us.i.2, %Abc_TtHasVar.exit.us.i.3, %Abc_TtHasVar.exit.us.i.4, %Abc_TtHasVar.exit.us.i.5
  %.0.lcssa.i = phi i32 [ %spec.select.i.5, %Abc_TtHasVar.exit.us.i.5 ], [ %i.bt, %.lr.ph.split.us.i ], [ %spec.select.i.1, %Abc_TtHasVar.exit.us.i.1 ], [ %spec.select.i.2, %Abc_TtHasVar.exit.us.i.2 ], [ %spec.select.i.3, %Abc_TtHasVar.exit.us.i.3 ], [ %spec.select.i.4, %Abc_TtHasVar.exit.us.i.4 ], [ %i.dk, %Abc_TtHasVar.exit.thread.i ]
  %i.dl = icmp slt i32 %.0.lcssa.i, 2
  br i1 %i.dl, label %Abc_TtSupportSize.exit.thread, label %bb.k

bb.k:                                             ; preds = %Abc_TtSupportSize.exit
  br i1 %i.b, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dm = load i64, ptr %0, align 8, !tbaa !109
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !109
  %i.dp = and i64 %i.do, %i.dm                    ; 2 uses
  %i.dq = trunc nuw nsw i64 %indvars.iv to i32
  %i.dr = shl nuw i32 1, %i.dq
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = lshr i64 %i.dp, %i.ds
  %i.du = or i64 %i.dt, %i.dp
  store i64 %i.du, ptr %i.a, align 16, !tbaa !109
  br label %.lr.ph.i33

bb.m:                                             ; preds = %bb.k
  %i.dv = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.dv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.e, label %.lr.ph.i31, label %.lr.ph.i33

.lr.ph.i31:                                       ; preds = %bb.n
  %i.dw = trunc nuw nsw i64 %indvars.iv to i32
  %i.dx = shl nuw nsw i32 1, %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !109 ; 2 uses
  %i.ea = zext nneg i32 %i.dx to i64              ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i31
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dz, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert126 = insertelement <2 x i64> poison, i64 %i.ea, i64 0
  %broadcast.splat127 = shufflevector <2 x i64> %broadcast.splatinsert126, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load = load <2 x i64>, ptr %i.eb, align 8, !tbaa !109
  %wide.load128 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !109
  %i.ed = and <2 x i64> %wide.load, %broadcast.splat ; 2 uses
  %i.ee = and <2 x i64> %wide.load128, %broadcast.splat ; 2 uses
  %i.ef = lshr <2 x i64> %i.ed, %broadcast.splat127
  %i.eg = lshr <2 x i64> %i.ee, %broadcast.splat127
  %i.eh = or <2 x i64> %i.ef, %i.ed
  %i.ei = or <2 x i64> %i.eg, %i.ee
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store <2 x i64> %i.eh, ptr %i.ej, align 16, !tbaa !109
  store <2 x i64> %i.ei, ptr %i.ek, align 16, !tbaa !109
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !231

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph.i33, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i31, %middle.block
  %indvars.iv58.i.ph = phi i64 [ 0, %.lr.ph.i31 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %scalar.ph ], [ %indvars.iv58.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv58.i
  %i.en = load i64, ptr %i.em, align 8, !tbaa !109
  %i.eo = and i64 %i.en, %i.dz                    ; 2 uses
  %i.ep = lshr i64 %i.eo, %i.ea
  %i.eq = or i64 %i.ep, %i.eo
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv58.i
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !109
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next59.i, %wide.trip.count59.i
  br i1 %exitcond62.not.i, label %.lr.ph.i33, label %scalar.ph, !llvm.loop !232

bb.o:                                             ; preds = %bb.m
  %i.es = add nsw i64 %indvars.iv, -6             ; 3 uses
  %i.et = trunc nsw i64 %i.es to i32              ; 2 uses
  %i.eu = shl nuw i32 1, %i.et                    ; 4 uses
  br i1 %i.e, label %.preheader.lr.ph.i21, label %.lr.ph.i33

.preheader.lr.ph.i21:                             ; preds = %bb.o
  %i.ev = icmp eq i64 %i.es, 31
  %i.ew = shl i32 2, %i.et
  %i.ex = sext i32 %i.ew to i64                   ; 2 uses
  br i1 %i.ev, label %.lr.ph.i33, label %.preheader.us.preheader.i23

.preheader.us.preheader.i23:                      ; preds = %.preheader.lr.ph.i21
  %i.ey = sext i32 %i.eu to i64                   ; 5 uses
  %smax.i24 = call i32 @llvm.smax.i32(i32 %i.eu, i32 1)
  %min.iters.check130 = icmp slt i32 %i.eu, 4
  %i.ez = and i32 %smax.i24, 2147483644
  %n.vec132 = zext nneg i32 %i.ez to i64
  %exitcond.not.i29 = icmp slt i32 %i.eu, 2
  %i.fa = add nuw nsw i64 %i.ey, 1                ; 2 uses
  %exitcond.not.i29.1 = icmp eq i64 %i.es, 1
  %i.fb = add nuw nsw i64 %i.ey, 2                ; 2 uses
  br label %.preheader.us.i26

.preheader.us.i26:                                ; preds = %._crit_edge.us.i30, %.preheader.us.preheader.i23
  %.04453.us.i = phi ptr [ %i.fw, %._crit_edge.us.i30 ], [ %i.a, %.preheader.us.preheader.i23 ] ; 9 uses
  %.04552.us.i = phi ptr [ %i.fv, %._crit_edge.us.i30 ], [ %0, %.preheader.us.preheader.i23 ] ; 5 uses
  br i1 %min.iters.check130, label %scalar.ph129, label %vector.body133

vector.body133:                                   ; preds = %.preheader.us.i26, %vector.body133
  %index134 = phi i64 [ %index.next137, %vector.body133 ], [ 0, %.preheader.us.i26 ] ; 3 uses
  %i.fc = add nuw nsw i64 %index134, %i.ey        ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load135 = load <2 x i64>, ptr %i.fd, align 8, !tbaa !109 ; 2 uses
  %wide.load136 = load <2 x i64>, ptr %i.fe, align 8, !tbaa !109 ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %index134 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store <2 x i64> %wide.load135, ptr %i.ff, align 8, !tbaa !109
  store <2 x i64> %wide.load136, ptr %i.fg, align 8, !tbaa !109
  %i.fh = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.fc ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store <2 x i64> %wide.load135, ptr %i.fh, align 8, !tbaa !109
  store <2 x i64> %wide.load136, ptr %i.fi, align 8, !tbaa !109
  %index.next137 = add nuw i64 %index134, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.fj, label %._crit_edge.us.i30, label %vector.body133, !llvm.loop !233

scalar.ph129:                                     ; preds = %.preheader.us.i26
  %i.fk = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.ey
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !109 ; 2 uses
  store i64 %i.fl, ptr %.04453.us.i, align 8, !tbaa !109
  %i.fm = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.ey
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !109
  br i1 %exitcond.not.i29, label %._crit_edge.us.i30, label %scalar.ph129.1

scalar.ph129.1:                                   ; preds = %scalar.ph129
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.04552.us.i, i64 %i.fa
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !109 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.04453.us.i, i64 8
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !109
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %i.fa
  store i64 %i.fo, ptr %i.fq, align 8, !tbaa !109
  br i1 %exitcond.not.i29.1, label %._crit_edge.us.i30, label %scalar.ph129.2

scalar.ph129.2:                                   ; preds = %scalar.ph129.1
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.04552.us.i, i64 %i.fb
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !109 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.04453.us.i, i64 16
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !109
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %i.fb
  store i64 %i.fs, ptr %i.fu, align 8, !tbaa !109
  br label %._crit_edge.us.i30

._crit_edge.us.i30:                               ; preds = %vector.body133, %scalar.ph129, %scalar.ph129.1, %scalar.ph129.2
  %i.fv = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.ex ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.ex
  %i.fx = icmp ult ptr %i.fv, %i.d
  br i1 %i.fx, label %.preheader.us.i26, label %.lr.ph.i33, !llvm.loop !11

.lr.ph.i33:                                       ; preds = %._crit_edge.us.i30, %scalar.ph, %middle.block, %.preheader.lr.ph.i21, %bb.o, %bb.n, %bb.l
  br i1 %i.f, label %.lr.ph.split.us.i67, label %.lr.ph.split.i37

.lr.ph.split.us.i67:                              ; preds = %.lr.ph.i33
  %i.fy = load i64, ptr %i.a, align 16, !tbaa !109 ; 12 uses
  %i.fz = lshr i64 %i.fy, 1
  %i.ga = xor i64 %i.fz, %i.fy
  %.fr187 = freeze i64 %i.ga
  %i.gb = and i64 %.fr187, 6148914691236517205
  %.not17.us.i73 = icmp ne i64 %i.gb, 0
  %i.gc = zext i1 %.not17.us.i73 to i32           ; 2 uses
  br i1 %exitcond55.not.i76, label %Abc_TtSupportSize.exit77, label %Abc_TtHasVar.exit.us.i69.1

Abc_TtHasVar.exit.us.i69.1:                       ; preds = %.lr.ph.split.us.i67
  %i.gd = lshr i64 %i.fy, 2
  %i.ge = xor i64 %i.gd, %i.fy
  %.fr188 = freeze i64 %i.ge
  %i.gf = and i64 %.fr188, 3689348814741910323
  %.not17.us.i73.1 = icmp ne i64 %i.gf, 0
  %i.gg = zext i1 %.not17.us.i73.1 to i32
  %spec.select.i74.1 = add nuw nsw i32 %i.gc, %i.gg ; 2 uses
  br i1 %exitcond55.not.i76.1, label %Abc_TtSupportSize.exit77, label %Abc_TtHasVar.exit.us.i69.2

Abc_TtHasVar.exit.us.i69.2:                       ; preds = %Abc_TtHasVar.exit.us.i69.1
  %i.gh = lshr i64 %i.fy, 4
  %i.gi = xor i64 %i.gh, %i.fy
  %.fr189 = freeze i64 %i.gi
  %i.gj = and i64 %.fr189, 1085102592571150095
  %.not17.us.i73.2 = icmp ne i64 %i.gj, 0
  %i.gk = zext i1 %.not17.us.i73.2 to i32
  %spec.select.i74.2 = add nuw nsw i32 %spec.select.i74.1, %i.gk ; 2 uses
  br i1 %exitcond55.not.i76.2, label %Abc_TtSupportSize.exit77, label %Abc_TtHasVar.exit.us.i69.3

Abc_TtHasVar.exit.us.i69.3:                       ; preds = %Abc_TtHasVar.exit.us.i69.2
  %i.gl = lshr i64 %i.fy, 8
  %i.gm = xor i64 %i.gl, %i.fy
  %.fr190 = freeze i64 %i.gm
  %i.gn = and i64 %.fr190, 71777214294589695
  %.not17.us.i73.3 = icmp ne i64 %i.gn, 0
  %i.go = zext i1 %.not17.us.i73.3 to i32
  %spec.select.i74.3 = add nuw nsw i32 %spec.select.i74.2, %i.go ; 2 uses
  br i1 %exitcond55.not.i76.3, label %Abc_TtSupportSize.exit77, label %Abc_TtHasVar.exit.us.i69.4

Abc_TtHasVar.exit.us.i69.4:                       ; preds = %Abc_TtHasVar.exit.us.i69.3
  %i.gp = lshr i64 %i.fy, 16
  %i.gq = xor i64 %i.gp, %i.fy
  %.fr191 = freeze i64 %i.gq
  %i.gr = and i64 %.fr191, 281470681808895
  %.not17.us.i73.4 = icmp ne i64 %i.gr, 0
  %i.gs = zext i1 %.not17.us.i73.4 to i32
  %spec.select.i74.4 = add nuw nsw i32 %spec.select.i74.3, %i.gs ; 2 uses
  br i1 %exitcond55.not.i76.4, label %Abc_TtSupportSize.exit77, label %Abc_TtHasVar.exit.us.i69.5

Abc_TtHasVar.exit.us.i69.5:                       ; preds = %Abc_TtHasVar.exit.us.i69.4
  %i.gt = lshr i64 %i.fy, 32
  %.masked192 = and i64 %i.fy, 4294967295
  %i.gu = xor i64 %i.gt, %.masked192
  %.fr.us.i72.5 = freeze i64 %i.gu
  %.not17.us.i73.5 = icmp ne i64 %.fr.us.i72.5, 0
  %i.gv = zext i1 %.not17.us.i73.5 to i32
  %spec.select.i74.5 = add nuw nsw i32 %spec.select.i74.4, %i.gv
  br label %Abc_TtSupportSize.exit77

.lr.ph.split.i37:                                 ; preds = %.lr.ph.i33
  br i1 %.not48.i.i, label %Abc_TtSupportSize.exit.thread, label %.lr.ph.split.split.split.i41

.lr.ph.split.split.split.i41:                     ; preds = %.lr.ph.split.i37, %Abc_TtHasVar.exit.thread.i55
  %indvars.iv.i42 = phi i64 [ %indvars.iv.next.i56, %Abc_TtHasVar.exit.thread.i55 ], [ 0, %.lr.ph.split.i37 ] ; 5 uses
  %.022.i43 = phi i32 [ %i.ht, %Abc_TtHasVar.exit.thread.i55 ], [ 0, %.lr.ph.split.i37 ] ; 4 uses
  %i.gw = icmp samesign ult i64 %indvars.iv.i42, 6
  br i1 %i.gw, label %.lr.ph.i.i62, label %.preheader.lr.ph.i.i44

.lr.ph.i.i62:                                     ; preds = %.lr.ph.split.split.split.i41
  %i.gx = trunc nuw nsw i64 %indvars.iv.i42 to i32
  %i.gy = shl nuw nsw i32 1, %i.gx
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i42
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !109
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next54.i.i65 = add nuw nsw i64 %indvars.iv53.i.i63, 1 ; 2 uses
  %exitcond58.not.i.i66 = icmp eq i64 %indvars.iv.next54.i.i65, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i66, label %Abc_TtHasVar.exit.thread.i55, label %bb.q, !llvm.loop !8

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i62
  %indvars.iv53.i.i63 = phi i64 [ 0, %.lr.ph.i.i62 ], [ %indvars.iv.next54.i.i65, %bb.p ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv53.i.i63
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !109 ; 2 uses
  %i.he = lshr i64 %i.hd, %i.gz
  %i.hf = xor i64 %i.he, %i.hd
  %i.hg = and i64 %i.hf, %i.hb
  %.not39.i.i64 = icmp eq i64 %i.hg, 0
  br i1 %.not39.i.i64, label %bb.p, label %Abc_TtHasVar.exit.thread13.i54

.preheader.lr.ph.i.i44:                           ; preds = %.lr.ph.split.split.split.i41
  %i.hh = add nsw i64 %indvars.iv.i42, -6         ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 31
  %i.hj = trunc nuw nsw i64 %i.hh to i32          ; 2 uses
  %i.hk = shl i32 2, %i.hj
  %i.hl = sext i32 %i.hk to i64
  br i1 %i.hi, label %Abc_TtHasVar.exit.thread.i55, label %.preheader.us.preheader.i.i45

.preheader.us.preheader.i.i45:                    ; preds = %.preheader.lr.ph.i.i44
  %i.hm = shl nuw nsw i32 1, %i.hj                ; 2 uses
  %4 = zext nneg i32 %i.hm to i64
  %wide.trip.count.i.i47 = zext nneg i32 %i.hm to i64
  br label %.preheader.us.i.i48

.preheader.us.i.i48:                              ; preds = %._crit_edge.us.i.i61, %.preheader.us.preheader.i.i45
  %.03343.us.i.i49 = phi ptr [ %i.hq, %._crit_edge.us.i.i61 ], [ %i.a, %.preheader.us.preheader.i.i45 ] ; 3 uses
  %invariant.gep.i.i50 = getelementptr [8 x i8], ptr %.03343.us.i.i49, i64 %4
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next.i.i59 = add nuw nsw i64 %indvars.iv.i.i51, 1 ; 2 uses
  %exitcond.not.i.i60 = icmp eq i64 %indvars.iv.next.i.i59, %wide.trip.count.i.i47
  br i1 %exitcond.not.i.i60, label %._crit_edge.us.i.i61, label %bb.s, !llvm.loop !9

bb.s:                                             ; preds = %bb.r, %.preheader.us.i.i48
  %indvars.iv.i.i51 = phi i64 [ 0, %.preheader.us.i.i48 ], [ %indvars.iv.next.i.i59, %bb.r ] ; 3 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i49, i64 %indvars.iv.i.i51
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !109
  %gep.i.i52 = getelementptr [8 x i8], ptr %invariant.gep.i.i50, i64 %indvars.iv.i.i51
  %i.hp = load i64, ptr %gep.i.i52, align 8, !tbaa !109
  %.not.us.i.i53 = icmp eq i64 %i.ho, %i.hp
  br i1 %.not.us.i.i53, label %bb.r, label %Abc_TtHasVar.exit.thread13.i54

._crit_edge.us.i.i61:                             ; preds = %bb.r
  %i.hq = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i49, i64 %i.hl ; 2 uses
  %i.hr = icmp ult ptr %i.hq, %i.j
  br i1 %i.hr, label %.preheader.us.i.i48, label %Abc_TtHasVar.exit.thread.i55, !llvm.loop !10

Abc_TtHasVar.exit.thread13.i54:                   ; preds = %bb.q, %bb.s
  %i.hs = add nsw i32 %.022.i43, 1
  br label %Abc_TtHasVar.exit.thread.i55

Abc_TtHasVar.exit.thread.i55:                     ; preds = %._crit_edge.us.i.i61, %bb.p, %Abc_TtHasVar.exit.thread13.i54, %.preheader.lr.ph.i.i44
  %i.ht = phi i32 [ %i.hs, %Abc_TtHasVar.exit.thread13.i54 ], [ %.022.i43, %bb.p ], [ %.022.i43, %.preheader.lr.ph.i.i44 ], [ %.022.i43, %._crit_edge.us.i.i61 ] ; 2 uses
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %indvars.iv.next.i56, %wide.trip.count.i16
  br i1 %exitcond.not.i57, label %Abc_TtSupportSize.exit77, label %.lr.ph.split.split.split.i41, !llvm.loop !230

Abc_TtSupportSize.exit77:                         ; preds = %Abc_TtHasVar.exit.thread.i55, %.lr.ph.split.us.i67, %Abc_TtHasVar.exit.us.i69.1, %Abc_TtHasVar.exit.us.i69.2, %Abc_TtHasVar.exit.us.i69.3, %Abc_TtHasVar.exit.us.i69.4, %Abc_TtHasVar.exit.us.i69.5
  %.0.lcssa.i58 = phi i32 [ %spec.select.i74.5, %Abc_TtHasVar.exit.us.i69.5 ], [ %i.gc, %.lr.ph.split.us.i67 ], [ %spec.select.i74.1, %Abc_TtHasVar.exit.us.i69.1 ], [ %spec.select.i74.2, %Abc_TtHasVar.exit.us.i69.2 ], [ %spec.select.i74.3, %Abc_TtHasVar.exit.us.i69.3 ], [ %spec.select.i74.4, %Abc_TtHasVar.exit.us.i69.4 ], [ %i.ht, %Abc_TtHasVar.exit.thread.i55 ]
  %i.hu = icmp slt i32 %.0.lcssa.i58, 2
  br i1 %i.hu, label %Abc_TtSupportSize.exit.thread, label %._crit_edge.loopexit.split.loop.exit114

Abc_TtSupportSize.exit.thread:                    ; preds = %.lr.ph.split.i37, %.lr.ph.split.i, %Abc_TtSupportSize.exit77, %Abc_TtSupportSize.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i16
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !234

._crit_edge.loopexit.split.loop.exit114:          ; preds = %Abc_TtSupportSize.exit77
  %i.hv = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %Abc_TtSupportSize.exit.thread, %._crit_edge.loopexit.split.loop.exit114, %bb.a
  %.012 = phi i32 [ -1, %bb.a ], [ %i.hv, %._crit_edge.loopexit.split.loop.exit114 ], [ -1, %Abc_TtSupportSize.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i32 %.012
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Lf_MemSaveCut(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !115  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 20         ; 4 uses
  %.val46 = load i32, ptr %i.d, align 4, !tbaa !113 ; 2 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !84
  %i.f = ashr i32 %i.b, %i.e                      ; 4 uses
  %i.g = icmp eq i32 %.val46, %i.f
  br i1 %i.g, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112  ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4        ; 2 uses
  %.val45 = load i32, ptr %i.j, align 4, !tbaa !113 ; 2 uses
  %.not = icmp eq i32 %.val45, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !85
  %i.m = add nsw i32 %.val45, -1                  ; 2 uses
  store i32 %i.m, ptr %i.j, align 4, !tbaa !113
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !86
  %.pre = load i32, ptr %i.d, align 4, !tbaa !113
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !87
  %i.s = add nsw i32 %i.r, 1
  %i.t = sext i32 %i.s to i64
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = phi i32 [ %.pre, %bb.c ], [ %.val46, %bb.d ] ; 7 uses
  %i.w = phi ptr [ %i.p, %bb.c ], [ %i.u, %bb.d ]
  %i.x = load i32, ptr %i.c, align 8, !tbaa !114
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.f, label %Vec_PtrPush.exit

bb.f:                                             ; preds = %bb.e
  %i.z = icmp slt i32 %i.v, 16
  br i1 %i.z, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !85 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ab, i64 noundef 128) #35
  br label %Vec_PtrGrow.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #33
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.i, %bb.h
  %i.ae = phi ptr [ %i.ac, %bb.h ], [ %i.ad, %bb.i ]
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !85
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.j:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i32 %i.v, 1073741823
  %i.ag = shl nuw nsw i32 %i.v, 1
  %spec.select.i = select i1 %i.af, i32 %i.ag, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.v, %spec.select.i
  br i1 %.not.i10.i, label %bb.k, label %Vec_PtrPush.exit

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !85 ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.ai, null
  %i.aj = zext nneg i32 %spec.select.i to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = tail call ptr @realloc(ptr noundef nonnull %i.ai, i64 noundef %i.ak) #35
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.ak) #33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.an = phi ptr [ %i.al, %bb.l ], [ %i.am, %bb.m ]
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !85
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.n, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.n ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.c, align 8, !tbaa !114
  %.pre77 = load i32, ptr %i.d, align 4, !tbaa !113
  %.pre78.pre = load i32, ptr %i.a, align 4, !tbaa !115
  %.pre79.pre = load i32, ptr %0, align 8, !tbaa !84
  %.pre83 = ashr i32 %.pre78.pre, %.pre79.pre
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.e, %bb.j, %Vec_PtrGrow.exit12.sink.split.i
  %.pre82.pre-phi = phi i32 [ %i.f, %bb.e ], [ %i.f, %bb.j ], [ %.pre83, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.ao = phi i32 [ %i.v, %bb.e ], [ %i.v, %bb.j ], [ %.pre77, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !85
  %i.ar = add nsw i32 %i.ao, 1
  store i32 %i.ar, ptr %i.d, align 4, !tbaa !113
  %i.as = sext i32 %i.ao to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.as
  store ptr %i.w, ptr %i.at, align 8, !tbaa !86
  br label %bb.o

bb.o:                                             ; preds = %Vec_PtrPush.exit, %bb.a
  %.pre-phi = phi i32 [ %.pre82.pre-phi, %Vec_PtrPush.exit ], [ %i.f, %bb.a ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !87
  %i.aw = and i32 %i.av, %i.b                     ; 3 uses
  %i.ax = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.ax, align 8, !tbaa !85
  %i.ay = sext i32 %.pre-phi to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !86 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.bd = lshr i32 %i.bc, 24                      ; 2 uses
  %.not11.i = icmp sgt i32 %i.bc, -1
  br i1 %.not11.i, label %Gia_AigerWriteUnsignedBuffer.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.be = sext i32 %i.aw to i64
  %i.bf = trunc nuw i32 %i.bd to i8
  %i.bg = getelementptr inbounds i8, ptr %i.ba, i64 %i.be
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !88
  %indvars.iv.next.i = add i32 %i.aw, 1
  br label %Gia_AigerWriteUnsignedBuffer.exit

Gia_AigerWriteUnsignedBuffer.exit:                ; preds = %bb.o, %.lr.ph.preheader.i
end_hunk_1
