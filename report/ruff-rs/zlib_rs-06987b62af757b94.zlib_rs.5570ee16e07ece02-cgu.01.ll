inline.NumInlined: 75
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvNtCs7kNFBubu20U_7zlib_rs7inflate22inflate_fast_help_avx2:bb.a
  %i.ex = zext nneg i8 %i.ew to i64
  %notmask152.i = shl nsw i64 -1, %i.ex
  %i.ey = xor i64 %notmask152.i, -1
  %i.ez = and i64 %i.ds, %i.ey
  %i.fa = trunc i64 %i.ez to i16
  %i.fb = add i16 %.sroa.0105.2.i210, %i.fa
  %i.fc = zext i16 %i.fb to i64                   ; 3 uses
  %i.fd = icmp samesign ugt i64 %.sroa.26.0.i, %i.fc
  br i1 %i.fd, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  %i.fe = and i8 %.sroa.085.2.i209, 32
  %i.ff = icmp eq i8 %i.fe, 0
  br i1 %i.ff, label %bb.ak, label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.fc ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  %i.fi = load i8, ptr %i.fh, align 2, !noundef !4 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 3
  %i.fk = load i8, ptr %i.fj, align 1, !noundef !4 ; 2 uses
  %i.fl = load i16, ptr %i.fg, align 2, !noundef !4 ; 2 uses
  %i.fm = and i8 %i.fk, 63
  %i.fn = zext nneg i8 %i.fm to i64
  %i.fo = lshr i64 %i.ds, %i.fn                   ; 2 uses
  %i.fp = sub i8 %i.dr, %i.fk                     ; 2 uses
  %i.fq = icmp eq i8 %i.fi, 0
  br i1 %i.fq, label %._crit_edge, label %.lr.ph

bb.aj:                                            ; preds = %bb.ag
  store i64 %i.ds, ptr %i.d, align 8, !noalias !33
  store i8 %i.dr, ptr %i.e, align 8, !noalias !33
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.fc, i64 noundef %.sroa.26.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

bb.ak:                                            ; preds = %bb.ah
  store i8 30, ptr %0, align 64, !alias.scope !33
  br label %.loopexit

bb.al:                                            ; preds = %bb.ah
  store i8 12, ptr %0, align 64, !alias.scope !33
  br label %.loopexit

bb.am:                                            ; preds = %bb.af
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.039.0.i, i64 %i.eu ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 2
  %i.ft = load i8, ptr %i.fs, align 2, !noundef !4 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 3
  %i.fv = load i8, ptr %i.fu, align 1, !noundef !4 ; 2 uses
  %i.fw = load i16, ptr %i.fr, align 2, !noundef !4 ; 2 uses
  %i.fx = icmp ult i8 %i.et, 28
  br i1 %i.fx, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.af
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.eu, i64 noundef %.sroa.14.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.fy = load ptr, ptr %i.b, align 8, !noalias !33, !noundef !4 ; 2 uses
  %.sroa.083.0.copyload.i = load i64, ptr %i.fy, align 1
  %i.fz = zext nneg i8 %i.et to i64
  %i.ga = shl i64 %.sroa.083.0.copyload.i, %i.fz
  %i.gb = or i64 %i.ga, %i.es
  %i.gc = lshr i8 %i.et, 3
  %i.gd = xor i8 %i.gc, 7
  %i.ge = zext nneg i8 %i.gd to i64
  %i.gf = getelementptr i8, ptr %i.fy, i64 %i.ge
  store ptr %i.gf, ptr %i.b, align 8, !noalias !33
  %i.gg = or i8 %i.et, 56
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %.promoted217 = phi i8 [ %i.gg, %bb.ao ], [ %i.et, %bb.am ]
  %.promoted213 = phi i64 [ %i.gb, %bb.ao ], [ %i.es, %bb.am ]
  %i.gh = and i8 %i.fv, 63
  %i.gi = zext nneg i8 %i.gh to i64
  %i.gj = lshr i64 %.promoted213, %i.gi           ; 2 uses
  %i.gk = sub i8 %.promoted217, %i.fv             ; 2 uses
  %i.gl = and i8 %i.ft, 16
  %i.gm = icmp eq i8 %i.gl, 0
  br i1 %i.gm, label %.lr.ph224, label %._crit_edge225

.lr.ph224:                                        ; preds = %bb.ap, %bb.as
  %i.gn = phi i8 [ %i.ht, %bb.as ], [ %i.gk, %bb.ap ] ; 3 uses
  %i.go = phi i64 [ %i.hs, %bb.as ], [ %i.gj, %bb.ap ] ; 4 uses
  %.sroa.0105.3.i222 = phi i16 [ %i.hp, %bb.as ], [ %i.fw, %bb.ap ]
  %.sroa.085.3.i221 = phi i8 [ %i.hm, %bb.as ], [ %i.ft, %bb.ap ] ; 2 uses
  %i.gp = and i8 %.sroa.085.3.i221, 64
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %bb.aq, label %bb.ar

