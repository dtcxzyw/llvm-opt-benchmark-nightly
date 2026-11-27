Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/PrettyPrinter?download=true
inline.NumInlined: 1271
inline.NumDeleted: 472
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4Luau7Printer9visualizeERNS_7AstExprE:bb.a
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %i.vz = load ptr, ptr %i.vy, align 8
  tail call void %i.vz(ptr noundef nonnull align 8 dereferenceable(8) %i.vw, ptr noundef nonnull align 4 dereferenceable(8) %i.vv), !inline_history !1
  br label %bb.dm

bb.di:                                            ; preds = %bb.dg
  %i.wa = getelementptr inbounds nuw i8, ptr %.tr643707, i64 28
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !329
  switch i32 %i.wb, label %bb.dm [
    i32 0, label %bb.dj
    i32 1, label %bb.dj
    i32 2, label %bb.dj
    i32 3, label %bb.dj
    i32 4, label %bb.dj
    i32 5, label %bb.dj
    i32 6, label %bb.dj
    i32 10, label %bb.dj
    i32 12, label %bb.dj
    i32 7, label %bb.dk
    i32 8, label %bb.dk
    i32 9, label %bb.dk
    i32 11, label %bb.dk
    i32 13, label %bb.dk
    i32 15, label %bb.dk
    i32 14, label %bb.dl
  ]

bb.dj:                                            ; preds = %bb.di, %bb.di, %bb.di, %bb.di, %bb.di, %bb.di, %bb.di, %bb.di, %bb.di
  %i.wc = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.tr643707, i64 40
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !330
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 12
  %i.wg = load ptr, ptr %i.wc, align 8, !tbaa !33
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 40
  %i.wi = load ptr, ptr %i.wh, align 8
  tail call void %i.wi(ptr noundef nonnull align 8 dereferenceable(8) %i.wc, ptr noundef nonnull align 4 dereferenceable(8) %i.wf, i32 noundef 2)
  br label %bb.dm

bb.dk:                                            ; preds = %bb.di, %bb.di, %bb.di, %bb.di, %bb.di, %bb.di
  %i.wj = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.tr643707, i64 40
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !330
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 12
  %i.wn = load ptr, ptr %i.wj, align 8, !tbaa !33
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 40
  %i.wp = load ptr, ptr %i.wo, align 8
  tail call void %i.wp(ptr noundef nonnull align 8 dereferenceable(8) %i.wj, ptr noundef nonnull align 4 dereferenceable(8) %i.wm, i32 noundef 3)
  br label %bb.dm

bb.dl:                                            ; preds = %bb.di
  %i.wq = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %.tr643707, i64 40
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !330
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 12
  %i.wu = load ptr, ptr %i.wq, align 8, !tbaa !33
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 40
  %i.ww = load ptr, ptr %i.wv, align 8
  tail call void %i.ww(ptr noundef nonnull align 8 dereferenceable(8) %i.wq, ptr noundef nonnull align 4 dereferenceable(8) %i.wt, i32 noundef 4)
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dj, %bb.dk, %bb.dl, %bb.di, %bb.dh
  %i.wx = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.wy = getelementptr inbounds nuw i8, ptr %.tr643707, i64 28
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !329
  call void @_ZN4Luau8toStringB5cxx11ENS_13AstExprBinary2OpE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i32 noundef %i.wz)
  %i.xa = load ptr, ptr %6, align 8, !tbaa !28
  %i.xb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !35
  %i.xd = load ptr, ptr %i.wx, align 8, !tbaa !33
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 80
  %i.xf = load ptr, ptr %i.xe, align 8
  invoke void %i.xf(ptr noundef nonnull align 8 dereferenceable(8) %i.wx, i64 %i.xc, ptr %i.xa)
          to label %bb.dn unwind label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.xg = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.xi = icmp eq ptr %i.xg, %i.xh
  br i1 %i.xi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i471

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i471: ; preds = %bb.dn
  %i.xj = load i64, ptr %i.xh, align 8, !tbaa !29
  %i.xk = add i64 %i.xj, 1
  call void @_ZdlPvm(ptr noundef %i.xg, i64 noundef %i.xk) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i471
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.xl = getelementptr inbounds nuw i8, ptr %.tr643707, i64 40
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !330
  call void @_ZN4Luau7Printer9visualizeERNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.xm)
  br label %common.ret

