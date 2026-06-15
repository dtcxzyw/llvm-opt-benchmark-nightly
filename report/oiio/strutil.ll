inline.NumInlined: 4879
inline.NumDeleted: 1465
begin_hunk_0_@oiio_stbsp_vsprintfcb:bb.a
  br label %._crit_edge1752

.lr.ph1751.split:                                 ; preds = %.lr.ph1751.split.prol.loopexit, %.lr.ph1751.split
  %.267051749 = phi ptr [ %.27706.1, %.lr.ph1751.split ], [ %.267051749.unr, %.lr.ph1751.split.prol.loopexit ] ; 3 uses
  %.139561748 = phi i32 [ %spec.select1225.1, %.lr.ph1751.split ], [ %.139561748.unr, %.lr.ph1751.split.prol.loopexit ] ; 2 uses
  %.139801747 = phi i32 [ %i.all, %.lr.ph1751.split ], [ %.139801747.unr, %.lr.ph1751.split.prol.loopexit ]
  %i.alf = add i32 %.139561748, 1
  %i.alg = icmp eq i32 %.139561748, %i.ajr        ; 2 uses
  %i.alh = load i8, ptr @_ZL12stbsp__comma, align 1
  %spec.select1224 = select i1 %i.alg, i8 %i.alh, i8 48
  %spec.select1225 = select i1 %i.alg, i32 0, i32 %i.alf ; 2 uses
  %.27706 = getelementptr inbounds nuw i8, ptr %.267051749, i64 1
  store i8 %spec.select1224, ptr %.267051749, align 1, !tbaa !7
  %i.ali = add i32 %spec.select1225, 1
  %i.alj = icmp eq i32 %spec.select1225, %i.ajr   ; 2 uses
  %i.alk = load i8, ptr @_ZL12stbsp__comma, align 1
  %spec.select1224.1 = select i1 %i.alj, i8 %i.alk, i8 48
  %spec.select1225.1 = select i1 %i.alj, i32 0, i32 %i.ali ; 2 uses
  %.27706.1 = getelementptr inbounds nuw i8, ptr %.267051749, i64 2 ; 2 uses
  store i8 %spec.select1224.1, ptr %.27706, align 1, !tbaa !7
  %i.all = add nsw i32 %.139801747, -2            ; 2 uses
  %.not1148.1 = icmp eq i32 %i.all, 0
  br i1 %.not1148.1, label %._crit_edge1752, label %.lr.ph1751.split, !llvm.loop !50

._crit_edge1752:                                  ; preds = %.lr.ph1751.split.prol.loopexit, %.lr.ph1751.split, %.loopexit.thread, %.lr.ph1751.split.us.preheader, %.loopexit
  %.13956.lcssa = phi i32 [ %.129551757, %.loopexit ], [ %.129551757, %.lr.ph1751.split.us.preheader ], [ %.129551757, %.loopexit.thread ], [ %spec.select1225.lcssa.unr, %.lr.ph1751.split.prol.loopexit ], [ %spec.select1225.1, %.lr.ph1751.split ]
  %.26705.lcssa = phi ptr [ %.25704, %.loopexit ], [ %scevgep2041, %.lr.ph1751.split.us.preheader ], [ %.227011760.fr, %.loopexit.thread ], [ %.27706.lcssa.unr, %.lr.ph1751.split.prol.loopexit ], [ %.27706.1, %.lr.ph1751.split ] ; 3 uses
  br i1 %.not1074, label %.thread1310, label %bb.gr

bb.gr:                                            ; preds = %._crit_edge1752
  %i.alm = ptrtoint ptr %.26705.lcssa to i64
  %i.aln = sub i64 %i.alm, %i.akb
  %i.alo = trunc i64 %i.aln to i32                ; 3 uses
  %i.alp = icmp sgt i32 %i.alo, 510
  br i1 %i.alp, label %bb.gs, label %.thread1310

bb.gs:                                            ; preds = %bb.gr
  %i.alq = add nuw nsw i32 %.147621759, %i.alo    ; 2 uses
  %i.alr = call noundef ptr %0(ptr noundef %.141761, ptr noundef %1, i32 noundef %i.alo) ; 3 uses
  %i.als = icmp eq ptr %i.alr, null
  br i1 %i.als, label %.thread1424, label %.thread1310

