inline.NumInlined: 423
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 40
begin_hunk_0_@zend_infer_ranges:bb.a
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ard, i64 %.sink1294
  %.0 = load i32, ptr %i.ayv, align 4, !tbaa !29  ; 2 uses
  %i.ayw = icmp sgt i32 %.0, -1
  br i1 %i.ayw, label %bb.ij, label %._crit_edge1083, !llvm.loop !208

._crit_edge1083:                                  ; preds = %zend_ssa_next_use.exit, %bb.ii
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.aqx, i64 24
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !61 ; 2 uses
  %.not9001087 = icmp eq ptr %i.ayy, null
  br i1 %.not9001087, label %._crit_edge1091, label %.lr.ph1090

.lr.ph1090:                                       ; preds = %._crit_edge1083, %zend_ssa_next_use_phi.exit
  %.08161088 = phi ptr [ %.1.i, %zend_ssa_next_use_phi.exit ], [ %i.ayy, %._crit_edge1083 ] ; 6 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr %.08161088, i64 68
  %i.aza = load i32, ptr %i.ayz, align 4, !tbaa !62 ; 3 uses
  %i.azb = sext i32 %i.aza to i64                 ; 2 uses
  %i.azc = getelementptr inbounds [48 x i8], ptr %i.aqw, i64 %i.azb
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 4
  %i.aze = load i32, ptr %i.azd, align 4, !tbaa !25
  %i.azf = zext i32 %i.aze to i64
  %i.azg = icmp eq i64 %indvars.iv1156, %i.azf
  br i1 %i.azg, label %bb.jw, label %bb.jy

bb.jw:                                            ; preds = %.lr.ph1090
  %i.azh = load ptr, ptr %i.ax, align 8, !tbaa !98
  %i.azi = getelementptr inbounds [40 x i8], ptr %i.azh, i64 %i.azb
  %i.azj = load i32, ptr %i.azi, align 8, !tbaa !138
  %i.azk = and i32 %i.azj, 1024
  %.not903 = icmp eq i32 %i.azk, 0
  br i1 %.not903, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  %i.azl = and i32 %i.aza, 63
  %i.azm = zext nneg i32 %i.azl to i64
  %i.azn = shl nuw i64 1, %i.azm
  %i.azo = lshr i32 %i.aza, 6
  %i.azp = zext nneg i32 %i.azo to i64
  %i.azq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.azp ; 2 uses
  %i.azr = load i64, ptr %i.azq, align 8, !tbaa !83
  %i.azs = or i64 %i.azr, %i.azn
  store i64 %i.azs, ptr %i.azq, align 8, !tbaa !83
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %bb.jw, %.lr.ph1090
  %i.azt = getelementptr inbounds nuw i8, ptr %.08161088, i64 8
  %i.azu = load i32, ptr %i.azt, align 8, !tbaa !65
  %i.azv = icmp sgt i32 %i.azu, -1
  br i1 %i.azv, label %bb.jz, label %.preheader

.preheader:                                       ; preds = %bb.jy
  %i.azw = load ptr, ptr %i.be, align 8, !tbaa !66
  %i.azx = getelementptr inbounds nuw i8, ptr %.08161088, i64 72
  %i.azy = load i32, ptr %i.azx, align 8, !tbaa !67
  %i.azz = sext i32 %i.azy to i64
  %i.baa = getelementptr inbounds [64 x i8], ptr %i.azw, i64 %i.azz
  %i.bab = getelementptr inbounds nuw i8, ptr %i.baa, i64 24
  %i.bac = load i32, ptr %i.bab, align 8, !tbaa !68 ; 2 uses
  %.not9951084 = icmp sgt i32 %i.bac, 0
  br i1 %.not9951084, label %.lr.ph1086, label %._crit_edge1091

.lr.ph1086:                                       ; preds = %.preheader
  %i.bad = getelementptr inbounds nuw i8, ptr %.08161088, i64 96
  %i.bae = load ptr, ptr %i.bad, align 8, !tbaa !70
  %i.baf = zext nneg i32 %i.bac to i64
  br label %bb.kb

bb.jz:                                            ; preds = %bb.jy
  %i.bag = getelementptr inbounds nuw i8, ptr %.08161088, i64 80
  %i.bah = load ptr, ptr %i.bag, align 8, !tbaa !71
  br label %zend_ssa_next_use_phi.exit

bb.ka:                                            ; preds = %bb.kb
  %indvars.iv.next1151 = add nuw nsw i64 %indvars.iv1150, 1 ; 2 uses
  %exitcond1153.not = icmp eq i64 %indvars.iv.next1151, %i.baf
  br i1 %exitcond1153.not, label %._crit_edge1091, label %bb.kb, !llvm.loop !73

bb.kb:                                            ; preds = %.lr.ph1086, %bb.ka
  %indvars.iv1150 = phi i64 [ 0, %.lr.ph1086 ], [ %indvars.iv.next1151, %bb.ka ] ; 3 uses
  %i.bai = getelementptr inbounds nuw [4 x i8], ptr %i.bae, i64 %indvars.iv1150
  %i.baj = load i32, ptr %i.bai, align 4, !tbaa !29
  %i.bak = icmp eq i32 %i.baj, %i.aoz
  br i1 %i.bak, label %bb.kc, label %bb.ka

bb.kc:                                            ; preds = %bb.kb
  %i.bal = getelementptr inbounds nuw i8, ptr %.08161088, i64 80
  %i.bam = load ptr, ptr %i.bal, align 8, !tbaa !71
  %i.ban = getelementptr inbounds nuw [8 x i8], ptr %i.bam, i64 %indvars.iv1150
  br label %zend_ssa_next_use_phi.exit

zend_ssa_next_use_phi.exit:                       ; preds = %bb.kc, %bb.jz
  %.1.i.in = phi ptr [ %i.bah, %bb.jz ], [ %i.ban, %bb.kc ]
  %.1.i = load ptr, ptr %.1.i.in, align 8, !tbaa !72 ; 2 uses
  %.not900 = icmp eq ptr %.1.i, null
  br i1 %.not900, label %._crit_edge1091, label %.lr.ph1090, !llvm.loop !209

._crit_edge1091:                                  ; preds = %.preheader, %zend_ssa_next_use_phi.exit, %bb.ka, %._crit_edge1083
  %i.bao = getelementptr inbounds nuw i8, ptr %i.aqx, i64 32
  %.08181092 = load ptr, ptr %i.bao, align 8, !tbaa !72 ; 2 uses
  %.not9011093 = icmp eq ptr %.08181092, null
  br i1 %.not9011093, label %.loopexit, label %.lr.ph1096

