inline.NumInlined: 44
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 51
begin_hunk_0_@png_do_read_transformations:bb.a
  %.not4653.i = icmp eq i32 %i.bxs, 0
  br i1 %.not4653.i, label %png_do_encode_alpha.exit, label %.lr.ph.preheader.i222

.lr.ph.preheader.i222:                            ; preds = %bb.gz
  %i.bzp = getelementptr i8, ptr %i.bxr, i64 %i.bzo ; 2 uses
  %i.bzq = getelementptr i8, ptr %i.bzp, i64 -2   ; 4 uses
  %xtraiter809 = and i32 %i.bxs, 1
  %lcmp.mod810.not = icmp eq i32 %xtraiter809, 0
  br i1 %lcmp.mod810.not, label %.lr.ph.i223.prol.loopexit, label %.lr.ph.i223.prol

.lr.ph.i223.prol:                                 ; preds = %.lr.ph.preheader.i222
  %i.bzr = getelementptr i8, ptr %i.bzp, i64 -1   ; 2 uses
  %i.bzs = load i8, ptr %i.bzr, align 1, !tbaa !29, !noalias !271
  %i.bzt = zext i8 %i.bzs to i32
  %i.bzu = lshr i32 %i.bzt, %i.bzm
  %i.bzv = zext nneg i32 %i.bzu to i64
  %i.bzw = getelementptr inbounds nuw [8 x i8], ptr %i.bzk, i64 %i.bzv
  %i.bzx = load ptr, ptr %i.bzw, align 8, !tbaa !228, !noalias !271
  %i.bzy = load i8, ptr %i.bzq, align 1, !tbaa !29, !noalias !271
  %i.bzz = zext i8 %i.bzy to i64
  %i.caa = getelementptr inbounds nuw [2 x i8], ptr %i.bzx, i64 %i.bzz
  %i.cab = load i16, ptr %i.caa, align 2, !tbaa !30, !noalias !271 ; 2 uses
  %i.cac = lshr i16 %i.cab, 8
  %i.cad = trunc nuw i16 %i.cac to i8
  store i8 %i.cad, ptr %i.bzq, align 1, !tbaa !29, !noalias !271
  %i.cae = trunc i16 %i.cab to i8
  store i8 %i.cae, ptr %i.bzr, align 1, !tbaa !29, !noalias !271
  %i.caf = add nsw i32 %i.bxs, -1
  %i.cag = getelementptr inbounds nuw i8, ptr %i.bzq, i64 %i.bzo
  br label %.lr.ph.i223.prol.loopexit

.lr.ph.i223.prol.loopexit:                        ; preds = %.lr.ph.i223.prol, %.lr.ph.preheader.i222
  %.155.i.unr = phi ptr [ %i.bzq, %.lr.ph.preheader.i222 ], [ %i.cag, %.lr.ph.i223.prol ]
  %.13854.i.unr = phi i32 [ %i.bxs, %.lr.ph.preheader.i222 ], [ %i.caf, %.lr.ph.i223.prol ]
  %i.cah = icmp eq i32 %i.bxs, 1
  br i1 %i.cah, label %png_do_encode_alpha.exit, label %.lr.ph.i223

.lr.ph.i223:                                      ; preds = %.lr.ph.i223.prol.loopexit, %.lr.ph.i223
  %.155.i = phi ptr [ %i.cbm, %.lr.ph.i223 ], [ %.155.i.unr, %.lr.ph.i223.prol.loopexit ] ; 4 uses
  %.13854.i = phi i32 [ %i.cbl, %.lr.ph.i223 ], [ %.13854.i.unr, %.lr.ph.i223.prol.loopexit ]
  %i.cai = getelementptr inbounds nuw i8, ptr %.155.i, i64 1 ; 2 uses
  %i.caj = load i8, ptr %i.cai, align 1, !tbaa !29, !noalias !271
  %i.cak = zext i8 %i.caj to i32
  %i.cal = lshr i32 %i.cak, %i.bzm
  %i.cam = zext nneg i32 %i.cal to i64
  %i.can = getelementptr inbounds nuw [8 x i8], ptr %i.bzk, i64 %i.cam
  %i.cao = load ptr, ptr %i.can, align 8, !tbaa !228, !noalias !271
  %i.cap = load i8, ptr %.155.i, align 1, !tbaa !29, !noalias !271
  %i.caq = zext i8 %i.cap to i64
  %i.car = getelementptr inbounds nuw [2 x i8], ptr %i.cao, i64 %i.caq
  %i.cas = load i16, ptr %i.car, align 2, !tbaa !30, !noalias !271 ; 2 uses
  %i.cat = lshr i16 %i.cas, 8
  %i.cau = trunc nuw i16 %i.cat to i8
  store i8 %i.cau, ptr %.155.i, align 1, !tbaa !29, !noalias !271
  %i.cav = trunc i16 %i.cas to i8
  store i8 %i.cav, ptr %i.cai, align 1, !tbaa !29, !noalias !271
  %i.caw = getelementptr inbounds nuw i8, ptr %.155.i, i64 %i.bzo ; 4 uses
  %i.cax = getelementptr inbounds nuw i8, ptr %i.caw, i64 1 ; 2 uses
  %i.cay = load i8, ptr %i.cax, align 1, !tbaa !29, !noalias !271
  %i.caz = zext i8 %i.cay to i32
  %i.cba = lshr i32 %i.caz, %i.bzm
  %i.cbb = zext nneg i32 %i.cba to i64
  %i.cbc = getelementptr inbounds nuw [8 x i8], ptr %i.bzk, i64 %i.cbb
  %i.cbd = load ptr, ptr %i.cbc, align 8, !tbaa !228, !noalias !271
  %i.cbe = load i8, ptr %i.caw, align 1, !tbaa !29, !noalias !271
  %i.cbf = zext i8 %i.cbe to i64
  %i.cbg = getelementptr inbounds nuw [2 x i8], ptr %i.cbd, i64 %i.cbf
  %i.cbh = load i16, ptr %i.cbg, align 2, !tbaa !30, !noalias !271 ; 2 uses
  %i.cbi = lshr i16 %i.cbh, 8
  %i.cbj = trunc nuw i16 %i.cbi to i8
  store i8 %i.cbj, ptr %i.caw, align 1, !tbaa !29, !noalias !271
  %i.cbk = trunc i16 %i.cbh to i8
  store i8 %i.cbk, ptr %i.cax, align 1, !tbaa !29, !noalias !271
  %i.cbl = add i32 %.13854.i, -2                  ; 2 uses
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.caw, i64 %i.bzo
  %.not46.i.1 = icmp eq i32 %i.cbl, 0
  br i1 %.not46.i.1, label %png_do_encode_alpha.exit, label %.lr.ph.i223, !llvm.loop !276