bb.do:                                            ; preds = %bb.dm
  %i.xn = landingpad { ptr, i32 }
          cleanup
  %i.xo = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.xq = icmp eq ptr %i.xo, %i.xp
  br i1 %i.xq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474: ; preds = %bb.do
  %i.xr = load i64, ptr %i.xp, align 8, !tbaa !29
  %i.xs = add i64 %i.xr, 1
  call void @_ZdlPvm(ptr noundef %i.xo, i64 noundef %i.xs) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.es

bb.dp:                                            ; preds = %bb.df
  %i.xt = load i32, ptr @_ZN4Luau7AstRttiINS_20AstExprTypeAssertionEE5valueE, align 4, !tbaa !18
  %.not638 = icmp eq i32 %i.bn, %i.xt
  br i1 %.not638, label %bb.dq, label %bb.dv

bb.dq:                                            ; preds = %bb.dp
  %i.xu = getelementptr inbounds nuw i8, ptr %.tr643707, i64 32
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !332
  tail call void @_ZN4Luau7Printer9visualizeERNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.xv)
  %i.xw = load i8, ptr %0, align 8, !tbaa !46, !range !84, !noundef !51
  %i.xx = trunc nuw i8 %i.xw to i1
  br i1 %i.xx, label %bb.dr, label %common.ret

bb.dr:                                            ; preds = %bb.dq
  %i.xy = tail call noundef ptr @_ZN4Luau7Printer13lookupCstNodeINS_20CstExprTypeAssertionEEEPT_PNS_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %.tr643707) ; 2 uses
  %.not384 = icmp eq ptr %i.xy, null
  br i1 %.not384, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 4
  %i.ya = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !33
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 16
  %i.yd = load ptr, ptr %i.yc, align 8
  tail call void %i.yd(ptr noundef nonnull align 8 dereferenceable(8) %i.ya, ptr noundef nonnull align 4 dereferenceable(8) %i.xz), !inline_history !1
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  %i.ye = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.tr643707, i64 40
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !333
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 12
  %i.yi = load ptr, ptr %i.ye, align 8, !tbaa !33
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 40
  %i.yk = load ptr, ptr %i.yj, align 8
  tail call void %i.yk(ptr noundef nonnull align 8 dereferenceable(8) %i.ye, ptr noundef nonnull align 4 dereferenceable(8) %i.yh, i32 noundef 2)
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.yl = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !33
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 80
  %i.yo = load ptr, ptr %i.yn, align 8
  tail call void %i.yo(ptr noundef nonnull align 8 dereferenceable(8) %i.yl, i64 2, ptr nonnull @.str.166)
  %i.yp = getelementptr inbounds nuw i8, ptr %.tr643707, i64 40
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !333
  tail call void @_ZN4Luau7Printer23visualizeTypeAnnotationERNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.yq)
  br label %common.ret

bb.dv:                                            ; preds = %bb.dp
  %i.yr = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprIfElseEE5valueE, align 4, !tbaa !18
  %.not639 = icmp eq i32 %i.bn, %i.yr
  br i1 %.not639, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.ys = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !33
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 72
  %i.yv = load ptr, ptr %i.yu, align 8
  tail call void %i.yv(ptr noundef nonnull align 8 dereferenceable(8) %i.ys, i64 2, ptr nonnull @.str.108)
  tail call void @_ZN4Luau7Printer19visualizeElseIfExprERNS_13AstExprIfElseE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(72) %.tr643707)
  br label %common.ret

bb.dx:                                            ; preds = %bb.dv
  %i.yw = load i32, ptr @_ZN4Luau7AstRttiINS_19AstExprInterpStringEE5valueE, align 4, !tbaa !18
  %.not640 = icmp eq i32 %i.bn, %i.yw
  br i1 %.not640, label %bb.dy, label %bb.en