.thread1310:                                      ; preds = %bb.gs, %bb.gr, %._crit_edge1752
  %.17765 = phi i32 [ %.147621759, %._crit_edge1752 ], [ %.147621759, %bb.gr ], [ %i.alq, %bb.gs ] ; 2 uses
  %.30709 = phi ptr [ %.26705.lcssa, %._crit_edge1752 ], [ %.26705.lcssa, %bb.gr ], [ %i.alr, %bb.gs ] ; 2 uses
  %.17 = phi ptr [ %.141761, %._crit_edge1752 ], [ %.141761, %bb.gr ], [ %i.alr, %bb.gs ] ; 2 uses
  %i.alt = icmp sgt i32 %i.akd, 0
  br i1 %i.alt, label %.lr.ph1763, label %.loopexit1467.loopexit, !llvm.loop !51

.loopexit1467.loopexit:                           ; preds = %.thread1310
  %.pre2074 = load i8, ptr %i.c, align 1, !tbaa !7
  br label %.loopexit1467

.loopexit1467:                                    ; preds = %.loopexit1467.loopexit, %bb.gj
  %i.alu = phi i8 [ %i.agg, %bb.gj ], [ %.pre2074, %.loopexit1467.loopexit ] ; 2 uses
  %.8809 = phi i32 [ %.4805, %bb.gj ], [ %.6807, %.loopexit1467.loopexit ] ; 2 uses
  %.19767 = phi i32 [ %.1749, %bb.gj ], [ %.17765, %.loopexit1467.loopexit ] ; 2 uses
  %.32711 = phi ptr [ %.2681, %bb.gj ], [ %.30709, %.loopexit1467.loopexit ] ; 2 uses
  %.19 = phi ptr [ %.1, %bb.gj ], [ %.17, %.loopexit1467.loopexit ] ; 2 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !13
  %.not11541774 = icmp eq i8 %i.alu, 0
  br i1 %.not11541774, label %._crit_edge1780, label %.lr.ph1779

.lr.ph1779:                                       ; preds = %.loopexit1467, %bb.gv
  %i.alv = phi i8 [ %i.ang, %bb.gv ], [ %i.alu, %.loopexit1467 ] ; 2 uses
  %.201777 = phi ptr [ %.24, %bb.gv ], [ %.19, %.loopexit1467 ] ; 4 uses
  %.337121776 = phi ptr [ %.38717, %bb.gv ], [ %.32711, %.loopexit1467 ] ; 4 uses
  %.207681775 = phi i32 [ %.24772, %bb.gv ], [ %.19767, %.loopexit1467 ] ; 3 uses
  %i.alw = sext i8 %i.alv to i32                  ; 2 uses
  %i.alx = ptrtoint ptr %.337121776 to i64
  %i.aly = ptrtoint ptr %.201777 to i64           ; 2 uses
  %.neg1177 = sub i64 %i.aly, %i.alx
  %.neg1178 = trunc i64 %.neg1177 to i32
  %i.alz = add i32 %.neg1178, 512
  %spec.select1211 = call i32 @llvm.smin.i32(i32 %i.alz, i32 %i.alw)
  %.1918 = select i1 %.not1074, i32 %i.alw, i32 %spec.select1211 ; 6 uses
  %i.ama = trunc i32 %.1918 to i8
  %i.amb = sub i8 %i.alv, %i.ama
  store i8 %i.amb, ptr %i.c, align 1, !tbaa !7
  %.not11791767 = icmp eq i32 %.1918, 0
  br i1 %.not11791767, label %._crit_edge1772, label %.lr.ph1771.preheader

.lr.ph1771.preheader:                             ; preds = %.lr.ph1779
  %xtraiter2555 = and i32 %.1918, 3               ; 2 uses
  %lcmp.mod2556.not = icmp eq i32 %xtraiter2555, 0
  br i1 %lcmp.mod2556.not, label %.lr.ph1771.prol.loopexit, label %.lr.ph1771.prol

