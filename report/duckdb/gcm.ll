Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/gcm?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 24
begin_hunk_0_@mbedtls_gcm_update_ad:bb.a
  %.0.copyload.i39.1.i.i = load i64, ptr %i.dk, align 1
  %i.dl = xor i64 %.0.copyload.i39.1.i.i, %i.da   ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %.not.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %.not.i.i, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, !llvm.loop !0

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i:        ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i
  %i.dm = tail call i64 @llvm.bswap.i64(i64 %i.dj)
  store i64 %i.dm, ptr %i.g, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.do = tail call i64 @llvm.bswap.i64(i64 %i.dl)
  store i64 %i.do, ptr %i.dn, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit:     ; preds = %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i, %bb.d, %_ZL11mbedtls_xorPhPKhS1_m.exit63
  %i.dp = sub nuw i64 %2, %spec.select
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %.pre120 = add i64 %2, %i.b
  br label %bb.f

bb.f:                                             ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit, %bb.b
  %.pre-phi = phi i64 [ %.pre120, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ], [ %i.c, %bb.b ]
  %.046 = phi i64 [ %i.dp, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ], [ %2, %bb.b ] ; 3 uses
  %.045 = phi ptr [ %i.dq, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ], [ %1, %bb.b ] ; 2 uses
  store i64 %.pre-phi, ptr %i.a, align 8, !tbaa !24
  %i.dr = icmp ugt i64 %.046, 15
  br i1 %i.dr, label %.lr.ph98, label %._crit_edge

.lr.ph98:                                         ; preds = %bb.f
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.0.copyload.i66.pre = load i64, ptr %i.ds, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %.0.copyload.i66.1.pre = load i64, ptr %.phi.trans.insert, align 8
  %.pre = load i8, ptr %i.dt, align 1, !tbaa !15
  %cond.i69 = icmp eq i8 %.pre, 0
  br label %.preheader84

.preheader84:                                     ; preds = %.lr.ph98, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83
  %.0.copyload.i66.1 = phi i64 [ %.0.copyload.i66.1.pre, %.lr.ph98 ], [ %.0.copyload.i66.1118, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ]
  %.0.copyload.i66 = phi i64 [ %.0.copyload.i66.pre, %.lr.ph98 ], [ %.0.copyload.i66116, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ]
  %.197 = phi ptr [ %.045, %.lr.ph98 ], [ %i.fz, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ] ; 3 uses
  %.14796 = phi i64 [ %.046, %.lr.ph98 ], [ %i.fy, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ]
  %.0.copyload.i65 = load i64, ptr %.197, align 1
  %i.dw = xor i64 %.0.copyload.i65, %.0.copyload.i66 ; 2 uses
  store i64 %i.dw, ptr %i.ds, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %.197, i64 8
  %.0.copyload.i65.1 = load i64, ptr %i.dx, align 1
  %i.dy = xor i64 %.0.copyload.i65.1, %.0.copyload.i66.1 ; 4 uses
  store i64 %i.dy, ptr %.phi.trans.insert, align 8
  br i1 %cond.i69, label %bb.g, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83