._crit_edge225:                                   ; preds = %bb.as, %bb.ap
  %.lcssa218 = phi i8 [ %i.gk, %bb.ap ], [ %i.ht, %bb.as ]
  %.lcssa214 = phi i64 [ %i.gj, %bb.ap ], [ %i.hs, %bb.as ] ; 2 uses
  %.sroa.085.3.i.lcssa = phi i8 [ %i.ft, %bb.ap ], [ %i.hm, %bb.as ]
  %.sroa.0105.3.i.lcssa = phi i16 [ %i.fw, %bb.ap ], [ %i.hp, %bb.as ]
  %i.gr = and i8 %.sroa.085.3.i.lcssa, 15         ; 2 uses
  %i.gs = zext nneg i8 %i.gr to i64               ; 2 uses
  %notmask149.i = shl nsw i64 -1, %i.gs
  %i.gt = xor i64 %notmask149.i, -1
  %i.gu = and i64 %.lcssa214, %i.gt
  %i.gv = trunc nuw nsw i64 %i.gu to i16
  %i.gw = add i16 %.sroa.0105.3.i.lcssa, %i.gv    ; 6 uses
  %i.gx = lshr i64 %.lcssa214, %i.gs              ; 2 uses
  store i64 %i.gx, ptr %i.d, align 8, !noalias !33
  %i.gy = sub i8 %.lcssa218, %i.gr                ; 2 uses
  store i8 %i.gy, ptr %i.e, align 8, !noalias !33
  %i.gz = load i64, ptr %i.i, align 8, !noalias !33, !noundef !4 ; 23 uses
  %i.ha = zext i16 %i.gw to i64                   ; 10 uses
  %i.hb = icmp ult i64 %i.gz, %i.ha
  br i1 %i.hb, label %bb.bi, label %bb.au

bb.aq:                                            ; preds = %.lr.ph224
  %i.hc = and i8 %.sroa.085.3.i221, 47
  %i.hd = zext nneg i8 %i.hc to i64
  %notmask151.i = shl nsw i64 -1, %i.hd
  %i.he = xor i64 %notmask151.i, -1
  %i.hf = and i64 %i.go, %i.he
  %i.hg = trunc i64 %i.hf to i16
  %i.hh = add i16 %.sroa.0105.3.i222, %i.hg
  %i.hi = zext i16 %i.hh to i64                   ; 3 uses
  %i.hj = icmp samesign ugt i64 %.sroa.14.0.i, %i.hi
  br i1 %i.hj, label %bb.as, label %bb.at

bb.ar:                                            ; preds = %.lr.ph224
  store i8 30, ptr %0, align 64, !alias.scope !33
  br label %.loopexit

bb.as:                                            ; preds = %bb.aq
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.039.0.i, i64 %i.hi ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 2
  %i.hm = load i8, ptr %i.hl, align 2, !noundef !4 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 3
  %i.ho = load i8, ptr %i.hn, align 1, !noundef !4 ; 2 uses
  %i.hp = load i16, ptr %i.hk, align 2, !noundef !4 ; 2 uses
  %i.hq = and i8 %i.ho, 63
  %i.hr = zext nneg i8 %i.hq to i64
  %i.hs = lshr i64 %i.go, %i.hr                   ; 2 uses
  %i.ht = sub i8 %i.gn, %i.ho                     ; 2 uses
  %i.hu = and i8 %i.hm, 16
  %i.hv = icmp eq i8 %i.hu, 0
  br i1 %i.hv, label %.lr.ph224, label %._crit_edge225

bb.at:                                            ; preds = %bb.aq
  store i64 %i.go, ptr %i.d, align 8, !noalias !33
  store i8 %i.gn, ptr %i.e, align 8, !noalias !33
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hi, i64 noundef %.sroa.14.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.au:                                            ; preds = %._crit_edge225
  %i.hw = zext i16 %i.er to i64                   ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.hx = load i64, ptr %i.h, align 8, !alias.scope !36, !noalias !33, !noundef !4 ; 2 uses
  %i.hy = add i64 %i.gz, %i.hw                    ; 2 uses
  %i.hz = add i64 %i.hy, 32                       ; 2 uses
  %.sroa.0.0.i1 = call noundef i64 @llvm.umin.i64(i64 %i.hx, i64 %i.hz) ; 9 uses
  %i.ia = load ptr, ptr %i.a, align 8, !alias.scope !36, !noalias !33, !noundef !4 ; 9 uses
  store i64 %i.hy, ptr %i.i, align 8, !alias.scope !36, !noalias !33
  %i.ib = icmp ugt i16 %i.er, %i.gw
  br i1 %i.ib, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ic = sub nuw i64 %i.gz, %i.ha                ; 3 uses
  %i.id = icmp ult i64 %i.hz, %i.hx
  br i1 %i.id, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ie = add i64 %i.ic, %i.hw
  call void @_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninithE11copy_withinINtNtNtB5_3ops5range5RangejEECs7kNFBubu20U_7zlib_rs(ptr noalias noundef nonnull %i.ia, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i1, i64 noundef %i.ic, i64 noundef %i.ie, i64 noundef %i.gz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !36
  br label %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer15copy_match_helpKj20_EB7_.exit157.i

bb.ax:                                            ; preds = %bb.av
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ic ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.gz ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.hw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ig, ptr noundef nonnull align 1 dereferenceable(32) %i.if, i64 32, i1 false)
  %i.ii = icmp ugt i16 %i.er, 32
  br i1 %i.ii, label %.lr.ph236.preheader, label %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer15copy_match_helpKj20_EB7_.exit157.i

.lr.ph236.preheader:                              ; preds = %bb.ax
  %.sroa.0.0.i161.i232 = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  br label %.lr.ph236