.lr.ph1771.prol:                                  ; preds = %.lr.ph1771.preheader, %.lr.ph1771.prol
  %.347131769.prol = phi ptr [ %i.amf, %.lr.ph1771.prol ], [ %.337121776, %.lr.ph1771.preheader ] ; 2 uses
  %.29191768.prol = phi i32 [ %i.amg, %.lr.ph1771.prol ], [ %.1918, %.lr.ph1771.preheader ]
  %prol.iter2557 = phi i32 [ %prol.iter2557.next, %.lr.ph1771.prol ], [ 0, %.lr.ph1771.preheader ]
  %i.amc = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 1
  store ptr %i.amd, ptr %i.g, align 8, !tbaa !13
  %i.ame = load i8, ptr %i.amc, align 1, !tbaa !7
  %i.amf = getelementptr inbounds nuw i8, ptr %.347131769.prol, i64 1 ; 3 uses
  store i8 %i.ame, ptr %.347131769.prol, align 1, !tbaa !7
  %i.amg = add nsw i32 %.29191768.prol, -1        ; 2 uses
  %prol.iter2557.next = add i32 %prol.iter2557, 1 ; 2 uses
  %prol.iter2557.cmp.not = icmp eq i32 %prol.iter2557.next, %xtraiter2555
  br i1 %prol.iter2557.cmp.not, label %.lr.ph1771.prol.loopexit, label %.lr.ph1771.prol, !llvm.loop !52

.lr.ph1771.prol.loopexit:                         ; preds = %.lr.ph1771.prol, %.lr.ph1771.preheader
  %.lcssa2507.unr = phi ptr [ poison, %.lr.ph1771.preheader ], [ %i.amf, %.lr.ph1771.prol ]
  %.347131769.unr = phi ptr [ %.337121776, %.lr.ph1771.preheader ], [ %i.amf, %.lr.ph1771.prol ]
  %.29191768.unr = phi i32 [ %.1918, %.lr.ph1771.preheader ], [ %i.amg, %.lr.ph1771.prol ]
  %i.amh = icmp ult i32 %.1918, 4
  br i1 %i.amh, label %._crit_edge1772, label %.lr.ph1771

.lr.ph1771:                                       ; preds = %.lr.ph1771.prol.loopexit, %.lr.ph1771
  %.347131769 = phi ptr [ %i.amx, %.lr.ph1771 ], [ %.347131769.unr, %.lr.ph1771.prol.loopexit ] ; 5 uses
  %.29191768 = phi i32 [ %i.amy, %.lr.ph1771 ], [ %.29191768.unr, %.lr.ph1771.prol.loopexit ]
  %i.ami = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 1
  store ptr %i.amj, ptr %i.g, align 8, !tbaa !13
  %i.amk = load i8, ptr %i.ami, align 1, !tbaa !7
  %i.aml = getelementptr inbounds nuw i8, ptr %.347131769, i64 1
  store i8 %i.amk, ptr %.347131769, align 1, !tbaa !7
  %i.amm = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 1
  store ptr %i.amn, ptr %i.g, align 8, !tbaa !13
  %i.amo = load i8, ptr %i.amm, align 1, !tbaa !7
  %i.amp = getelementptr inbounds nuw i8, ptr %.347131769, i64 2
  store i8 %i.amo, ptr %i.aml, align 1, !tbaa !7
  %i.amq = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 1
  store ptr %i.amr, ptr %i.g, align 8, !tbaa !13
  %i.ams = load i8, ptr %i.amq, align 1, !tbaa !7
  %i.amt = getelementptr inbounds nuw i8, ptr %.347131769, i64 3
  store i8 %i.ams, ptr %i.amp, align 1, !tbaa !7
  %i.amu = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 1
  store ptr %i.amv, ptr %i.g, align 8, !tbaa !13
  %i.amw = load i8, ptr %i.amu, align 1, !tbaa !7
  %i.amx = getelementptr inbounds nuw i8, ptr %.347131769, i64 4 ; 2 uses
  store i8 %i.amw, ptr %i.amt, align 1, !tbaa !7
  %i.amy = add nsw i32 %.29191768, -4             ; 2 uses
  %.not1179.3 = icmp eq i32 %i.amy, 0
  br i1 %.not1179.3, label %._crit_edge1772, label %.lr.ph1771, !llvm.loop !53

._crit_edge1772:                                  ; preds = %.lr.ph1771.prol.loopexit, %.lr.ph1771, %.lr.ph1779
  %.34713.lcssa = phi ptr [ %.337121776, %.lr.ph1779 ], [ %.lcssa2507.unr, %.lr.ph1771.prol.loopexit ], [ %i.amx, %.lr.ph1771 ] ; 3 uses
  br i1 %.not1074, label %bb.gv, label %bb.gt

