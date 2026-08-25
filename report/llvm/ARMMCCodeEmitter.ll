Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMMCCodeEmitter?download=true
inline.NumInlined: 2248
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK12_GLOBAL__N_116ARMMCCodeEmitter21getBinaryCodeForInstrERKN4llvm6MCInstERNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE:bb.a
  %i.xeq = or i64 %i.f, %i.xep
  br label %bb.zv

bb.zt:                                            ; preds = %bb.c, %bb.c
  %i.xer = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xes = load ptr, ptr %i.xer, align 8, !tbaa !48
  %i.xet = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.xet, align 8
  %i.xeu = getelementptr inbounds nuw i8, ptr %3, i64 256
  %.val11815 = load i64, ptr %i.xeu, align 8
  %i.xev = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_116ARMMCCodeEmitter17getMachineOpValueERKN4llvm6MCInstERKNS1_9MCOperandERNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE(ptr %.val, ptr noundef nonnull align 8 dereferenceable(16) %i.xes, i64 %.val11815)
  %i.xew = zext i32 %i.xev to i64                 ; 2 uses
  %i.xex = shl nuw nsw i64 %i.xew, 4
  %i.xey = and i64 %i.xex, 1048320
  %i.xez = and i64 %i.xew, 15
  %i.xfa = or disjoint i64 %i.xez, %i.xey
  %i.xfb = or i64 %i.xfa, %i.f
  br label %bb.zv

bb.zu:                                            ; preds = %bb.c
  tail call void @_ZN4llvm13MCCodeEmitter21reportUnsupportedInstERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %1) #17
  unreachable