bb.g:                                             ; preds = %.preheader84
  %i.dz = lshr i64 %i.dy, 56
  %i.ea = lshr i64 %i.dy, 60
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.0.copyload.i.1.i.i70 = load i64, ptr %i.ec, align 1
  %i.ed = and i64 %i.dz, 15
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.ed ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !9  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !9  ; 2 uses
  %i.ei = tail call i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.eh, i64 60)
  %i.ej = xor i64 %i.ei, %.0.copyload.i.1.i.i70
  %.0.copyload.i.i.i71 = load i64, ptr %i.eb, align 1
  %i.ek = and i64 %i.eh, 15
  %i.el = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2, !tbaa !23
  %i.en = zext i16 %i.em to i64
  %i.eo = shl nuw i64 %i.en, 48
  %i.ep = lshr i64 %i.ef, 4
  %i.eq = xor i64 %.0.copyload.i.i.i71, %i.ep
  %i.er = xor i64 %i.eq, %i.eo
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72:     ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72, %bb.g
  %.sroa.17.0.i.i73 = phi i64 [ %i.ej, %bb.g ], [ %i.fv, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72 ] ; 2 uses
  %.sroa.0.0.i.i74 = phi i64 [ %i.er, %bb.g ], [ %i.ft, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72 ] ; 2 uses
  %indvars.iv.i.i75 = phi i64 [ 14, %bb.g ], [ %indvars.iv.next.i.i80, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72 ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ds, i64 %indvars.iv.i.i75
  %i.et = load i8, ptr %i.es, align 1, !tbaa !16  ; 2 uses
  %i.eu = and i8 %i.et, 15
  %i.ev = and i64 %.sroa.17.0.i.i73, 15
  %i.ew = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i74, i64 %.sroa.17.0.i.i73, i64 60)
  %i.ex = lshr i64 %.sroa.0.0.i.i74, 4
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.ev
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !23
  %i.fa = zext i16 %i.ez to i64
  %i.fb = shl nuw i64 %i.fa, 48
  %i.fc = zext nneg i8 %i.eu to i64
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.fc ; 2 uses
  %.0.copyload.i37.i.i76 = load i64, ptr %i.fd, align 1
  %i.fe = xor i64 %.0.copyload.i37.i.i76, %i.ex   ; 2 uses
  %i.ff = xor i64 %i.fe, %i.fb
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.0.copyload.i37.1.i.i77 = load i64, ptr %i.fg, align 1
  %i.fh = xor i64 %.0.copyload.i37.1.i.i77, %i.ew ; 2 uses
  %i.fi = lshr i8 %i.et, 4
  %i.fj = and i64 %i.fh, 15
  %i.fk = tail call i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fh, i64 60)
  %i.fl = lshr i64 %i.ff, 4
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.fj
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !23
  %i.fo = zext i16 %i.fn to i64
  %i.fp = shl nuw i64 %i.fo, 48
  %i.fq = zext nneg i8 %i.fi to i64
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.fq ; 2 uses
  %.0.copyload.i39.i.i78 = load i64, ptr %i.fr, align 1
  %i.fs = xor i64 %i.fl, %.0.copyload.i39.i.i78
  %i.ft = xor i64 %i.fs, %i.fp                    ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %.0.copyload.i39.1.i.i79 = load i64, ptr %i.fu, align 1
  %i.fv = xor i64 %.0.copyload.i39.1.i.i79, %i.fk ; 2 uses
  %indvars.iv.next.i.i80 = add nsw i64 %indvars.iv.i.i75, -1
  %.not.i.i81 = icmp eq i64 %indvars.iv.i.i75, 0
  br i1 %.not.i.i81, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72, !llvm.loop !0

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82:      ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72
  %i.fw = tail call i64 @llvm.bswap.i64(i64 %i.ft) ; 2 uses
  store i64 %i.fw, ptr %i.ds, align 8
  %i.fx = tail call i64 @llvm.bswap.i64(i64 %i.fv) ; 2 uses
  store i64 %i.fx, ptr %i.dv, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83:   ; preds = %.preheader84, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82
  %.0.copyload.i66.1118 = phi i64 [ %i.dy, %.preheader84 ], [ %i.fx, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82 ]
  %.0.copyload.i66116 = phi i64 [ %i.dw, %.preheader84 ], [ %i.fw, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82 ]
  %i.fy = add i64 %.14796, -16                    ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.197, i64 16 ; 2 uses
  %i.ga = icmp ugt i64 %i.fy, 15
  br i1 %i.ga, label %.preheader84, label %._crit_edge, !llvm.loop !41

._crit_edge:                                      ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83, %bb.f
  %.147.lcssa = phi i64 [ %.046, %bb.f ], [ %i.fy, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ] ; 10 uses
  %.1.lcssa = phi ptr [ %.045, %bb.f ], [ %i.fz, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ] ; 9 uses
  %.not55 = icmp eq i64 %.147.lcssa, 0
  br i1 %.not55, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 8 uses
  %.not.i101 = icmp samesign ult i64 %.147.lcssa, 8
  br i1 %.not.i101, label %.preheader, label %.preheader.loopexit

.preheader.loopexit:                              ; preds = %bb.h
  %.0.copyload.i68 = load i64, ptr %i.gb, align 8
  %.0.copyload.i67 = load i64, ptr %.1.lcssa, align 1
  %i.gc = xor i64 %.0.copyload.i67, %.0.copyload.i68
  store i64 %i.gc, ptr %i.gb, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.h
  %.0.i.lcssa = phi i64 [ 0, %bb.h ], [ 8, %.preheader.loopexit ] ; 8 uses
  %i.gd = icmp samesign ult i64 %.0.i.lcssa, %.147.lcssa
  br i1 %i.gd, label %iter.check174, label %_ZL11mbedtls_xorPhPKhS1_m.exit