.lr.ph1096:                                       ; preds = %._crit_edge1091, %bb.kf
  %.08181094 = phi ptr [ %.0818, %bb.kf ], [ %.08181092, %._crit_edge1091 ] ; 2 uses
  %i.bap = getelementptr inbounds nuw i8, ptr %.08181094, i64 68
  %i.baq = load i32, ptr %i.bap, align 4, !tbaa !62 ; 3 uses
  %i.bar = sext i32 %i.baq to i64                 ; 2 uses
  %i.bas = getelementptr inbounds [48 x i8], ptr %i.aqw, i64 %i.bar
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bas, i64 4
  %i.bau = load i32, ptr %i.bat, align 4, !tbaa !25
  %i.bav = zext i32 %i.bau to i64
  %i.baw = icmp eq i64 %indvars.iv1156, %i.bav
  br i1 %i.baw, label %bb.kd, label %bb.kf

bb.kd:                                            ; preds = %.lr.ph1096
  %i.bax = load ptr, ptr %i.ax, align 8, !tbaa !98
  %i.bay = getelementptr inbounds [40 x i8], ptr %i.bax, i64 %i.bar
  %i.baz = load i32, ptr %i.bay, align 8, !tbaa !138
  %i.bba = and i32 %i.baz, 1024
  %.not902 = icmp eq i32 %i.bba, 0
  br i1 %.not902, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.bbb = and i32 %i.baq, 63
  %i.bbc = zext nneg i32 %i.bbb to i64
  %i.bbd = shl nuw i64 1, %i.bbc
  %i.bbe = lshr i32 %i.baq, 6
  %i.bbf = zext nneg i32 %i.bbe to i64
  %i.bbg = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bbf ; 2 uses
  %i.bbh = load i64, ptr %i.bbg, align 8, !tbaa !83
  %i.bbi = or i64 %i.bbh, %i.bbd
  store i64 %i.bbi, ptr %i.bbg, align 8, !tbaa !83
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd, %.lr.ph1096
  %i.bbj = getelementptr inbounds nuw i8, ptr %.08181094, i64 88
  %.0818 = load ptr, ptr %i.bbj, align 8, !tbaa !72 ; 2 uses
  %.not901 = icmp eq ptr %.0818, null
  br i1 %.not901, label %.loopexit, label %.lr.ph1096, !llvm.loop !210

.loopexit:                                        ; preds = %bb.kf, %._crit_edge1091, %zend_ssa_range_narrowing.exit989.thread, %bb.ho
  %.3 = phi i1 [ %.21099, %bb.ho ], [ false, %zend_ssa_range_narrowing.exit989.thread ], [ false, %._crit_edge1091 ], [ false, %bb.kf ] ; 2 uses
  %i.bbk = lshr i64 %.08171100, 1                 ; 2 uses
  %indvars.iv.next1155 = add nsw i64 %indvars.iv1154, 1
  %.not898 = icmp eq i64 %i.bbk, 0
  br i1 %.not898, label %.loopexit1001, label %bb.ho, !llvm.loop !211

.loopexit1001:                                    ; preds = %.loopexit, %.lr.ph1103
  %.4 = phi i1 [ %.11101, %.lr.ph1103 ], [ %.3, %.loopexit ] ; 2 uses
  %i.bbl = add nuw nsw i32 %.08191102, 1          ; 2 uses
  %i.bbm = icmp samesign uge i32 %i.bbl, %i.f     ; 3 uses
  %brmerge.not = select i1 %i.bbm, i1 %.4, i1 false
  %.mux = select i1 %i.bbm, i32 0, i32 %i.bbl
  %.4.mux = select i1 %i.bbm, i1 true, i1 %.4
  br i1 %brmerge.not, label %.loopexit1013, label %.lr.ph1103, !llvm.loop !212

.loopexit1013.sink.split:                         ; preds = %bb.m, %bb.n
  %.sink1302 = phi i8 [ %i.da, %bb.n ], [ 1, %bb.m ]
  %spec.select.i980.sink = phi i64 [ %spec.select.i980, %bb.n ], [ -9223372036854775808, %bb.m ]
  %.015.i.sink = phi i64 [ %.015.i, %bb.n ], [ 9223372036854775807, %bb.m ]
  %.sink1295 = phi i8 [ %i.de, %bb.n ], [ 1, %bb.m ]
  %i.bbn = load ptr, ptr %i.ax, align 8, !tbaa !98
  %i.bbo = getelementptr inbounds [40 x i8], ptr %i.bbn, i64 %i.cr
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbo, i64 4 ; 2 uses
  %i.bbq = load i8, ptr %i.bbp, align 4
  %i.bbr = or i8 %i.bbq, 1
  store i8 %i.bbr, ptr %i.bbp, align 4
  %i.bbs = load ptr, ptr %i.ax, align 8, !tbaa !98
  %i.bbt = getelementptr inbounds [40 x i8], ptr %i.bbs, i64 %i.cr ; 4 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbt, i64 24
  store i8 %.sink1302, ptr %i.bbu, align 8, !tbaa !99
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbt, i64 8
  store i64 %spec.select.i980.sink, ptr %i.bbv, align 8, !tbaa !106
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbt, i64 16
  store i64 %.015.i.sink, ptr %i.bbw, align 8, !tbaa !107
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbt, i64 25
  store i8 %.sink1295, ptr %i.bbx, align 1, !tbaa !103
  br label %.loopexit1013

.loopexit1013:                                    ; preds = %.loopexit1001, %.loopexit1013.sink.split, %.preheader1012, %bb.l
  %indvars.iv.next1157 = add nuw nsw i64 %indvars.iv1156, 1 ; 2 uses
  %i.bby = load i32, ptr %i.m, align 4, !tbaa !23
  %i.bbz = sext i32 %i.bby to i64
  %i.bca = icmp slt i64 %indvars.iv.next1157, %i.bbz
  br i1 %i.bca, label %bb.k, label %._crit_edge1107, !llvm.loop !213

._crit_edge1107:                                  ; preds = %.loopexit1013, %.preheader1018
  br i1 %i.r, label %bb.kg, label %bb.kh, !prof !22