bb.zv:                                            ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.zt, %bb.zs, %bb.zr, %bb.zq, %bb.zp, %bb.zo, %bb.zn, %bb.zm, %bb.zl, %bb.zk, %bb.zj, %bb.zi, %bb.zh, %bb.zg, %bb.zf, %bb.ze, %bb.zd, %bb.zc, %bb.zb, %bb.za, %bb.yz, %bb.yy, %bb.yx, %bb.yw, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode3OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15793, %bb.yt, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode3OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15790, %bb.yq, %bb.yp, %bb.yo, %bb.yn, %bb.ym, %bb.yl, %bb.yk, %bb.yj, %bb.yi, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode3OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15785, %bb.yf, %bb.ye, %bb.yd, %bb.yc, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode3OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit, %bb.xz, %bb.xy, %bb.xx, %bb.xw, %bb.xv, %bb.xu, %bb.xt, %bb.xs, %bb.xr, %bb.xq, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter18getSORegImmOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15779, %bb.xi, %bb.xh, %bb.xg, %bb.xf, %bb.xe, %bb.xd, %bb.xc, %bb.xb, %bb.xa, %bb.wz, %bb.wy, %bb.wx, %bb.ww, %bb.wv, %bb.wu, %bb.wt, %bb.ws, %bb.wr, %bb.wq, %bb.wp, %bb.wo, %bb.wn, %bb.wm, %bb.wl, %bb.wk, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter18getSORegImmOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15765, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter18getSORegImmOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15762, %bb.vv, %bb.vu, %bb.vt, %bb.vs, %bb.vr, %bb.vq, %bb.vp, %bb.vo, %bb.vn, %bb.vm, %bb.vl, %bb.vk, %bb.vj, %bb.vi, %bb.vh, %bb.vg, %bb.vf, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter18getSORegImmOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit, %bb.ux, %bb.uw, %bb.uv, %bb.uu, %bb.ut, %bb.us, %bb.ur, %bb.uq, %bb.up, %bb.uo, %bb.un, %bb.um, %bb.ul, %bb.uk, %bb.uj, %bb.ui, %bb.uh, %bb.ug, %bb.uf, %bb.ue, %bb.ud, %bb.uc, %bb.ub, %bb.ua, %bb.tz, %bb.ty, %bb.tx, %bb.tw, %bb.tv, %bb.tu, %bb.tt, %bb.ts, %bb.tr, %bb.tq, %bb.tp, %bb.to, %bb.tn, %bb.tm, %bb.tl, %bb.tk, %bb.tj, %bb.ti, %bb.th, %bb.tg, %bb.tf, %bb.te, %bb.td, %bb.tc, %bb.tb, %bb.ta, %bb.sz, %bb.sy, %bb.sx, %bb.sw, %bb.sv, %bb.su, %bb.st, %bb.ss, %bb.sr, %bb.sq, %bb.sp, %bb.so, %bb.sn, %bb.sm, %bb.sl, %bb.sk, %bb.sj, %bb.si, %bb.sh, %bb.sg, %bb.sf, %bb.se, %bb.sd, %bb.sc, %bb.sb, %bb.sa, %bb.rz, %bb.ry, %bb.rx, %bb.rw, %bb.rv, %bb.ru, %bb.rt, %bb.rs, %bb.rr, %bb.rq, %bb.rp, %bb.ro, %bb.rn, %bb.rm, %bb.rl, %bb.rk, %bb.rj, %bb.ri, %bb.rh, %bb.rg, %bb.rf, %bb.re, %bb.rd, %bb.rc, %bb.rb, %bb.ra, %bb.qz, %bb.qy, %bb.qx, %bb.qw, %bb.qv, %bb.qu, %bb.qt, %bb.qs, %bb.qr, %bb.qq, %bb.qp, %bb.qo, %bb.qn, %bb.qm, %bb.ql, %bb.qk, %bb.qj, %bb.qi, %bb.qh, %bb.qg, %bb.qf, %bb.qe, %bb.qd, %bb.qc, %bb.qb, %bb.qa, %bb.pz, %bb.py, %bb.px, %bb.pw, %bb.pv, %bb.pu, %bb.pt, %bb.ps, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter16getITMaskOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit, %bb.pp, %bb.po, %bb.pn, %bb.pm, %bb.pl, %bb.pk, %bb.pj, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj8ELj0EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15713, %bb.pi, %bb.ph, %bb.pg, %bb.pf, %bb.pe, %bb.pd, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15709, %bb.pa, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15701, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15697, %bb.ov, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15692, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15688, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15684, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15680, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15676, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15672, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15668, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15664, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15660, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15656, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15652, %bb.ny, %bb.nx, %bb.nw, %bb.nv, %bb.nu, %bb.nt, %bb.ns, %bb.nr, %bb.nq, %bb.np, %bb.no, %bb.nn, %bb.nm, %bb.nl, %bb.nk, %bb.nj, %bb.ni, %bb.nh, %bb.ng, %bb.nf, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15630, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15628, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15626, %bb.my, %bb.mx, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15624, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15622, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15620, %bb.mq, %bb.mp, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15617, %bb.mm, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15615, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15613, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15611, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15609, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15607, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15605, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15603, %bb.lx, %bb.lw, %bb.lv, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15601, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15599, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15597, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15595, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15593, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15591, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15589, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15587, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15585, %bb.lc, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15582, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15580, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15578, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15576, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15574, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15572, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15570, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15568, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15566, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15564, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15562, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15560, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15558, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15556, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15554, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15552, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit, %bb.jt, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15546, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15539, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter29getAddrMode6DupAddressOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15532, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter29getAddrMode6DupAddressOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15528, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15524, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter29getAddrMode6DupAddressOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15517, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter29getAddrMode6DupAddressOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15513, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter29getAddrMode6DupAddressOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15509, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter29getAddrMode6DupAddressOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15503, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15499, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15495, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15491, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15483, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15479, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15475, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15471, %bb.io, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15466, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15462, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15458, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15444, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15440, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj8ELj0EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15422, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj8ELj0EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15415, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj8ELj0EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15412, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj8ELj0EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj2EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15394, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj1EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15391, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj1EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15388, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj0EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15385, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj0EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15382, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %switch.lookup, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter21getMVEShiftImmOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj2EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj1EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15370, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj1EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj0EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15365, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj0EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.aa, %bb.d ], [ %i.bf, %bb.e ], [ %i.bo, %bb.f ], [ %i.cy, %bb.g ], [ %i.ei, %bb.h ], [ %i.fl, %bb.i ], [ %i.gv, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj0EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit ], [ %i.if, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj0EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15365 ], [ %i.jq, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj1EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit ], [ %i.lb, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj1EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15370 ], [ %i.mm, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj2EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit ], [ %i.nf, %bb.ad ], [ %i.oi, %bb.ae ], [ %i.po, %bb.af ], [ %i.qu, %bb.ag ], [ %i.rq, %bb.ah ], [ %i.sw, %bb.ai ], [ %i.tx, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter21getMVEShiftImmOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit ], [ %i.vb, %switch.lookup ], [ %i.we, %bb.aj ], [ %i.xh, %bb.ak ], [ %i.yk, %bb.al ], [ %i.zk, %bb.am ], [ %i.aak, %bb.an ], [ %i.abk, %bb.ao ], [ %i.acg, %bb.ap ], [ %i.adm, %bb.aq ], [ %i.aez, %bb.ar ], [ %i.ago, %bb.as ], [ %i.ahr, %bb.at ], [ %i.aiu, %bb.au ], [ %i.ajx, %bb.av ], [ %i.akx, %bb.aw ], [ %i.alx, %bb.ax ], [ %i.amx, %bb.ay ], [ %i.aod, %bb.az ], [ %i.apj, %bb.ba ], [ %i.aql, %bb.bb ], [ %i.arn, %bb.bc ], [ %i.asf, %bb.bd ], [ %i.atm, %bb.be ], [ %i.aun, %bb.bf ], [ %i.avy, %bb.bg ], [ %i.axj, %bb.bh ], [ %i.ayu, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj0EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15382 ], [ %i.baf, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj0EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15385 ], [ %i.bbr, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj1EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15388 ], [ %i.bdd, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj1EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15391 ], [ %i.bep, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj7ELj2EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15394 ], [ %i.bfp, %bb.cc ], [ %i.bgp, %bb.cd ], [ %i.bhq, %bb.ce ], [ %i.bir, %bb.cf ], [ %i.bjt, %bb.cg ], [ %i.bkw, %bb.ch ], [ %i.bmc, %bb.ci ], [ %i.bni, %bb.cj ], [ %i.bnx, %bb.ck ], [ %i.bot, %bb.cl ], [ %i.bps, %bb.cm ], [ %i.bqr, %bb.cn ], [ %i.brg, %bb.co ], [ %i.brv, %bb.cp ], [ %i.bsq, %bb.cq ], [ %i.btw, %bb.cr ], [ %i.bvj, %bb.cs ], [ %i.bwp, %bb.ct ], [ %i.byc, %bb.cu ], [ %i.bzf, %bb.cv ], [ %i.caa, %bb.cw ], [ %i.cbg, %bb.cx ], [ %i.ccb, %bb.cy ], [ %i.ccn, %bb.cz ], [ %i.cda, %bb.da ], [ %i.cdo, %bb.db ], [ %i.cei, %bb.dc ], [ %i.cfc, %bb.dd ], [ %i.cfq, %bb.de ], [ %i.cgi, %bb.df ], [ %i.chc, %bb.dg ], [ %i.chl, %bb.dh ], [ %i.cic, %bb.di ], [ %i.ciq, %bb.dj ], [ %i.cjk, %bb.dk ], [ %i.ckk, %bb.dl ], [ %i.cle, %bb.dm ], [ %i.cme, %bb.dn ], [ %i.cne, %bb.do ], [ %i.coi, %bb.dp ], [ %i.cpj, %bb.dq ], [ %i.cqd, %bb.dr ], [ %i.crl, %bb.ds ], [ %i.css, %bb.dt ], [ %i.ctm, %bb.du ], [ %i.cug, %bb.dv ], [ %i.cvl, %bb.dw ], [ %i.cvz, %bb.dx ], [ %i.cwx, %bb.dy ], [ %i.cxz, %bb.dz ], [ %i.cyt, %bb.ea ], [ %i.czn, %bb.eb ], [ %i.das, %bb.ec ], [ %i.dbm, %bb.ed ], [ %i.dcg, %bb.ee ], [ %i.ddg, %bb.ef ], [ %i.deg, %bb.eg ], [ %i.dfg, %bb.eh ], [ %i.dgb, %bb.ei ], [ %i.dgw, %bb.ej ], [ %i.dhl, %bb.ek ], [ %i.die, %bb.el ], [ %i.diz, %bb.em ], [ %i.dka, %bb.en ], [ %i.dkz, %bb.eo ], [ %i.dma, %bb.ep ], [ %i.dnb, %bb.eq ], [ %i.dno, %bb.er ], [ %i.doc, %bb.es ], [ %i.doq, %bb.et ], [ %i.dpb, %bb.eu ], [ %i.dpt, %bb.ev ], [ %i.dqc, %bb.ew ], [ %i.dqq, %bb.ex ], [ %i.dre, %bb.ey ], [ %i.drw, %bb.ez ], [ %i.dsg, %bb.fa ], [ %i.dta, %bb.fb ], [ %i.dto, %bb.fc ], [ %i.dua, %bb.fd ], [ %i.duj, %bb.fe ], [ %i.dux, %bb.ff ], [ %i.dvs, %bb.fg ], [ %i.dwl, %bb.fh ], [ %i.dwx, %bb.fi ], [ %i.dxj, %bb.fj ], [ %i.dxw, %bb.fk ], [ %i.dyg, %bb.fl ], [ %i.dyv, %bb.fm ], [ %i.dzm, %bb.fn ], [ %i.dzz, %bb.fo ], [ %i.eam, %bb.fp ], [ %i.eay, %bb.fq ], [ %i.ebl, %bb.fr ], [ %i.eci, %bb.fs ], [ %i.edh, %bb.ft ], [ %i.eeh, %bb.fu ], [ %i.efn, %bb.fv ], [ %i.egu, %bb.fw ], [ %i.eht, %bb.fx ], [ %i.eis, %bb.fy ], [ %i.ejj, %bb.fz ], [ %i.eka, %bb.ga ], [ %i.ekp, %bb.gb ], [ %i.elo, %bb.gc ], [ %i.emy, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj8ELj0EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit ], [ %i.eob, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj8ELj0EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15412 ], [ %i.epl, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj8ELj0EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15415 ], [ %i.eqx, %bb.gl ], [ %i.esj, %bb.gm ], [ %i.etk, %bb.gn ], [ %i.eul, %bb.go ], [ %i.evt, %bb.gp ], [ %i.ewt, %bb.gq ], [ %i.eye, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj8ELj0EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15422 ], [ %i.ezk, %bb.gv ], [ %i.faw, %bb.gw ], [ %i.fbx, %bb.gx ], [ %i.fcl, %bb.gy ], [ %i.fdg, %bb.gz ], [ %i.fec, %bb.ha ], [ %i.fey, %bb.hb ], [ %i.fge, %bb.hc ], [ %i.fhn, %bb.hd ], [ %i.fjd, %bb.he ], [ %i.fkw, %bb.hf ], [ %i.fmp, %bb.hg ], [ %i.fof, %bb.hh ], [ %i.fpy, %bb.hi ], [ %i.frr, %bb.hj ], [ %i.fsg, %bb.hk ], [ %i.fsv, %bb.hl ], [ %i.ftk, %bb.hm ], [ %i.fua, %bb.hn ], [ %i.fvj, %bb.ho ], [ %i.fwo, %bb.hp ], [ %i.fxz, %bb.hq ], [ %i.fze, %bb.hr ], [ %i.gav, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit ], [ %i.gcq, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15440 ], [ %i.gej, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15444 ], [ %i.gft, %bb.hy ], [ %i.ghe, %bb.hz ], [ %i.gip, %bb.ia ], [ %i.gka, %bb.ib ], [ %i.glf, %bb.ic ], [ %i.gmp, %bb.id ], [ %i.gnu, %bb.ie ], [ %i.gpd, %bb.if ], [ %i.gqm, %bb.ig ], [ %i.grv, %bb.ih ], [ %i.gto, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15458 ], [ %i.gvh, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15462 ], [ %i.gxa, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15466 ], [ %i.gyf, %bb.io ], [ %i.gzw, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15471 ], [ %i.hbn, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15475 ], [ %i.hde, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15479 ], [ %i.her, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15483 ], [ %i.hgc, %bb.ix ], [ %i.hhn, %bb.iy ], [ %i.hiy, %bb.iz ], [ %i.hkd, %bb.ja ], [ %i.hlw, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15491 ], [ %i.hnp, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15495 ], [ %i.hpi, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15499 ], [ %i.hqv, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15503 ], [ %i.hsl, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter29getAddrMode6DupAddressOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit ], [ %i.hug, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter29getAddrMode6DupAddressOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15509 ], [ %i.hvw, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter29getAddrMode6DupAddressOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15513 ], [ %i.hxd, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter29getAddrMode6DupAddressOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15517 ], [ %i.hys, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15524 ], [ %i.iai, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter29getAddrMode6DupAddressOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15528 ], [ %i.icb, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter29getAddrMode6DupAddressOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15532 ], [ %i.idz, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15539 ], [ %i.iga, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15546 ], [ %i.ihu, %bb.jt ], [ %i.ije, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit ], [ %i.iko, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15552 ], [ %i.ily, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15554 ], [ %i.ini, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15556 ], [ %i.iow, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15558 ], [ %i.iqk, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15560 ], [ %i.iry, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15562 ], [ %i.itm, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15564 ], [ %i.iuw, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15566 ], [ %i.iwh, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15568 ], [ %i.ixs, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15570 ], [ %i.izd, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15572 ], [ %i.jao, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15574 ], [ %i.jcc, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15576 ], [ %i.jdq, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15578 ], [ %i.jfe, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15580 ], [ %i.jgl, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15582 ], [ %i.jho, %bb.lc ], [ %i.jjc, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15585 ], [ %i.jkq, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15587 ], [ %i.jme, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15589 ], [ %i.jns, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15591 ], [ %i.jpd, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15593 ], [ %i.jqo, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15595 ], [ %i.jrz, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15597 ], [ %i.jtk, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15599 ], [ %i.jur, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15601 ], [ %i.jvx, %bb.lv ], [ %i.jxk, %bb.lw ], [ %i.jyp, %bb.lx ], [ %i.kan, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15603 ], [ %i.kcl, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15605 ], [ %i.kej, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15607 ], [ %i.kgh, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15609 ], [ %i.kif, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15611 ], [ %i.kkd, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15613 ], [ %i.kmb, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15615 ], [ %i.knn, %bb.mm ], [ %i.kpe, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15617 ], [ %i.kqr, %bb.mp ], [ %i.ksd, %bb.mq ], [ %i.kub, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15620 ], [ %i.kvw, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15622 ], [ %i.kxn, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15624 ], [ %i.kyz, %bb.mx ], [ %i.lal, %bb.my ], [ %i.lcc, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15626 ], [ %i.lea, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15628 ], [ %i.lfv, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter26NEONThumb2DataIPostEncoderERKN4llvm6MCInstEjRKNS1_15MCSubtargetInfoE.exit15630 ], [ %i.lhl, %bb.nf ], [ %i.lir, %bb.ng ], [ %i.lke, %bb.nh ], [ %i.llo, %bb.ni ], [ %i.lmy, %bb.nj ], [ %i.loi, %bb.nk ], [ %i.lps, %bb.nl ], [ %i.lrc, %bb.nm ], [ %i.lso, %bb.nn ], [ %i.lua, %bb.no ], [ %i.lvm, %bb.np ], [ %i.lwy, %bb.nq ], [ %i.lyk, %bb.nr ], [ %i.lzw, %bb.ns ], [ %i.mbc, %bb.nt ], [ %i.mco, %bb.nu ], [ %i.mdu, %bb.nv ], [ %i.mfp, %bb.nw ], [ %i.mgv, %bb.nx ], [ %i.mib, %bb.ny ], [ %i.mjt, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15652 ], [ %i.mll, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15656 ], [ %i.mnd, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15660 ], [ %i.mov, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15664 ], [ %i.mqp, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15668 ], [ %i.msj, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15672 ], [ %i.mud, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15676 ], [ %i.mvx, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15680 ], [ %i.mxr, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15684 ], [ %i.mzl, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15688 ], [ %i.naz, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15692 ], [ %i.nck, %bb.ov ], [ %i.nee, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15697 ], [ %i.nfs, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15701 ], [ %i.nhd, %bb.pa ], [ %i.njg, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode6OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15709 ], [ %i.nkh, %bb.pd ], [ %i.nkv, %bb.pe ], [ %i.nlg, %bb.pf ], [ %i.nlr, %bb.pg ], [ %i.nmg, %bb.ph ], [ %i.nnb, %bb.pi ], [ %i.nnx, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getT2AddrModeImmOpValueILj8ELj0EEEjRKN4llvm6MCInstEjRNS2_15SmallVectorImplINS2_7MCFixupEEERKNS2_15MCSubtargetInfoE.exit15713 ], [ %i.npc, %bb.pj ], [ %i.npq, %bb.pk ], [ %i.nqg, %bb.pl ], [ %i.nqw, %bb.pm ], [ %i.nrr, %bb.pn ], [ %i.nsm, %bb.po ], [ %i.ntp, %bb.pp ], [ %i.nug, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter16getITMaskOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit ], [ %i.nvi, %bb.ps ], [ %i.nwn, %bb.pt ], [ %i.nxs, %bb.pu ], [ %i.nyx, %bb.pv ], [ %i.oag, %bb.pw ], [ %i.obi, %bb.px ], [ %i.ocy, %bb.py ], [ %i.oen, %bb.pz ], [ %i.oga, %bb.qa ], [ %i.ohf, %bb.qb ], [ %i.oik, %bb.qc ], [ %i.ojp, %bb.qd ], [ %i.oky, %bb.qe ], [ %i.omo, %bb.qf ], [ %i.ooe, %bb.qg ], [ %i.opt, %bb.qh ], [ %i.org, %bb.qi ], [ %i.otd, %bb.qj ], [ %i.ouz, %bb.qk ], [ %i.owq, %bb.ql ], [ %i.oyg, %bb.qm ], [ %i.pad, %bb.qn ], [ %i.pbz, %bb.qo ], [ %i.pdq, %bb.qp ], [ %i.pee, %bb.qq ], [ %i.pem, %bb.qr ], [ %i.peu, %bb.qs ], [ %i.pfd, %bb.qt ], [ %i.pfm, %bb.qu ], [ %i.pgs, %bb.qv ], [ %i.phu, %bb.qw ], [ %i.pir, %bb.qx ], [ %i.pjj, %bb.qy ], [ %i.pko, %bb.qz ], [ %i.pll, %bb.ra ], [ %i.pmu, %bb.rb ], [ %i.pnv, %bb.rc ], [ %i.ppd, %bb.rd ], [ %i.pqd, %bb.re ], [ %i.prp, %bb.rf ], [ %i.pst, %bb.rg ], [ %i.psz, %bb.rh ], [ %i.pti, %bb.ri ], [ %i.ptq, %bb.rj ], [ %i.pua, %bb.rk ], [ %i.pur, %bb.rl ], [ %i.pvi, %bb.rm ], [ %i.pvr, %bb.rn ], [ %i.pwa, %bb.ro ], [ %i.pwj, %bb.rp ], [ %i.pwr, %bb.rq ], [ %i.pxc, %bb.rr ], [ %i.pya, %bb.rs ], [ %i.pyy, %bb.rt ], [ %i.pzw, %bb.ru ], [ %i.qaf, %bb.rv ], [ %i.qbd, %bb.rw ], [ %i.qcb, %bb.rx ], [ %i.qcq, %bb.ry ], [ %i.qdp, %bb.rz ], [ %i.qea, %bb.sa ], [ %i.qel, %bb.sb ], [ %i.qet, %bb.sc ], [ %i.qfh, %bb.sd ], [ %i.qfw, %bb.se ], [ %i.qgq, %bb.sf ], [ %i.qhf, %bb.sg ], [ %i.qhz, %bb.sh ], [ %i.qih, %bb.si ], [ %i.qip, %bb.sj ], [ %i.qji, %bb.sk ], [ %i.qjq, %bb.sl ], [ %i.qkw, %bb.sm ], [ %i.qmi, %bb.sn ], [ %i.qmr, %bb.so ], [ %i.qmz, %bb.sp ], [ %i.qnz, %bb.sq ], [ %i.qoh, %bb.sr ], [ %i.qoy, %bb.ss ], [ %i.qqb, %bb.st ], [ %i.qrd, %bb.su ], [ %i.qrr, %bb.sv ], [ %i.qsz, %bb.sw ], [ %i.quh, %bb.sx ], [ %i.qvm, %bb.sy ], [ %i.qwj, %bb.sz ], [ %i.qxl, %bb.ta ], [ %i.qxy, %bb.tb ], [ %i.qyl, %bb.tc ], [ %i.qyy, %bb.td ], [ %i.qzl, %bb.te ], [ %i.qzy, %bb.tf ], [ %i.rap, %bb.tg ], [ %i.rbc, %bb.th ], [ %i.rbp, %bb.ti ], [ %i.rcc, %bb.tj ], [ %i.rdn, %bb.tk ], [ %i.rez, %bb.tl ], [ %i.rgk, %bb.tm ], [ %i.rhd, %bb.tn ], [ %i.rhz, %bb.to ], [ %i.riu, %bb.tp ], [ %i.rjn, %bb.tq ], [ %i.rke, %bb.tr ], [ %i.rln, %bb.ts ], [ %i.rmw, %bb.tt ], [ %i.roc, %bb.tu ], [ %i.rpk, %bb.tv ], [ %i.rqe, %bb.tw ], [ %i.rrb, %bb.tx ], [ %i.rru, %bb.ty ], [ %i.rss, %bb.tz ], [ %i.rud, %bb.ua ], [ %i.rvp, %bb.ub ], [ %i.rxa, %bb.uc ], [ %i.rym, %bb.ud ], [ %i.rzv, %bb.ue ], [ %i.sbp, %bb.uf ], [ %i.scq, %bb.ug ], [ %i.sds, %bb.uh ], [ %i.seq, %bb.ui ], [ %i.sfm, %bb.uj ], [ %i.sge, %bb.uk ], [ %i.shb, %bb.ul ], [ %i.shw, %bb.um ], [ %i.sjr, %bb.un ], [ %i.sld, %bb.uo ], [ %i.sms, %bb.up ], [ %i.soh, %bb.uq ], [ %i.sps, %bb.ur ], [ %i.sqr, %bb.us ], [ %i.srq, %bb.ut ], [ %i.ssu, %bb.uu ], [ %i.stq, %bb.uv ], [ %i.sup, %bb.uw ], [ %i.svo, %bb.ux ], [ %i.swv, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter18getSORegImmOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit ], [ %i.sxu, %bb.vf ], [ %i.syt, %bb.vg ], [ %i.szs, %bb.vh ], [ %i.tar, %bb.vi ], [ %i.tbq, %bb.vj ], [ %i.tcm, %bb.vk ], [ %i.tdl, %bb.vl ], [ %i.tex, %bb.vm ], [ %i.tgt, %bb.vn ], [ %i.tif, %bb.vo ], [ %i.tjr, %bb.vp ], [ %i.tll, %bb.vq ], [ %i.tmw, %bb.vr ], [ %i.toi, %bb.vs ], [ %i.tpu, %bb.vt ], [ %i.tqx, %bb.vu ], [ %i.try, %bb.vv ], [ %i.ttj, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter18getSORegImmOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15762 ], [ %i.tuu, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter18getSORegImmOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15765 ], [ %i.tvx, %bb.wk ], [ %i.txs, %bb.wl ], [ %i.tyx, %bb.wm ], [ %i.uac, %bb.wn ], [ %i.ubh, %bb.wo ], [ %i.ucq, %bb.wp ], [ %i.udz, %bb.wq ], [ %i.ufe, %bb.wr ], [ %i.ugj, %bb.ws ], [ %i.uhc, %bb.wt ], [ %i.uih, %bb.wu ], [ %i.ujm, %bb.wv ], [ %i.ukl, %bb.ww ], [ %i.ull, %bb.wx ], [ %i.uml, %bb.wy ], [ %i.uoh, %bb.wz ], [ %i.upm, %bb.xa ], [ %i.uqt, %bb.xb ], [ %i.urz, %bb.xc ], [ %i.utg, %bb.xd ], [ %i.uva, %bb.xe ], [ %i.uwl, %bb.xf ], [ %i.uyb, %bb.xg ], [ %i.uzn, %bb.xh ], [ %i.vas, %bb.xi ], [ %i.vcj, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter18getSORegImmOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15779 ], [ %i.vdg, %bb.xq ], [ %i.ved, %bb.xr ], [ %i.vfm, %bb.xs ], [ %i.vgv, %bb.xt ], [ %i.vil, %bb.xu ], [ %i.vjw, %bb.xv ], [ %i.vla, %bb.xw ], [ %i.vma, %bb.xx ], [ %i.vnd, %bb.xy ], [ %i.vog, %bb.xz ], [ %i.vqd, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode3OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit ], [ %i.vri, %bb.yc ], [ %i.vsj, %bb.yd ], [ %i.vtn, %bb.ye ], [ %i.vur, %bb.yf ], [ %i.vwp, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode3OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15785 ], [ %i.vya, %bb.yi ], [ %i.vzf, %bb.yj ], [ %i.wao, %bb.yk ], [ %i.wby, %bb.yl ], [ %i.wdb, %bb.ym ], [ %i.weg, %bb.yn ], [ %i.wfl, %bb.yo ], [ %i.wgp, %bb.yp ], [ %i.wig, %bb.yq ], [ %i.wkd, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode3OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15790 ], [ %i.wli, %bb.yt ], [ %i.wng, %_ZNK12_GLOBAL__N_116ARMMCCodeEmitter25getAddrMode3OffsetOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE.exit15793 ], [ %i.wox, %bb.yw ], [ %i.wqo, %bb.yx ], [ %i.wrx, %bb.yy ], [ %i.wss, %bb.yz ], [ %i.wtn, %bb.za ], [ %i.wtu, %bb.zb ], [ %i.wub, %bb.zc ], [ %i.wuf, %bb.zd ], [ %i.wux, %bb.ze ], [ %i.wvu, %bb.zf ], [ %i.www, %bb.zg ], [ %i.wxu, %bb.zh ], [ %i.wyx, %bb.zi ], [ %i.wzw, %bb.zj ], [ %i.xam, %bb.zk ], [ %i.xbr, %bb.zl ], [ %i.xcf, %bb.zm ], [ %i.xco, %bb.zn ], [ %i.xct, %bb.zo ], [ %i.xdk, %bb.zp ], [ %i.xea, %bb.zq ], [ %i.xei, %bb.zr ], [ %i.xeq, %bb.zs ], [ %i.xfb, %bb.zt ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: noreturn
declare void @_ZN4llvm13MCCodeEmitter21reportUnsupportedInstERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZNK12_GLOBAL__N_116ARMMCCodeEmitter17getMachineOpValueERKN4llvm6MCInstERKNS1_9MCOperandERNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE(ptr nofree readonly captures(none) %.16.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 %.256.val) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %2 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %4 = alloca %"class.llvm::APFloat", align 8     ; 7 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !219
  switch i8 %i.a, label %.unreachabledefault [
    i8 1, label %bb.b
    i8 2, label %bb.d
    i8 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !217  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.16.val, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !203
  %i.h = zext i32 %i.c to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !218
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = and i64 %.256.val, 4294967296
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %.off = add i32 %i.c, -58
  %switch = icmp ult i32 %.off, 16
  %i.m = zext i1 %switch to i32
  %spec.select = shl nuw nsw i32 %i.k, %i.m
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !217
  %i.p = trunc i64 %i.o to i32
  br label %bb.l

.unreachabledefault:                              ; preds = %bb.a
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @_ZN4llvm6detail9IEEEFloatC1Ed(ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %i.r) #15
  call void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEdoubleE) #15
  call void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.s = load ptr, ptr %4, align 8, !tbaa !217, !noalias !222
  %.not.i = icmp eq ptr %i.s, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit

bb.g:                                             ; preds = %bb.e
  call void @_ZNK4llvm6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit

_ZNK4llvm7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.f, %bb.g
  call void @_ZNK4llvm5APInt9getHiBitsEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 32) #15
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !225  ; 2 uses
  %i.v = icmp ult i32 %i.u, 65
  br i1 %i.v, label %_ZNK4llvm5APInt15getLimitedValueEm.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit
  %i.w = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %2) #18
  %i.x = sub i32 %i.u, %i.w
  %i.y = icmp ugt i32 %i.x, 64
  %.pr = load ptr, ptr %2, align 8                ; 3 uses
  br i1 %i.y, label %bb.h, label %.thread