iter.check174:                                    ; preds = %.preheader
  %i.ge = sub nuw nsw i64 %.147.lcssa, %.0.i.lcssa ; 2 uses
  %min.iters.check155 = icmp samesign ult i64 %i.ge, 8
  br i1 %min.iters.check155, label %.lr.ph107.preheader, label %vector.memcheck156

vector.memcheck156:                               ; preds = %iter.check174
  %i.gf = getelementptr i8, ptr %0, i64 %.0.i.lcssa
  %i.gg = getelementptr i8, ptr %i.gf, i64 392
  %i.gh = getelementptr i8, ptr %0, i64 %.147.lcssa
  %i.gi = getelementptr i8, ptr %i.gh, i64 392
  %i.gj = getelementptr i8, ptr %.1.lcssa, i64 %.0.i.lcssa
  %i.gk = getelementptr i8, ptr %.1.lcssa, i64 %.147.lcssa
  %bound0157 = icmp ult ptr %i.gg, %i.gk
  %bound1158 = icmp ult ptr %i.gj, %i.gi
  %found.conflict159 = and i1 %bound0157, %bound1158
  br i1 %found.conflict159, label %.lr.ph107.preheader, label %vec.epilog.ph178

vec.epilog.ph178:                                 ; preds = %vector.memcheck156
  %i.gl = and i64 %.147.lcssa, 7                  ; 2 uses
  %n.vec179 = sub nsw i64 %i.ge, %i.gl            ; 2 uses
  %i.gm = add nsw i64 %.0.i.lcssa, %n.vec179
  br label %vec.epilog.vector.body180

vec.epilog.vector.body180:                        ; preds = %vec.epilog.vector.body180, %vec.epilog.ph178
  %index181 = phi i64 [ 0, %vec.epilog.ph178 ], [ %index.next184, %vec.epilog.vector.body180 ] ; 2 uses
  %i.gn = add nuw i64 %.0.i.lcssa, %index181      ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gn ; 2 uses
  %wide.load182 = load <8 x i8>, ptr %i.go, align 1, !tbaa !16, !alias.scope !50, !noalias !51
  %i.gp = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.gn
  %wide.load183 = load <8 x i8>, ptr %i.gp, align 1, !tbaa !16, !alias.scope !51
  %i.gq = xor <8 x i8> %wide.load183, %wide.load182
  store <8 x i8> %i.gq, ptr %i.go, align 1, !tbaa !16, !alias.scope !50, !noalias !51
  %index.next184 = add nuw i64 %index181, 8       ; 2 uses
  %i.gr = icmp eq i64 %index.next184, %n.vec179
  br i1 %i.gr, label %vec.epilog.middle.block185, label %vec.epilog.vector.body180, !llvm.loop !45

vec.epilog.middle.block185:                       ; preds = %vec.epilog.vector.body180
  %cmp.n186 = icmp eq i64 %i.gl, 0
  br i1 %cmp.n186, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %iter.check174, %vector.memcheck156, %vec.epilog.middle.block185
  %.1.i106.ph = phi i64 [ %.0.i.lcssa, %vector.memcheck156 ], [ %.0.i.lcssa, %iter.check174 ], [ %i.gm, %vec.epilog.middle.block185 ] ; 4 uses
  %i.gs = sub nsw i64 %.147.lcssa, %.1.i106.ph
  %xtraiter193 = and i64 %i.gs, 3                 ; 2 uses
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol

.lr.ph107.prol:                                   ; preds = %.lr.ph107.preheader, %.lr.ph107.prol
  %.1.i106.prol = phi i64 [ %i.gy, %.lr.ph107.prol ], [ %.1.i106.ph, %.lr.ph107.preheader ] ; 3 uses
  %prol.iter195 = phi i64 [ %prol.iter195.next, %.lr.ph107.prol ], [ 0, %.lr.ph107.preheader ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.1.i106.prol ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !16
  %i.gv = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %.1.i106.prol
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !16
  %i.gx = xor i8 %i.gw, %i.gu
  store i8 %i.gx, ptr %i.gt, align 1, !tbaa !16
  %i.gy = add nuw nsw i64 %.1.i106.prol, 1        ; 2 uses
  %prol.iter195.next = add i64 %prol.iter195, 1   ; 2 uses
  %prol.iter195.cmp.not = icmp eq i64 %prol.iter195.next, %xtraiter193
  br i1 %prol.iter195.cmp.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol, !llvm.loop !46

.lr.ph107.prol.loopexit:                          ; preds = %.lr.ph107.prol, %.lr.ph107.preheader
  %.1.i106.unr = phi i64 [ %.1.i106.ph, %.lr.ph107.preheader ], [ %i.gy, %.lr.ph107.prol ]
  %i.gz = sub nsw i64 %.1.i106.ph, %.147.lcssa
  %i.ha = icmp ugt i64 %i.gz, -4
  br i1 %i.ha, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.prol.loopexit, %.lr.ph107
  %.1.i106 = phi i64 [ %i.hy, %.lr.ph107 ], [ %.1.i106.unr, %.lr.ph107.prol.loopexit ] ; 6 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.1.i106 ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !16
  %i.hd = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %.1.i106
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !16
  %i.hf = xor i8 %i.he, %i.hc
  store i8 %i.hf, ptr %i.hb, align 1, !tbaa !16
  %i.hg = add nuw nsw i64 %.1.i106, 1             ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.hg ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !16
  %i.hj = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.hg
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !16
  %i.hl = xor i8 %i.hk, %i.hi
  store i8 %i.hl, ptr %i.hh, align 1, !tbaa !16
  %i.hm = add nuw nsw i64 %.1.i106, 2             ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.hm ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !16
  %i.hp = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.hm
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !16
  %i.hr = xor i8 %i.hq, %i.ho
  store i8 %i.hr, ptr %i.hn, align 1, !tbaa !16
  %i.hs = add nuw nsw i64 %.1.i106, 3             ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.hs ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !16
  %i.hv = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.hs
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !16
  %i.hx = xor i8 %i.hw, %i.hu
  store i8 %i.hx, ptr %i.ht, align 1, !tbaa !16
  %i.hy = add nuw nsw i64 %.1.i106, 4             ; 2 uses
  %exitcond115.not.3 = icmp eq i64 %i.hy, %.147.lcssa
  br i1 %exitcond115.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph107, !llvm.loop !47

_ZL11mbedtls_xorPhPKhS1_m.exit:                   ; preds = %.lr.ph107.prol.loopexit, %.lr.ph107, %vec.epilog.middle.block185, %.preheader, %._crit_edge, %bb.a
  %.048 = phi i32 [ -20, %bb.a ], [ 0, %._crit_edge ], [ 0, %.preheader ], [ 0, %vec.epilog.middle.block185 ], [ 0, %.lr.ph107 ], [ 0, %.lr.ph107.prol.loopexit ]
  ret i32 %.048
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @mbedtls_gcm_update(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = icmp ult i64 %4, %2
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %2, ptr %5, align 8, !tbaa !9
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ugt ptr %3, %1
  %i.e = ptrtoint ptr %3 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, %2
  %or.cond = and i1 %i.d, %i.h
  br i1 %or.cond, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !25   ; 4 uses
  %i.k = add i64 %i.j, %2                         ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %i.m = icmp ugt i64 %i.k, 68719476704
  %or.cond96 = or i1 %i.l, %i.m
  br i1 %or.cond96, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.p = load i64, ptr %i.o, align 8, !tbaa !24
  %i.q = and i64 %i.p, 15
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  tail call fastcc void @_ZL8gcm_multP19mbedtls_gcm_contextPKhPh(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r)
  %.pre = load i64, ptr %i.i, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.s = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.e ] ; 2 uses
  %i.t = and i64 %i.s, 15                         ; 4 uses
  %.not88 = icmp eq i64 %i.t, 0
  br i1 %.not88, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = sub nuw nsw i64 16, %i.t
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %2) ; 6 uses
  %i.v = call fastcc noundef i32 @_ZL8gcm_maskP19mbedtls_gcm_contextPhmmPKhS1_(ptr noundef nonnull %0, ptr noundef %i.a, i64 noundef %i.t, i64 noundef %spec.select, ptr noundef %1, ptr noundef %3) ; 2 uses
  %.not89 = icmp eq i32 %i.v, 0
  br i1 %.not89, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.w = add nuw nsw i64 %spec.select, %i.t
  %i.x = icmp eq i64 %i.w, 16
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  call fastcc void @_ZL8gcm_multP19mbedtls_gcm_contextPKhPh(ptr noundef nonnull %0, ptr noundef nonnull %i.y, ptr noundef nonnull %i.y)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.z = load i64, ptr %i.i, align 8, !tbaa !25
  %i.aa = add i64 %i.z, %spec.select
  %i.ab = sub nuw i64 %2, %spec.select
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %spec.select
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.l, %bb.h
  %i.ae = phi i64 [ %i.aa, %bb.l ], [ %i.s, %bb.h ], [ 0, %bb.f ]
  %.177 = phi i64 [ %i.ab, %bb.l ], [ %2, %bb.h ], [ %2, %bb.f ] ; 4 uses
  %.172 = phi ptr [ %i.ac, %bb.l ], [ %1, %bb.h ], [ %1, %bb.f ] ; 2 uses
  %.1 = phi ptr [ %i.ad, %bb.l ], [ %3, %bb.h ], [ %3, %bb.f ] ; 2 uses
  %i.af = add i64 %i.ae, %.177
  store i64 %i.af, ptr %i.i, align 8, !tbaa !25
  %i.ag = icmp ugt i64 %.177, 15
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 388 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 407
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 400
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit
  %.2105 = phi ptr [ %.1, %.lr.ph ], [ %i.cv, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ] ; 2 uses
  %.273104 = phi ptr [ %.172, %.lr.ph ], [ %i.cu, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ] ; 2 uses
  %.278103 = phi i64 [ %.177, %.lr.ph ], [ %i.ct, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ]
  %.0.copyload.i.i = load i32, ptr %i.ah, align 4
  %i.an = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i)
  %i.ao = add i32 %i.an, 1
  %i.ap = call i32 @llvm.bswap.i32(i32 %i.ao)
  store i32 %i.ap, ptr %i.ah, align 4
  %i.aq = call fastcc noundef i32 @_ZL8gcm_maskP19mbedtls_gcm_contextPhmmPKhS1_(ptr noundef nonnull %0, ptr noundef %i.a, i64 noundef 0, i64 noundef 16, ptr noundef %.273104, ptr noundef %.2105) ; 2 uses
  %.not92 = icmp eq i32 %i.aq, 0
  br i1 %.not92, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ar = load i8, ptr %i.aj, align 1, !tbaa !15
  %cond.i = icmp eq i8 %i.ar, 0
  br i1 %cond.i, label %bb.o, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