bb.dy:                                            ; preds = %bb.dx
  %i.yx = tail call noundef ptr @_ZN4Luau7Printer13lookupCstNodeINS_19CstExprInterpStringEEEPT_PNS_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %.tr643707) ; 3 uses
  %i.yy = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !33
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 80
  %i.zb = load ptr, ptr %i.za, align 8
  tail call void %i.zb(ptr noundef nonnull align 8 dereferenceable(8) %i.yy, i64 1, ptr nonnull @.str.167)
  %i.zc = getelementptr inbounds nuw i8, ptr %.tr643707, i64 32
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !336 ; 4 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.tr643707, i64 40
  %i.zf = load i64, ptr %i.ze, align 8, !tbaa !337 ; 3 uses
  %.idx = shl nuw nsw i64 %i.zf, 4
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zd, i64 %.idx
  %.not381713 = icmp eq i64 %i.zf, 0
  br i1 %.not381713, label %._crit_edge718, label %.lr.ph717

.lr.ph717:                                        ; preds = %bb.dy
  %.not382 = icmp eq ptr %i.yx, null              ; 4 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yx, i64 24
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yx, i64 8 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.tr643707, i64 56 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.tr643707, i64 48 ; 2 uses
  %i.zn = load ptr, ptr %i.m, align 8, !tbaa !50  ; 4 uses
  br i1 %.not382, label %bb.dz, label %._crit_edge776

._crit_edge776:                                   ; preds = %.lr.ph717
  %.pre780 = load ptr, ptr %i.zn, align 8, !tbaa !33
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre780, i64 56
  %.pre781 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre = load ptr, ptr %i.zi, align 8, !tbaa !339 ; 2 uses
  %.sroa.4.0..sroa_idx.peel.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.sroa.4.0.copyload.peel.pre = load i64, ptr %.sroa.4.0..sroa_idx.peel.phi.trans.insert, align 8, !tbaa !48
  %.sroa.012.0.copyload.peel.pre = load ptr, ptr %.pre, align 8, !tbaa !135
  call void %.pre781(ptr noundef nonnull align 8 dereferenceable(8) %i.zn, i64 %.sroa.4.0.copyload.peel.pre, ptr %.sroa.012.0.copyload.peel.pre)
  br label %bb.eb

bb.dz:                                            ; preds = %.lr.ph717
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.zo = load ptr, ptr %i.zd, align 8, !tbaa !318
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  %i.zq = load i64, ptr %i.zp, align 8, !tbaa !319
  call void @_ZN4Luau6escapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i64 %i.zq, ptr %i.zo, i1 noundef zeroext true)
  %i.zr = load ptr, ptr %7, align 8, !tbaa !28
  %i.zs = load i64, ptr %i.zj, align 8, !tbaa !35
  %i.zt = load ptr, ptr %i.zn, align 8, !tbaa !33
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 48
  %i.zv = load ptr, ptr %i.zu, align 8
  invoke void %i.zv(ptr noundef nonnull align 8 dereferenceable(8) %i.zn, i64 %i.zs, ptr %i.zr)
          to label %bb.ea unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ea:                                            ; preds = %bb.dz
  %i.zw = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.zx = icmp eq ptr %i.zw, %i.zk
  br i1 %i.zx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482.peel: ; preds = %bb.ea
  %i.zy = load i64, ptr %i.zk, align 8, !tbaa !29
  %i.zz = add i64 %i.zy, 1
  call void @_ZdlPvm(ptr noundef %i.zw, i64 noundef %i.zz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484.peel: ; preds = %bb.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.eb

bb.eb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484.peel, %._crit_edge776
  %i.aaa = load i64, ptr %i.zl, align 8, !tbaa !341
  %.not831 = icmp eq i64 %i.aaa, 0
  br i1 %.not831, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aab = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !33
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 80
  %i.aae = load ptr, ptr %i.aad, align 8
  call void %i.aae(ptr noundef nonnull align 8 dereferenceable(8) %i.aab, i64 1, ptr nonnull @.str.162)
  %i.aaf = load ptr, ptr %i.zm, align 8, !tbaa !342
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !82
  call void @_ZN4Luau7Printer9visualizeERNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.aag)
  br i1 %.not382, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.aah = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !33
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 80
  %i.aak = load ptr, ptr %i.aaj, align 8
  call void %i.aak(ptr noundef nonnull align 8 dereferenceable(8) %i.aah, i64 1, ptr nonnull @.str.163)
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %bb.eb
  %.not381.peel = icmp eq i64 %i.zf, 1
  br i1 %.not381.peel, label %._crit_edge718, label %.peel.next772