.lr.ph236:                                        ; preds = %.lr.ph236.preheader, %.lr.ph236
  %.sroa.0.0.i161.i234 = phi ptr [ %.sroa.0.0.i161.i, %.lr.ph236 ], [ %.sroa.0.0.i161.i232, %.lr.ph236.preheader ] ; 2 uses
  %.pn.i159.i233 = phi ptr [ %.sroa.06.0.i162.i, %.lr.ph236 ], [ %i.ig, %.lr.ph236.preheader ]
  %.sroa.06.0.i162.i = getelementptr inbounds nuw i8, ptr %.pn.i159.i233, i64 32 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.06.0.i162.i, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0.0.i161.i234, i64 32, i1 false)
  %.sroa.0.0.i161.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i161.i234, i64 32 ; 2 uses
  %i.ij = icmp ult ptr %.sroa.0.0.i161.i, %i.ih
  br i1 %i.ij, label %.lr.ph236, label %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer15copy_match_helpKj20_EB7_.exit157.i

bb.ay:                                            ; preds = %bb.au
  %i.ik = icmp eq i16 %i.gw, 1
  br i1 %i.ik, label %bb.az, label %.preheader4

.preheader4:                                      ; preds = %bb.ay
  %i.il = sub i64 %i.gz, %i.ha                    ; 3 uses
  %i.im = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i1, i64 %i.gz) ; 2 uses
  %i.in = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i1, i64 %i.il)
  %1 = sub i64 %i.in, %i.gz
  %2 = add i64 %1, %i.ha
  %i.io = add nsw i64 %i.hw, -1
  %i.ip = call i64 @llvm.umin.i64(i64 %2, i64 %i.im)
  %i.iq = call i64 @llvm.umin.i64(i64 %i.ip, i64 %i.io)
  %i.ir = add i64 %i.iq, 1                        ; 3 uses
  %min.iters.check238 = icmp ult i64 %i.ir, 33
  %i.is = add i16 %i.gw, -1
  %diff.check236 = icmp ult i16 %i.is, 31
  %or.cond = or i1 %min.iters.check238, %diff.check236
  br i1 %or.cond, label %scalar.ph237.preheader, label %vector.ph239

scalar.ph237.preheader:                           ; preds = %vector.body241, %.preheader4
  %.sroa.02.0.i155.i237.ph = phi i64 [ 0, %.preheader4 ], [ %n.vec240, %vector.body241 ]
  br label %scalar.ph237

vector.ph239:                                     ; preds = %.preheader4
  %i.it = and i64 %i.ir, 31                       ; 2 uses
  %i.iu = icmp eq i64 %i.it, 0
  %i.iv = select i1 %i.iu, i64 32, i64 %i.it
  %n.vec240 = sub i64 %i.ir, %i.iv                ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.ia, i64 %i.il
  %invariant.gep708 = getelementptr i8, ptr %i.ia, i64 %i.gz
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph239
  %index242 = phi i64 [ 0, %vector.ph239 ], [ %index.next244, %vector.body241 ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index242
  %wide.load243 = load <32 x i8>, ptr %gep, align 1, !noalias !36
  %gep709 = getelementptr i8, ptr %invariant.gep708, i64 %index242
  store <32 x i8> %wide.load243, ptr %gep709, align 1, !noalias !36
  %index.next244 = add nuw i64 %index242, 32      ; 2 uses
  %i.iw = icmp eq i64 %index.next244, %n.vec240
  br i1 %i.iw, label %scalar.ph237.preheader, label %vector.body241, !llvm.loop !39

bb.az:                                            ; preds = %bb.ay
  %i.ix = add i64 %i.gz, -1                       ; 3 uses
  %i.iy = icmp ult i64 %i.ix, %.sroa.0.0.i1
  br i1 %i.iy, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.iz = sub nuw i64 %.sroa.0.0.i1, %i.gz        ; 2 uses
  %.not15.i156.i = icmp ult i64 %i.iz, %i.hw
  br i1 %.not15.i156.i, label %bb.bc, label %bb.bd, !prof !42

bb.bb:                                            ; preds = %bb.az
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ix, i64 noundef %.sroa.0.0.i1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #13, !noalias !36
  unreachable

bb.bc:                                            ; preds = %bb.ba
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 -65534, 65536) %i.hw, i64 noundef %i.iz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #13, !noalias !36
  unreachable

bb.bd:                                            ; preds = %bb.ba
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ix
  %i.jb = load i8, ptr %i.ja, align 1, !noalias !36
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.gz
  call void @_RNvXs_NtNtCs4NRVxsYgnAr_4core5slice10specializeSINtNtNtB8_3mem12maybe_uninit11MaybeUninithEINtB4_8SpecFillBK_E9spec_fillCs7kNFBubu20U_7zlib_rs(ptr noalias noundef nonnull %i.jc, i64 noundef range(i64 -65534, 65536) %i.hw, i8 %i.jb), !noalias !36
  br label %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer15copy_match_helpKj20_EB7_.exit157.i

scalar.ph237:                                     ; preds = %scalar.ph237.preheader, %bb.bg
  %.sroa.02.0.i155.i237 = phi i64 [ %i.jd, %bb.bg ], [ %.sroa.02.0.i155.i237.ph, %scalar.ph237.preheader ] ; 4 uses
  %i.jd = add nuw nsw i64 %.sroa.02.0.i155.i237, 1 ; 2 uses
  %i.je = add nuw i64 %.sroa.02.0.i155.i237, %i.il ; 3 uses
  %i.jf = icmp ult i64 %i.je, %.sroa.0.0.i1
  br i1 %i.jf, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %scalar.ph237
  %i.jg = add nuw i64 %.sroa.02.0.i155.i237, %i.gz ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.02.0.i155.i237, %i.im
  br i1 %exitcond.not, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %scalar.ph237
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.je, i64 noundef %.sroa.0.0.i1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #13, !noalias !36
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.je
  %i.ji = load i8, ptr %i.jh, align 1, !noalias !36
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.jg
  store i8 %i.ji, ptr %i.jj, align 1, !noalias !36
  %exitcond448.not = icmp eq i64 %i.jd, %i.hw
  br i1 %exitcond448.not, label %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer15copy_match_helpKj20_EB7_.exit157.i, label %scalar.ph237, !llvm.loop !43