bb.gt:                                            ; preds = %._crit_edge1772
  %i.amz = ptrtoint ptr %.34713.lcssa to i64
  %i.ana = sub i64 %i.amz, %i.aly
  %i.anb = trunc i64 %i.ana to i32                ; 3 uses
  %i.anc = icmp sgt i32 %i.anb, 510
  br i1 %i.anc, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.and = add nuw nsw i32 %.207681775, %i.anb    ; 2 uses
  %i.ane = call noundef ptr %0(ptr noundef %.201777, ptr noundef %1, i32 noundef %i.anb) ; 3 uses
  %i.anf = icmp eq ptr %i.ane, null
  br i1 %i.anf, label %.thread1424, label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %._crit_edge1772
  %.24772 = phi i32 [ %.207681775, %._crit_edge1772 ], [ %.207681775, %bb.gt ], [ %i.and, %bb.gu ] ; 2 uses
  %.38717 = phi ptr [ %.34713.lcssa, %._crit_edge1772 ], [ %.34713.lcssa, %bb.gt ], [ %i.ane, %bb.gu ] ; 2 uses
  %.24 = phi ptr [ %.201777, %._crit_edge1772 ], [ %.201777, %bb.gt ], [ %i.ane, %bb.gu ] ; 2 uses
  %i.ang = load i8, ptr %i.c, align 1, !tbaa !7   ; 2 uses
  %.not1154 = icmp eq i8 %i.ang, 0
  br i1 %.not1154, label %._crit_edge1780, label %.lr.ph1779, !llvm.loop !54

._crit_edge1780:                                  ; preds = %bb.gv, %.loopexit1467.thread, %.loopexit1467
  %.88092200 = phi i32 [ %.8809, %.loopexit1467 ], [ %.6807, %.loopexit1467.thread ], [ %.8809, %bb.gv ] ; 2 uses
  %.20768.lcssa = phi i32 [ %.19767, %.loopexit1467 ], [ %.10758.lcssa, %.loopexit1467.thread ], [ %.24772, %bb.gv ] ; 2 uses
  %.33712.lcssa = phi ptr [ %.32711, %.loopexit1467 ], [ %.17696.lcssa, %.loopexit1467.thread ], [ %.38717, %bb.gv ] ; 2 uses
  %.20.lcssa = phi ptr [ %.19, %.loopexit1467 ], [ %.10.lcssa, %.loopexit1467.thread ], [ %.24, %bb.gv ] ; 2 uses
  %i.anh = load i32, ptr %i.e, align 4, !tbaa !3  ; 2 uses
  %.not11551800 = icmp eq i32 %i.anh, 0
  br i1 %.not11551800, label %.preheader1463, label %.lr.ph1807

.preheader1463:                                   ; preds = %bb.gy, %._crit_edge1780
  %.25773.lcssa = phi i32 [ %.20768.lcssa, %._crit_edge1780 ], [ %.29777, %bb.gy ] ; 2 uses
  %.39718.lcssa = phi ptr [ %.33712.lcssa, %._crit_edge1780 ], [ %.45724, %bb.gy ] ; 2 uses
  %.25.lcssa = phi ptr [ %.20.lcssa, %._crit_edge1780 ], [ %.29, %bb.gy ] ; 2 uses
  %.not11561830 = icmp eq i32 %.3834, 0
  br i1 %.not11561830, label %._crit_edge1836, label %.lr.ph1835

.lr.ph1807:                                       ; preds = %._crit_edge1780, %bb.gy
  %.251805 = phi ptr [ %.29, %bb.gy ], [ %.20.lcssa, %._crit_edge1780 ] ; 4 uses
  %.397181804 = phi ptr [ %.45724, %bb.gy ], [ %.33712.lcssa, %._crit_edge1780 ] ; 4 uses
  %.257731803 = phi i32 [ %.29777, %bb.gy ], [ %.20768.lcssa, %._crit_edge1780 ] ; 3 uses
  %.369141802 = phi ptr [ %.38916.lcssa, %bb.gy ], [ %.35913, %._crit_edge1780 ] ; 3 uses
  %.209421801 = phi i32 [ %i.anl, %bb.gy ], [ %i.anh, %._crit_edge1780 ] ; 3 uses
  %i.ani = ptrtoint ptr %.397181804 to i64
  %i.anj = ptrtoint ptr %.251805 to i64           ; 2 uses
  %.neg1173 = sub i64 %i.anj, %i.ani
  %.neg1174 = trunc i64 %.neg1173 to i32
  %i.ank = add i32 %.neg1174, 512
  %spec.select1212 = call i32 @llvm.smin.i32(i32 %.209421801, i32 %i.ank)
  %.1856 = select i1 %.not1074, i32 %.209421801, i32 %spec.select1212
  %.1856.fr = freeze i32 %.1856                   ; 6 uses
  %i.anl = sub i32 %.209421801, %.1856.fr         ; 2 uses
  %i.anm = icmp sgt i32 %.1856.fr, 3
  br i1 %i.anm, label %.lr.ph1788.preheader, label %.preheader1450