.critedge.i:                                      ; preds = %bb.gy, %bb.gw, %bb.gv
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #11
  br label %png_do_encode_alpha.exit

png_do_encode_alpha.exit:                         ; preds = %.lr.ph.i223.prol.loopexit, %.lr.ph.i223, %.lr.ph59.i.prol.loopexit, %.lr.ph59.i, %.critedge.i, %bb.gz, %bb.gx, %bb.gu, %bb.gt
  %i.cbn = load i32, ptr %i.h, align 4, !tbaa !27 ; 4 uses
  %i.cbo = and i32 %i.cbn, 67108864
  %.not157 = icmp eq i32 %i.cbo, 0
  br i1 %.not157, label %png_do_scale_16_to_8.exit, label %bb.ha

bb.ha:                                            ; preds = %png_do_encode_alpha.exit
  %i.cbp = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.cbq = load i8, ptr %i.cbp, align 1, !tbaa !208
  %i.cbr = icmp eq i8 %i.cbq, 16
  br i1 %i.cbr, label %bb.hb, label %png_do_scale_16_to_8.exit

bb.hb:                                            ; preds = %bb.ha
  %i.cbs = load ptr, ptr %i.b, align 8, !tbaa !204
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbs, i64 1 ; 3 uses
  %i.cbu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cbv = load i64, ptr %i.cbu, align 8, !tbaa !213 ; 2 uses
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.cbt, i64 %i.cbv
  %.not.i225 = icmp eq i64 %i.cbv, 0
  br i1 %.not.i225, label %._crit_edge.i227, label %.lr.ph.i226

.lr.ph.i226:                                      ; preds = %bb.hb, %.lr.ph.i226
  %.020.i = phi ptr [ %i.cca, %.lr.ph.i226 ], [ %i.cbt, %bb.hb ] ; 3 uses
  %.01819.i = phi ptr [ %i.ccj, %.lr.ph.i226 ], [ %i.cbt, %bb.hb ] ; 2 uses
  %i.cbx = getelementptr inbounds nuw i8, ptr %.020.i, i64 1
  %i.cby = load i8, ptr %.020.i, align 1, !tbaa !29 ; 2 uses
  %i.cbz = zext i8 %i.cby to i32
  %i.cca = getelementptr inbounds nuw i8, ptr %.020.i, i64 2 ; 2 uses
  %i.ccb = load i8, ptr %i.cbx, align 1, !tbaa !29
  %i.ccc = zext i8 %i.ccb to i32
  %i.ccd = sub nsw i32 %i.ccc, %i.cbz
  %i.cce = mul nsw i32 %i.ccd, 65535
  %i.ccf = add nsw i32 %i.cce, 8388480
  %i.ccg = lshr i32 %i.ccf, 24
  %i.cch = trunc nuw i32 %i.ccg to i8
  %i.cci = add i8 %i.cby, %i.cch
  %i.ccj = getelementptr inbounds nuw i8, ptr %.01819.i, i64 1
  store i8 %i.cci, ptr %.01819.i, align 1, !tbaa !29
  %i.cck = icmp ult ptr %i.cca, %i.cbw
  br i1 %i.cck, label %.lr.ph.i226, label %._crit_edge.i227.loopexit, !llvm.loop !277

._crit_edge.i227.loopexit:                        ; preds = %.lr.ph.i226
  %.pre402.pre = load i32, ptr %i.h, align 4, !tbaa !27
  br label %._crit_edge.i227

._crit_edge.i227:                                 ; preds = %._crit_edge.i227.loopexit, %bb.hb
  %.pre402 = phi i32 [ %.pre402.pre, %._crit_edge.i227.loopexit ], [ %i.cbn, %bb.hb ]
  store i8 8, ptr %i.cbp, align 1, !tbaa !208
  %i.ccl = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ccm = load i8, ptr %i.ccl, align 2, !tbaa !216 ; 2 uses
  %i.ccn = shl i8 %i.ccm, 3
  %i.cco = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.ccn, ptr %i.cco, align 1, !tbaa !212
  %i.ccp = load i32, ptr %1, align 8, !tbaa !207
  %i.ccq = zext i8 %i.ccm to i32
  %i.ccr = mul i32 %i.ccp, %i.ccq
  %i.ccs = zext i32 %i.ccr to i64
  store i64 %i.ccs, ptr %i.cbu, align 8, !tbaa !213
  br label %png_do_scale_16_to_8.exit