bb.bh:                                            ; preds = %bb.be
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.jg, i64 noundef %.sroa.0.0.i1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #13, !noalias !36
  unreachable

bb.bi:                                            ; preds = %._crit_edge225
  %i.jk = sub nuw nsw i64 %i.ha, %i.gz            ; 7 uses
  %i.jl = load i64, ptr %i.ar, align 8, !alias.scope !33, !noundef !4
  %i.jm = icmp ugt i64 %i.jk, %i.jl
  br i1 %i.jm, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jn = load i64, ptr %i.as, align 32, !alias.scope !33, !noundef !4 ; 5 uses
  %i.jo = icmp eq i64 %i.jn, 0
  br i1 %i.jo, label %bb.bl, label %bb.bm

bb.bk:                                            ; preds = %bb.bi
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.jq = load i8, ptr %i.jp, align 1, !alias.scope !33, !noundef !4
  %i.jr = and i8 %i.jq, 4
  %i.js = icmp eq i8 %i.jr, 0
  br i1 %i.js, label %bb.da, label %bb.db, !prof !17

bb.bl:                                            ; preds = %bb.bj
  %i.jt = sub i64 %i.ae, %i.jk
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bj
  %.not150.i = icmp ult i64 %i.jn, %i.jk
  br i1 %.not150.i, label %bb.bw, label %bb.bx

bb.bn:                                            ; preds = %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer23extend_from_window_helpKj20_EB7_.exit174.i, %bb.bx, %bb.bw, %bb.bl
  %i.ju = phi i64 [ %i.gz, %bb.bl ], [ %i.gz, %bb.bx ], [ %i.lq, %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer23extend_from_window_helpKj20_EB7_.exit174.i ], [ %i.gz, %bb.bw ] ; 7 uses
  %.sroa.072.0.i = phi i64 [ %i.jt, %bb.bl ], [ %i.kv, %bb.bx ], [ 0, %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer23extend_from_window_helpKj20_EB7_.exit174.i ], [ %i.ks, %bb.bw ] ; 5 uses
  %.sroa.060.0.i = phi i64 [ %i.jk, %bb.bl ], [ %i.jk, %bb.bx ], [ %i.jn, %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer23extend_from_window_helpKj20_EB7_.exit174.i ], [ %i.kr, %bb.bw ] ; 4 uses
  %.sroa.054.0.i = phi i16 [ %i.er, %bb.bl ], [ %i.er, %bb.bx ], [ %i.kx, %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer23extend_from_window_helpKj20_EB7_.exit174.i ], [ %i.er, %bb.bw ]
  %i.jv = zext i16 %.sroa.054.0.i to i64          ; 4 uses
  %.sroa.0.0.i2 = call noundef i64 @llvm.umin.i64(i64 %i.jv, i64 %.sroa.060.0.i) ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.jw = load i64, ptr %i.h, align 8, !alias.scope !44, !noalias !49, !noundef !4 ; 4 uses
  %i.jx = sub i64 %i.jw, %i.ju                    ; 3 uses
  %i.jy = add nuw nsw i64 %.sroa.0.0.i2, 32
  %.not.i164.i = icmp ult i64 %i.jx, %i.jy
  br i1 %.not.i164.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.jz = add i64 %.sroa.0.0.i2, %.sroa.072.0.i   ; 3 uses
  %i.ka = call { ptr, i64 } @_RNvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6windowNtB2_6Window8as_slice(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad), !noalias !44 ; 2 uses
  %i.kb = extractvalue { ptr, i64 } %i.ka, 1      ; 2 uses
  %i.kc = icmp ult i64 %i.jz, %.sroa.072.0.i
  %.not9.i.i = icmp ugt i64 %i.jz, %i.kb
  %or.cond.i.i = select i1 %i.kc, i1 true, i1 %.not9.i.i, !prof !42
  br i1 %or.cond.i.i, label %bb.br, label %bb.bq, !prof !42

bb.bp:                                            ; preds = %bb.bn
  %i.kd = load ptr, ptr %i.ad, align 8, !alias.scope !49, !noalias !44, !noundef !4
  %i.ke = getelementptr i8, ptr %i.kd, i64 %.sroa.072.0.i ; 3 uses
  %i.kf = load ptr, ptr %i.a, align 8, !alias.scope !44, !noalias !49, !noundef !4
  %i.kg = getelementptr i8, ptr %i.kf, i64 %i.ju  ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 %.sroa.0.0.i2
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kg, ptr noundef nonnull align 1 dereferenceable(32) %i.ke, i64 32, i1 false)
  %i.ki = icmp samesign ugt i64 %.sroa.0.0.i2, 32
  br i1 %i.ki, label %.lr.ph247.preheader, label %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer23extend_from_window_helpKj20_EB7_.exit.i