.thread:                                          ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.i4 = load i64, ptr %.pr, align 8, !tbaa !217
  %i.z = trunc i64 %.0.i.i.i4 to i32
  br label %bb.i

_ZNK4llvm5APInt15getLimitedValueEm.exit:          ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit
  %.0.i.i.i = load i64, ptr %2, align 8, !tbaa !217
  %i.aa = trunc i64 %.0.i.i.i to i32
  br label %_ZN4llvm5APIntD2Ev.exit

bb.h:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %i.ab = icmp eq ptr %.pr, null
  br i1 %i.ab, label %_ZN4llvm5APIntD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %i.ac = phi i32 [ %i.z, %.thread ], [ -1, %bb.h ]
  call void @_ZdaPv(ptr noundef nonnull %.pr) #16
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm5APInt15getLimitedValueEm.exit, %bb.h, %bb.i
  %i.ad = phi i32 [ %i.aa, %_ZNK4llvm5APInt15getLimitedValueEm.exit ], [ -1, %bb.h ], [ %i.ac, %bb.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !225
  %i.ag = icmp ugt i32 %i.af, 64
  br i1 %i.ag, label %bb.j, label %_ZN4llvm5APIntD2Ev.exit11

bb.j:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.ah = load ptr, ptr %3, align 8, !tbaa !217   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN4llvm5APIntD2Ev.exit11, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ah) #16
  br label %_ZN4llvm5APIntD2Ev.exit11