.lr.ph1788.preheader:                             ; preds = %.lr.ph1807
  %i.ann = add nsw i32 %.1856.fr, -4              ; 2 uses
  %i.ano = lshr i32 %i.ann, 2
  %i.anp = add nuw nsw i32 %i.ano, 1
  %xtraiter2558 = and i32 %i.anp, 7               ; 2 uses
  %lcmp.mod2559.not = icmp eq i32 %xtraiter2558, 0
  br i1 %lcmp.mod2559.not, label %.lr.ph1788.prol.loopexit, label %.lr.ph1788.prol

.lr.ph1788.prol:                                  ; preds = %.lr.ph1788.preheader, %.lr.ph1788.prol
  %.407191786.prol = phi ptr [ %i.anr, %.lr.ph1788.prol ], [ %.397181804, %.lr.ph1788.preheader ] ; 2 uses
  %.28571785.prol = phi i32 [ %i.ant, %.lr.ph1788.prol ], [ %.1856.fr, %.lr.ph1788.preheader ]
  %.379151784.prol = phi ptr [ %i.ans, %.lr.ph1788.prol ], [ %.369141802, %.lr.ph1788.preheader ] ; 2 uses
  %prol.iter2560 = phi i32 [ %prol.iter2560.next, %.lr.ph1788.prol ], [ 0, %.lr.ph1788.preheader ]
  %i.anq = load volatile i32, ptr %.379151784.prol, align 4, !tbaa !3
  store volatile i32 %i.anq, ptr %.407191786.prol, align 4, !tbaa !3
  %i.anr = getelementptr inbounds nuw i8, ptr %.407191786.prol, i64 4 ; 3 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %.379151784.prol, i64 4 ; 3 uses
  %i.ant = add nsw i32 %.28571785.prol, -4        ; 3 uses
  %prol.iter2560.next = add i32 %prol.iter2560, 1 ; 2 uses
  %prol.iter2560.cmp.not = icmp eq i32 %prol.iter2560.next, %xtraiter2558
  br i1 %prol.iter2560.cmp.not, label %.lr.ph1788.prol.loopexit, label %.lr.ph1788.prol, !llvm.loop !55

.lr.ph1788.prol.loopexit:                         ; preds = %.lr.ph1788.prol, %.lr.ph1788.preheader
  %.407191786.unr = phi ptr [ %.397181804, %.lr.ph1788.preheader ], [ %i.anr, %.lr.ph1788.prol ]
  %.28571785.unr = phi i32 [ %.1856.fr, %.lr.ph1788.preheader ], [ %i.ant, %.lr.ph1788.prol ]
  %.379151784.unr = phi ptr [ %.369141802, %.lr.ph1788.preheader ], [ %i.ans, %.lr.ph1788.prol ]
  %.lcssa2511.unr = phi ptr [ poison, %.lr.ph1788.preheader ], [ %i.anr, %.lr.ph1788.prol ]
  %.lcssa2510.unr = phi ptr [ poison, %.lr.ph1788.preheader ], [ %i.ans, %.lr.ph1788.prol ]
  %.lcssa2509.unr = phi i32 [ poison, %.lr.ph1788.preheader ], [ %i.ant, %.lr.ph1788.prol ]
  %i.anu = icmp ult i32 %i.ann, 28
  br i1 %i.anu, label %.preheader1450, label %.lr.ph1788

.preheader1450:                                   ; preds = %.lr.ph1788.prol.loopexit, %.lr.ph1788, %.lr.ph1807
  %.37915.lcssa = phi ptr [ %.369141802, %.lr.ph1807 ], [ %.lcssa2510.unr, %.lr.ph1788.prol.loopexit ], [ %i.apm, %.lr.ph1788 ] ; 7 uses
  %.2857.lcssa = phi i32 [ %.1856.fr, %.lr.ph1807 ], [ %.lcssa2509.unr, %.lr.ph1788.prol.loopexit ], [ %i.apn, %.lr.ph1788 ] ; 7 uses
  %.40719.lcssa = phi ptr [ %.397181804, %.lr.ph1807 ], [ %.lcssa2511.unr, %.lr.ph1788.prol.loopexit ], [ %i.apl, %.lr.ph1788 ] ; 7 uses
  %.not11751792 = icmp eq i32 %.2857.lcssa, 0
  br i1 %.not11751792, label %._crit_edge1797, label %iter.check