.lr.ph247.preheader:                              ; preds = %bb.bp
  %.sroa.0.0.i.i.i243 = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.preheader, %.lr.ph247
  %.sroa.0.0.i.i.i245 = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph247 ], [ %.sroa.0.0.i.i.i243, %.lr.ph247.preheader ] ; 2 uses
  %.pn.i.i.i244 = phi ptr [ %.sroa.06.0.i.i.i, %.lr.ph247 ], [ %i.kg, %.lr.ph247.preheader ]
  %.sroa.06.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i244, i64 32 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.06.0.i.i.i, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0.0.i.i.i245, i64 32, i1 false)
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i245, i64 32 ; 2 uses
  %i.kj = icmp ult ptr %.sroa.0.0.i.i.i, %i.kh
  br i1 %i.kj, label %.lr.ph247, label %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer23extend_from_window_helpKj20_EB7_.exit.i

bb.bq:                                            ; preds = %bb.bo
  %i.kk = extractvalue { ptr, i64 } %i.ka, 0
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.sroa.072.0.i
  %i.km = icmp ugt i64 %i.ju, %i.jw
  br i1 %i.km, label %bb.bt, label %bb.bs, !prof !17

bb.br:                                            ; preds = %bb.bo
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.072.0.i, i64 noundef %i.jz, i64 noundef %i.kb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #13, !noalias !44
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %.not10.i.i = icmp samesign ugt i64 %.sroa.0.0.i2, %i.jx
  br i1 %.not10.i.i, label %bb.bu, label %bb.bv, !prof !42

bb.bt:                                            ; preds = %bb.bq
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.ju, i64 noundef %i.jw, i64 noundef %i.jw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #13, !noalias !44
  unreachable

bb.bu:                                            ; preds = %bb.bs
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0.i2, i64 noundef %i.jx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13, !noalias !44
  unreachable

bb.bv:                                            ; preds = %bb.bs
  %i.kn = load ptr, ptr %i.a, align 8, !alias.scope !44, !noalias !49, !noundef !4
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.ju
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7kNFBubu20U_7zlib_rs(ptr noalias noundef nonnull %i.ko, i64 noundef %.sroa.0.0.i2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kl, i64 noundef %.sroa.0.0.i2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9), !noalias !44
  br label %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer23extend_from_window_helpKj20_EB7_.exit.i

_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer23extend_from_window_helpKj20_EB7_.exit.i: ; preds = %.lr.ph247, %bb.bp, %bb.bv
  %i.kp = add i64 %i.ju, %.sroa.0.0.i2            ; 15 uses
  store i64 %i.kp, ptr %i.i, align 8, !alias.scope !44, !noalias !49
  %i.kq = icmp samesign ult i64 %.sroa.060.0.i, %i.jv
  br i1 %i.kq, label %bb.ch, label %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer15copy_match_helpKj20_EB7_.exit157.i

bb.bw:                                            ; preds = %bb.bm
  %i.kr = sub nuw nsw i64 %i.jk, %i.jn            ; 11 uses
  %i.ks = sub i64 %i.ae, %i.kr                    ; 4 uses
  %i.kt = zext i16 %i.er to i64
  %i.ku = icmp samesign ult i64 %i.kr, %i.kt
  br i1 %i.ku, label %bb.by, label %bb.bn

bb.bx:                                            ; preds = %bb.bm
  %i.kv = sub nuw i64 %i.jn, %i.jk
  br label %bb.bn

bb.by:                                            ; preds = %bb.bw
  %i.kw = trunc nuw i64 %i.kr to i16
  %i.kx = sub i16 %i.er, %i.kw
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.ky = load i64, ptr %i.h, align 8, !alias.scope !50, !noalias !55, !noundef !4 ; 4 uses
  %i.kz = sub i64 %i.ky, %i.gz                    ; 3 uses
  %i.la = add nuw nsw i64 %i.kr, 32
  %.not.i165.i = icmp ult i64 %i.kz, %i.la
  br i1 %.not.i165.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.lb = call { ptr, i64 } @_RNvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6windowNtB2_6Window8as_slice(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad), !noalias !50 ; 2 uses
  %i.lc = extractvalue { ptr, i64 } %i.lb, 1      ; 2 uses
  %i.ld = icmp ult i64 %i.ae, %i.kr
  %.not9.i171.i = icmp ugt i64 %i.ae, %i.lc
  %or.cond.i172.i = select i1 %i.ld, i1 true, i1 %.not9.i171.i, !prof !42
  br i1 %or.cond.i172.i, label %bb.cc, label %bb.cb, !prof !42

bb.ca:                                            ; preds = %bb.by
  %i.le = load ptr, ptr %i.ad, align 8, !alias.scope !55, !noalias !50, !noundef !4 ; 2 uses
  %i.lf = getelementptr i8, ptr %i.le, i64 %i.ks  ; 2 uses
  %i.lg = load ptr, ptr %i.a, align 8, !alias.scope !50, !noalias !55, !noundef !4
  %i.lh = getelementptr i8, ptr %i.lg, i64 %i.gz  ; 2 uses
  %i.li = getelementptr i8, ptr %i.le, i64 %i.ae  ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lh, ptr noundef nonnull align 1 dereferenceable(32) %i.lf, i64 32, i1 false)
  %.sroa.0.0.i.i168.i238 = getelementptr inbounds nuw i8, ptr %i.lf, i64 32 ; 2 uses
  %i.lj = icmp ult ptr %.sroa.0.0.i.i168.i238, %i.li
  br i1 %i.lj, label %.lr.ph242, label %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer23extend_from_window_helpKj20_EB7_.exit174.i