png_do_scale_16_to_8.exit:                        ; preds = %._crit_edge.i227, %bb.ha, %png_do_encode_alpha.exit
  %i.cct = phi i32 [ %.pre402, %._crit_edge.i227 ], [ %i.cbn, %bb.ha ], [ %i.cbn, %png_do_encode_alpha.exit ] ; 4 uses
  %i.ccu = and i32 %i.cct, 1024
  %.not158 = icmp eq i32 %i.ccu, 0
  br i1 %.not158, label %png_do_chop.exit, label %bb.hc

bb.hc:                                            ; preds = %png_do_scale_16_to_8.exit
  %i.ccv = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.ccw = load i8, ptr %i.ccv, align 1, !tbaa !208
  %i.ccx = icmp eq i8 %i.ccw, 16
  br i1 %i.ccx, label %bb.hd, label %png_do_chop.exit

bb.hd:                                            ; preds = %bb.hc
  %i.ccy = load ptr, ptr %i.b, align 8, !tbaa !204
  %i.ccz = getelementptr inbounds nuw i8, ptr %i.ccy, i64 1 ; 3 uses
  %i.cda = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cdb = load i64, ptr %i.cda, align 8, !tbaa !213 ; 2 uses
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.ccz, i64 %i.cdb
  %.not.i228 = icmp eq i64 %i.cdb, 0
  br i1 %.not.i228, label %._crit_edge.i230, label %.lr.ph.i229

.lr.ph.i229:                                      ; preds = %bb.hd, %.lr.ph.i229
  %.018.i = phi ptr [ %i.cdf, %.lr.ph.i229 ], [ %i.ccz, %bb.hd ] ; 2 uses
  %.01617.i = phi ptr [ %i.cde, %.lr.ph.i229 ], [ %i.ccz, %bb.hd ] ; 2 uses
  %i.cdd = load i8, ptr %.018.i, align 1, !tbaa !29
  %i.cde = getelementptr inbounds nuw i8, ptr %.01617.i, i64 1
  store i8 %i.cdd, ptr %.01617.i, align 1, !tbaa !29
  %i.cdf = getelementptr inbounds nuw i8, ptr %.018.i, i64 2 ; 2 uses
  %i.cdg = icmp ult ptr %i.cdf, %i.cdc
  br i1 %i.cdg, label %.lr.ph.i229, label %._crit_edge.i230.loopexit, !llvm.loop !278

._crit_edge.i230.loopexit:                        ; preds = %.lr.ph.i229
  %.pre403.pre = load i32, ptr %i.h, align 4, !tbaa !27
  br label %._crit_edge.i230

._crit_edge.i230:                                 ; preds = %._crit_edge.i230.loopexit, %bb.hd
  %.pre403 = phi i32 [ %.pre403.pre, %._crit_edge.i230.loopexit ], [ %i.cct, %bb.hd ]
  store i8 8, ptr %i.ccv, align 1, !tbaa !208
  %i.cdh = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.cdi = load i8, ptr %i.cdh, align 2, !tbaa !216 ; 2 uses
  %i.cdj = shl i8 %i.cdi, 3
  %i.cdk = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.cdj, ptr %i.cdk, align 1, !tbaa !212
  %i.cdl = load i32, ptr %1, align 8, !tbaa !207
  %i.cdm = zext i8 %i.cdi to i32
  %i.cdn = mul i32 %i.cdl, %i.cdm
  %i.cdo = zext i32 %i.cdn to i64
  store i64 %i.cdo, ptr %i.cda, align 8, !tbaa !213
  br label %png_do_chop.exit

png_do_chop.exit:                                 ; preds = %._crit_edge.i230, %bb.hc, %png_do_scale_16_to_8.exit
  %i.cdp = phi i32 [ %.pre403, %._crit_edge.i230 ], [ %i.cct, %bb.hc ], [ %i.cct, %png_do_scale_16_to_8.exit ] ; 2 uses
  %i.cdq = and i32 %i.cdp, 64
  %.not159 = icmp eq i32 %i.cdq, 0
  br i1 %.not159, label %bb.hn, label %bb.he

bb.he:                                            ; preds = %png_do_chop.exit
  %i.cdr = load ptr, ptr %i.b, align 8, !tbaa !204
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdr, i64 1 ; 10 uses
  %i.cdt = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.cdu = load ptr, ptr %i.cdt, align 8, !tbaa !94 ; 7 uses
  %i.cdv = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cdw = load ptr, ptr %i.cdv, align 8, !tbaa !56 ; 6 uses
  %i.cdx = load i32, ptr %1, align 8, !tbaa !207  ; 18 uses
  %i.cdy = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 3 uses
  %i.cdz = load i8, ptr %i.cdy, align 1, !tbaa !208
  %i.cea = icmp eq i8 %i.cdz, 8
  br i1 %i.cea, label %bb.hf, label %png_do_quantize.exit

bb.hf:                                            ; preds = %bb.he
  %i.ceb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.cec = load i8, ptr %i.ceb, align 8, !tbaa !205 ; 3 uses
  %i.ced = icmp eq i8 %i.cec, 2
  %i.cee = icmp ne ptr %i.cdu, null               ; 2 uses
  %or.cond.i232 = and i1 %i.cee, %i.ced
  br i1 %or.cond.i232, label %.preheader.i241, label %bb.hi

.preheader.i241:                                  ; preds = %bb.hf
  %.not93.i = icmp eq i32 %i.cdx, 0
  br i1 %.not93.i, label %._crit_edge91.thread.i, label %.preheader.i241.a

.preheader.i241.a:                                ; preds = %.preheader.i241
  %xtraiter825 = and i32 %i.cdx, 1
  %.not93.i.a = icmp eq i32 %i.cdx, 1
  br i1 %.not93.i.a, label %.lr.ph90.i.epil.preheader, label %.lr.ph90.i.preheader.new

.lr.ph90.i.preheader.new:                         ; preds = %.preheader.i241.a
  %unroll_iter829 = and i32 %i.cdx, -2
  br label %.lr.ph90.i