bb.kg:                                            ; preds = %._crit_edge1107
  call void @_efree(ptr noundef %i.u) #17
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %._crit_edge1107
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @zend_infer_types(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %.sroa.32.i = alloca [6 x i8], align 2          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12   ; 6 uses
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = icmp ugt i32 %i.b, 262144                ; 3 uses
  %i.f = lshr i64 %i.d, 3
  %i.g = and i64 %i.f, 1073741816                 ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias ptr @_emalloc(i64 noundef %i.g) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = alloca i8, i64 %i.g, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi ptr [ %i.i, %bb.c ], [ %i.h, %bb.b ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.g, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !144  ; 7 uses
  %i.m = icmp slt i32 %i.l, %i.b
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.n = sub i32 %i.b, %i.l
  %.neg = add i32 %i.l, 1
  %xtraiter = and i32 %i.n, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.o = and i32 %i.l, 63
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw i64 1, %i.p
  %i.r = lshr i32 %i.l, 6
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.s ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !83
  %i.v = or i64 %i.u, %i.q
  store i64 %i.v, ptr %i.t, align 8, !tbaa !83
  %i.w = add nsw i32 %i.l, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.03034.unr = phi i32 [ %i.l, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %i.x = icmp eq i32 %i.b, %.neg
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03034 = phi i32 [ %i.ap, %.lr.ph ], [ %.03034.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.y = and i32 %.03034, 63
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = lshr i32 %.03034, 6
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !83
  %i.af = or i64 %i.ae, %i.aa
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !83
  %i.ag = add nsw i32 %.03034, 1                  ; 2 uses
  %i.ah = and i32 %i.ag, 63
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = lshr i32 %i.ag, 6
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.al ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !83
  %i.ao = or i64 %i.an, %i.aj
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !83
  %i.ap = add nsw i32 %.03034, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ap, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !214

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %i.aq = call fastcc i32 @zend_infer_types_ex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %i.j, i64 noundef %3)
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  br i1 %i.e, label %.sink.split, label %bb.by, !prof !22

bb.f:                                             ; preds = %._crit_edge
  %i.as = and i64 %3, 131072
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call fastcc void @zend_type_narrowing(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.au = load i32, ptr @zend_func_info_rid, align 4, !tbaa !29
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !112 ; 20 uses
  %.not32 = icmp eq ptr %i.ax, null
  br i1 %.not32, label %bb.bx, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 112 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !215 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.32.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.32.i, i8 0, i64 6, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !96 ; 3 uses
  %i.bf = and i32 %i.be, 16777216
  %.not.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 -1073741568, ptr %i.ay, align 8, !tbaa !138
  %i.bg = load ptr, ptr @zend_ce_generator, align 8, !tbaa !135
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !148
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 116 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.bl = and i8 %i.bj, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false)
  store i8 %i.bl, ptr %i.bi, align 4
  br label %zend_func_return_info.exit

bb.k:                                             ; preds = %bb.i
  %i.bm = load i32, ptr %i.ay, align 8, !tbaa !138 ; 2 uses
  %.not200.i = icmp eq i32 %i.bm, 0
  br i1 %.not200.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 -520093698, ptr %i.ay, align 8, !tbaa !138
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bn = phi i32 [ -520093698, %bb.l ], [ %i.bm, %bb.k ]
  %i.bo = icmp sgt i32 %i.ba, 0
  br i1 %i.bo, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 80 ; 3 uses
  %i.bs = and i32 %i.be, 33554432
  %.not9.i.i = icmp eq i32 %i.bs, 0               ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ba to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  br label %bb.n

bb.n:                                             ; preds = %is_recursive_tail_call.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %is_recursive_tail_call.exit.i ] ; 2 uses
  %.015816.i = phi i32 [ 0, %.lr.ph.i ], [ %.4.i, %is_recursive_tail_call.exit.i ] ; 5 uses
  %.016215.i = phi i32 [ -1, %.lr.ph.i ], [ %.6.i, %is_recursive_tail_call.exit.i ] ; 8 uses
  %.sroa.28.014.i = phi i8 [ 0, %.lr.ph.i ], [ %.sroa.28.6.i, %is_recursive_tail_call.exit.i ] ; 14 uses
  %.sroa.24.013.i = phi i8 [ 0, %.lr.ph.i ], [ %.sroa.24.7.i, %is_recursive_tail_call.exit.i ] ; 14 uses
  %.sroa.15.012.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.15.6.i, %is_recursive_tail_call.exit.i ] ; 13 uses
  %.sroa.0.011.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.0.8.i, %is_recursive_tail_call.exit.i ] ; 13 uses
  %.016910.i = phi i32 [ -1, %.lr.ph.i ], [ %.5174.i, %is_recursive_tail_call.exit.i ] ; 7 uses
  %.01769.i = phi ptr [ null, %.lr.ph.i ], [ %.5181.i, %is_recursive_tail_call.exit.i ] ; 6 uses
  %i.bw = getelementptr inbounds nuw [64 x i8], ptr %i.bc, i64 %indvars.iv.i ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !217
  %.not203.i = icmp sgt i32 %i.by, -1
  br i1 %.not203.i, label %is_recursive_tail_call.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !218 ; 2 uses
  %.not204.i = icmp eq i32 %i.ca, 0
  br i1 %.not204.i, label %is_recursive_tail_call.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = load ptr, ptr %i.bp, align 8, !tbaa !39 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !219
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.cb, i64 %i.ce
  %i.cg = zext i32 %i.ca to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %i.cg ; 7 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -32 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -4
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !54  ; 2 uses
  switch i8 %i.ck, label %is_recursive_tail_call.exit.i [
    i8 62, label %bb.q
    i8 111, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.cl = load ptr, ptr %i.bq, align 8, !tbaa !34 ; 2 uses
  %.idx4.i = add nuw nsw i64 %i.cg, 576460752303423487
  %i.cm = add nuw nsw i64 %.idx4.i, %i.ce
  %i.cn = and i64 %i.cm, 576460752303423487
  %i.co = getelementptr inbounds nuw [36 x i8], ptr %i.cl, i64 %i.cn ; 4 uses
  %.not2067.i = icmp eq ptr %i.cl, null           ; 3 uses
  br i1 %.not2067.i, label %.critedge.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = load ptr, ptr %i.bu, align 8, !tbaa !220 ; 2 uses
  %.not34.i.i = icmp eq ptr %i.cp, null
  br i1 %.not34.i.i, label %.critedge.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = load ptr, ptr %i.bv, align 8, !tbaa !113 ; 2 uses
  %.not35.i.i = icmp eq ptr %i.cq, null
  br i1 %.not35.i.i, label %.critedge.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = load i32, ptr %i.co, align 4, !tbaa !57 ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, -1
  br i1 %i.cs, label %bb.u, label %.critedge.i.i

bb.u:                                             ; preds = %bb.t
  %i.ct = zext nneg i32 %i.cr to i64
  %i.cu = getelementptr inbounds nuw [48 x i8], ptr %i.cp, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !145 ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, -1
  br i1 %i.cx, label %bb.v, label %.critedge.i.i

bb.v:                                             ; preds = %bb.u
  %i.cy = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.cb, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 28
  %i.db = load i8, ptr %i.da, align 4, !tbaa !54
  %i.dc = icmp eq i8 %i.db, -126
  br i1 %i.dc, label %bb.w, label %.critedge.i.i

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cy
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !117 ; 2 uses
  %.not36.i.i = icmp eq ptr %i.de, null
  br i1 %.not36.i.i, label %.critedge.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !121
  %i.dh = icmp eq ptr %0, %i.dg
  br i1 %i.dh, label %is_recursive_tail_call.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %i.di = getelementptr inbounds i8, ptr %i.ch, i64 -3
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !95
  %i.dk = icmp eq i8 %i.dj, 1                     ; 2 uses
  br i1 %i.dk, label %bb.y, label %bb.ao

bb.y:                                             ; preds = %.critedge.i.i
  br i1 %.not9.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = getelementptr inbounds i8, ptr %i.ch, i64 -24
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !33
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %i.ci, i64 %i.dn
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dp = load ptr, ptr %i.bt, align 8, !tbaa !97
  %i.dq = getelementptr inbounds i8, ptr %i.ch, i64 -24
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !33
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.ds
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.du = phi ptr [ %i.do, %bb.z ], [ %i.dt, %bb.aa ] ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !33  ; 3 uses
  switch i8 %i.dw, label %bb.al [
    i8 11, label %_ssa_op1_info.exit.i
    i8 7, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !33 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 9
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !33
  %.not.i227.i = icmp eq i8 %i.dz, 0
  %..i.i = select i1 %.not.i227.i, i32 -2147483520, i32 -1073741696 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 28
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !124
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ed = or disjoint i32 %..i.i, 536870912
  br label %_ssa_op1_info.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !33
  %i.eg = and i32 %i.ef, 4
  %.not41.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not41.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eh = or disjoint i32 %..i.i, 2097152         ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !33 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !127 ; 2 uses
  %i.em = zext i32 %i.el to i64
  %.idx.i.i = shl nuw nsw i64 %i.em, 4            ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx.i.i
  %.not4446.i.i = icmp eq i32 %i.el, 0
  br i1 %.not4446.i.i, label %_ssa_op1_info.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.af
  %i.eo = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.ep = lshr exact i64 %i.eo, 4
  %i.eq = add nuw nsw i64 %i.ep, 1
  %xtraiter59 = and i64 %i.eq, 3                  ; 2 uses
  %lcmp.mod60.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod60.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.148.i.i.prol = phi i32 [ %.2.i.i.prol, %.lr.ph.i.i.prol ], [ %i.eh, %.lr.ph.i.i.preheader ]
  %.04047.i.i.prol = phi ptr [ %i.ex, %.lr.ph.i.i.prol ], [ %i.ej, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.er = getelementptr inbounds nuw i8, ptr %.04047.i.i.prol, i64 8
  %i.es = load i8, ptr %i.er, align 8, !tbaa !33  ; 2 uses
  %i.et = icmp eq i8 %i.es, 0
  %i.eu = zext nneg i8 %i.es to i32
  %i.ev = shl nuw i32 1024, %i.eu
  %i.ew = select i1 %i.et, i32 0, i32 %i.ev, !prof !22
  %.2.i.i.prol = or i32 %i.ew, %.148.i.i.prol     ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.04047.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter59
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !221

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.2.i.i.lcssa.unr = phi i32 [ poison, %.lr.ph.i.i.preheader ], [ %.2.i.i.prol, %.lr.ph.i.i.prol ]
  %.148.i.i.unr = phi i32 [ %i.eh, %.lr.ph.i.i.preheader ], [ %.2.i.i.prol, %.lr.ph.i.i.prol ]
  %.04047.i.i.unr = phi ptr [ %i.ej, %.lr.ph.i.i.preheader ], [ %i.ex, %.lr.ph.i.i.prol ]
  %i.ey = icmp ult i64 %i.eo, 48
  br i1 %i.ey, label %_ssa_op1_info.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.148.i.i = phi i32 [ %.2.i.i.3, %.lr.ph.i.i ], [ %.148.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.04047.i.i = phi ptr [ %i.fx, %.lr.ph.i.i ], [ %.04047.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.04047.i.i, i64 8
  %i.fa = load i8, ptr %i.ez, align 8, !tbaa !33  ; 2 uses
  %i.fb = icmp eq i8 %i.fa, 0
  %i.fc = zext nneg i8 %i.fa to i32
  %i.fd = shl nuw i32 1024, %i.fc
  %i.fe = select i1 %i.fb, i32 0, i32 %i.fd, !prof !22
  %.2.i.i = or i32 %i.fe, %.148.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.04047.i.i, i64 24
  %i.fg = load i8, ptr %i.ff, align 8, !tbaa !33  ; 2 uses
  %i.fh = icmp eq i8 %i.fg, 0
end_hunk_0
begin_hunk_1_@zend_infer_types:bb.a
  %i.hg = shl nuw i32 1024, %i.hf
  %i.hh = or i32 %i.hg, %.4.v.i.i.1
  %i.hi = or i32 %i.hh, %.5.i.i
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph52.i.i.1
  %.5.i.i.1 = phi i32 [ %i.hi, %bb.aj ], [ %.5.i.i, %.lr.ph52.i.i.1 ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.03850.i.i, i64 64 ; 2 uses
  %.not42.i.i.1 = icmp eq ptr %i.hj, %i.gd
  br i1 %.not42.i.i.1, label %_ssa_op1_info.exit.i, label %.lr.ph52.i.i, !llvm.loop !134

bb.al:                                            ; preds = %bb.ab
  %i.hk = zext nneg i8 %i.dw to i32
  %i.hl = shl nuw i32 1, %i.hk                    ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.du, i64 9
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !33
  %.not.i224.i = icmp eq i8 %i.hn, 0
  br i1 %.not.i224.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ho = or i32 %i.hl, -1073741824
  br label %_ssa_op1_info.exit.i

bb.an:                                            ; preds = %bb.al
  %i.hp = icmp eq i8 %i.dw, 6
  %spec.select.i.i = select i1 %i.hp, i32 -2147483584, i32 %i.hl
  br label %_ssa_op1_info.exit.i

bb.ao:                                            ; preds = %.critedge.i.i
  %i.hq = load ptr, ptr %i.br, align 8, !tbaa !98 ; 2 uses
  %.not.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i, label %_ssa_op1_info.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hr = load i32, ptr %i.co, align 4, !tbaa !57 ; 2 uses
  %i.hs = icmp sgt i32 %i.hr, -1
  br i1 %i.hs, label %bb.aq, label %_ssa_op1_info.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.ht = zext nneg i32 %i.hr to i64
  %i.hu = getelementptr inbounds nuw [40 x i8], ptr %i.hq, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !138
  br label %_ssa_op1_info.exit.i

_ssa_op1_info.exit.i:                             ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph52.i.i.prol.loopexit, %bb.ak, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.ag, %bb.af, %bb.ad, %bb.ab
  %.0.i.i = phi i32 [ %.5.i.i.1, %bb.ak ], [ -521143298, %bb.ab ], [ %spec.select.i.i, %bb.an ], [ %i.ho, %bb.am ], [ %i.ed, %bb.ad ], [ -486539265, %bb.ao ], [ %..i.i, %bb.ag ], [ %i.eh, %bb.af ], [ %i.hv, %bb.aq ], [ -486539265, %bb.ap ], [ %.5.i.i.lcssa.unr, %.lr.ph52.i.i.prol.loopexit ], [ %.2.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.2.i.i.3, %.lr.ph.i.i ] ; 2 uses
  %i.hw = shl i32 %.0.i.i, 1                      ; 2 uses
  %i.hx = and i32 %i.hw, 2
  %spec.select.i = or i32 %i.hx, %.0.i.i
  %i.hy = icmp eq i8 %i.ck, 62                    ; 2 uses
  %i.hz = and i32 %i.hw, -2147483648
  %.sink45.i = select i1 %i.hy, i32 -1026, i32 1073740798
  %.sink44.i = select i1 %i.hy, i32 %i.hz, i32 1024 ; 2 uses
  %i.ia = and i32 %spec.select.i, %.sink45.i
  %i.ib = or i32 %.015816.i, %i.ia
  %i.ic = or i32 %i.ib, %.sink44.i                ; 13 uses
  br i1 %.not2067.i, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %_ssa_op1_info.exit.i
  %i.id = load ptr, ptr %i.br, align 8, !tbaa !222 ; 2 uses
  %.not209.i = icmp eq ptr %i.id, null
  br i1 %.not209.i, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ie = load i32, ptr %i.co, align 4, !tbaa !57 ; 2 uses
  %i.if = icmp sgt i32 %i.ie, -1
  %i.ig = and i32 %.sink44.i, 1024
  %.not210.i = icmp eq i32 %i.ig, 0
  %or.cond.i = select i1 %i.if, i1 %.not210.i, i1 false
  br i1 %or.cond.i, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.ih = zext nneg i32 %i.ie to i64
  %i.ii = getelementptr inbounds nuw [40 x i8], ptr %i.id, i64 %i.ih ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !148 ; 2 uses
  %.not211.i = icmp eq ptr %i.ik, null
  br i1 %.not211.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.im = load i8, ptr %i.il, align 4
  %i.in = lshr i8 %i.im, 1
  %.lobit.i = and i8 %i.in, 1
  %i.io = zext nneg i8 %.lobit.i to i32
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %_ssa_op1_info.exit.i
  %.0168.i = phi ptr [ %i.ik, %bb.au ], [ null, %bb.at ], [ null, %bb.as ], [ null, %bb.ar ], [ null, %_ssa_op1_info.exit.i ] ; 3 uses
  %.0167.i = phi i32 [ %i.io, %bb.au ], [ 0, %bb.at ], [ 0, %bb.as ], [ 0, %bb.ar ], [ 0, %_ssa_op1_info.exit.i ] ; 2 uses
  %i.ip = icmp slt i32 %.016910.i, 0
  br i1 %i.ip, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not212.i = icmp ne ptr %.0168.i, null
  %i.iq = icmp eq ptr %.0168.i, %.01769.i
  %or.cond219.i = select i1 %.not212.i, i1 %i.iq, i1 false
  br i1 %or.cond219.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %.not213.i = icmp eq i32 %.016910.i, %.0167.i
  %spec.store.select.i = select i1 %.not213.i, i32 %.016910.i, i32 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %.1177.i = phi ptr [ %.0168.i, %bb.av ], [ %.01769.i, %bb.ax ], [ null, %bb.aw ] ; 13 uses
  %.1170.i = phi i32 [ %.0167.i, %bb.av ], [ %spec.store.select.i, %bb.ax ], [ 0, %bb.aw ] ; 13 uses
  br i1 %i.dk, label %bb.az, label %bb.bk

bb.az:                                            ; preds = %bb.ay
  br i1 %.not9.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ir = getelementptr inbounds i8, ptr %i.ch, i64 -24
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !33
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds i8, ptr %i.ci, i64 %i.it
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.iv = load ptr, ptr %i.bt, align 8, !tbaa !97
  %i.iw = getelementptr inbounds i8, ptr %i.ch, i64 -24
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !33
  %i.iy = zext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %i.iy
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ja = phi ptr [ %i.iu, %bb.ba ], [ %i.iz, %bb.bb ] ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load i8, ptr %i.jb, align 8, !tbaa !33
  %i.jd = icmp eq i8 %i.jc, 4
  br i1 %i.jd, label %bb.bd, label %is_recursive_tail_call.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.je = icmp slt i32 %.016215.i, 0
  br i1 %i.je, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.jf = load i64, ptr %i.ja, align 8, !tbaa !33 ; 2 uses
  br label %is_recursive_tail_call.exit.i

bb.bf:                                            ; preds = %bb.bd
  %.not217.i = icmp eq i32 %.016215.i, 0
  br i1 %.not217.i, label %is_recursive_tail_call.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jg = trunc i8 %.sroa.24.013.i to i1
  br i1 %i.jg, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jh = load i64, ptr %i.ja, align 8, !tbaa !33
  %.sroa.0.0..i = call i64 @llvm.smin.i64(i64 %.sroa.0.011.i, i64 %i.jh)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sroa.0.1.i = phi i64 [ %.sroa.0.011.i, %bb.bg ], [ %.sroa.0.0..i, %bb.bh ] ; 2 uses
  %i.ji = trunc i8 %.sroa.28.014.i to i1
  br i1 %i.ji, label %is_recursive_tail_call.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jj = load i64, ptr %i.ja, align 8, !tbaa !33
  %.sroa.15.0..i = call i64 @llvm.smax.i64(i64 %.sroa.15.012.i, i64 %i.jj)
  br label %is_recursive_tail_call.exit.i

bb.bk:                                            ; preds = %bb.ay
  br i1 %.not2067.i, label %is_recursive_tail_call.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jk = load ptr, ptr %i.br, align 8, !tbaa !222 ; 2 uses
  %.not214.i = icmp eq ptr %i.jk, null
  br i1 %.not214.i, label %is_recursive_tail_call.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jl = load i32, ptr %i.co, align 4, !tbaa !57 ; 2 uses
  %i.jm = icmp sgt i32 %i.jl, -1
  br i1 %i.jm, label %bb.bn, label %is_recursive_tail_call.exit.i

bb.bn:                                            ; preds = %bb.bm
  %i.jn = zext nneg i32 %i.jl to i64
  %i.jo = getelementptr inbounds nuw [40 x i8], ptr %i.jk, i64 %i.jn ; 10 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.jq = load i8, ptr %i.jp, align 4
  %i.jr = trunc i8 %i.jq to i1
  br i1 %i.jr, label %bb.bo, label %is_recursive_tail_call.exit.i

bb.bo:                                            ; preds = %bb.bn
  %i.js = icmp slt i32 %.016215.i, 0
  br i1 %i.js, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %.sroa.0.0.copyload47.i = load i64, ptr %i.jt, align 8, !tbaa !83
  %.sroa.15.0..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %.sroa.15.0.copyload50.i = load i64, ptr %.sroa.15.0..sroa_idx49.i, align 8, !tbaa !83
  %.sroa.24.0..sroa_idx56.i = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %.sroa.24.0.copyload57.i = load i8, ptr %.sroa.24.0..sroa_idx56.i, align 8, !tbaa !123
  %.sroa.28.0..sroa_idx60.i = getelementptr inbounds nuw i8, ptr %i.jo, i64 25
  %.sroa.28.0.copyload61.i = load i8, ptr %.sroa.28.0..sroa_idx60.i, align 1, !tbaa !123
  %.sroa.32.0..sroa_idx64.i = getelementptr inbounds nuw i8, ptr %i.jo, i64 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.32.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.32.0..sroa_idx64.i, i64 6, i1 false), !tbaa.struct !102
  br label %is_recursive_tail_call.exit.i

bb.bq:                                            ; preds = %bb.bo
  %.not215.i = icmp eq i32 %.016215.i, 0
  br i1 %.not215.i, label %is_recursive_tail_call.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jv = load i8, ptr %i.ju, align 8, !tbaa !99, !range !101, !noundef !102
  %i.jw = trunc nuw i8 %i.jv to i1
  br i1 %i.jw, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !106
  %.sroa.0.0.220.i = call i64 @llvm.smin.i64(i64 %.sroa.0.011.i, i64 %i.jy)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.sroa.0.3.i = phi i64 [ %.sroa.0.0.220.i, %bb.bs ], [ -9223372036854775808, %bb.br ] ; 2 uses
  %.sroa.24.2.i = phi i8 [ %.sroa.24.013.i, %bb.bs ], [ 1, %bb.br ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jo, i64 25
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !103, !range !101, !noundef !102
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %is_recursive_tail_call.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !107
  %.sroa.15.0.221.i = call i64 @llvm.smax.i64(i64 %.sroa.15.012.i, i64 %i.kd)
  br label %is_recursive_tail_call.exit.i

is_recursive_tail_call.exit.i:                    ; preds = %bb.bu, %bb.bt, %bb.bq, %bb.bp, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bf, %bb.be, %bb.bc, %bb.x, %bb.p, %bb.o, %bb.n
  %.5181.i = phi ptr [ %.01769.i, %bb.n ], [ %.01769.i, %bb.o ], [ %.01769.i, %bb.p ], [ %.1177.i, %bb.bq ], [ %.1177.i, %bb.bk ], [ %.1177.i, %bb.bl ], [ %.1177.i, %bb.bm ], [ %.1177.i, %bb.bn ], [ %.1177.i, %bb.bt ], [ %.1177.i, %bb.bf ], [ %.1177.i, %bb.bj ], [ %.1177.i, %bb.bi ], [ %.1177.i, %bb.be ], [ %.1177.i, %bb.bc ], [ %.1177.i, %bb.bp ], [ %.1177.i, %bb.bu ], [ %.01769.i, %bb.x ] ; 2 uses
  %.5174.i = phi i32 [ %.016910.i, %bb.n ], [ %.016910.i, %bb.o ], [ %.016910.i, %bb.p ], [ %.1170.i, %bb.bq ], [ %.1170.i, %bb.bk ], [ %.1170.i, %bb.bl ], [ %.1170.i, %bb.bm ], [ %.1170.i, %bb.bn ], [ %.1170.i, %bb.bt ], [ %.1170.i, %bb.bf ], [ %.1170.i, %bb.bj ], [ %.1170.i, %bb.bi ], [ %.1170.i, %bb.be ], [ %.1170.i, %bb.bc ], [ %.1170.i, %bb.bp ], [ %.1170.i, %bb.bu ], [ %.016910.i, %bb.x ] ; 2 uses
  %.sroa.0.8.i = phi i64 [ %.sroa.0.011.i, %bb.n ], [ %.sroa.0.011.i, %bb.o ], [ %.sroa.0.011.i, %bb.p ], [ %.sroa.0.011.i, %bb.bq ], [ %.sroa.0.011.i, %bb.bk ], [ %.sroa.0.011.i, %bb.bl ], [ %.sroa.0.011.i, %bb.bm ], [ -9223372036854775808, %bb.bn ], [ %.sroa.0.3.i, %bb.bt ], [ %.sroa.0.011.i, %bb.bf ], [ %.sroa.0.1.i, %bb.bj ], [ %.sroa.0.1.i, %bb.bi ], [ %i.jf, %bb.be ], [ %.sroa.0.011.i, %bb.bc ], [ %.sroa.0.0.copyload47.i, %bb.bp ], [ %.sroa.0.3.i, %bb.bu ], [ %.sroa.0.011.i, %bb.x ] ; 2 uses
  %.sroa.15.6.i = phi i64 [ %.sroa.15.012.i, %bb.n ], [ %.sroa.15.012.i, %bb.o ], [ %.sroa.15.012.i, %bb.p ], [ %.sroa.15.012.i, %bb.bq ], [ %.sroa.15.012.i, %bb.bk ], [ %.sroa.15.012.i, %bb.bl ], [ %.sroa.15.012.i, %bb.bm ], [ 9223372036854775807, %bb.bn ], [ 9223372036854775807, %bb.bt ], [ %.sroa.15.012.i, %bb.bf ], [ %.sroa.15.0..i, %bb.bj ], [ %.sroa.15.012.i, %bb.bi ], [ %i.jf, %bb.be ], [ %.sroa.15.012.i, %bb.bc ], [ %.sroa.15.0.copyload50.i, %bb.bp ], [ %.sroa.15.0.221.i, %bb.bu ], [ %.sroa.15.012.i, %bb.x ] ; 2 uses
  %.sroa.24.7.i = phi i8 [ %.sroa.24.013.i, %bb.n ], [ %.sroa.24.013.i, %bb.o ], [ %.sroa.24.013.i, %bb.p ], [ %.sroa.24.013.i, %bb.bq ], [ %.sroa.24.013.i, %bb.bk ], [ %.sroa.24.013.i, %bb.bl ], [ %.sroa.24.013.i, %bb.bm ], [ 1, %bb.bn ], [ %.sroa.24.2.i, %bb.bt ], [ %.sroa.24.013.i, %bb.bf ], [ %.sroa.24.013.i, %bb.bj ], [ %.sroa.24.013.i, %bb.bi ], [ 0, %bb.be ], [ %.sroa.24.013.i, %bb.bc ], [ %.sroa.24.0.copyload57.i, %bb.bp ], [ %.sroa.24.2.i, %bb.bu ], [ %.sroa.24.013.i, %bb.x ] ; 2 uses
  %.sroa.28.6.i = phi i8 [ %.sroa.28.014.i, %bb.n ], [ %.sroa.28.014.i, %bb.o ], [ %.sroa.28.014.i, %bb.p ], [ %.sroa.28.014.i, %bb.bq ], [ %.sroa.28.014.i, %bb.bk ], [ %.sroa.28.014.i, %bb.bl ], [ %.sroa.28.014.i, %bb.bm ], [ 1, %bb.bn ], [ 1, %bb.bt ], [ %.sroa.28.014.i, %bb.bf ], [ %.sroa.28.014.i, %bb.bj ], [ %.sroa.28.014.i, %bb.bi ], [ 0, %bb.be ], [ %.sroa.28.014.i, %bb.bc ], [ %.sroa.28.0.copyload61.i, %bb.bp ], [ %.sroa.28.014.i, %bb.bu ], [ %.sroa.28.014.i, %bb.x ] ; 2 uses
  %.6.i = phi i32 [ %.016215.i, %bb.n ], [ %.016215.i, %bb.o ], [ %.016215.i, %bb.p ], [ 0, %bb.bq ], [ 0, %bb.bk ], [ 0, %bb.bl ], [ 0, %bb.bm ], [ 1, %bb.bn ], [ 1, %bb.bt ], [ 0, %bb.bf ], [ 1, %bb.bj ], [ 1, %bb.bi ], [ 1, %bb.be ], [ 0, %bb.bc ], [ 1, %bb.bp ], [ 1, %bb.bu ], [ %.016215.i, %bb.x ] ; 2 uses
  %.4.i = phi i32 [ %.015816.i, %bb.n ], [ %.015816.i, %bb.o ], [ %.015816.i, %bb.p ], [ %i.ic, %bb.bq ], [ %i.ic, %bb.bk ], [ %i.ic, %bb.bl ], [ %i.ic, %bb.bm ], [ %i.ic, %bb.bn ], [ %i.ic, %bb.bt ], [ %i.ic, %bb.bf ], [ %i.ic, %bb.bj ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.be ], [ %i.ic, %bb.bc ], [ %i.ic, %bb.bp ], [ %i.ic, %bb.bu ], [ %.015816.i, %bb.x ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.n, !llvm.loop !223

._crit_edge.loopexit.i:                           ; preds = %is_recursive_tail_call.exit.i
  %i.ke = and i32 %.4.i, %i.bn
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.m
  %.0176.lcssa.i = phi ptr [ null, %bb.m ], [ %.5181.i, %._crit_edge.loopexit.i ]
  %.0169.lcssa.i = phi i32 [ -1, %bb.m ], [ %.5174.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.m ], [ %.sroa.0.8.i, %._crit_edge.loopexit.i ]
  %.sroa.15.0.lcssa.i = phi i64 [ 0, %bb.m ], [ %.sroa.15.6.i, %._crit_edge.loopexit.i ]
  %.sroa.24.0.lcssa.i = phi i8 [ 0, %bb.m ], [ %.sroa.24.7.i, %._crit_edge.loopexit.i ]
  %.sroa.28.0.lcssa.i = phi i8 [ 0, %bb.m ], [ %.sroa.28.6.i, %._crit_edge.loopexit.i ]
  %.0162.lcssa.i = phi i32 [ -1, %bb.m ], [ %.6.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.0158.lcssa.i = phi i32 [ 0, %bb.m ], [ %i.ke, %._crit_edge.loopexit.i ]
  %i.kf = and i32 %i.be, 8192
  %.not201.i = icmp eq i32 %i.kf, 0
  br i1 %.not201.i, label %bb.bv, label %._crit_edge._crit_edge.i

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 116
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4
  br label %bb.bw

bb.bv:                                            ; preds = %._crit_edge.i
  %i.kg = icmp slt i32 %.0169.lcssa.i, 0
  %spec.select222.i = select i1 %i.kg, ptr null, ptr %.0176.lcssa.i
  %spec.store.select2.i = call i32 @llvm.smax.i32(i32 %.0162.lcssa.i, i32 0)
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  store ptr %spec.select222.i, ptr %i.kh, align 8, !tbaa !148
  %.not202.i = icmp slt i32 %.0169.lcssa.i, 1
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ax, i64 116
  %i.kj = load i8, ptr %i.ki, align 4
  %i.kk = select i1 %.not202.i, i8 0, i8 2
  %i.kl = and i8 %i.kj, -3
  %i.km = or disjoint i8 %i.kl, %i.kk
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %._crit_edge._crit_edge.i
  %i.kn = phi i8 [ %.pre.i, %._crit_edge._crit_edge.i ], [ %i.km, %bb.bv ]
  %.7.i = phi i32 [ %.0162.lcssa.i, %._crit_edge._crit_edge.i ], [ %spec.store.select2.i, %bb.bv ]
  store i32 %.0158.lcssa.i, ptr %i.ay, align 8, !tbaa !138
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  store i64 %.sroa.0.0.lcssa.i, ptr %i.ko, align 8, !tbaa !83
  %.sroa.15.0..sroa_idx51.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  store i64 %.sroa.15.0.lcssa.i, ptr %.sroa.15.0..sroa_idx51.i, align 8, !tbaa !83
  %.sroa.24.0..sroa_idx58.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  store i8 %.sroa.24.0.lcssa.i, ptr %.sroa.24.0..sroa_idx58.i, align 8, !tbaa !123
  %.sroa.28.0..sroa_idx62.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 137
  store i8 %.sroa.28.0.lcssa.i, ptr %.sroa.28.0..sroa_idx62.i, align 1, !tbaa !123
  %.sroa.32.0..sroa_idx65.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.32.0..sroa_idx65.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.32.i, i64 6, i1 false), !tbaa.struct !102
  %i.kp = icmp ne i32 %.7.i, 0
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ax, i64 116
  %i.kr = zext i1 %i.kp to i8
  %i.ks = and i8 %i.kn, -2
  %i.kt = or disjoint i8 %i.ks, %i.kr
  store i8 %i.kt, ptr %i.kq, align 4
  br label %zend_func_return_info.exit

zend_func_return_info.exit:                       ; preds = %bb.j, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.32.i)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.h, %zend_func_return_info.exit
  br i1 %i.e, label %.sink.split, label %bb.by, !prof !22

.sink.split:                                      ; preds = %bb.bx, %bb.e
  %.0.ph = phi i32 [ -1, %bb.e ], [ 0, %bb.bx ]
  call void @_efree(ptr noundef %i.j) #17
  br label %bb.by

bb.by:                                            ; preds = %.sink.split, %bb.bx, %bb.e
  %.0 = phi i32 [ -1, %bb.e ], [ 0, %bb.bx ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @zend_may_throw_ex(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.b = load i8, ptr %i.a, align 1, !tbaa !95    ; 3 uses
  %i.c = icmp eq i8 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %4, 1
  %.not237 = icmp eq i32 %i.d, 0
  br i1 %.not237, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i8, ptr %i.e, align 4, !tbaa !54
  switch i8 %i.f, label %_ssa_op2_has_range.exit326.thread [
    i8 84, label %bb.f
    i8 -116, label %bb.f
    i8 115, label %bb.f
    i8 -108, label %bb.f
    i8 22, label %bb.f
    i8 23, label %bb.f
    i8 30, label %bb.f
    i8 -88, label %bb.f
    i8 -73, label %bb.f
    i8 -53, label %bb.f
    i8 90, label %bb.f
    i8 91, label %bb.f
    i8 67, label %bb.f
    i8 -103, label %bb.f
    i8 -102, label %bb.f
  ]

bb.d:                                             ; preds = %bb.a
  %i.g = and i8 %i.b, 6
  %.not234 = icmp eq i8 %i.g, 0
  %i.h = and i32 %4, 1073741824
  %.not235 = icmp eq i32 %i.h, 0
  %or.cond284 = or i1 %.not235, %.not234
  %i.i = and i32 %4, 918272
  %.not236 = icmp eq i32 %i.i, 0
  %or.cond285 = or i1 %.not236, %or.cond284
  br i1 %or.cond285, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i8, ptr %i.j, align 4, !tbaa !54
  switch i8 %i.k, label %_ssa_op2_has_range.exit326.thread [
    i8 48, label %bb.f
    i8 -60, label %bb.f
    i8 78, label %bb.f
    i8 126, label %bb.f
    i8 98, label %bb.f
    i8 31, label %bb.f
    i8 65, label %bb.f
    i8 116, label %bb.f
    i8 117, label %bb.f
    i8 66, label %bb.f
    i8 -71, label %bb.f
    i8 106, label %bb.f
    i8 50, label %bb.f
    i8 67, label %bb.f
    i8 -100, label %bb.f
    i8 58, label %bb.f
    i8 -116, label %bb.f
  ]

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.d, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.b, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.m = load i8, ptr %i.l, align 2, !tbaa !109   ; 16 uses
  %i.n = icmp eq i8 %i.m, 8                       ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = and i32 %5, 1
  %.not241 = icmp eq i32 %i.o, 0
  br i1 %.not241, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = load i8, ptr %i.p, align 4, !tbaa !54
  switch i8 %i.q, label %_ssa_op2_has_range.exit326.thread [
    i8 30, label %bb.k
    i8 78, label %bb.k
    i8 126, label %bb.k
  ]

bb.i:                                             ; preds = %bb.f
  %i.r = and i8 %i.m, 6
  %.not238 = icmp eq i8 %i.r, 0
  %i.s = and i32 %5, 1073741824
  %.not239 = icmp eq i32 %i.s, 0
  %or.cond286 = or i1 %.not239, %.not238
  %i.t = and i32 %5, 918272
  %.not240 = icmp eq i32 %i.t, 0
  %or.cond287 = or i1 %.not240, %or.cond286
  br i1 %or.cond287, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = load i8, ptr %i.u, align 4, !tbaa !54
  switch i8 %i.v, label %_ssa_op2_has_range.exit326.thread [
    i8 22, label %bb.k
    i8 78, label %bb.k
    i8 126, label %bb.k
  ]

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.j, %bb.j, %bb.g, %bb.h, %bb.h, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i8, ptr %i.w, align 4, !tbaa !54
  switch i8 %i.x, label %bb.fb [
    i8 0, label %_ssa_op2_has_range.exit326.thread
    i8 31, label %_ssa_op2_has_range.exit326.thread
    i8 42, label %_ssa_op2_has_range.exit326.thread
    i8 49, label %_ssa_op2_has_range.exit326.thread
    i8 -116, label %_ssa_op2_has_range.exit326.thread
    i8 57, label %_ssa_op2_has_range.exit326.thread
    i8 58, label %_ssa_op2_has_range.exit326.thread
    i8 70, label %_ssa_op2_has_range.exit326.thread
    i8 127, label %_ssa_op2_has_range.exit326.thread
    i8 -100, label %_ssa_op2_has_range.exit326.thread
    i8 123, label %_ssa_op2_has_range.exit326.thread
    i8 122, label %_ssa_op2_has_range.exit326.thread
    i8 -70, label %_ssa_op2_has_range.exit326.thread
    i8 -87, label %_ssa_op2_has_range.exit326.thread
    i8 -69, label %_ssa_op2_has_range.exit326.thread
    i8 -68, label %_ssa_op2_has_range.exit326.thread
    i8 -61, label %_ssa_op2_has_range.exit326.thread
    i8 114, label %_ssa_op2_has_range.exit326.thread
    i8 -102, label %_ssa_op2_has_range.exit326.thread
    i8 -85, label %_ssa_op2_has_range.exit326.thread
    i8 -84, label %_ssa_op2_has_range.exit326.thread
    i8 -89, label %_ssa_op2_has_range.exit326.thread
    i8 -58, label %_ssa_op2_has_range.exit326.thread
    i8 -48, label %_ssa_op2_has_range.exit326.thread
    i8 16, label %bb.l
    i8 17, label %bb.l
    i8 -60, label %bb.l
    i8 117, label %bb.m
    i8 65, label %bb.m
    i8 67, label %bb.m
    i8 66, label %bb.m
    i8 -71, label %bb.m
    i8 100, label %bb.m
    i8 61, label %_ssa_op2_has_range.exit326.thread
    i8 -88, label %bb.n
    i8 1, label %bb.p
    i8 4, label %bb.r
    i8 2, label %bb.ad
    i8 3, label %bb.ad
    i8 12, label %bb.ad
    i8 5, label %bb.ae
    i8 6, label %bb.aq
    i8 7, label %bb.aq
    i8 8, label %bb.ay
    i8 53, label %bb.ay
    i8 9, label %bb.az
    i8 10, label %bb.az
    i8 11, label %bb.az
    i8 13, label %bb.bb
    i8 34, label %bb.bc
    i8 36, label %bb.bc
    i8 35, label %bb.bd
    i8 37, label %bb.bd
    i8 43, label %bb.be
    i8 44, label %bb.be
    i8 46, label %bb.be
    i8 47, label %bb.be
    i8 -104, label %bb.be
    i8 52, label %bb.bf
    i8 14, label %bb.bf
    i8 15, label %bb.bp
    i8 18, label %bb.bq
    i8 19, label %bb.bq
    i8 20, label %bb.bq
    i8 21, label %bb.bq
    i8 48, label %bb.bq
    i8 -86, label %bb.bq
    i8 26, label %bb.bs
    i8 22, label %bb.cu
    i8 74, label %bb.cv
    i8 -73, label %bb.cw
    i8 -53, label %bb.cw
    i8 23, label %bb.cx
    i8 24, label %bb.dd
    i8 54, label %bb.dy
    i8 55, label %bb.dy
end_hunk_1