.lr.ph242:                                        ; preds = %bb.ca, %.lr.ph242
  %.sroa.0.0.i.i168.i240 = phi ptr [ %.sroa.0.0.i.i168.i, %.lr.ph242 ], [ %.sroa.0.0.i.i168.i238, %bb.ca ] ; 2 uses
  %.pn.i.i166.i239 = phi ptr [ %.sroa.06.0.i.i170.i, %.lr.ph242 ], [ %i.lh, %bb.ca ]
  %.sroa.06.0.i.i170.i = getelementptr inbounds nuw i8, ptr %.pn.i.i166.i239, i64 32 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.06.0.i.i170.i, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0.0.i.i168.i240, i64 32, i1 false)
  %.sroa.0.0.i.i168.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i168.i240, i64 32 ; 2 uses
  %i.lk = icmp ult ptr %.sroa.0.0.i.i168.i, %i.li
  br i1 %i.lk, label %.lr.ph242, label %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer23extend_from_window_helpKj20_EB7_.exit174.i

bb.cb:                                            ; preds = %bb.bz
  %i.ll = extractvalue { ptr, i64 } %i.lb, 0
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.ks
  %i.ln = icmp ugt i64 %i.gz, %i.ky
  br i1 %i.ln, label %bb.ce, label %bb.cd, !prof !17

bb.cc:                                            ; preds = %bb.bz
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.ks, i64 noundef %i.ae, i64 noundef %i.lc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #13, !noalias !50
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %.not10.i173.i = icmp samesign ugt i64 %i.kr, %i.kz
  br i1 %.not10.i173.i, label %bb.cf, label %bb.cg, !prof !42

bb.ce:                                            ; preds = %bb.cb
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.gz, i64 noundef %i.ky, i64 noundef %i.ky, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #13, !noalias !50
  unreachable

bb.cf:                                            ; preds = %bb.cd
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.kr, i64 noundef %i.kz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13, !noalias !50
  unreachable

bb.cg:                                            ; preds = %bb.cd
  %i.lo = load ptr, ptr %i.a, align 8, !alias.scope !50, !noalias !55, !noundef !4
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.gz
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7kNFBubu20U_7zlib_rs(ptr noalias noundef nonnull %i.lp, i64 noundef %i.kr, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.lm, i64 noundef %i.kr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9), !noalias !50
  br label %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer23extend_from_window_helpKj20_EB7_.exit174.i

_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer23extend_from_window_helpKj20_EB7_.exit174.i: ; preds = %.lr.ph242, %bb.ca, %bb.cg
  %i.lq = add nuw nsw i64 %i.kr, %i.gz            ; 2 uses
  store i64 %i.lq, ptr %i.i, align 8, !alias.scope !50, !noalias !55
  br label %bb.bn

bb.ch:                                            ; preds = %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer23extend_from_window_helpKj20_EB7_.exit.i
  %i.lr = sub nuw nsw i64 %i.jv, %.sroa.060.0.i   ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.ls = load i64, ptr %i.h, align 8, !alias.scope !56, !noalias !33, !noundef !4 ; 2 uses
  %i.lt = add nuw nsw i64 %i.kp, %i.lr            ; 2 uses
  %i.lu = add nuw nsw i64 %i.lt, 32               ; 2 uses
  %.sroa.0.0.i3 = call noundef i64 @llvm.umin.i64(i64 %i.ls, i64 %i.lu) ; 12 uses
  %i.lv = load ptr, ptr %i.a, align 8, !alias.scope !56, !noalias !33, !noundef !4 ; 9 uses
  store i64 %i.lt, ptr %i.i, align 8, !alias.scope !56, !noalias !33
  %i.lw = icmp samesign ugt i64 %i.lr, %i.ha
  br i1 %i.lw, label %bb.cn, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lx = icmp samesign ult i64 %i.kp, %i.ha
  br i1 %i.lx, label %bb.ck, label %bb.cj, !prof !17

bb.cj:                                            ; preds = %bb.ci
  %i.ly = sub nuw nsw i64 %i.kp, %i.ha            ; 3 uses
  %i.lz = icmp ult i64 %i.lu, %i.ls
  br i1 %i.lz, label %bb.cm, label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13, !noalias !59
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.ma = add nuw nsw i64 %i.ly, %i.lr
  call void @_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninithE11copy_withinINtNtNtB5_3ops5range5RangejEECs7kNFBubu20U_7zlib_rs(ptr noalias noundef nonnull %i.lv, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i3, i64 noundef %i.ly, i64 noundef %i.ma, i64 noundef %i.kp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !56
  br label %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer15copy_match_helpKj20_EB7_.exit157.i

bb.cm:                                            ; preds = %bb.cj
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.ly ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.kp ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.lr
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.mc, ptr noundef nonnull align 1 dereferenceable(32) %i.mb, i64 32, i1 false)
  %i.me = icmp samesign ugt i64 %i.lr, 32
  br i1 %i.me, label %.lr.ph252.preheader, label %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer15copy_match_helpKj20_EB7_.exit157.i