._crit_edge91.thread.i:                           ; preds = %.preheader.i241
  store i8 3, ptr %i.ceb, align 8, !tbaa !205
  %i.cef = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 1, ptr %i.cef, align 2, !tbaa !216
  %i.ceg = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 8, ptr %i.ceg, align 1, !tbaa !212
  br label %bb.hg

.lr.ph90.i:                                       ; preds = %.lr.ph90.i, %.lr.ph90.i.preheader.new
  %.089.i = phi ptr [ %i.cds, %.lr.ph90.i.preheader.new ], [ %i.cel, %.lr.ph90.i ] ; 7 uses
  %.06988.i = phi ptr [ %i.cds, %.lr.ph90.i.preheader.new ], [ %i.cez, %.lr.ph90.i ] ; 3 uses
  %.07187.i = phi i32 [ 0, %.lr.ph90.i.preheader.new ], [ %i.cfa, %.lr.ph90.i ]
  %2 = getelementptr inbounds nuw i8, ptr %.089.i, i64 1
  %3 = load i8, ptr %.089.i, align 1, !tbaa !29
  %4 = getelementptr inbounds nuw i8, ptr %.089.i, i64 2
  %5 = load i8, ptr %2, align 1, !tbaa !29
  %6 = getelementptr inbounds nuw i8, ptr %.089.i, i64 3
  %7 = load i8, ptr %4, align 1, !tbaa !29
  %8 = lshr i8 %3, 3
  %9 = zext nneg i8 %8 to i64
  %10 = shl nuw nsw i64 %9, 10
  %11 = lshr i8 %5, 3
  %12 = zext nneg i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 5
  %14 = lshr i8 %7, 3
  %15 = zext nneg i8 %14 to i64
  %16 = getelementptr inbounds nuw i8, ptr %i.cdu, i64 %10
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 %13
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %15
  %19 = load i8, ptr %18, align 1, !tbaa !29
  %20 = getelementptr inbounds nuw i8, ptr %.06988.i, i64 1
  store i8 %19, ptr %.06988.i, align 1, !tbaa !29
  %i.ceh = getelementptr inbounds nuw i8, ptr %.089.i, i64 4
  %i.cei = load i8, ptr %6, align 1, !tbaa !29
  %i.cej = getelementptr inbounds nuw i8, ptr %.089.i, i64 5
  %i.cek = load i8, ptr %i.ceh, align 1, !tbaa !29
  %i.cel = getelementptr inbounds nuw i8, ptr %.089.i, i64 6 ; 2 uses
  %i.cem = load i8, ptr %i.cej, align 1, !tbaa !29
  %i.cen = lshr i8 %i.cei, 3
  %i.ceo = zext nneg i8 %i.cen to i64
  %i.cep = shl nuw nsw i64 %i.ceo, 10
  %i.ceq = lshr i8 %i.cek, 3
  %i.cer = zext nneg i8 %i.ceq to i64
  %i.ces = shl nuw nsw i64 %i.cer, 5
  %i.cet = lshr i8 %i.cem, 3
  %i.ceu = zext nneg i8 %i.cet to i64
  %i.cev = getelementptr inbounds nuw i8, ptr %i.cdu, i64 %i.cep
  %i.cew = getelementptr inbounds nuw i8, ptr %i.cev, i64 %i.ces
  %i.cex = getelementptr inbounds nuw i8, ptr %i.cew, i64 %i.ceu
  %i.cey = load i8, ptr %i.cex, align 1, !tbaa !29
  %i.cez = getelementptr inbounds nuw i8, ptr %.06988.i, i64 2 ; 2 uses
  store i8 %i.cey, ptr %20, align 1, !tbaa !29
  %i.cfa = add nuw i32 %.07187.i, 2               ; 2 uses
  %exitcond95.not.i = icmp eq i32 %i.cfa, %unroll_iter829
  br i1 %exitcond95.not.i, label %._crit_edge91.i.unr-lcssa, label %.lr.ph90.i, !llvm.loop !279

._crit_edge91.i.unr-lcssa:                        ; preds = %.lr.ph90.i
  %lcmp.mod827.not = icmp eq i32 %xtraiter825, 0
  br i1 %lcmp.mod827.not, label %._crit_edge91.i, label %.lr.ph90.i.epil.preheader

.lr.ph90.i.epil.preheader:                        ; preds = %._crit_edge91.i.unr-lcssa, %.preheader.i241.a
  %.089.i.epil.init = phi ptr [ %i.cds, %.preheader.i241.a ], [ %i.cel, %._crit_edge91.i.unr-lcssa ] ; 3 uses
  %.06988.i.epil.init = phi ptr [ %i.cds, %.preheader.i241.a ], [ %i.cez, %._crit_edge91.i.unr-lcssa ]
  %lcmp.mod828 = trunc i32 %i.cdx to i1
  tail call void @llvm.assume(i1 %lcmp.mod828)
  %21 = getelementptr inbounds nuw i8, ptr %.089.i.epil.init, i64 1
  %22 = load i8, ptr %.089.i.epil.init, align 1, !tbaa !29
  %23 = getelementptr inbounds nuw i8, ptr %.089.i.epil.init, i64 2
  %24 = load i8, ptr %21, align 1, !tbaa !29
  %25 = load i8, ptr %23, align 1, !tbaa !29
  %26 = lshr i8 %22, 3
  %27 = zext nneg i8 %26 to i64
  %28 = shl nuw nsw i64 %27, 10
  %29 = lshr i8 %24, 3
  %30 = zext nneg i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 5
  %32 = lshr i8 %25, 3
  %33 = zext nneg i8 %32 to i64
  %34 = getelementptr inbounds nuw i8, ptr %i.cdu, i64 %28
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 %31
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 %33
  %37 = load i8, ptr %36, align 1, !tbaa !29
  store i8 %37, ptr %.06988.i.epil.init, align 1, !tbaa !29
  br label %._crit_edge91.i