_ZN4llvm5APIntD2Ev.exit11:                        ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.j, %bb.k
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.c, %_ZN4llvm5APIntD2Ev.exit11, %bb.d
  %.1 = phi i32 [ %i.ad, %_ZN4llvm5APIntD2Ev.exit11 ], [ %i.p, %bb.d ], [ %spec.select, %bb.c ], [ %i.k, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef range(i32 1, 16) i32 @_ZNK12_GLOBAL__N_116ARMMCCodeEmitter17getVPTMaskOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE(ptr nofree readonly captures(none) %.16.val) unnamed_addr #7 align 2 {
bb.a:
  %.sroa.3.0..16.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.16.val, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..16.val.sroa_idx, align 8, !tbaa !217
  %i.a = trunc i64 %.sroa.3.0.copyload to i32     ; 6 uses
  %i.b = and i32 %i.a, 7
  %.not20 = icmp eq i32 %i.b, 0
  br i1 %.not20, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %i.a, 3
  %i.d = and i32 %i.c, 1                          ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 3                  ; 2 uses
  %i.f = and i32 %i.a, 3
  %.not20.1 = icmp eq i32 %i.f, 0
  br i1 %.not20.1, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i32 %i.a, 2
  %i.h = and i32 %i.g, 1                          ; 2 uses
  %.not.1 = icmp eq i32 %i.h, %i.d
  %i.i = select i1 %.not.1, i32 0, i32 4
  %.1.1 = or disjoint i32 %i.i, %i.e              ; 2 uses
  %i.j = and i32 %i.a, 1
  %.not20.2 = icmp eq i32 %i.j, 0
  br i1 %.not20.2, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i32 %i.a, 1
  %i.l = and i32 %i.k, 1
  %.not.2 = icmp eq i32 %i.l, %i.h
  %i.m = select i1 %.not.2, i32 0, i32 2
  %.1.2 = or disjoint i32 %i.m, %.1.1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.07.lcssa = phi i32 [ 3, %bb.a ], [ 2, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ]
  %.0176.lcssa = phi i32 [ 0, %bb.a ], [ %i.e, %bb.b ], [ %.1.1, %bb.c ], [ %.1.2, %bb.d ]
  %i.n = shl nuw nsw i32 1, %.07.lcssa
  %i.o = or i32 %i.n, %.0176.lcssa
  ret i32 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZNK12_GLOBAL__N_116ARMMCCodeEmitter23getThumbAdrLabelOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE(ptr nofree readonly captures(none) %.16.val, ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.16.val, i64 16
  %.sroa.0.0.copyload = load i8, ptr %i.a, align 8, !tbaa !227
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.16.val, i64 24 ; 2 uses
  %i.b = icmp eq i8 %.sroa.0.0.copyload, 5
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %.sroa.41.0..sroa_idx, align 8, !tbaa !217 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !228  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !229
  %.not.i.i.i = icmp ult i32 %i.e, %i.g
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !prof !230

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_7MCFixupELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %i.c, i64 298732155305984)
  br label %_ZL22getBranchTargetOpValueRKN4llvm6MCInstEjjRNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoE.exit

bb.d:                                             ; preds = %bb.b
  %i.h = zext i32 %i.e to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.h ; 2 uses
  store ptr %i.c, ptr %i.j, align 1
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 298732155305984, ptr %.sroa.3.0..sroa_idx.i.i.i, align 1
  %i.k = load i32, ptr %i.d, align 8, !tbaa !228
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.d, align 8, !tbaa !228
  br label %_ZL22getBranchTargetOpValueRKN4llvm6MCInstEjjRNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoE.exit

bb.e:                                             ; preds = %bb.a
  %.sroa.41.0.copyload = load i64, ptr %.sroa.41.0..sroa_idx, align 8, !tbaa !217
  %i.m = trunc i64 %.sroa.41.0.copyload to i32
  br label %_ZL22getBranchTargetOpValueRKN4llvm6MCInstEjjRNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoE.exit

_ZL22getBranchTargetOpValueRKN4llvm6MCInstEjjRNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoE.exit: ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi i32 [ %i.m, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZNK12_GLOBAL__N_116ARMMCCodeEmitter17getHiLoImmOpValueERKN4llvm6MCInstEjRNS1_15SmallVectorImplINS1_7MCFixupEEERKNS1_15MCSubtargetInfoE(ptr nofree readonly captures(none) %.16.val, i32 noundef range(i32 1, 4) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %.264.val) unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.16.val, i64 %i.a ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !219
  %i.d = icmp eq i8 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.e, align 8, !tbaa !217
  %i.g = trunc i64 %i.f to i32
  br label %_ZL8addFixupRN4llvm15SmallVectorImplINS_7MCFixupEEEjPKNS_6MCExprEt.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !217  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !231  ; 4 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !236
  %.not = icmp eq i8 %i.k, 1
  br i1 %.not, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !237  ; 2 uses
  %i.n = icmp sgt i64 %i.m, 4294967295
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext true) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.p = load i32, ptr %i.o, align 1
  %i.q = trunc i32 %i.p to i16
  %i.r = trunc i64 %i.m to i32                    ; 6 uses
  switch i16 %i.q, label %bb.m [
    i16 4, label %bb.g
    i16 5, label %bb.h
    i16 6, label %bb.i
    i16 7, label %bb.j
    i16 8, label %bb.k
    i16 9, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = lshr i32 %i.r, 16
  br label %_ZL8addFixupRN4llvm15SmallVectorImplINS_7MCFixupEEEjPKNS_6MCExprEt.exit

bb.h:                                             ; preds = %bb.f
  %i.t = and i32 %i.r, 65535
  br label %_ZL8addFixupRN4llvm15SmallVectorImplINS_7MCFixupEEEjPKNS_6MCExprEt.exit

bb.i:                                             ; preds = %bb.f
  %i.u = lshr i32 %i.r, 24
  br label %_ZL8addFixupRN4llvm15SmallVectorImplINS_7MCFixupEEEjPKNS_6MCExprEt.exit

bb.j:                                             ; preds = %bb.f
  %i.v = lshr i32 %i.r, 16
  %i.w = and i32 %i.v, 255
  br label %_ZL8addFixupRN4llvm15SmallVectorImplINS_7MCFixupEEEjPKNS_6MCExprEt.exit

bb.k:                                             ; preds = %bb.f
  %i.x = lshr i32 %i.r, 8
  %i.y = and i32 %i.x, 255
  br label %_ZL8addFixupRN4llvm15SmallVectorImplINS_7MCFixupEEEjPKNS_6MCExprEt.exit

bb.l:                                             ; preds = %bb.f
  %i.z = and i32 %i.r, 255
  br label %_ZL8addFixupRN4llvm15SmallVectorImplINS_7MCFixupEEEjPKNS_6MCExprEt.exit

bb.m:                                             ; preds = %bb.f
  unreachable

bb.n:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = trunc i32 %i.ab to i16
  %i.ad = and i64 %.264.val, 4                    ; 6 uses
  switch i16 %i.ac, label %bb.o [
    i16 4, label %bb.p
    i16 5, label %bb.q
    i16 6, label %bb.r
    i16 7, label %bb.s
    i16 8, label %bb.t
    i16 9, label %bb.u
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %.not6 = icmp eq i64 %i.ad, 0
  %spec.select = select i1 %.not6, i64 17325898072064, i64 17334488006656
  br label %select.unfold

bb.q:                                             ; preds = %bb.n
  %.not5 = icmp eq i64 %i.ad, 0
  %spec.select3 = select i1 %.not5, i64 17330193039360, i64 17338782973952
  br label %select.unfold

bb.r:                                             ; preds = %bb.n
  %i.ae = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %i.ae)
  br label %select.unfold

bb.s:                                             ; preds = %bb.n
  %i.af = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %select.unfold

bb.t:                                             ; preds = %bb.n
  %i.ag = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %i.ag)
  br label %select.unfold

bb.u:                                             ; preds = %bb.n
  %i.ah = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %i.ah)
  br label %select.unfold