bb.o:                                             ; preds = %bb.n
  %i.as = load i8, ptr %i.al, align 1, !tbaa !16  ; 2 uses
  %i.at = lshr i8 %i.as, 4
  %i.au = zext nneg i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.aw, align 1
  %i.ax = and i8 %i.as, 15
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.ay ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !9  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !9  ; 2 uses
  %i.bd = call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.bc, i64 60)
  %i.be = xor i64 %i.bd, %.0.copyload.i.1.i.i
  %.0.copyload.i.i.i = load i64, ptr %i.av, align 1
  %i.bf = and i64 %i.bc, 15
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !23
  %i.bi = zext i16 %i.bh to i64
  %i.bj = shl nuw i64 %i.bi, 48
  %i.bk = lshr i64 %i.ba, 4
  %i.bl = xor i64 %.0.copyload.i.i.i, %i.bk
  %i.bm = xor i64 %i.bl, %i.bj
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i:       ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, %bb.o
  %.sroa.17.0.i.i = phi i64 [ %i.be, %bb.o ], [ %i.cq, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.bm, %bb.o ], [ %i.co, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 14, %bb.o ], [ %indvars.iv.next.i.i, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.i.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !16  ; 2 uses
  %i.bp = and i8 %i.bo, 15
  %i.bq = and i64 %.sroa.17.0.i.i, 15
  %i.br = call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.17.0.i.i, i64 60)
  %i.bs = lshr i64 %.sroa.0.0.i.i, 4
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.bq
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !23
  %i.bv = zext i16 %i.bu to i64
  %i.bw = shl nuw i64 %i.bv, 48
  %i.bx = zext nneg i8 %i.bp to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.bx ; 2 uses
end_hunk_0