._crit_edge91.i:                                  ; preds = %._crit_edge91.i.unr-lcssa, %.lr.ph90.i.epil.preheader
  %.pre96.i = load i8, ptr %i.cdy, align 1, !tbaa !208 ; 4 uses
  store i8 3, ptr %i.ceb, align 8, !tbaa !205
  %i.cfb = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 1, ptr %i.cfb, align 2, !tbaa !216
  %i.cfc = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %.pre96.i, ptr %i.cfc, align 1, !tbaa !212
  %i.cfd = icmp ugt i8 %.pre96.i, 7
  br i1 %i.cfd, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %._crit_edge91.i, %._crit_edge91.thread.i
  %i.cfe = phi i8 [ 8, %._crit_edge91.thread.i ], [ %.pre96.i, %._crit_edge91.i ]
  %i.cff = zext i32 %i.cdx to i64
  %i.cfg = lshr i8 %i.cfe, 3
  %i.cfh = zext nneg i8 %i.cfg to i64
  %i.cfi = mul nuw nsw i64 %i.cfh, %i.cff
  br label %.loopexit.sink.split.i

bb.hh:                                            ; preds = %._crit_edge91.i
  %i.cfj = zext i32 %i.cdx to i64
  %i.cfk = zext nneg i8 %.pre96.i to i64
  %i.cfl = mul nuw nsw i64 %i.cfk, %i.cfj
  %i.cfm = add nuw nsw i64 %i.cfl, 7
  %i.cfn = lshr i64 %i.cfm, 3
  br label %.loopexit.sink.split.i

bb.hi:                                            ; preds = %bb.hf
  %i.cfo = icmp eq i8 %i.cec, 6
  %or.cond3.i233 = and i1 %i.cee, %i.cfo
  br i1 %or.cond3.i233, label %.preheader79.i, label %bb.hl

.preheader79.i:                                   ; preds = %bb.hi
  %.not.i237 = icmp eq i32 %i.cdx, 0
  br i1 %.not.i237, label %._crit_edge.thread.i, label %.preheader79.i.a

.preheader79.i.a:                                 ; preds = %.preheader79.i
  %xtraiter819 = and i32 %i.cdx, 1
  %.not.i237.a = icmp eq i32 %i.cdx, 1
  br i1 %.not.i237.a, label %.lr.ph86.i.epil.preheader, label %.lr.ph86.i.preheader.new

.lr.ph86.i.preheader.new:                         ; preds = %.preheader79.i.a
  %unroll_iter823 = and i32 %i.cdx, -2
  br label %.lr.ph86.i

._crit_edge.thread.i:                             ; preds = %.preheader79.i
  store i8 3, ptr %i.ceb, align 8, !tbaa !205
  %i.cfp = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 1, ptr %i.cfp, align 2, !tbaa !216
  %i.cfq = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 8, ptr %i.cfq, align 1, !tbaa !212
  br label %bb.hj

.lr.ph86.i:                                       ; preds = %.lr.ph86.i, %.lr.ph86.i.preheader.new
  %.185.i = phi ptr [ %i.cds, %.lr.ph86.i.preheader.new ], [ %i.cfw, %.lr.ph86.i ] ; 7 uses
  %.17084.i = phi ptr [ %i.cds, %.lr.ph86.i.preheader.new ], [ %i.cgj, %.lr.ph86.i ] ; 3 uses
  %.17283.i = phi i32 [ 0, %.lr.ph86.i.preheader.new ], [ %i.cgk, %.lr.ph86.i ]
  %38 = getelementptr inbounds nuw i8, ptr %.185.i, i64 1
  %39 = load i8, ptr %.185.i, align 1, !tbaa !29
  %40 = getelementptr inbounds nuw i8, ptr %.185.i, i64 2
  %41 = load i8, ptr %38, align 1, !tbaa !29
  %42 = load i8, ptr %40, align 1, !tbaa !29
  %43 = getelementptr inbounds nuw i8, ptr %.185.i, i64 4
  %44 = lshr i8 %39, 3
  %45 = zext nneg i8 %44 to i64
  %46 = shl nuw nsw i64 %45, 10
  %47 = lshr i8 %41, 3
  %48 = zext nneg i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 5
  %50 = lshr i8 %42, 3
  %51 = zext nneg i8 %50 to i64
  %52 = getelementptr inbounds nuw i8, ptr %i.cdu, i64 %46
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 %49
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 %51
  %55 = load i8, ptr %54, align 1, !tbaa !29
  %56 = getelementptr inbounds nuw i8, ptr %.17084.i, i64 1
  store i8 %55, ptr %.17084.i, align 1, !tbaa !29
  %i.cfr = getelementptr inbounds nuw i8, ptr %.185.i, i64 5
  %i.cfs = load i8, ptr %43, align 1, !tbaa !29
  %i.cft = getelementptr inbounds nuw i8, ptr %.185.i, i64 6
  %i.cfu = load i8, ptr %i.cfr, align 1, !tbaa !29
  %i.cfv = load i8, ptr %i.cft, align 1, !tbaa !29
  %i.cfw = getelementptr inbounds nuw i8, ptr %.185.i, i64 8 ; 2 uses
  %i.cfx = lshr i8 %i.cfs, 3
  %i.cfy = zext nneg i8 %i.cfx to i64
  %i.cfz = shl nuw nsw i64 %i.cfy, 10
  %i.cga = lshr i8 %i.cfu, 3
  %i.cgb = zext nneg i8 %i.cga to i64
  %i.cgc = shl nuw nsw i64 %i.cgb, 5
  %i.cgd = lshr i8 %i.cfv, 3
  %i.cge = zext nneg i8 %i.cgd to i64
  %i.cgf = getelementptr inbounds nuw i8, ptr %i.cdu, i64 %i.cfz
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.cgf, i64 %i.cgc
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.cgg, i64 %i.cge
  %i.cgi = load i8, ptr %i.cgh, align 1, !tbaa !29
  %i.cgj = getelementptr inbounds nuw i8, ptr %.17084.i, i64 2 ; 2 uses
  store i8 %i.cgi, ptr %56, align 1, !tbaa !29
  %i.cgk = add nuw i32 %.17283.i, 2               ; 2 uses
  %exitcond94.not.i = icmp eq i32 %i.cgk, %unroll_iter823
  br i1 %exitcond94.not.i, label %._crit_edge.i238.unr-lcssa, label %.lr.ph86.i, !llvm.loop !280