iter.check:                                       ; preds = %.preheader1450
  %.37915.lcssa2385 = ptrtoaddr ptr %.37915.lcssa to i64
  %.40719.lcssa2384 = ptrtoaddr ptr %.40719.lcssa to i64
  %i.anv = zext i32 %.2857.lcssa to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %.2857.lcssa, 4
  %i.anw = sub i64 %.40719.lcssa2384, %.37915.lcssa2385
  %diff.check = icmp ult i64 %i.anw, 32
  %or.cond2438 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond2438, label %.lr.ph1796.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2386 = icmp ult i32 %.2857.lcssa, 32
  br i1 %min.iters.check2386, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.anv, 28
  %n.vec = and i64 %i.anv, 4294967264             ; 6 uses
  %i.anx = getelementptr i8, ptr %.40719.lcssa, i64 %n.vec ; 2 uses
  %i.any = trunc nuw i64 %n.vec to i32
  %i.anz = sub i32 %.2857.lcssa, %i.any
  %i.aoa = getelementptr i8, ptr %.37915.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.40719.lcssa, i64 %index ; 2 uses
  %next.gep2387 = getelementptr i8, ptr %.37915.lcssa, i64 %index ; 2 uses
  %i.aob = getelementptr i8, ptr %next.gep2387, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep2387, align 1, !tbaa !7
  %wide.load2388 = load <16 x i8>, ptr %i.aob, align 1, !tbaa !7
  %i.aoc = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !7
  store <16 x i8> %wide.load2388, ptr %i.aoc, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aod = icmp eq i64 %index.next, %n.vec
  br i1 %i.aod, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.anv
  br i1 %cmp.n, label %._crit_edge1797, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1796.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec2392 = and i64 %i.anv, 4294967292         ; 5 uses
  %i.aoe = getelementptr i8, ptr %.40719.lcssa, i64 %n.vec2392 ; 2 uses
  %i.aof = trunc nuw i64 %n.vec2392 to i32
  %i.aog = sub i32 %.2857.lcssa, %i.aof
  %i.aoh = getelementptr i8, ptr %.37915.lcssa, i64 %n.vec2392 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2393 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2397, %vec.epilog.vector.body ] ; 3 uses
  %next.gep2394 = getelementptr i8, ptr %.40719.lcssa, i64 %index2393
  %next.gep2395 = getelementptr i8, ptr %.37915.lcssa, i64 %index2393
  %wide.load2396 = load <4 x i8>, ptr %next.gep2395, align 1, !tbaa !7
  store <4 x i8> %wide.load2396, ptr %next.gep2394, align 1, !tbaa !7
  %index.next2397 = add nuw i64 %index2393, 4     ; 2 uses
  %i.aoi = icmp eq i64 %index.next2397, %n.vec2392
  br i1 %i.aoi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !58

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n2398 = icmp eq i64 %n.vec2392, %i.anv
  br i1 %cmp.n2398, label %._crit_edge1797, label %.lr.ph1796.preheader

.lr.ph1796.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.417201795.ph = phi ptr [ %.40719.lcssa, %iter.check ], [ %i.anx, %vec.epilog.iter.check ], [ %i.aoe, %vec.epilog.middle.block ] ; 2 uses
  %.38581794.ph = phi i32 [ %.2857.lcssa, %iter.check ], [ %i.anz, %vec.epilog.iter.check ], [ %i.aog, %vec.epilog.middle.block ] ; 4 uses
  %.389161793.ph = phi ptr [ %.37915.lcssa, %iter.check ], [ %i.aoa, %vec.epilog.iter.check ], [ %i.aoh, %vec.epilog.middle.block ] ; 2 uses
  %i.aoj = add nsw i32 %.38581794.ph, -1
  %xtraiter2561 = and i32 %.38581794.ph, 7        ; 2 uses
  %lcmp.mod2562.not = icmp eq i32 %xtraiter2561, 0
  br i1 %lcmp.mod2562.not, label %.lr.ph1796.prol.loopexit, label %.lr.ph1796.prol