.peel.next772:                                    ; preds = %bb.ee
  %i.aal = getelementptr inbounds nuw i8, ptr %i.zd, i64 16
  br label %bb.ef

._crit_edge718:                                   ; preds = %bb.em, %bb.ee, %bb.dy
  %i.aam = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !33
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 80
  %i.aap = load ptr, ptr %i.aao, align 8
  call void %i.aap(ptr noundef nonnull align 8 dereferenceable(8) %i.aam, i64 1, ptr nonnull @.str.167)
  br label %common.ret

bb.ef:                                            ; preds = %.peel.next772, %bb.em
  %.0227715 = phi ptr [ %i.aal, %.peel.next772 ], [ %i.acl, %bb.em ] ; 3 uses
  %.0228714 = phi i64 [ 1, %.peel.next772 ], [ %i.ack, %bb.em ] ; 5 uses
  br i1 %.not382, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.aaq = load ptr, ptr %i.zh, align 8, !tbaa !343
  %i.aar = getelementptr inbounds nuw [8 x i8], ptr %i.aaq, i64 %.0228714
  %i.aas = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !33
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 16
  %i.aav = load ptr, ptr %i.aau, align 8
  call void %i.aav(ptr noundef nonnull align 8 dereferenceable(8) %i.aas, ptr noundef nonnull align 4 dereferenceable(8) %i.aar), !inline_history !1
  %i.aaw = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !33
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 80
  %i.aaz = load ptr, ptr %i.aay, align 8
  call void %i.aaz(ptr noundef nonnull align 8 dereferenceable(8) %i.aaw, i64 1, ptr nonnull @.str.163)
  %i.aba = load ptr, ptr %i.zi, align 8, !tbaa !339
  %i.abb = getelementptr inbounds nuw [16 x i8], ptr %i.aba, i64 %.0228714 ; 2 uses
  %.sroa.012.0.copyload = load ptr, ptr %i.abb, align 8, !tbaa !135
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abb, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !48
  %i.abc = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !33
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 56
  %i.abf = load ptr, ptr %i.abe, align 8
  call void %i.abf(ptr noundef nonnull align 8 dereferenceable(8) %i.abc, i64 %.sroa.4.0.copyload, ptr %.sroa.012.0.copyload)
  br label %bb.ej

bb.eh:                                            ; preds = %bb.ef
  %i.abg = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.abh = load ptr, ptr %.0227715, align 8, !tbaa !318
  %i.abi = getelementptr inbounds nuw i8, ptr %.0227715, i64 8
  %i.abj = load i64, ptr %i.abi, align 8, !tbaa !319
  call void @_ZN4Luau6escapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i64 %i.abj, ptr %i.abh, i1 noundef zeroext true)
  %i.abk = load ptr, ptr %7, align 8, !tbaa !28
  %i.abl = load i64, ptr %i.zj, align 8, !tbaa !35
  %i.abm = load ptr, ptr %i.abg, align 8, !tbaa !33
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 48
  %i.abo = load ptr, ptr %i.abn, align 8
  invoke void %i.abo(ptr noundef nonnull align 8 dereferenceable(8) %i.abg, i64 %i.abl, ptr %i.abk)
          to label %bb.ei unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ei:                                            ; preds = %bb.eh
  %i.abp = load ptr, ptr %7, align 8, !tbaa !28   ; 2 uses
  %i.abq = icmp eq ptr %i.abp, %i.zk
  br i1 %i.abq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482: ; preds = %bb.ei
  %i.abr = load i64, ptr %i.zk, align 8, !tbaa !29
  %i.abs = add i64 %i.abr, 1
  call void @_ZdlPvm(ptr noundef %i.abp, i64 noundef %i.abs) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ej

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.eh, %bb.dz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.abt = load ptr, ptr %7, align 8, !tbaa !28   ; 2 uses
  %i.abu = icmp eq ptr %i.abt, %i.zk
  br i1 %i.abu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.abv = load i64, ptr %i.zk, align 8, !tbaa !29
  %i.abw = add i64 %i.abv, 1
  call void @_ZdlPvm(ptr noundef %i.abt, i64 noundef %i.abw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.es

bb.ej:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484, %bb.eg
  %i.abx = load i64, ptr %i.zl, align 8, !tbaa !341
  %i.aby = icmp ult i64 %.0228714, %i.abx
  br i1 %i.aby, label %bb.ek, label %bb.em

bb.ek:                                            ; preds = %bb.ej
  %i.abz = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !33
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 80
  %i.acc = load ptr, ptr %i.acb, align 8
  call void %i.acc(ptr noundef nonnull align 8 dereferenceable(8) %i.abz, i64 1, ptr nonnull @.str.162)
  %i.acd = load ptr, ptr %i.zm, align 8, !tbaa !342
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %i.acd, i64 %.0228714
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !82
  call void @_ZN4Luau7Printer9visualizeERNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.acf)
  br i1 %.not382, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.acg = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !33
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 80
  %i.acj = load ptr, ptr %i.aci, align 8
  call void %i.acj(ptr noundef nonnull align 8 dereferenceable(8) %i.acg, i64 1, ptr nonnull @.str.163)
  br label %bb.em