._crit_edge.i238.unr-lcssa:                       ; preds = %.lr.ph86.i
  %lcmp.mod821.not = icmp eq i32 %xtraiter819, 0
  br i1 %lcmp.mod821.not, label %._crit_edge.i238, label %.lr.ph86.i.epil.preheader

.lr.ph86.i.epil.preheader:                        ; preds = %._crit_edge.i238.unr-lcssa, %.preheader79.i.a
  %.185.i.epil.init = phi ptr [ %i.cds, %.preheader79.i.a ], [ %i.cfw, %._crit_edge.i238.unr-lcssa ] ; 3 uses
  %.17084.i.epil.init = phi ptr [ %i.cds, %.preheader79.i.a ], [ %i.cgj, %._crit_edge.i238.unr-lcssa ]
  %lcmp.mod822 = trunc i32 %i.cdx to i1
  tail call void @llvm.assume(i1 %lcmp.mod822)
  %57 = getelementptr inbounds nuw i8, ptr %.185.i.epil.init, i64 1
  %58 = load i8, ptr %.185.i.epil.init, align 1, !tbaa !29
  %59 = getelementptr inbounds nuw i8, ptr %.185.i.epil.init, i64 2
  %60 = load i8, ptr %57, align 1, !tbaa !29
  %61 = load i8, ptr %59, align 1, !tbaa !29
  %62 = lshr i8 %58, 3
  %63 = zext nneg i8 %62 to i64
  %64 = shl nuw nsw i64 %63, 10
  %65 = lshr i8 %60, 3
  %66 = zext nneg i8 %65 to i64
  %67 = shl nuw nsw i64 %66, 5
  %68 = lshr i8 %61, 3
  %69 = zext nneg i8 %68 to i64
  %70 = getelementptr inbounds nuw i8, ptr %i.cdu, i64 %64
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 %67
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 %69
  %73 = load i8, ptr %72, align 1, !tbaa !29
  store i8 %73, ptr %.17084.i.epil.init, align 1, !tbaa !29
  br label %._crit_edge.i238

._crit_edge.i238:                                 ; preds = %._crit_edge.i238.unr-lcssa, %.lr.ph86.i.epil.preheader
  %.pre.i239 = load i8, ptr %i.cdy, align 1, !tbaa !208 ; 4 uses
  store i8 3, ptr %i.ceb, align 8, !tbaa !205
  %i.cgl = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 1, ptr %i.cgl, align 2, !tbaa !216
  %i.cgm = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %.pre.i239, ptr %i.cgm, align 1, !tbaa !212
  %i.cgn = icmp ugt i8 %.pre.i239, 7
  br i1 %i.cgn, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %._crit_edge.i238, %._crit_edge.thread.i
  %i.cgo = phi i8 [ 8, %._crit_edge.thread.i ], [ %.pre.i239, %._crit_edge.i238 ]
  %i.cgp = zext i32 %i.cdx to i64
  %i.cgq = lshr i8 %i.cgo, 3
  %i.cgr = zext nneg i8 %i.cgq to i64
  %i.cgs = mul nuw nsw i64 %i.cgr, %i.cgp
  br label %.loopexit.sink.split.i

bb.hk:                                            ; preds = %._crit_edge.i238
  %i.cgt = zext i32 %i.cdx to i64
  %i.cgu = zext nneg i8 %.pre.i239 to i64
  %i.cgv = mul nuw nsw i64 %i.cgu, %i.cgt
  %i.cgw = add nuw nsw i64 %i.cgv, 7
  %i.cgx = lshr i64 %i.cgw, 3
  br label %.loopexit.sink.split.i

bb.hl:                                            ; preds = %bb.hi
  %i.cgy = icmp eq i8 %i.cec, 3
  %i.cgz = icmp ne ptr %i.cdw, null
  %or.cond5.i234 = and i1 %i.cgz, %i.cgy
  %i.cha = icmp ne i32 %i.cdx, 0
  %or.cond92.i = select i1 %or.cond5.i234, i1 %i.cha, i1 false
  br i1 %or.cond92.i, label %.lr.ph.i235.preheader, label %png_do_quantize.exit

.lr.ph.i235.preheader:                            ; preds = %bb.hl
  %xtraiter813 = and i32 %i.cdx, 3                ; 3 uses
  %i.chb = icmp ult i32 %i.cdx, 4
  br i1 %i.chb, label %.lr.ph.i235.epil.preheader, label %.lr.ph.i235.preheader.new

