inline.NumInlined: 18
inline.NumDeleted: 6
begin_hunk_0_@LzmaDec_DecodeToDic:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bv = ptrtoint ptr %i.bg to i64
  %i.bw = add i64 %i.a, 112
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph232, %bb.an
end_hunk_0
begin_hunk_1_@LzmaDec_DecodeToDic:bb.a

bb.r:                                             ; preds = %bb.q, %bb.f
  %.2139 = phi i64 [ %.1138.lcssa, %bb.q ], [ %.0137230, %bb.f ]
  %.2126 = phi ptr [ %.1125.lcssa, %bb.q ], [ %.0124231, %bb.f ] ; 10 uses
  %.2139.fr = freeze i64 %.2139                   ; 10 uses
  %.2126315 = ptrtoaddr ptr %.2126 to i64
  %i.dz = load i64, ptr %i.bn, align 8, !tbaa !20
end_hunk_1
begin_hunk_2_@LzmaDec_DecodeToDic:bb.a
  br i1 %i.ew, label %.lr.ph224.preheader, label %._crit_edge

.lr.ph224.preheader:                              ; preds = %.preheader
  %i.ex = zext nneg i32 %i.es to i64              ; 7 uses
  %i.ey = add i64 %.2139.fr, -1
  %i.ez = sub nsw i64 19, %i.ex
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ey, i64 %i.ez)
end_hunk_2
begin_hunk_3_@LzmaDec_DecodeToDic:bb.a
  %n.vec = and i64 %i.fa, -8                      ; 5 uses
  %i.fd = add i64 %n.vec, %i.ex                   ; 2 uses
  %i.fe = add nuw nsw i64 %i.ex, 3
  %invariant.gep = getelementptr i8, ptr %i.bg, i64 %i.ex
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %6 = phi i64 [ %i.fe, %vector.ph ], [ %7, %vector.body ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.2126, i64 %index ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %wide.load.a = load <4 x i8>, ptr %i.ff, align 1, !tbaa !25
  %wide.load316.a = load <4 x i8>, ptr %i.fg, align 1, !tbaa !25
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %gep, i64 4
  store <4 x i8> %wide.load.a, ptr %gep, align 1, !tbaa !25
  store <4 x i8> %wide.load316.a, ptr %i.fh, align 1, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %7 = add nuw nsw i64 %6, 8
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %i.fi = icmp samesign ult i64 %6, 15
  %cmp.n = icmp eq i64 %i.fa, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph224.preheader333

end_hunk_3
begin_hunk_4_@LzmaDec_DecodeToDic:bb.a

bb.af:                                            ; preds = %bb.ac, %bb.ae
  %.2133 = phi ptr [ %i.fr, %bb.ae ], [ %.2126, %bb.ac ]
  store ptr %.2126, ptr %i.bu, align 8, !tbaa !40
  %i.fs = tail call fastcc i32 @LzmaDec_DecodeReal2(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %.2133)
  %.not163 = icmp eq i32 %i.fs, 0
  br i1 %.not163, label %bb.ag, label %.thread187

bb.ag:                                            ; preds = %bb.af
  %i.ft = load ptr, ptr %i.bu, align 8, !tbaa !40
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %.2126 to i64
  %i.fw = sub i64 %i.fu, %i.fv                    ; 2 uses
end_hunk_4
begin_hunk_5_@LzmaDec_DecodeToDic:bb.a
  %i.gc = icmp samesign ult i64 %indvars.iv258, 19 ; 2 uses
  %i.gd = icmp ugt i64 %.2139.fr, %indvars.iv.next257
  %i.ge = select i1 %i.gc, i1 %i.gd, i1 false
  br i1 %i.ge, label %.lr.ph224, label %._crit_edge.loopexit, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %.lr.ph224, %middle.block
  %indvars.iv.next257.lcssa = phi i64 [ %n.vec, %middle.block ], [ %indvars.iv.next257, %.lr.ph224 ] ; 2 uses
end_hunk_5
begin_hunk_6_@LzmaDec_DecodeToDic:bb.a
  br label %.thread187

bb.al:                                            ; preds = %bb.aj, %._crit_edge
  store ptr %i.bg, ptr %i.bu, align 8, !tbaa !40
  %i.gn = tail call fastcc i32 @LzmaDec_DecodeReal2(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %i.bg)
  %.not161 = icmp eq i32 %i.gn, 0
  br i1 %.not161, label %bb.am, label %.thread187

bb.am:                                            ; preds = %bb.al
  %i.go = load ptr, ptr %i.bu, align 8, !tbaa !40
  %i.gp = ptrtoint ptr %i.go to i64
  %.neg.neg = sub i64 %i.gp, %i.bv
  %.neg162.neg234 = trunc i64 %.neg.neg to i32
end_hunk_6
begin_hunk_7_@LzmaDec_DecodeToDic:bb.a
  %.6143 = sub i64 %.2139.fr, %.pn
  %i.gu = load i32, ptr %i.c, align 4, !tbaa !15  ; 2 uses
  %.not = icmp eq i32 %i.gu, 274
  br i1 %.not, label %._crit_edge233, label %bb.f, !llvm.loop !42

._crit_edge233:                                   ; preds = %bb.an, %LzmaDec_WriteRem.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
end_hunk_7
begin_hunk_8_@LzmaDec_TryDummy:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !43   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !17   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !44
  %notmask = shl nsw i32 -1, %i.m
  %i.n = xor i32 %notmask, -1
  %i.o = and i32 %i.k, %i.n                       ; 3 uses
end_hunk_8
begin_hunk_9_@LzmaDec_TryDummy:bb.a
  %.3407 = phi i32 [ %i.bv, %bb.m ], [ %i.by, %bb.n ] ; 2 uses
  %.1394 = phi i32 [ %i.bx, %bb.m ], [ %i.cb, %bb.n ] ; 2 uses
  %i.cc = icmp ult i32 %.1394, 256
  br i1 %i.cc, label %.preheader, label %.thread, !llvm.loop !45

bb.p:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_9
begin_hunk_10_@LzmaDec_TryDummy:bb.a
  %.2391.ph = phi i32 [ %i.cu, %bb.x ], [ %i.do, %bb.w ]
  %.2388.ph = phi i32 [ %i.ds, %bb.x ], [ %i.dn, %bb.w ] ; 2 uses
  %i.dt = icmp ult i32 %.2388.ph, 256
  br i1 %i.dt, label %bb.s, label %.thread, !llvm.loop !46

bb.z:                                             ; preds = %bb.d
  %i.du = sub i32 %.0404, %i.ae                   ; 3 uses
end_hunk_10
begin_hunk_11_@LzmaDec_TryDummy:bb.a
  %.23427 = phi i32 [ %i.ja, %bb.bn ], [ %i.jd, %bb.bo ] ; 3 uses
  %.1367 = phi i32 [ %i.jc, %bb.bn ], [ %i.jg, %bb.bo ] ; 3 uses
  %i.jh = icmp ult i32 %.1367, %.0365
  br i1 %i.jh, label %bb.bj, label %bb.bq, !llvm.loop !47

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.ek, label %bb.br, label %.thread
end_hunk_11
begin_hunk_12_@LzmaDec_TryDummy:bb.a
  %.27431 = phi i32 [ %i.kb, %bb.bw ], [ %i.ke, %bb.bx ] ; 4 uses
  %.1362 = phi i32 [ %i.kd, %bb.bw ], [ %i.kh, %bb.bx ] ; 4 uses
  %i.ki = icmp ult i32 %.1362, 64
  br i1 %i.ki, label %bb.bs, label %bb.bz, !llvm.loop !48

bb.bz:                                            ; preds = %bb.by
  %i.kj = add nsw i32 %.1362, -64                 ; 4 uses
end_hunk_12
begin_hunk_13_@LzmaDec_TryDummy:bb.a
  %i.li = sub i32 %.29478, %i.lh                  ; 2 uses
  %i.lj = add nsw i32 %.0359, -1                  ; 2 uses
  %.not545 = icmp eq i32 %i.lj, 0
  br i1 %.not545, label %bb.ch, label %bb.cd, !llvm.loop !49

bb.ch:                                            ; preds = %bb.cg
  %i.lk = getelementptr inbounds nuw i8, ptr %i.g, i64 1604
end_hunk_13
begin_hunk_14_@LzmaDec_TryDummy:bb.a
  %.1 = phi i32 [ %i.lz, %bb.cn ], [ %i.md, %bb.co ]
  %i.me = add nsw i32 %.2, -1                     ; 2 uses
  %.not547 = icmp eq i32 %i.me, 0
  br i1 %.not547, label %.thread, label %bb.cj, !llvm.loop !50

.thread:                                          ; preds = %bb.cp, %bb.y, %bb.o, %bb.bq, %bb.bz
  %.3447.ph = phi i32 [ %.0444, %bb.bq ], [ %.0444, %bb.bz ], [ 1, %bb.o ], [ 1, %bb.y ], [ %.0444, %bb.cp ]
end_hunk_14
begin_hunk_15_@LzmaDec_DecodeReal2:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %.132 = phi i64 [ %spec.select, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !33  ; 13 uses
  %i.ab = load i32, ptr %i.c, align 8, !tbaa !43
  %i.ac = load i32, ptr %i.d, align 4, !tbaa !4
  %i.ad = load i32, ptr %i.e, align 8, !tbaa !4
  %i.ae = load i32, ptr %i.f, align 4, !tbaa !4
  %i.af = load i32, ptr %i.g, align 8, !tbaa !4
  %i.ag = load i32, ptr %i.h, align 8, !tbaa !44
  %notmask.i = shl nsw i32 -1, %i.ag
  %i.ah = xor i32 %notmask.i, -1
  %i.ai = load i32, ptr %i.i, align 4, !tbaa !32
end_hunk_15
begin_hunk_16_@LzmaDec_DecodeReal2:bb.a
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !22  ; 12 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = load i64, ptr %i.k, align 8, !tbaa !23  ; 8 uses
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.ap = load i32, ptr %i.o, align 8, !tbaa !30
  %i.aq = load i32, ptr %i.p, align 4, !tbaa !29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 384
end_hunk_16
begin_hunk_17_@LzmaDec_DecodeReal2:bb.a
  %.1844.i = phi i32 [ %i.dd, %bb.m ], [ %i.dm, %bb.n ] ; 3 uses
  store i16 %.sink.i, ptr %i.cq, align 2, !tbaa !34
  %i.dn = icmp ult i32 %.1844.i, 256
  br i1 %i.dn, label %.preheader, label %.loopexit.loopexit.i, !llvm.loop !51

bb.p:                                             ; preds = %bb.j
  %i.do = load ptr, ptr %i.j, align 8, !tbaa !22
end_hunk_17
begin_hunk_18_@LzmaDec_DecodeReal2:bb.a
  %.1841.i = phi i32 [ %i.ew, %bb.t ], [ %i.dy, %bb.u ]
  store i16 %.sink1167.i, ptr %i.ee, align 2, !tbaa !34
  %i.fc = icmp ult i32 %.3846.i, 256
  br i1 %i.fc, label %bb.q, label %.loopexit.loopexit1155.i, !llvm.loop !52

.loopexit.loopexit.i:                             ; preds = %bb.o
  %i.fd = tail call i32 @llvm.usub.sat.i32(i32 %.0777.i, i32 3)
end_hunk_18
begin_hunk_19_@LzmaDec_DecodeReal2:bb.a
  %.23.i = phi i32 [ %.22.i, %bb.bh ], [ %i.mx, %bb.bi ] ; 4 uses
  store i16 %.sink1168.i, ptr %i.me, align 2, !tbaa !34
  %i.nb = icmp ult i32 %.2967.i, %.0822.i
  br i1 %i.nb, label %bb.be, label %bb.bk, !llvm.loop !53

bb.bk:                                            ; preds = %bb.bj
  %i.nc = sub nuw i32 %.2967.i, %.0822.i
end_hunk_19
begin_hunk_20_@LzmaDec_DecodeReal2:bb.a
  %i.ym = add i32 %i.yl, %i.yh                    ; 3 uses
  %i.yn = add nsw i32 %.1804.i, -1                ; 2 uses
  %.not.i = icmp eq i32 %i.yn, 0
  br i1 %.not.i, label %bb.dz, label %bb.dw, !llvm.loop !54

bb.dz:                                            ; preds = %bb.dy
  %i.yo = shl i32 %i.yk, 4                        ; 2 uses
end_hunk_20
begin_hunk_21_@LzmaDec_DecodeReal2:bb.a
  store <16 x i8> %wide.load153, ptr %i.adl, align 1, !tbaa !25
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.adm = icmp eq i64 %index.next, %n.vec
  br i1 %i.adm, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.acn, %n.vec
end_hunk_21
begin_hunk_22_@LzmaDec_DecodeReal2:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_22
begin_hunk_23_@LzmaDec_DecodeReal2:bb.a
  store <4 x i8> %wide.load158, ptr %next.gep157, align 1, !tbaa !25
  %index.next159 = add nuw i64 %index156, 4       ; 2 uses
  %i.adp = icmp eq i64 %index.next159, %n.vec155
  br i1 %i.adp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !57

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n160 = icmp eq i64 %i.acn, %n.vec155
end_hunk_23
begin_hunk_24_@LzmaDec_DecodeReal2:bb.a
  %i.ady = getelementptr inbounds nuw i8, ptr %.0782.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !58

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.0782.i.unr = phi ptr [ %.0782.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ady, %vec.epilog.scalar.ph.prol ]
end_hunk_24
begin_hunk_25_@LzmaDec_DecodeReal2:bb.a
  store i8 %i.aew, ptr %i.aeu, align 1, !tbaa !25
  %i.aex = getelementptr inbounds nuw i8, ptr %.0782.i, i64 8 ; 2 uses
  %.not1042.i.7 = icmp eq ptr %i.aex, %i.adg
  br i1 %.not1042.i.7, label %.loopexit1142.loopexit1156.i, label %vec.epilog.scalar.ph, !llvm.loop !60

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.1837.i = phi i64 [ %i.aff, %.preheader.i ], [ %.1837.i.unr, %.preheader.i.prol.loopexit ] ; 3 uses
end_hunk_25
begin_hunk_26_@LzmaDec_DecodeReal2:bb.a
  %spec.store.select.i.1 = select i1 %i.afj, i64 0, i64 %i.afi
  %i.afk = add i32 %.0784.i, -2                   ; 2 uses
  %.not1041.i.1 = icmp eq i32 %i.afk, 0
  br i1 %.not1041.i.1, label %.loopexit1142.i, label %.preheader.i, !llvm.loop !61

bb.ex:                                            ; preds = %bb.er
  %i.afl = add i32 %i.nd, 274
end_hunk_26
begin_hunk_27_@LzmaDec_DecodeReal2:bb.a
  %i.afo = icmp ult i64 %.3839.ph.i, %.132
  %i.afp = icmp ult ptr %.39963.ph.i, %2
  %i.afq = select i1 %i.afo, i1 %i.afp, i1 false
  br i1 %i.afq, label %bb.e, label %.loopexit1144.i, !llvm.loop !62

.loopexit1144.i:                                  ; preds = %.loopexit1142.i, %bb.ex
  %.71104.i = phi i32 [ %i.afm, %bb.ex ], [ %.7.ph.i, %.loopexit1142.i ]
end_hunk_27
begin_hunk_28_@LzmaDec_DecodeReal2:bb.a
  %.40964.i = phi ptr [ %i.afx, %bb.ey ], [ %.399631086.i, %.loopexit1144.i ]
  %.55923.i = phi i32 [ %i.afv, %bb.ey ], [ %.549221088.i, %.loopexit1144.i ]
  %.55.i = phi i32 [ %i.aga, %bb.ey ], [ %.541090.i, %.loopexit1144.i ]
  store ptr %.40964.i, ptr %i.n, align 8, !tbaa !40
  store i32 %.55923.i, ptr %i.o, align 8, !tbaa !30
  store i32 %.55.i, ptr %i.p, align 4, !tbaa !29
  store i32 %i.aft, ptr %i.r, align 4, !tbaa !15
end_hunk_28
begin_hunk_29_@LzmaDec_DecodeReal2:bb.a
  store i32 %.57991100.i, ptr %i.e, align 8, !tbaa !4
  store i32 %.68111098.i, ptr %i.f, align 4, !tbaa !4
  store i32 %.78351096.i, ptr %i.g, align 8, !tbaa !4
  store i32 %.71104.i, ptr %i.c, align 8, !tbaa !43
  %i.agb = load i32, ptr %i.q, align 4, !tbaa !24 ; 4 uses
  %.not36 = icmp ult i32 %.18491092.i, %i.agb
  br i1 %.not36, label %bb.fb, label %bb.fa
end_hunk_29
begin_hunk_30_@LzmaDec_DecodeReal2:bb.a
  br label %.critedge

bb.ff:                                            ; preds = %bb.fe
  %i.ahq = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.ahr = icmp ult ptr %i.ahq, %2
  %.pre69 = load i32, ptr %i.r, align 4, !tbaa !15 ; 2 uses
  %i.ahs = icmp ult i32 %.pre69, 274
  %or.cond140 = select i1 %i.ahr, i1 %i.ahs, i1 false
  br i1 %or.cond140, label %bb.b, label %.critedge, !llvm.loop !63

.critedge:                                        ; preds = %bb.ff, %..critedge_crit_edge
  %i.aht = phi i32 [ %.pre68, %..critedge_crit_edge ], [ %.pre69, %bb.ff ]
end_hunk_30
begin_hunk_31_@LzmaDec_FreeProbs
define dso_local void @LzmaDec_FreeProbs(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  tail call void %i.b(ptr noundef %1, ptr noundef %i.d) #8
end_hunk_31
begin_hunk_32_@LzmaDec_Free
define dso_local void @LzmaDec_Free(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  tail call void %i.b(ptr noundef %1, ptr noundef %i.d) #8, !inline_history !66
  store ptr null, ptr %i.c, align 8, !tbaa !33
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  tail call void %i.e(ptr noundef %1, ptr noundef %i.g) #8, !inline_history !67
  store ptr null, ptr %i.f, align 8, !tbaa !22
  ret void
}
end_hunk_32
begin_hunk_33_@LzmaProps_Decode:bb.a
  %i.c = load i32, ptr %i.b, align 1
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.c, i32 4096)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %spec.store.select, ptr %i.d, align 4, !tbaa !68
  %i.e = load i8, ptr %1, align 1, !tbaa !25      ; 4 uses
  %i.f = icmp ugt i8 %i.e, -32
  br i1 %i.f, label %bb.d, label %bb.c
end_hunk_33
begin_hunk_34_@LzmaProps_Decode:bb.a
bb.c:                                             ; preds = %bb.b
  %i.g = urem i8 %i.e, 9
  %i.h = zext nneg i8 %i.g to i32
  store i32 %i.h, ptr %0, align 4, !tbaa !69
  %i.i = udiv i8 %i.e, 9
  %i.j = udiv i8 %i.e, 45
  %.zext = zext nneg i8 %i.j to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.zext, ptr %i.k, align 4, !tbaa !70
  %i.l = urem i8 %i.i, 5
  %.zext19 = zext nneg i8 %i.l to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.zext19, ptr %i.m, align 4, !tbaa !71
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
end_hunk_34
begin_hunk_35_@LzmaDec_AllocateProbs:bb.a

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load i32, ptr %i.q, align 8, !tbaa !72
  %.not.i = icmp eq i32 %i.m, %i.r
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  tail call void %i.t(ptr noundef %3, ptr noundef %i.o) #8, !inline_history !73
  store ptr null, ptr %i.n, align 8, !tbaa !33
  %i.u = load ptr, ptr %3, align 8, !tbaa !74
  %i.v = shl nuw nsw i32 %i.m, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = tail call ptr %i.u(ptr noundef nonnull %3, i64 noundef %i.w) #8, !inline_history !75 ; 2 uses
  store ptr %i.x, ptr %i.n, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.m, ptr %i.y, align 8, !tbaa !72
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %LzmaProps_Decode.exit.thread, label %bb.f

end_hunk_35
begin_hunk_36_@LzmaDec_Allocate:bb.a

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load i32, ptr %i.q, align 8, !tbaa !72
  %.not.i = icmp eq i32 %i.m, %i.r
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  tail call void %i.t(ptr noundef %3, ptr noundef %i.o) #8, !inline_history !73
  store ptr null, ptr %i.n, align 8, !tbaa !33
  %i.u = load ptr, ptr %3, align 8, !tbaa !74
  %i.v = shl nuw nsw i32 %i.m, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = tail call ptr %i.u(ptr noundef nonnull %3, i64 noundef %i.w) #8, !inline_history !75 ; 2 uses
  store ptr %i.x, ptr %i.n, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.m, ptr %i.y, align 8, !tbaa !72
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %LzmaProps_Decode.exit.thread, label %bb.f

end_hunk_36
begin_hunk_37_@LzmaDec_Allocate:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  tail call void %i.ah(ptr noundef %3, ptr noundef %i.ac) #8, !inline_history !67
  store ptr null, ptr %i.ab, align 8, !tbaa !22
  %i.ai = load ptr, ptr %3, align 8, !tbaa !74
  %i.aj = tail call ptr %i.ai(ptr noundef nonnull %3, i64 noundef %i.aa) #8 ; 2 uses
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !22
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !33
  tail call void %i.al(ptr noundef nonnull %3, ptr noundef %i.am) #8, !inline_history !66
  store ptr null, ptr %i.n, align 8, !tbaa !33
  br label %LzmaProps_Decode.exit.thread

end_hunk_37
begin_hunk_38_@LzmaDecode:bb.a
  %i.p = shl nuw nsw i32 768, %i.o
  %i.q = add nuw nsw i32 %i.p, 1846               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  tail call void %i.s(ptr noundef %8, ptr noundef null) #8, !inline_history !76
  %i.t = load ptr, ptr %8, align 8, !tbaa !74
  %i.u = shl nuw nsw i32 %i.q, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = tail call ptr %i.t(ptr noundef nonnull %8, i64 noundef %i.v) #8, !inline_history !77 ; 2 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i32 %i.q, ptr %i.x, align 8, !tbaa !72
  %i.y = icmp eq ptr %i.w, null
  br i1 %i.y, label %LzmaDec_AllocateProbs.exit.thread, label %bb.e

end_hunk_38
begin_hunk_39_@LzmaDecode:bb.a
  %.024 = phi i32 [ 1, %bb.e ], [ %spec.select, %bb.f ]
  %i.am = load i64, ptr %i.ab, align 8, !tbaa !20
  store i64 %i.am, ptr %1, align 8, !tbaa !21
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !33
  call void %i.an(ptr noundef nonnull %8, ptr noundef %i.ao) #8, !inline_history !66
  br label %LzmaDec_AllocateProbs.exit.thread

LzmaDec_AllocateProbs.exit.thread:                ; preds = %bb.d, %bb.b, %bb.c, %bb.a, %bb.g
end_hunk_39
begin_hunk_40_@llvm.usub.sat.i32
!36 = distinct !{!36, !27, !37, !38}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = distinct !{!39, !27, !37, !38}
!40 = !{!9, !13, i64 32}
!41 = distinct !{!41, !27, !37}
!42 = distinct !{!42, !27}
!43 = !{!9, !5, i64 72}
!44 = !{!9, !5, i64 8}
!45 = distinct !{!45, !27}
!46 = distinct !{!46, !27}
!47 = distinct !{!47, !27}
end_hunk_40
begin_hunk_41_@llvm.usub.sat.i32
!51 = distinct !{!51, !27}
!52 = distinct !{!52, !27}
!53 = distinct !{!53, !27}
!54 = distinct !{!54, !27}
!55 = distinct !{!55, !27, !37, !38}
!56 = !{!"branch_weights", i32 4, i32 28}
!57 = distinct !{!57, !27, !37, !38}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = distinct !{!60, !27, !37}
!61 = distinct !{!61, !27}
!62 = distinct !{!62, !27}
!63 = distinct !{!63, !27}
!64 = !{!65, !12, i64 8}
!65 = !{!"", !12, i64 0, !12, i64 8}
!66 = !{ptr @LzmaDec_FreeProbs}
!67 = distinct !{null}
!68 = !{!10, !5, i64 12}
!69 = !{!10, !5, i64 0}
!70 = !{!10, !5, i64 8}
!71 = !{!10, !5, i64 4}
!72 = !{!9, !5, i64 104}
!73 = distinct !{null, ptr @LzmaDec_FreeProbs}
!74 = !{!65, !12, i64 0}
!75 = distinct !{null}
!76 = distinct !{ptr @LzmaDec_AllocateProbs, null, ptr @LzmaDec_FreeProbs}
!77 = distinct !{ptr @LzmaDec_AllocateProbs, null}
end_hunk_41