.lr.ph1796.prol:                                  ; preds = %.lr.ph1796.preheader, %.lr.ph1796.prol
  %.417201795.prol = phi ptr [ %i.aom, %.lr.ph1796.prol ], [ %.417201795.ph, %.lr.ph1796.preheader ] ; 2 uses
  %.38581794.prol = phi i32 [ %i.aon, %.lr.ph1796.prol ], [ %.38581794.ph, %.lr.ph1796.preheader ]
  %.389161793.prol = phi ptr [ %i.aok, %.lr.ph1796.prol ], [ %.389161793.ph, %.lr.ph1796.preheader ] ; 2 uses
  %prol.iter2563 = phi i32 [ %prol.iter2563.next, %.lr.ph1796.prol ], [ 0, %.lr.ph1796.preheader ]
  %i.aok = getelementptr inbounds nuw i8, ptr %.389161793.prol, i64 1 ; 3 uses
  %i.aol = load i8, ptr %.389161793.prol, align 1, !tbaa !7
  %i.aom = getelementptr inbounds nuw i8, ptr %.417201795.prol, i64 1 ; 3 uses
  store i8 %i.aol, ptr %.417201795.prol, align 1, !tbaa !7
  %i.aon = add nsw i32 %.38581794.prol, -1        ; 2 uses
  %prol.iter2563.next = add i32 %prol.iter2563, 1 ; 2 uses
  %prol.iter2563.cmp.not = icmp eq i32 %prol.iter2563.next, %xtraiter2561
  br i1 %prol.iter2563.cmp.not, label %.lr.ph1796.prol.loopexit, label %.lr.ph1796.prol, !llvm.loop !59

.lr.ph1796.prol.loopexit:                         ; preds = %.lr.ph1796.prol, %.lr.ph1796.preheader
  %.lcssa2513.unr = phi ptr [ poison, %.lr.ph1796.preheader ], [ %i.aok, %.lr.ph1796.prol ]
  %.lcssa2512.unr = phi ptr [ poison, %.lr.ph1796.preheader ], [ %i.aom, %.lr.ph1796.prol ]
  %.417201795.unr = phi ptr [ %.417201795.ph, %.lr.ph1796.preheader ], [ %i.aom, %.lr.ph1796.prol ]
  %.38581794.unr = phi i32 [ %.38581794.ph, %.lr.ph1796.preheader ], [ %i.aon, %.lr.ph1796.prol ]
  %.389161793.unr = phi ptr [ %.389161793.ph, %.lr.ph1796.preheader ], [ %i.aok, %.lr.ph1796.prol ]
  %i.aoo = icmp ult i32 %i.aoj, 7
  br i1 %i.aoo, label %._crit_edge1797, label %.lr.ph1796