.lr.ph.i235.preheader.new:                        ; preds = %.lr.ph.i235.preheader
  %unroll_iter817 = and i32 %i.cdx, -4
  br label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %.lr.ph.i235, %.lr.ph.i235.preheader.new
  %.282.i = phi ptr [ %i.cds, %.lr.ph.i235.preheader.new ], [ %i.chv, %.lr.ph.i235 ] ; 6 uses
  %niter818 = phi i32 [ 0, %.lr.ph.i235.preheader.new ], [ %niter818.next.3, %.lr.ph.i235 ]
  %i.chc = load i8, ptr %.282.i, align 1, !tbaa !29
  %i.chd = zext i8 %i.chc to i64
  %i.che = getelementptr inbounds nuw i8, ptr %i.cdw, i64 %i.chd
  %i.chf = load i8, ptr %i.che, align 1, !tbaa !29
  store i8 %i.chf, ptr %.282.i, align 1, !tbaa !29
  %i.chg = getelementptr inbounds nuw i8, ptr %.282.i, i64 1 ; 2 uses
  %i.chh = load i8, ptr %i.chg, align 1, !tbaa !29
  %i.chi = zext i8 %i.chh to i64
  %i.chj = getelementptr inbounds nuw i8, ptr %i.cdw, i64 %i.chi
  %i.chk = load i8, ptr %i.chj, align 1, !tbaa !29
  store i8 %i.chk, ptr %i.chg, align 1, !tbaa !29
  %i.chl = getelementptr inbounds nuw i8, ptr %.282.i, i64 2 ; 2 uses
  %i.chm = load i8, ptr %i.chl, align 1, !tbaa !29
  %i.chn = zext i8 %i.chm to i64
  %i.cho = getelementptr inbounds nuw i8, ptr %i.cdw, i64 %i.chn
  %i.chp = load i8, ptr %i.cho, align 1, !tbaa !29
  store i8 %i.chp, ptr %i.chl, align 1, !tbaa !29
  %i.chq = getelementptr inbounds nuw i8, ptr %.282.i, i64 3 ; 2 uses
  %i.chr = load i8, ptr %i.chq, align 1, !tbaa !29
  %i.chs = zext i8 %i.chr to i64
  %i.cht = getelementptr inbounds nuw i8, ptr %i.cdw, i64 %i.chs
  %i.chu = load i8, ptr %i.cht, align 1, !tbaa !29
  store i8 %i.chu, ptr %i.chq, align 1, !tbaa !29
  %i.chv = getelementptr inbounds nuw i8, ptr %.282.i, i64 4 ; 2 uses
  %niter818.next.3 = add nuw i32 %niter818, 4     ; 2 uses
  %niter818.ncmp.3 = icmp eq i32 %niter818.next.3, %unroll_iter817
  br i1 %niter818.ncmp.3, label %png_do_quantize.exit.loopexit.unr-lcssa, label %.lr.ph.i235, !llvm.loop !281

.loopexit.sink.split.i:                           ; preds = %bb.hk, %bb.hj, %bb.hh, %bb.hg
  %.sink.i240 = phi i64 [ %i.cfn, %bb.hh ], [ %i.cfi, %bb.hg ], [ %i.cgs, %bb.hj ], [ %i.cgx, %bb.hk ]
  %i.chw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sink.i240, ptr %i.chw, align 8, !tbaa !213
  br label %png_do_quantize.exit

png_do_quantize.exit.loopexit.unr-lcssa:          ; preds = %.lr.ph.i235
  %lcmp.mod815.not = icmp eq i32 %xtraiter813, 0
  br i1 %lcmp.mod815.not, label %png_do_quantize.exit, label %.lr.ph.i235.epil.preheader

.lr.ph.i235.epil.preheader:                       ; preds = %png_do_quantize.exit.loopexit.unr-lcssa, %.lr.ph.i235.preheader
  %.282.i.epil.init = phi ptr [ %i.cds, %.lr.ph.i235.preheader ], [ %i.chv, %png_do_quantize.exit.loopexit.unr-lcssa ]
  %lcmp.mod816 = icmp ne i32 %xtraiter813, 0
  tail call void @llvm.assume(i1 %lcmp.mod816)
  br label %.lr.ph.i235.epil

.lr.ph.i235.epil:                                 ; preds = %.lr.ph.i235.epil, %.lr.ph.i235.epil.preheader
  %.282.i.epil = phi ptr [ %i.cib, %.lr.ph.i235.epil ], [ %.282.i.epil.init, %.lr.ph.i235.epil.preheader ] ; 3 uses
  %epil.iter814 = phi i32 [ %epil.iter814.next, %.lr.ph.i235.epil ], [ 0, %.lr.ph.i235.epil.preheader ]
  %i.chx = load i8, ptr %.282.i.epil, align 1, !tbaa !29
  %i.chy = zext i8 %i.chx to i64
  %i.chz = getelementptr inbounds nuw i8, ptr %i.cdw, i64 %i.chy
  %i.cia = load i8, ptr %i.chz, align 1, !tbaa !29
  store i8 %i.cia, ptr %.282.i.epil, align 1, !tbaa !29
  %i.cib = getelementptr inbounds nuw i8, ptr %.282.i.epil, i64 1
  %epil.iter814.next = add i32 %epil.iter814, 1   ; 2 uses
  %epil.iter814.cmp.not = icmp eq i32 %epil.iter814.next, %xtraiter813
  br i1 %epil.iter814.cmp.not, label %png_do_quantize.exit, label %.lr.ph.i235.epil, !llvm.loop !282

png_do_quantize.exit:                             ; preds = %png_do_quantize.exit.loopexit.unr-lcssa, %.lr.ph.i235.epil, %bb.he, %bb.hl, %.loopexit.sink.split.i
  %i.cic = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cid = load i64, ptr %i.cic, align 8, !tbaa !213
  %i.cie = icmp eq i64 %i.cid, 0
  br i1 %i.cie, label %bb.hm, label %png_do_quantize.exit._crit_edge