bb.em:                                            ; preds = %bb.ek, %bb.el, %bb.ej
  %i.ack = add nuw nsw i64 %.0228714, 1
  %i.acl = getelementptr inbounds nuw i8, ptr %.0227715, i64 16 ; 2 uses
  %.not381 = icmp eq ptr %i.acl, %i.zg
  br i1 %.not381, label %._crit_edge718, label %bb.ef, !llvm.loop !268

bb.en:                                            ; preds = %bb.dx
  %i.acm = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprErrorEE5valueE, align 4, !tbaa !18
  %.not641 = icmp eq i32 %i.bn, %i.acm
  br i1 %.not641, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.acn = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !33
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 80
  %i.acq = load ptr, ptr %i.acp, align 8
  tail call void %i.acq(ptr noundef nonnull align 8 dereferenceable(8) %i.acn, i64 11, ptr nonnull @.str.168)
  %i.acr = getelementptr inbounds nuw i8, ptr %.tr643707, i64 40 ; 3 uses
  %i.acs = load i64, ptr %i.acr, align 8, !tbaa !345
  %.not737 = icmp eq i64 %i.acs, 0
  br i1 %.not737, label %._crit_edge, label %.lr.ph712

.lr.ph712:                                        ; preds = %bb.eo
  %i.act = getelementptr inbounds nuw i8, ptr %.tr643707, i64 32 ; 2 uses
  %i.acu = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !33
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 80
  %i.acx = load ptr, ptr %i.acw, align 8
  tail call void %i.acx(ptr noundef nonnull align 8 dereferenceable(8) %i.acu, i64 2, ptr nonnull @.str.142)
  %i.acy = load ptr, ptr %i.act, align 8, !tbaa !346
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !82
  tail call void @_ZN4Luau7Printer9visualizeERNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.acz)
  %i.ada = load i64, ptr %i.acr, align 8, !tbaa !345
  %i.adb = icmp ugt i64 %i.ada, 1
  br i1 %i.adb, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %.peel.next, %.lr.ph712, %bb.eo
  %i.adc = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !33
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 80
  %i.adf = load ptr, ptr %i.ade, align 8
  tail call void %i.adf(ptr noundef nonnull align 8 dereferenceable(8) %i.adc, i64 1, ptr nonnull @.str.144)
  br label %common.ret

.peel.next:                                       ; preds = %.lr.ph712, %.peel.next
  %.0711 = phi i64 [ %i.adn, %.peel.next ], [ 1, %.lr.ph712 ] ; 2 uses
  %i.adg = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !33
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 80
  %i.adj = load ptr, ptr %i.adi, align 8
  tail call void %i.adj(ptr noundef nonnull align 8 dereferenceable(8) %i.adg, i64 2, ptr nonnull @.str.143)
  %i.adk = load ptr, ptr %i.act, align 8, !tbaa !346
  %i.adl = getelementptr inbounds nuw [8 x i8], ptr %i.adk, i64 %.0711
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !82
  tail call void @_ZN4Luau7Printer9visualizeERNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.adm)
end_hunk_0