select.unfold:                                    ; preds = %bb.q, %bb.p, %bb.r, %bb.s, %bb.t, %bb.u
  %.033 = phi i64 [ %spec.select, %bb.p ], [ %spec.select3, %bb.q ], [ 17343077941248, %bb.r ], [ 17347372908544, %bb.s ], [ 17351667875840, %bb.t ], [ 17355962843136, %bb.u ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !228 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !229
  %.not.i.i = icmp ult i32 %i.aj, %i.al
  br i1 %.not.i.i, label %bb.w, label %bb.v, !prof !230

bb.v:                                             ; preds = %select.unfold
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_7MCFixupELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.j, i64 %.033)
  br label %_ZL8addFixupRN4llvm15SmallVectorImplINS_7MCFixupEEEjPKNS_6MCExprEt.exit

bb.w:                                             ; preds = %select.unfold
  %i.am = zext i32 %i.aj to i64
  %i.an = load ptr, ptr %1, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.am ; 2 uses
  store ptr %i.j, ptr %i.ao, align 1
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %.033, ptr %.sroa.3.0..sroa_idx.i.i, align 1
  %i.ap = load i32, ptr %i.ai, align 8, !tbaa !228
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ai, align 8, !tbaa !228
  br label %_ZL8addFixupRN4llvm15SmallVectorImplINS_7MCFixupEEEjPKNS_6MCExprEt.exit

_ZL8addFixupRN4llvm15SmallVectorImplINS_7MCFixupEEEjPKNS_6MCExprEt.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.w, %bb.v, %bb.b
  %.3 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.w ], [ 0, %bb.v ], [ %i.y, %bb.k ], [ %i.w, %bb.j ], [ %i.u, %bb.i ], [ %i.t, %bb.h ], [ %i.s, %bb.g ], [ %i.z, %bb.l ]
  ret i32 %.3
}

end_hunk_0