png_do_quantize.exit._crit_edge:                  ; preds = %png_do_quantize.exit
  %.pre404 = load i32, ptr %i.h, align 4, !tbaa !27
  br label %bb.hn

bb.hm:                                            ; preds = %png_do_quantize.exit
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #12
  unreachable

bb.hn:                                            ; preds = %png_do_quantize.exit._crit_edge, %png_do_chop.exit
  %i.cif = phi i32 [ %.pre404, %png_do_quantize.exit._crit_edge ], [ %i.cdp, %png_do_chop.exit ] ; 5 uses
  %i.cig = and i32 %i.cif, 512
  %.not160 = icmp eq i32 %i.cig, 0
  br i1 %.not160, label %png_do_expand_16.exit, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.cih = load ptr, ptr %i.b, align 8, !tbaa !204
  %i.cii = getelementptr inbounds nuw i8, ptr %i.cih, i64 1
  %i.cij = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.cik = load i8, ptr %i.cij, align 1, !tbaa !208
  %i.cil = icmp eq i8 %i.cik, 8
  br i1 %i.cil, label %bb.hp, label %png_do_expand_16.exit

bb.hp:                                            ; preds = %bb.ho
  %i.cim = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cin = load i8, ptr %i.cim, align 8, !tbaa !205
  %.not.i242 = icmp eq i8 %i.cin, 3
  br i1 %.not.i242, label %png_do_expand_16.exit, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.cio = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cip = load i64, ptr %i.cio, align 8, !tbaa !213 ; 3 uses
  %.not19.i = icmp eq i64 %i.cip, 0
  br i1 %.not19.i, label %._crit_edge.i248, label %.lr.ph.preheader.i243

.lr.ph.preheader.i243:                            ; preds = %bb.hq
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.cii, i64 %i.cip ; 2 uses
  %i.cir = getelementptr inbounds nuw i8, ptr %i.ciq, i64 %i.cip
  br label %.lr.ph.i244

.lr.ph.i244:                                      ; preds = %.lr.ph.i244, %.lr.ph.preheader.i243
  %.018.i245 = phi ptr [ %i.civ, %.lr.ph.i244 ], [ %i.cir, %.lr.ph.preheader.i243 ] ; 2 uses
  %.01617.i246 = phi ptr [ %i.cis, %.lr.ph.i244 ], [ %i.ciq, %.lr.ph.preheader.i243 ]
  %i.cis = getelementptr inbounds i8, ptr %.01617.i246, i64 -1 ; 3 uses
  %i.cit = load i8, ptr %i.cis, align 1, !tbaa !29 ; 2 uses
  %i.ciu = getelementptr inbounds i8, ptr %.018.i245, i64 -1
  store i8 %i.cit, ptr %i.ciu, align 1, !tbaa !29
  %i.civ = getelementptr inbounds i8, ptr %.018.i245, i64 -2 ; 3 uses
  store i8 %i.cit, ptr %i.civ, align 1, !tbaa !29
  %i.ciw = icmp ugt ptr %i.civ, %i.cis
  br i1 %i.ciw, label %.lr.ph.i244, label %._crit_edge.loopexit.i, !llvm.loop !283

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i244
  %.pre.i247 = load i64, ptr %i.cio, align 8, !tbaa !213
  %i.cix = shl i64 %.pre.i247, 1
  %.pre405.pre = load i32, ptr %i.h, align 4, !tbaa !27
  br label %._crit_edge.i248

._crit_edge.i248:                                 ; preds = %._crit_edge.loopexit.i, %bb.hq
  %.pre405 = phi i32 [ %.pre405.pre, %._crit_edge.loopexit.i ], [ %i.cif, %bb.hq ]
  %i.ciy = phi i64 [ %i.cix, %._crit_edge.loopexit.i ], [ 0, %bb.hq ]
  store i64 %i.ciy, ptr %i.cio, align 8, !tbaa !213
  store i8 16, ptr %i.cij, align 1, !tbaa !208
  %i.ciz = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.cja = load i8, ptr %i.ciz, align 2, !tbaa !216
  %i.cjb = shl i8 %i.cja, 4
  %i.cjc = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.cjb, ptr %i.cjc, align 1, !tbaa !212
  br label %png_do_expand_16.exit

png_do_expand_16.exit:                            ; preds = %._crit_edge.i248, %bb.hp, %bb.ho, %bb.hn
  %i.cjd = phi i32 [ %.pre405, %._crit_edge.i248 ], [ %i.cif, %bb.hp ], [ %i.cif, %bb.ho ], [ %i.cif, %bb.hn ] ; 3 uses
  %i.cje = and i32 %i.cjd, 16384
  %.not161 = icmp eq i32 %i.cje, 0
  br i1 %.not161, label %bb.ht, label %bb.hr

bb.hr:                                            ; preds = %png_do_expand_16.exit
  %i.cjf = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.cjg = load i32, ptr %i.cjf, align 4, !tbaa !130
  %i.cjh = and i32 %i.cjg, 2048
  %.not162 = icmp eq i32 %i.cjh, 0
  br i1 %.not162, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.cji = load ptr, ptr %i.b, align 8, !tbaa !204
  %i.cjj = getelementptr inbounds nuw i8, ptr %i.cji, i64 1
  tail call fastcc void @png_do_gray_to_rgb(ptr noundef %1, ptr noundef nonnull %i.cjj)
  %.pre406 = load i32, ptr %i.h, align 4, !tbaa !27
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr, %png_do_expand_16.exit
  %i.cjk = phi i32 [ %.pre406, %bb.hs ], [ %i.cjd, %bb.hr ], [ %i.cjd, %png_do_expand_16.exit ] ; 2 uses
  %i.cjl = and i32 %i.cjk, 32
end_hunk_0