.lr.ph252.preheader:                              ; preds = %bb.cm
  %.sroa.0.0.i.i248 = getelementptr inbounds nuw i8, ptr %i.mb, i64 32
  br label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph252.preheader, %.lr.ph252
  %.sroa.0.0.i.i250 = phi ptr [ %.sroa.0.0.i.i, %.lr.ph252 ], [ %.sroa.0.0.i.i248, %.lr.ph252.preheader ] ; 2 uses
  %.pn.i.i249 = phi ptr [ %.sroa.06.0.i.i, %.lr.ph252 ], [ %i.mc, %.lr.ph252.preheader ]
  %.sroa.06.0.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i249, i64 32 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.06.0.i.i, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0.0.i.i250, i64 32, i1 false)
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i250, i64 32 ; 2 uses
  %i.mf = icmp ult ptr %.sroa.0.0.i.i, %i.md
  br i1 %i.mf, label %.lr.ph252, label %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer15copy_match_helpKj20_EB7_.exit157.i

bb.cn:                                            ; preds = %bb.ch
  %i.mg = icmp eq i16 %i.gw, 1
  br i1 %i.mg, label %bb.co, label %.preheader

.preheader:                                       ; preds = %bb.cn
  %i.mh = sub nsw i64 %i.kp, %i.ha                ; 3 uses
  %i.mi = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i3, i64 %i.kp) ; 2 uses
  %i.mj = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i3, i64 %i.mh)
  %i.mk = add i64 %i.ju, %.sroa.0.0.i2
  %3 = sub i64 %i.mj, %i.mk
  %4 = add i64 %3, %i.ha
  %i.ml = xor i64 %.sroa.060.0.i, -1
  %i.mm = add i64 %i.ml, %i.jv
  %i.mn = call i64 @llvm.umin.i64(i64 %4, i64 %i.mm)
  %i.mo = call i64 @llvm.umin.i64(i64 %i.mn, i64 %i.mi)
  %i.mp = add i64 %i.mo, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.mp, 33
  %diff.check = icmp ult i16 %i.gw, 32
  %or.cond247 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond247, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.preheader
  %.sroa.02.0.i.i253.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.preheader
  %i.mq = and i64 %i.mp, 31                       ; 2 uses
  %i.mr = icmp eq i64 %i.mq, 0
  %i.ms = select i1 %i.mr, i64 32, i64 %i.mq
  %n.vec = sub i64 %i.mp, %i.ms                   ; 2 uses
  %invariant.gep710 = getelementptr i8, ptr %i.lv, i64 %i.mh
  %invariant.gep712 = getelementptr i8, ptr %i.lv, i64 %i.kp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep711 = getelementptr i8, ptr %invariant.gep710, i64 %index
  %wide.load = load <32 x i8>, ptr %gep711, align 1, !noalias !56
  %gep713 = getelementptr i8, ptr %invariant.gep712, i64 %index
  store <32 x i8> %wide.load, ptr %gep713, align 1, !noalias !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.mt = icmp eq i64 %index.next, %n.vec
  br i1 %i.mt, label %scalar.ph.preheader, label %vector.body, !llvm.loop !62

bb.co:                                            ; preds = %bb.cn
  %i.mu = add nsw i64 %i.kp, -1                   ; 3 uses
  %i.mv = icmp ult i64 %i.mu, %.sroa.0.0.i3
  br i1 %i.mv, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.mu
  %i.mx = load i8, ptr %i.mw, align 1, !noalias !56
  %i.my = icmp samesign ugt i64 %i.kp, %.sroa.0.0.i3
  br i1 %i.my, label %bb.cs, label %bb.cr, !prof !17

bb.cq:                                            ; preds = %bb.co
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.mu, i64 noundef %.sroa.0.0.i3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #13, !noalias !56
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.mz = sub nuw nsw i64 %.sroa.0.0.i3, %i.kp    ; 2 uses
  %.not15.i.i = icmp samesign ugt i64 %i.lr, %i.mz
  br i1 %.not15.i.i, label %bb.ct, label %bb.cu, !prof !42

bb.cs:                                            ; preds = %bb.cp
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.kp, i64 noundef %.sroa.0.0.i3, i64 noundef %.sroa.0.0.i3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #13, !noalias !56
  unreachable

bb.ct:                                            ; preds = %bb.cr
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 -65534, 65536) %i.lr, i64 noundef %i.mz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #13, !noalias !56
  unreachable

bb.cu:                                            ; preds = %bb.cr
  %i.na = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.kp
  call void @_RNvXs_NtNtCs4NRVxsYgnAr_4core5slice10specializeSINtNtNtB8_3mem12maybe_uninit11MaybeUninithEINtB4_8SpecFillBK_E9spec_fillCs7kNFBubu20U_7zlib_rs(ptr noalias noundef nonnull %i.na, i64 noundef range(i64 -65534, 65536) %i.lr, i8 %i.mx), !noalias !56
  br label %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer15copy_match_helpKj20_EB7_.exit157.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.cx
  %.sroa.02.0.i.i253 = phi i64 [ %i.nb, %bb.cx ], [ %.sroa.02.0.i.i253.ph, %scalar.ph.preheader ] ; 4 uses
  %i.nb = add nuw i64 %.sroa.02.0.i.i253, 1       ; 2 uses
  %i.nc = add nuw i64 %.sroa.02.0.i.i253, %i.mh   ; 3 uses
  %i.nd = icmp ult i64 %i.nc, %.sroa.0.0.i3
  br i1 %i.nd, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %scalar.ph
  %i.ne = add nuw i64 %.sroa.02.0.i.i253, %i.kp   ; 2 uses
  %exitcond450.not = icmp eq i64 %.sroa.02.0.i.i253, %i.mi
  br i1 %exitcond450.not, label %bb.cy, label %bb.cx