.lr.ph1788:                                       ; preds = %.lr.ph1788.prol.loopexit, %.lr.ph1788
  %.407191786 = phi ptr [ %i.apl, %.lr.ph1788 ], [ %.407191786.unr, %.lr.ph1788.prol.loopexit ] ; 9 uses
  %.28571785 = phi i32 [ %i.apn, %.lr.ph1788 ], [ %.28571785.unr, %.lr.ph1788.prol.loopexit ] ; 2 uses
  %.379151784 = phi ptr [ %i.apm, %.lr.ph1788 ], [ %.379151784.unr, %.lr.ph1788.prol.loopexit ] ; 9 uses
  %i.aop = load volatile i32, ptr %.379151784, align 4, !tbaa !3
  store volatile i32 %i.aop, ptr %.407191786, align 4, !tbaa !3
  %i.aoq = getelementptr inbounds nuw i8, ptr %.407191786, i64 4
  %i.aor = getelementptr inbounds nuw i8, ptr %.379151784, i64 4
  %i.aos = load volatile i32, ptr %i.aor, align 4, !tbaa !3
  store volatile i32 %i.aos, ptr %i.aoq, align 4, !tbaa !3
  %i.aot = getelementptr inbounds nuw i8, ptr %.407191786, i64 8
  %i.aou = getelementptr inbounds nuw i8, ptr %.379151784, i64 8
  %i.aov = load volatile i32, ptr %i.aou, align 4, !tbaa !3
  store volatile i32 %i.aov, ptr %i.aot, align 4, !tbaa !3
  %i.aow = getelementptr inbounds nuw i8, ptr %.407191786, i64 12
  %i.aox = getelementptr inbounds nuw i8, ptr %.379151784, i64 12
  %i.aoy = load volatile i32, ptr %i.aox, align 4, !tbaa !3
  store volatile i32 %i.aoy, ptr %i.aow, align 4, !tbaa !3
  %i.aoz = getelementptr inbounds nuw i8, ptr %.407191786, i64 16
  %i.apa = getelementptr inbounds nuw i8, ptr %.379151784, i64 16
  %i.apb = load volatile i32, ptr %i.apa, align 4, !tbaa !3
  store volatile i32 %i.apb, ptr %i.aoz, align 4, !tbaa !3
  %i.apc = getelementptr inbounds nuw i8, ptr %.407191786, i64 20
  %i.apd = getelementptr inbounds nuw i8, ptr %.379151784, i64 20
  %i.ape = load volatile i32, ptr %i.apd, align 4, !tbaa !3
  store volatile i32 %i.ape, ptr %i.apc, align 4, !tbaa !3
  %i.apf = getelementptr inbounds nuw i8, ptr %.407191786, i64 24
  %i.apg = getelementptr inbounds nuw i8, ptr %.379151784, i64 24
  %i.aph = load volatile i32, ptr %i.apg, align 4, !tbaa !3
  store volatile i32 %i.aph, ptr %i.apf, align 4, !tbaa !3
  %i.api = getelementptr inbounds nuw i8, ptr %.407191786, i64 28
  %i.apj = getelementptr inbounds nuw i8, ptr %.379151784, i64 28
  %i.apk = load volatile i32, ptr %i.apj, align 4, !tbaa !3
  store volatile i32 %i.apk, ptr %i.api, align 4, !tbaa !3
  %i.apl = getelementptr inbounds nuw i8, ptr %.407191786, i64 32 ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %.379151784, i64 32 ; 2 uses
  %i.apn = add nsw i32 %.28571785, -32            ; 2 uses
  %i.apo = icmp sgt i32 %.28571785, 35
  br i1 %i.apo, label %.lr.ph1788, label %.preheader1450, !llvm.loop !60

.lr.ph1796:                                       ; preds = %.lr.ph1796.prol.loopexit, %.lr.ph1796
  %.417201795 = phi ptr [ %i.aqm, %.lr.ph1796 ], [ %.417201795.unr, %.lr.ph1796.prol.loopexit ] ; 9 uses
  %.38581794 = phi i32 [ %i.aqn, %.lr.ph1796 ], [ %.38581794.unr, %.lr.ph1796.prol.loopexit ]
  %.389161793 = phi ptr [ %i.aqk, %.lr.ph1796 ], [ %.389161793.unr, %.lr.ph1796.prol.loopexit ] ; 9 uses
  %i.app = getelementptr inbounds nuw i8, ptr %.389161793, i64 1
  %i.apq = load i8, ptr %.389161793, align 1, !tbaa !7
  %i.apr = getelementptr inbounds nuw i8, ptr %.417201795, i64 1
  store i8 %i.apq, ptr %.417201795, align 1, !tbaa !7
  %i.aps = getelementptr inbounds nuw i8, ptr %.389161793, i64 2
  %i.apt = load i8, ptr %i.app, align 1, !tbaa !7
  %i.apu = getelementptr inbounds nuw i8, ptr %.417201795, i64 2
  store i8 %i.apt, ptr %i.apr, align 1, !tbaa !7
  %i.apv = getelementptr inbounds nuw i8, ptr %.389161793, i64 3
  %i.apw = load i8, ptr %i.aps, align 1, !tbaa !7
  %i.apx = getelementptr inbounds nuw i8, ptr %.417201795, i64 3
  store i8 %i.apw, ptr %i.apu, align 1, !tbaa !7
  %i.apy = getelementptr inbounds nuw i8, ptr %.389161793, i64 4
  %i.apz = load i8, ptr %i.apv, align 1, !tbaa !7
  %i.aqa = getelementptr inbounds nuw i8, ptr %.417201795, i64 4
  store i8 %i.apz, ptr %i.apx, align 1, !tbaa !7
  %i.aqb = getelementptr inbounds nuw i8, ptr %.389161793, i64 5
  %i.aqc = load i8, ptr %i.apy, align 1, !tbaa !7
  %i.aqd = getelementptr inbounds nuw i8, ptr %.417201795, i64 5
end_hunk_0