bb.cw:                                            ; preds = %scalar.ph
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.nc, i64 noundef %.sroa.0.0.i3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #13, !noalias !56
  unreachable

bb.cx:                                            ; preds = %bb.cv
  %i.nf = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.nc
  %i.ng = load i8, ptr %i.nf, align 1, !noalias !56
  %i.nh = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.ne
  store i8 %i.ng, ptr %i.nh, align 1, !noalias !56
  %exitcond451.not = icmp eq i64 %i.nb, %i.lr
  br i1 %exitcond451.not, label %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer15copy_match_helpKj20_EB7_.exit157.i, label %scalar.ph, !llvm.loop !63

bb.cy:                                            ; preds = %bb.cv
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ne, i64 noundef %.sroa.0.0.i3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #13, !noalias !56
  unreachable

bb.cz:                                            ; preds = %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer15copy_match_helpKj20_EB7_.exit157.i
  %i.ni = load i64, ptr %i.h, align 8, !noalias !33, !noundef !4
  %i.nj = load i64, ptr %i.i, align 8, !noalias !33, !noundef !4
  %i.nk = sub i64 %i.ni, %i.nj
  %i.nl = icmp ugt i64 %i.nk, 259
  br i1 %i.nl, label %bb.m, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %_RINvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB3_6Writer15copy_match_helpKj20_EB7_.exit157.i, %bb.cz
  %.pre456 = load i64, ptr %i.d, align 8, !noalias !33
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.db, %bb.ar, %bb.al, %bb.ak
  %i.nm = phi i64 [ %i.go, %bb.ar ], [ %i.gx, %bb.db ], [ %i.ds, %bb.ak ], [ %i.ds, %bb.al ], [ %.pre456, %.loopexit.loopexit ]
  %i.nn = phi i8 [ %i.gn, %bb.ar ], [ %i.gy, %bb.db ], [ %i.dr, %bb.ak ], [ %i.dr, %bb.al ], [ %i.ef, %.loopexit.loopexit ] ; 2 uses
  %.sroa.6.0.i = phi i64 [ 22, %bb.ar ], [ 30, %bb.db ], [ 28, %bb.ak ], [ undef, %bb.al ], [ undef, %.loopexit.loopexit ]
  %not..i = phi i1 [ true, %bb.ar ], [ true, %bb.db ], [ true, %bb.ak ], [ false, %bb.al ], [ false, %.loopexit.loopexit ]
  %.sroa.076.0.i = phi ptr [ @25, %bb.ar ], [ @28, %bb.db ], [ @22, %bb.ak ], [ null, %bb.al ], [ null, %.loopexit.loopexit ]
  %i.no = lshr i8 %i.nn, 3
  %i.np = load ptr, ptr %i.b, align 8, !noalias !33, !noundef !4
  %i.nq = zext nneg i8 %i.no to i64
  %i.nr = sub nsw i64 0, %i.nq
  %i.ns = getelementptr inbounds i8, ptr %i.np, i64 %i.nr
  store ptr %i.ns, ptr %i.b, align 8, !noalias !33
  %i.nt = and i8 %i.nn, 7                         ; 2 uses
  store i8 %i.nt, ptr %i.e, align 8, !noalias !33
  %i.nu = zext nneg i8 %i.nt to i64
  %notmask153.i = shl nsw i64 -1, %i.nu
  %i.nv = xor i64 %notmask153.i, -1
  %i.nw = and i64 %i.nm, %i.nv
  store i64 %i.nw, ptr %i.d, align 8, !noalias !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br i1 %not..i, label %bb.dc, label %_RINvNtCs7kNFBubu20U_7zlib_rs7inflate22inflate_fast_help_implKj1_EB4_.exit

bb.da:                                            ; preds = %bb.bk
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @26, ptr noundef nonnull inttoptr (i64 85 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.db:                                            ; preds = %bb.bk
  store i8 30, ptr %0, align 64, !alias.scope !33
  br label %.loopexit

bb.dc:                                            ; preds = %.loopexit
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %.sroa.076.0.i, ptr %i.nx, align 16, !alias.scope !33
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 %.sroa.6.0.i, ptr %i.ny, align 8, !alias.scope !33
  br label %_RINvNtCs7kNFBubu20U_7zlib_rs7inflate22inflate_fast_help_implKj1_EB4_.exit

_RINvNtCs7kNFBubu20U_7zlib_rs7inflate22inflate_fast_help_implKj1_EB4_.exit: ; preds = %.loopexit, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvNtCs7kNFBubu20U_7zlib_rs7inflate3end(ptr noalias nofree noundef returned align 8 captures(ret: address, provenance) dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !9, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 14608
  %i.g = load ptr, ptr %i.f, align 16, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 14616
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7kNFBubu20U_7zlib_rs(ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7kNFBubu20U_7zlib_rs7inflate6window6WindowEB16_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7kNFBubu20U_7zlib_rs7inflate6window6WindowEB16_.exit: ; preds = %bb.a
  store ptr null, ptr %i.d, align 8
  call void @_RINvMs_NtCs7kNFBubu20U_7zlib_rs8allocateNtB5_9Allocator10deallocatehEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noundef %i.g, i64 noundef %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 -4, 1) i32 @_RNvNtCs7kNFBubu20U_7zlib_rs7inflate4copy(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !noundef !4
  %i.e = icmp ne ptr %i.d, null
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 0
  %or.cond = select i1 %i.e, i1 true, i1 %i.h
end_hunk_0
