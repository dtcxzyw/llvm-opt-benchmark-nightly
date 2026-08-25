Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.05?download=true
inline.NumInlined: 720
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE19decode_image_streamCsa5QsYiPB8Gl_5image:bb.a
  %.sroa.0.1.i = phi i64 [ %i.rj, %bb.gq ], [ %i.su, %bb.hc ], [ %i.rj, %bb.gw ], [ %i.rj, %bb.gu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1006
  br label %.backedge.i

bb.gw:                                            ; preds = %bb.gv, %bb.gt
  %.sroa.61.0.i.i = phi i16 [ %i.rv, %bb.gt ], [ %i.sd, %bb.gv ] ; 2 uses
  %.sroa.4.0.i.i = phi i8 [ 0, %bb.gt ], [ %i.sc, %bb.gv ] ; 3 uses
  %i.se = icmp ugt i16 %.sroa.61.0.i.i, 279
  br i1 %i.se, label %bb.gx, label %.thread1160.i

bb.gx:                                            ; preds = %bb.gw
  %i.sf = load i8, ptr %i.bf, align 8, !alias.scope !993, !noalias !1021, !noundef !4 ; 2 uses
  %i.sg = icmp ult i8 %i.sf, %.sroa.4.0.i.i
  br i1 %i.sg, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.sh = and i8 %.sroa.4.0.i.i, 63
  %i.si = zext nneg i8 %i.sh to i64
  %i.sj = lshr i64 %.val.i, %i.si
  store i64 %i.sj, ptr %i.bl, align 8, !alias.scope !993, !noalias !1021
  %i.sk = sub nuw i8 %i.sf, %.sroa.4.0.i.i
  store i8 %i.sk, ptr %i.bf, align 8, !alias.scope !993, !noalias !1021
  %i.sl = shl nuw nsw i64 %i.rj, 2                ; 2 uses
  %i.sm = sub nuw nsw i64 %6, %i.sl               ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %5, i64 %i.sl
  %i.so = icmp samesign ugt i64 %i.sm, 3
  br i1 %i.so, label %bb.ha, label %.invoke1375.i, !prof !382

bb.gz:                                            ; preds = %bb.gx
  store i8 15, ptr %0, align 8, !alias.scope !990, !noalias !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1006
  br label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE17decode_image_dataCsa5QsYiPB8Gl_5image.exit

bb.ha:                                            ; preds = %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1006
  %i.sp = add i16 %.sroa.61.0.i.i, -280
  %i.sq = zext i16 %i.sp to i64                   ; 3 uses
  %i.sr = icmp ugt i64 %i.qz, %i.sq
  br i1 %i.sr, label %bb.hb, label %.invoke1377.i

bb.hb:                                            ; preds = %bb.ha
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.sq
  %i.st = load i32, ptr %i.ss, align 1, !noalias !1007
  store i32 %i.st, ptr %i.z, align 4, !noalias !1006
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.sn, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66)
          to label %bb.hc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1007

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1006
  %i.su = add nuw nsw i64 %.sroa.0.0853.i, 2
  br label %.thread1160.i

_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE17get_copy_distanceCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i
  store i8 15, ptr %0, align 8, !alias.scope !990, !noalias !1005
  br label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE17decode_image_dataCsa5QsYiPB8Gl_5image.exit

bb.hd:                                            ; preds = %bb.gj, %bb.gi
  %.sroa.7.0.ph.i = phi i64 [ %i.qk, %bb.gi ], [ %i.qw, %bb.gj ]
  %.sroa.7.0.ph.i.fr = freeze i64 %.sroa.7.0.ph.i ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1006
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 224
  invoke void @_RINvMs_NtCsksn9slvsHfS_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1f_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.sv, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.be)
          to label %bb.he unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1007

bb.he:                                            ; preds = %bb.hd
  %i.sw = load i8, ptr %i.ad, align 8, !range !304, !noalias !1006, !noundef !4 ; 2 uses
  %.not500.i = icmp eq i8 %i.sw, -1
  br i1 %.not500.i, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %.sroa.4366.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %.sroa.4366.0.copyload.i = load i8, ptr %.sroa.4366.0..sroa_idx.i, align 1, !noalias !1006
  %.sroa.5367.0.copyload.i = load i16, ptr %i.ok, align 2, !noalias !1006
  %.sroa.6368.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.sroa.6372.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6372.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6368.0..sroa_idx.i, i64 28, i1 false), !noalias !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1006
  store i8 %i.sw, ptr %0, align 8, !alias.scope !990, !noalias !1005
  %.sroa.4370.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4366.0.copyload.i, ptr %.sroa.4370.0..sroa_idx.i, align 1, !alias.scope !990, !noalias !1005
  %.sroa.5371.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.5367.0.copyload.i, ptr %.sroa.5371.0..sroa_idx.i, align 2, !alias.scope !990, !noalias !1005
  br label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE17decode_image_dataCsa5QsYiPB8Gl_5image.exit

bb.hg:                                            ; preds = %bb.he
  %i.sx = load i16, ptr %i.ok, align 2, !noalias !1006, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1006
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  %i.sy = icmp ult i16 %i.sx, 4
  br i1 %i.sy, label %.thread.i42, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.sz = add i16 %i.sx, -2                       ; 2 uses
  %i.ta = icmp ugt i16 %i.sz, 511
  %i.tb = lshr i16 %i.sz, 1
  %i.tc = trunc nuw i16 %i.tb to i8               ; 3 uses
  br i1 %i.ta, label %bb.hi, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i557.i, !prof !6

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1029
  store i8 2, ptr %i.y, align 1, !noalias !1029
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 43, ptr noundef nonnull %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #23
          to label %.noexc562.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !1007

.noexc562.i:                                      ; preds = %bb.hi
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i557.i: ; preds = %bb.hh
  %i.td = load i8, ptr %i.bf, align 8, !alias.scope !1031, !noalias !1032, !noundef !4 ; 2 uses
  %i.te = icmp ult i8 %i.td, %i.tc
  br i1 %i.te, label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE17get_copy_distanceCsa5QsYiPB8Gl_5image.exit563.i, label %bb.hj

.thread.i42:                                      ; preds = %bb.hg
  %i.tf = add nuw nsw i16 %i.sx, 1
  %i.tg = zext nneg i16 %i.tf to i64
  br label %bb.hk

_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE17get_copy_distanceCsa5QsYiPB8Gl_5image.exit563.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i557.i
  store i8 15, ptr %0, align 8, !alias.scope !990, !noalias !1005
  br label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE17decode_image_dataCsa5QsYiPB8Gl_5image.exit

bb.hj:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i557.i
  %i.th = load i64, ptr %i.bl, align 8, !alias.scope !1031, !noalias !1032, !noundef !4 ; 2 uses
  %i.ti = and i8 %i.tc, 63
  %i.tj = zext nneg i8 %i.ti to i64               ; 3 uses
  %notmask.i558.i = shl nsw i64 -1, %i.tj
  %i.tk = xor i64 %notmask.i558.i, -1
  %i.tl = and i64 %i.th, %i.tk
  %i.tm = and i16 %i.sx, 1
  %i.tn = or disjoint i16 %i.tm, 2
  %i.to = zext nneg i16 %i.tn to i64
  %i.tp = shl i64 %i.to, %i.tj
  %i.tq = lshr i64 %i.th, %i.tj
  store i64 %i.tq, ptr %i.bl, align 8, !alias.scope !1031, !noalias !1032
  %i.tr = sub nuw i8 %i.td, %i.tc
  store i8 %i.tr, ptr %i.bf, align 8, !alias.scope !1031, !noalias !1032
  %i.ts = add i64 %i.tp, 1
  %i.tt = add i64 %i.ts, %i.tl                    ; 3 uses
  %i.tu = icmp ugt i64 %i.tt, 120
  br i1 %i.tu, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %.thread.i42
  %.sroa.7584.0.ph609.i = phi i64 [ %i.tg, %.thread.i42 ], [ %i.tt, %bb.hj ]
  %i.tv = add nsw i64 %.sroa.7584.0.ph609.i, -1   ; 2 uses
  %i.tw = icmp ult i64 %i.tv, 120
  br i1 %i.tw, label %bb.hm, label %.invoke.i

bb.hl:                                            ; preds = %bb.hj
  %i.tx = add i64 %i.tt, -120
  br label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE22plane_code_to_distanceCsa5QsYiPB8Gl_5image.exit.i

bb.hm:                                            ; preds = %bb.hk
  %i.ty = getelementptr inbounds nuw [2 x i8], ptr @90, i64 %i.tv ; 2 uses
  %i.tz = load i8, ptr %i.ty, align 1, !noalias !1006, !noundef !4
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ty, i64 1
  %i.ub = load i8, ptr %i.ua, align 1, !noalias !1006, !noundef !4
  %i.uc = sext i8 %i.tz to i32
  %i.ud = sext i8 %i.ub to i32
  %i.ue = mul nsw i32 %i.ud, %i.ol
  %i.uf = add nsw i32 %i.ue, %i.uc
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.uf, i32 1)
  %spec.select.i.i40 = zext nneg i32 %narrow.i.i to i64
  br label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE22plane_code_to_distanceCsa5QsYiPB8Gl_5image.exit.i

.invoke.i:                                        ; preds = %bb.ji, %bb.iw, %bb.hk, %bb.gs, %bb.fq, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i, %bb.ff
  %i.ug = phi i64 [ %i.yp, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i ], [ 0, %bb.ff ], [ %i.pf, %bb.fq ], [ %i.aan, %bb.iw ], [ %i.abu, %bb.ji ], [ -1, %bb.hk ], [ %i.rq, %bb.gs ]
  %i.uh = phi i64 [ %i.ye, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i ], [ 0, %bb.ff ], [ %i.pg, %bb.fq ], [ %i.aao, %bb.iw ], [ %i.abv, %bb.ji ], [ 120, %bb.hk ], [ %i.rs, %bb.gs ]
  %i.ui = phi ptr [ @97, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i ], [ @130, %bb.ff ], [ @130, %bb.fq ], [ @97, %bb.iw ], [ @97, %bb.ji ], [ @91, %bb.hk ], [ @22, %bb.gs ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ug, i64 noundef %i.uh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ui) #23
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !1007

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE22plane_code_to_distanceCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.hm, %bb.hl
  %.sroa.0.0.i564.i = phi i64 [ %i.tx, %bb.hl ], [ %spec.select.i.i40, %bb.hm ] ; 6 uses
  %i.uj = icmp ult i64 %.sroa.0.0853.i, %.sroa.0.0.i564.i
  %i.uk = sub nsw i64 %i.nj, %.sroa.0.0853.i
  %i.ul = icmp ult i64 %i.uk, %.sroa.7.0.ph.i.fr
  %or.cond522.i = select i1 %i.uj, i1 true, i1 %i.ul
  br i1 %or.cond522.i, label %bb.id, label %bb.hn

bb.hn:                                            ; preds = %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE22plane_code_to_distanceCsa5QsYiPB8Gl_5image.exit.i
  %i.um = icmp eq i64 %.sroa.0.0.i564.i, 1
  br i1 %i.um, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1006
  %i.un = shl nuw nsw i64 %.sroa.0.0853.i, 2      ; 2 uses
  %i.uo = add nsw i64 %i.un, -4                   ; 4 uses
  %i.up = icmp ugt i64 %i.uo, %6
  br i1 %i.up, label %.invoke1375.i, label %bb.hq, !prof !6

bb.hp:                                            ; preds = %bb.hn
  %i.uq = add nuw nsw i64 %.sroa.0.0853.i, 3
  %i.ur = add nuw nsw i64 %i.uq, %.sroa.7.0.ph.i.fr
  %.not502.i = icmp ugt i64 %i.ur, %i.nj
  br i1 %.not502.i, label %.lr.ph.i, label %bb.hv

bb.hq:                                            ; preds = %bb.ho
  %i.us = sub nuw nsw i64 %6, %i.uo               ; 2 uses
  %i.ut = icmp samesign ugt i64 %i.us, 3
  br i1 %i.ut, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit524.i, label %.invoke1375.i, !prof !382

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit524.i: ; preds = %bb.hq
  %i.uu = getelementptr inbounds nuw i8, ptr %5, i64 %i.uo
  %.sroa.0385.0.copyload.i = load i32, ptr %i.uu, align 1, !alias.scope !997, !noalias !1033
  store i32 %.sroa.0385.0.copyload.i, ptr %i.ac, align 4, !noalias !1006
  %i.uv = sub nsw i64 %6, %i.un
  %i.uw = lshr i64 %i.uv, 2
  %exitcond1075.not.i1520 = icmp eq i64 %.sroa.7.0.ph.i.fr, 0
  br i1 %exitcond1075.not.i1520, label %._crit_edge1523, label %.lr.ph1522

bb.hr:                                            ; preds = %bb.hu
  %exitcond1075.not.i = icmp eq i64 %i.ux, %.sroa.7.0.ph.i.fr
  br i1 %exitcond1075.not.i, label %._crit_edge1523, label %.lr.ph1522

._crit_edge1523:                                  ; preds = %bb.hr, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit524.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1006
  br label %.loopexit621.i

.lr.ph1522:                                       ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit524.i, %bb.hr
  %.sroa.0386.0.i1521 = phi i64 [ %i.ux, %bb.hr ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit524.i ] ; 3 uses
  %i.ux = add nuw nsw i64 %.sroa.0386.0.i1521, 1  ; 2 uses
  %i.uy = add i64 %.sroa.0386.0.i1521, %.sroa.0.0853.i
  %i.uz = shl i64 %i.uy, 2                        ; 4 uses
  %7 = icmp ugt i64 %i.uz, %6
  br i1 %7, label %.invoke1375.i, label %bb.hs, !prof !6

.loopexit621.i:                                   ; preds = %_RNvMs0_NtCsksn9slvsHfS_10image_webp8losslessNtB5_10ColorCache6insert.exit549.i, %.thread610.i, %._crit_edge1523
  %i.va = add nuw nsw i64 %.sroa.7.0.ph.i.fr, %.sroa.0.0853.i
  br label %.backedge.i

bb.hs:                                            ; preds = %.lr.ph1522
  %exitcond1076.not.i = icmp eq i64 %.sroa.0386.0.i1521, %i.uw
  br i1 %exitcond1076.not.i, label %bb.ht, label %bb.hu, !prof !6

bb.ht:                                            ; preds = %bb.hs
  %i.vb = sub nuw nsw i64 %6, %i.uz
  br label %.invoke1375.i

bb.hu:                                            ; preds = %bb.hs
  %i.vc = getelementptr inbounds nuw i8, ptr %5, i64 %i.uz
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.vc, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70)
          to label %bb.hr unwind label %.loopexit.i, !noalias !1007

.lr.ph.i:                                         ; preds = %bb.hp
  %i.vd = shl i64 %.sroa.7.0.ph.i.fr, 2           ; 2 uses
  %i.ve = shl nuw nsw i64 %.sroa.0.0853.i, 2      ; 5 uses
  %i.vf = shl nuw nsw i64 %.sroa.0.0.i564.i, 2    ; 5 uses
  %i.vg = add i64 %i.vd, -1
  %i.vh = sub nsw i64 %i.ve, %i.vf
  %i.vi = call i64 @llvm.umax.i64(i64 %6, i64 %i.vh)
  %i.vj = add i64 %i.vi, %i.vf
  %i.vk = sub i64 %i.vj, %i.ve
  %i.vl = call i64 @llvm.usub.sat.i64(i64 %6, i64 %i.ve)
  %i.vm = call i64 @llvm.umin.i64(i64 %i.vk, i64 %i.vl)
  %i.vn = call i64 @llvm.umin.i64(i64 %i.vg, i64 %i.vm) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.vn, 16
  %i.vo = add nsw i64 %i.vf, -1
  %diff.check = icmp ult i64 %i.vo, 15
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i
  %.sroa.0390.0847.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.vp = add nuw i64 %i.vn, 1                    ; 2 uses
  %i.vq = and i64 %i.vp, 15                       ; 2 uses
  %i.vr = icmp eq i64 %i.vq, 0
  %i.vs = select i1 %i.vr, i64 16, i64 %i.vq
  %n.vec = sub i64 %i.vp, %i.vs                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.vt = add nuw nsw i64 %index, %i.ve           ; 2 uses
  %i.vu = sub i64 %i.vt, %i.vf
  %i.vv = getelementptr inbounds nuw i8, ptr %5, i64 %i.vu
  %wide.load = load <16 x i8>, ptr %i.vv, align 1, !alias.scope !997, !noalias !1033
  %i.vw = getelementptr inbounds nuw i8, ptr %5, i64 %i.vt
  store <16 x i8> %wide.load, ptr %i.vw, align 1, !alias.scope !997, !noalias !1033
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.vx = icmp eq i64 %index.next, %n.vec
  br i1 %i.vx, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1034

bb.hv:                                            ; preds = %bb.hp
  %i.vy = sub nsw i64 %.sroa.0.0853.i, %.sroa.0.0.i564.i
  %i.vz = shl nsw i64 %i.vy, 2                    ; 4 uses
  %i.wa = add nsw i64 %i.vz, 16
  %i.wb = shl nuw nsw i64 %.sroa.0.0853.i, 2      ; 4 uses
  %i.wc = invoke { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsa5QsYiPB8Gl_5image(i64 noundef %i.vz, i64 noundef %i.wa, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @75)
          to label %.noexc567.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1007 ; 2 uses

.noexc567.i:                                      ; preds = %bb.hv
  %i.wd = extractvalue { i64, i64 } %i.wc, 0      ; 2 uses
  %i.we = extractvalue { i64, i64 } %i.wc, 1
  %i.wf = sub i64 %i.we, %i.wd                    ; 2 uses
  %i.wg = sub i64 %6, %i.wf
  %.not.i566.i = icmp ugt i64 %i.wb, %i.wg
  br i1 %.not.i566.i, label %.loopexit1072.invoke.i, label %bb.hy, !prof !6

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.hx
  %.sroa.0390.0847.i = phi i64 [ %i.wh, %bb.hx ], [ %.sroa.0390.0847.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.wh = add nuw i64 %.sroa.0390.0847.i, 1       ; 2 uses
  %i.wi = add nuw nsw i64 %.sroa.0390.0847.i, %i.ve ; 4 uses
  %i.wj = sub i64 %i.wi, %i.vf                    ; 3 uses
  %i.wk = icmp ult i64 %i.wj, %6
  br i1 %i.wk, label %bb.hw, label %.invoke1377.i

.thread610.i:                                     ; preds = %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i, %bb.hx, %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i.preheader, %.preheader.preheader.peel.i, %bb.hy
  %i.wl = load i64, ptr %i.of, align 8, !range !213, !alias.scope !995, !noalias !1003, !noundef !4
  %.not505.i = icmp eq i64 %i.wl, -1
  br i1 %.not505.i, label %.loopexit621.i, label %bb.ib

bb.hw:                                            ; preds = %scalar.ph
  %i.wm = icmp ult i64 %i.wi, %6
  br i1 %i.wm, label %bb.hx, label %.invoke1377.i

bb.hx:                                            ; preds = %bb.hw
  %i.wn = getelementptr inbounds nuw i8, ptr %5, i64 %i.wj
  %i.wo = load i8, ptr %i.wn, align 1, !alias.scope !997, !noalias !1033, !noundef !4
  %i.wp = getelementptr inbounds nuw i8, ptr %5, i64 %i.wi
  store i8 %i.wo, ptr %i.wp, align 1, !alias.scope !997, !noalias !1033
  %exitcond1074.not.i = icmp eq i64 %i.wh, %i.vd
  br i1 %exitcond1074.not.i, label %.thread610.i, label %scalar.ph, !llvm.loop !1035

bb.hy:                                            ; preds = %.noexc567.i
  %i.wq = getelementptr inbounds nuw i8, ptr %5, i64 %i.wd
  %i.wr = getelementptr inbounds nuw i8, ptr %5, i64 %i.wb
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.wr, ptr nonnull align 1 %i.wq, i64 %i.wf, i1 false), !alias.scope !1036, !noalias !1039
  %i.ws = icmp samesign ugt i64 %.sroa.7.0.ph.i.fr, 4
  %i.wt = icmp ult i64 %.sroa.0.0.i564.i, 4
  %or.cond.i41 = or i1 %i.ws, %i.wt
  br i1 %or.cond.i41, label %.preheader.preheader.peel.i, label %.thread610.i

.preheader.preheader.peel.i:                      ; preds = %bb.hy
  %i.wu = shl nuw nsw i64 %.sroa.0.0.i564.i, 2
  %..i569.i = call noundef i64 @llvm.umin.i64(i64 %i.wu, i64 16) ; 5 uses
  %.sroa.7.0.ph.tr.i = trunc i64 %.sroa.7.0.ph.i.fr to i16
  %.lhs.trunc.i = shl i16 %.sroa.7.0.ph.tr.i, 2   ; 2 uses
  %.rhs.trunc.i = trunc nuw nsw i64 %..i569.i to i16 ; 2 uses
  %i.wv = udiv i16 %.lhs.trunc.i, %.rhs.trunc.i
  %.zext.i = zext nneg i16 %i.wv to i64
  %i.ww = urem i16 %.lhs.trunc.i, %.rhs.trunc.i
  %.not10.i.i.i = icmp ne i16 %i.ww, 0
  %i.wx = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.wx, %.zext.i ; 2 uses
  %switch.i = icmp samesign ult i64 %.sroa.05.0.i.i.i, 2
  br i1 %switch.i, label %.thread610.i, label %bb.hz

bb.hz:                                            ; preds = %.preheader.preheader.peel.i
  %i.wy = add nsw i64 %..i569.i, %i.vz            ; 2 uses
  %i.wz = add nsw i64 %i.wy, 16
  %i.xa = invoke { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsa5QsYiPB8Gl_5image(i64 noundef %i.wy, i64 noundef %i.wz, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @78)
          to label %.noexc574.peel.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.i, !noalias !1007 ; 2 uses

.noexc574.peel.i:                                 ; preds = %bb.hz
  %i.xb = add nuw nsw i64 %..i569.i, %i.wb        ; 2 uses
  %i.xc = extractvalue { i64, i64 } %i.xa, 0      ; 2 uses
  %i.xd = extractvalue { i64, i64 } %i.xa, 1
  %i.xe = sub i64 %i.xd, %i.xc                    ; 2 uses
  %i.xf = sub i64 %6, %i.xe
  %.not.i573.peel.i = icmp ugt i64 %i.xb, %i.xf
  br i1 %.not.i573.peel.i, label %.loopexit1072.invoke.i, label %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i.preheader, !prof !6

_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i.preheader: ; preds = %.noexc574.peel.i
  %i.xg = add nsw i64 %.sroa.05.0.i.i.i, -2       ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %5, i64 %i.xc
  %i.xi = getelementptr inbounds nuw i8, ptr %5, i64 %i.xb
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.xi, ptr nonnull align 1 %i.xh, i64 %i.xe, i1 false), !alias.scope !1041, !noalias !1044
  %.not504.i1516 = icmp eq i64 %i.xg, 0
  br i1 %.not504.i1516, label %.thread610.i, label %.lr.ph1519

.lr.ph1519:                                       ; preds = %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i.preheader
  %.sroa.5591.1.peel.i = shl nuw nsw i64 %..i569.i, 1
  br label %bb.ia

_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i: ; preds = %.noexc574.i
  %i.xj = add nsw i64 %.sroa.11.0.i1518, -1       ; 2 uses
  %.sroa.5591.1.i = add nuw nsw i64 %.sroa.5591.0.i1517, %..i569.i
  %i.xk = getelementptr inbounds nuw i8, ptr %5, i64 %i.xq
  %i.xl = getelementptr inbounds nuw i8, ptr %5, i64 %i.xp
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.xl, ptr nonnull align 1 %i.xk, i64 %i.xs, i1 false), !alias.scope !1041, !noalias !1044
  %.not504.i = icmp eq i64 %i.xj, 0
  br i1 %.not504.i, label %.thread610.i, label %bb.ia, !llvm.loop !1046

bb.ia:                                            ; preds = %.lr.ph1519, %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i
  %.sroa.11.0.i1518 = phi i64 [ %i.xg, %.lr.ph1519 ], [ %i.xj, %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i ]
  %.sroa.5591.0.i1517 = phi i64 [ %.sroa.5591.1.peel.i, %.lr.ph1519 ], [ %.sroa.5591.1.i, %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i ] ; 3 uses
  %i.xm = add i64 %.sroa.5591.0.i1517, %i.vz      ; 2 uses
  %i.xn = add i64 %i.xm, 16
  %i.xo = invoke { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsa5QsYiPB8Gl_5image(i64 noundef %i.xm, i64 noundef %i.xn, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @78)
          to label %.noexc574.i unwind label %.loopexit.split-lp.loopexit.loopexit.i, !noalias !1007 ; 2 uses

.noexc574.i:                                      ; preds = %bb.ia
  %i.xp = add nuw i64 %.sroa.5591.0.i1517, %i.wb  ; 2 uses
  %i.xq = extractvalue { i64, i64 } %i.xo, 0      ; 2 uses
  %i.xr = extractvalue { i64, i64 } %i.xo, 1
  %i.xs = sub i64 %i.xr, %i.xq                    ; 2 uses
  %i.xt = sub i64 %6, %i.xs
  %.not.i573.i = icmp ugt i64 %i.xp, %i.xt
  br i1 %.not.i573.i, label %.loopexit1072.invoke.i, label %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i, !prof !6, !llvm.loop !1046

.loopexit1072.invoke.i:                           ; preds = %.noexc574.peel.i, %.noexc567.i, %.noexc574.i
  %i.xu = phi ptr [ @78, %.noexc574.i ], [ @78, %.noexc574.peel.i ], [ @75, %.noexc567.i ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xu) #23
          to label %.loopexit1072.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !1007

.loopexit1072.cont.i:                             ; preds = %.loopexit1072.invoke.i
  unreachable

bb.ib:                                            ; preds = %.thread610.i
  %i.xv = shl nuw nsw i64 %.sroa.0.0853.i, 2      ; 4 uses
  %i.xw = icmp samesign ugt i64 %i.xv, %6
  br i1 %i.xw, label %.invoke1375.i, label %bb.ic, !prof !6

bb.ic:                                            ; preds = %bb.ib
  %i.xx = sub nuw nsw i64 %6, %i.xv               ; 2 uses
  %i.xy = shl nuw nsw i64 %.sroa.7.0.ph.i.fr, 2   ; 3 uses
  %.not506.i = icmp samesign ugt i64 %i.xy, %i.xx
  br i1 %.not506.i, label %.invoke1375.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.lr.ph.i, !prof !46

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.ic
  %i.xz = getelementptr inbounds nuw i8, ptr %5, i64 %i.xv
  %i.ya = load i8, ptr %i.og, align 8, !alias.scope !1048, !noalias !1003, !noundef !4
end_hunk_0
begin_hunk_1_@_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE19decode_image_streamCsa5QsYiPB8Gl_5image:bb.a
  %.sroa.0.1.i = phi i64 [ %i.rj, %bb.gq ], [ %i.su, %bb.hc ], [ %i.rj, %bb.gw ], [ %i.rj, %bb.gu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1250
  br label %.backedge.i

bb.gw:                                            ; preds = %bb.gv, %bb.gt
  %.sroa.61.0.i.i = phi i16 [ %i.rv, %bb.gt ], [ %i.sd, %bb.gv ] ; 2 uses
  %.sroa.4.0.i.i = phi i8 [ 0, %bb.gt ], [ %i.sc, %bb.gv ] ; 3 uses
  %i.se = icmp ugt i16 %.sroa.61.0.i.i, 279
  br i1 %i.se, label %bb.gx, label %.thread1160.i

bb.gx:                                            ; preds = %bb.gw
  %i.sf = load i8, ptr %i.bf, align 8, !alias.scope !1237, !noalias !1265, !noundef !4 ; 2 uses
  %i.sg = icmp ult i8 %i.sf, %.sroa.4.0.i.i
  br i1 %i.sg, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.sh = and i8 %.sroa.4.0.i.i, 63
  %i.si = zext nneg i8 %i.sh to i64
  %i.sj = lshr i64 %.val.i, %i.si
  store i64 %i.sj, ptr %i.bl, align 8, !alias.scope !1237, !noalias !1265
  %i.sk = sub nuw i8 %i.sf, %.sroa.4.0.i.i
  store i8 %i.sk, ptr %i.bf, align 8, !alias.scope !1237, !noalias !1265
  %i.sl = shl nuw nsw i64 %i.rj, 2                ; 2 uses
  %i.sm = sub nuw nsw i64 %6, %i.sl               ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %5, i64 %i.sl
  %i.so = icmp samesign ugt i64 %i.sm, 3
  br i1 %i.so, label %bb.ha, label %.invoke1375.i, !prof !382

bb.gz:                                            ; preds = %bb.gx
  store i8 15, ptr %0, align 8, !alias.scope !1234, !noalias !1249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1250
  br label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE17decode_image_dataCsa5QsYiPB8Gl_5image.exit

bb.ha:                                            ; preds = %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1250
  %i.sp = add i16 %.sroa.61.0.i.i, -280
  %i.sq = zext i16 %i.sp to i64                   ; 3 uses
  %i.sr = icmp ugt i64 %i.qz, %i.sq
  br i1 %i.sr, label %bb.hb, label %.invoke1377.i

bb.hb:                                            ; preds = %bb.ha
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.sq
  %i.st = load i32, ptr %i.ss, align 1, !noalias !1251
  store i32 %i.st, ptr %i.z, align 4, !noalias !1250
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.sn, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66)
          to label %bb.hc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1251

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1250
  %i.su = add nuw nsw i64 %.sroa.0.0853.i, 2
  br label %.thread1160.i

_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE17get_copy_distanceCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i
  store i8 15, ptr %0, align 8, !alias.scope !1234, !noalias !1249
  br label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE17decode_image_dataCsa5QsYiPB8Gl_5image.exit

bb.hd:                                            ; preds = %bb.gj, %bb.gi
  %.sroa.7.0.ph.i = phi i64 [ %i.qk, %bb.gi ], [ %i.qw, %bb.gj ]
  %.sroa.7.0.ph.i.fr = freeze i64 %.sroa.7.0.ph.i ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1250
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 224
  invoke void @_RINvMs_NtCsksn9slvsHfS_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1g_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.sv, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %bb.he unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1251

bb.he:                                            ; preds = %bb.hd
  %i.sw = load i8, ptr %i.ad, align 8, !range !304, !noalias !1250, !noundef !4 ; 2 uses
  %.not500.i = icmp eq i8 %i.sw, -1
  br i1 %.not500.i, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %.sroa.4366.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %.sroa.4366.0.copyload.i = load i8, ptr %.sroa.4366.0..sroa_idx.i, align 1, !noalias !1250
  %.sroa.5367.0.copyload.i = load i16, ptr %i.ok, align 2, !noalias !1250
  %.sroa.6368.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.sroa.6372.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6372.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6368.0..sroa_idx.i, i64 28, i1 false), !noalias !1249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1250
  store i8 %i.sw, ptr %0, align 8, !alias.scope !1234, !noalias !1249
  %.sroa.4370.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4366.0.copyload.i, ptr %.sroa.4370.0..sroa_idx.i, align 1, !alias.scope !1234, !noalias !1249
  %.sroa.5371.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.5367.0.copyload.i, ptr %.sroa.5371.0..sroa_idx.i, align 2, !alias.scope !1234, !noalias !1249
  br label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE17decode_image_dataCsa5QsYiPB8Gl_5image.exit

bb.hg:                                            ; preds = %bb.he
  %i.sx = load i16, ptr %i.ok, align 2, !noalias !1250, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1250
  call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %i.sy = icmp ult i16 %i.sx, 4
  br i1 %i.sy, label %.thread.i42, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.sz = add i16 %i.sx, -2                       ; 2 uses
  %i.ta = icmp ugt i16 %i.sz, 511
  %i.tb = lshr i16 %i.sz, 1
  %i.tc = trunc nuw i16 %i.tb to i8               ; 3 uses
  br i1 %i.ta, label %bb.hi, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i557.i, !prof !6

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1273
  store i8 2, ptr %i.y, align 1, !noalias !1273
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 43, ptr noundef nonnull %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #23
          to label %.noexc562.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !1251

.noexc562.i:                                      ; preds = %bb.hi
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i557.i: ; preds = %bb.hh
  %i.td = load i8, ptr %i.bf, align 8, !alias.scope !1275, !noalias !1276, !noundef !4 ; 2 uses
  %i.te = icmp ult i8 %i.td, %i.tc
  br i1 %i.te, label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE17get_copy_distanceCsa5QsYiPB8Gl_5image.exit563.i, label %bb.hj

.thread.i42:                                      ; preds = %bb.hg
  %i.tf = add nuw nsw i16 %i.sx, 1
  %i.tg = zext nneg i16 %i.tf to i64
  br label %bb.hk

_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE17get_copy_distanceCsa5QsYiPB8Gl_5image.exit563.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i557.i
  store i8 15, ptr %0, align 8, !alias.scope !1234, !noalias !1249
  br label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE17decode_image_dataCsa5QsYiPB8Gl_5image.exit

bb.hj:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i557.i
  %i.th = load i64, ptr %i.bl, align 8, !alias.scope !1275, !noalias !1276, !noundef !4 ; 2 uses
  %i.ti = and i8 %i.tc, 63
  %i.tj = zext nneg i8 %i.ti to i64               ; 3 uses
  %notmask.i558.i = shl nsw i64 -1, %i.tj
  %i.tk = xor i64 %notmask.i558.i, -1
  %i.tl = and i64 %i.th, %i.tk
  %i.tm = and i16 %i.sx, 1
  %i.tn = or disjoint i16 %i.tm, 2
  %i.to = zext nneg i16 %i.tn to i64
  %i.tp = shl i64 %i.to, %i.tj
  %i.tq = lshr i64 %i.th, %i.tj
  store i64 %i.tq, ptr %i.bl, align 8, !alias.scope !1275, !noalias !1276
  %i.tr = sub nuw i8 %i.td, %i.tc
  store i8 %i.tr, ptr %i.bf, align 8, !alias.scope !1275, !noalias !1276
  %i.ts = add i64 %i.tp, 1
  %i.tt = add i64 %i.ts, %i.tl                    ; 3 uses
  %i.tu = icmp ugt i64 %i.tt, 120
  br i1 %i.tu, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %.thread.i42
  %.sroa.7584.0.ph609.i = phi i64 [ %i.tg, %.thread.i42 ], [ %i.tt, %bb.hj ]
  %i.tv = add nsw i64 %.sroa.7584.0.ph609.i, -1   ; 2 uses
  %i.tw = icmp ult i64 %i.tv, 120
  br i1 %i.tw, label %bb.hm, label %.invoke.i

bb.hl:                                            ; preds = %bb.hj
  %i.tx = add i64 %i.tt, -120
  br label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE22plane_code_to_distanceCsa5QsYiPB8Gl_5image.exit.i

bb.hm:                                            ; preds = %bb.hk
  %i.ty = getelementptr inbounds nuw [2 x i8], ptr @90, i64 %i.tv ; 2 uses
  %i.tz = load i8, ptr %i.ty, align 1, !noalias !1250, !noundef !4
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ty, i64 1
  %i.ub = load i8, ptr %i.ua, align 1, !noalias !1250, !noundef !4
  %i.uc = sext i8 %i.tz to i32
  %i.ud = sext i8 %i.ub to i32
  %i.ue = mul nsw i32 %i.ud, %i.ol
  %i.uf = add nsw i32 %i.ue, %i.uc
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.uf, i32 1)
  %spec.select.i.i40 = zext nneg i32 %narrow.i.i to i64
  br label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE22plane_code_to_distanceCsa5QsYiPB8Gl_5image.exit.i

.invoke.i:                                        ; preds = %bb.ji, %bb.iw, %bb.hk, %bb.gs, %bb.fq, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i, %bb.ff
  %i.ug = phi i64 [ %i.yp, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i ], [ 0, %bb.ff ], [ %i.pf, %bb.fq ], [ %i.aan, %bb.iw ], [ %i.abu, %bb.ji ], [ -1, %bb.hk ], [ %i.rq, %bb.gs ]
  %i.uh = phi i64 [ %i.ye, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i ], [ 0, %bb.ff ], [ %i.pg, %bb.fq ], [ %i.aao, %bb.iw ], [ %i.abv, %bb.ji ], [ 120, %bb.hk ], [ %i.rs, %bb.gs ]
  %i.ui = phi ptr [ @97, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i ], [ @130, %bb.ff ], [ @130, %bb.fq ], [ @97, %bb.iw ], [ @97, %bb.ji ], [ @91, %bb.hk ], [ @22, %bb.gs ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ug, i64 noundef %i.uh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ui) #23
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !1251

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE22plane_code_to_distanceCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.hm, %bb.hl
  %.sroa.0.0.i564.i = phi i64 [ %i.tx, %bb.hl ], [ %spec.select.i.i40, %bb.hm ] ; 6 uses
  %i.uj = icmp ult i64 %.sroa.0.0853.i, %.sroa.0.0.i564.i
  %i.uk = sub nsw i64 %i.nj, %.sroa.0.0853.i
  %i.ul = icmp ult i64 %i.uk, %.sroa.7.0.ph.i.fr
  %or.cond522.i = select i1 %i.uj, i1 true, i1 %i.ul
  br i1 %or.cond522.i, label %bb.id, label %bb.hn

bb.hn:                                            ; preds = %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE22plane_code_to_distanceCsa5QsYiPB8Gl_5image.exit.i
  %i.um = icmp eq i64 %.sroa.0.0.i564.i, 1
  br i1 %i.um, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1250
  %i.un = shl nuw nsw i64 %.sroa.0.0853.i, 2      ; 2 uses
  %i.uo = add nsw i64 %i.un, -4                   ; 4 uses
  %i.up = icmp ugt i64 %i.uo, %6
  br i1 %i.up, label %.invoke1375.i, label %bb.hq, !prof !6

bb.hp:                                            ; preds = %bb.hn
  %i.uq = add nuw nsw i64 %.sroa.0.0853.i, 3
  %i.ur = add nuw nsw i64 %i.uq, %.sroa.7.0.ph.i.fr
  %.not502.i = icmp ugt i64 %i.ur, %i.nj
  br i1 %.not502.i, label %.lr.ph.i, label %bb.hv

bb.hq:                                            ; preds = %bb.ho
  %i.us = sub nuw nsw i64 %6, %i.uo               ; 2 uses
  %i.ut = icmp samesign ugt i64 %i.us, 3
  br i1 %i.ut, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit524.i, label %.invoke1375.i, !prof !382

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit524.i: ; preds = %bb.hq
  %i.uu = getelementptr inbounds nuw i8, ptr %5, i64 %i.uo
  %.sroa.0385.0.copyload.i = load i32, ptr %i.uu, align 1, !alias.scope !1241, !noalias !1277
  store i32 %.sroa.0385.0.copyload.i, ptr %i.ac, align 4, !noalias !1250
  %i.uv = sub nsw i64 %6, %i.un
  %i.uw = lshr i64 %i.uv, 2
  %exitcond1075.not.i1520 = icmp eq i64 %.sroa.7.0.ph.i.fr, 0
  br i1 %exitcond1075.not.i1520, label %._crit_edge1523, label %.lr.ph1522

bb.hr:                                            ; preds = %bb.hu
  %exitcond1075.not.i = icmp eq i64 %i.ux, %.sroa.7.0.ph.i.fr
  br i1 %exitcond1075.not.i, label %._crit_edge1523, label %.lr.ph1522

._crit_edge1523:                                  ; preds = %bb.hr, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit524.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1250
  br label %.loopexit621.i

.lr.ph1522:                                       ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit524.i, %bb.hr
  %.sroa.0386.0.i1521 = phi i64 [ %i.ux, %bb.hr ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit524.i ] ; 3 uses
  %i.ux = add nuw nsw i64 %.sroa.0386.0.i1521, 1  ; 2 uses
  %i.uy = add i64 %.sroa.0386.0.i1521, %.sroa.0.0853.i
  %i.uz = shl i64 %i.uy, 2                        ; 4 uses
  %7 = icmp ugt i64 %i.uz, %6
  br i1 %7, label %.invoke1375.i, label %bb.hs, !prof !6

.loopexit621.i:                                   ; preds = %_RNvMs0_NtCsksn9slvsHfS_10image_webp8losslessNtB5_10ColorCache6insert.exit549.i, %.thread610.i, %._crit_edge1523
  %i.va = add nuw nsw i64 %.sroa.7.0.ph.i.fr, %.sroa.0.0853.i
  br label %.backedge.i

bb.hs:                                            ; preds = %.lr.ph1522
  %exitcond1076.not.i = icmp eq i64 %.sroa.0386.0.i1521, %i.uw
  br i1 %exitcond1076.not.i, label %bb.ht, label %bb.hu, !prof !6

bb.ht:                                            ; preds = %bb.hs
  %i.vb = sub nuw nsw i64 %6, %i.uz
  br label %.invoke1375.i

bb.hu:                                            ; preds = %bb.hs
  %i.vc = getelementptr inbounds nuw i8, ptr %5, i64 %i.uz
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.vc, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70)
          to label %bb.hr unwind label %.loopexit.i, !noalias !1251

.lr.ph.i:                                         ; preds = %bb.hp
  %i.vd = shl i64 %.sroa.7.0.ph.i.fr, 2           ; 2 uses
  %i.ve = shl nuw nsw i64 %.sroa.0.0853.i, 2      ; 5 uses
  %i.vf = shl nuw nsw i64 %.sroa.0.0.i564.i, 2    ; 5 uses
  %i.vg = add i64 %i.vd, -1
  %i.vh = sub nsw i64 %i.ve, %i.vf
  %i.vi = call i64 @llvm.umax.i64(i64 %6, i64 %i.vh)
  %i.vj = add i64 %i.vi, %i.vf
  %i.vk = sub i64 %i.vj, %i.ve
  %i.vl = call i64 @llvm.usub.sat.i64(i64 %6, i64 %i.ve)
  %i.vm = call i64 @llvm.umin.i64(i64 %i.vk, i64 %i.vl)
  %i.vn = call i64 @llvm.umin.i64(i64 %i.vg, i64 %i.vm) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.vn, 16
  %i.vo = add nsw i64 %i.vf, -1
  %diff.check = icmp ult i64 %i.vo, 15
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i
  %.sroa.0390.0847.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.vp = add nuw i64 %i.vn, 1                    ; 2 uses
  %i.vq = and i64 %i.vp, 15                       ; 2 uses
  %i.vr = icmp eq i64 %i.vq, 0
  %i.vs = select i1 %i.vr, i64 16, i64 %i.vq
  %n.vec = sub i64 %i.vp, %i.vs                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.vt = add nuw nsw i64 %index, %i.ve           ; 2 uses
  %i.vu = sub i64 %i.vt, %i.vf
  %i.vv = getelementptr inbounds nuw i8, ptr %5, i64 %i.vu
  %wide.load = load <16 x i8>, ptr %i.vv, align 1, !alias.scope !1241, !noalias !1277
  %i.vw = getelementptr inbounds nuw i8, ptr %5, i64 %i.vt
  store <16 x i8> %wide.load, ptr %i.vw, align 1, !alias.scope !1241, !noalias !1277
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.vx = icmp eq i64 %index.next, %n.vec
  br i1 %i.vx, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1278

bb.hv:                                            ; preds = %bb.hp
  %i.vy = sub nsw i64 %.sroa.0.0853.i, %.sroa.0.0.i564.i
  %i.vz = shl nsw i64 %i.vy, 2                    ; 4 uses
  %i.wa = add nsw i64 %i.vz, 16
  %i.wb = shl nuw nsw i64 %.sroa.0.0853.i, 2      ; 4 uses
  %i.wc = invoke { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsa5QsYiPB8Gl_5image(i64 noundef %i.vz, i64 noundef %i.wa, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @75)
          to label %.noexc567.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1251 ; 2 uses

.noexc567.i:                                      ; preds = %bb.hv
  %i.wd = extractvalue { i64, i64 } %i.wc, 0      ; 2 uses
  %i.we = extractvalue { i64, i64 } %i.wc, 1
  %i.wf = sub i64 %i.we, %i.wd                    ; 2 uses
  %i.wg = sub i64 %6, %i.wf
  %.not.i566.i = icmp ugt i64 %i.wb, %i.wg
  br i1 %.not.i566.i, label %.loopexit1072.invoke.i, label %bb.hy, !prof !6

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.hx
  %.sroa.0390.0847.i = phi i64 [ %i.wh, %bb.hx ], [ %.sroa.0390.0847.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.wh = add nuw i64 %.sroa.0390.0847.i, 1       ; 2 uses
  %i.wi = add nuw nsw i64 %.sroa.0390.0847.i, %i.ve ; 4 uses
  %i.wj = sub i64 %i.wi, %i.vf                    ; 3 uses
  %i.wk = icmp ult i64 %i.wj, %6
  br i1 %i.wk, label %bb.hw, label %.invoke1377.i

.thread610.i:                                     ; preds = %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i, %bb.hx, %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i.preheader, %.preheader.preheader.peel.i, %bb.hy
  %i.wl = load i64, ptr %i.of, align 8, !range !213, !alias.scope !1239, !noalias !1247, !noundef !4
  %.not505.i = icmp eq i64 %i.wl, -1
  br i1 %.not505.i, label %.loopexit621.i, label %bb.ib

bb.hw:                                            ; preds = %scalar.ph
  %i.wm = icmp ult i64 %i.wi, %6
  br i1 %i.wm, label %bb.hx, label %.invoke1377.i

bb.hx:                                            ; preds = %bb.hw
  %i.wn = getelementptr inbounds nuw i8, ptr %5, i64 %i.wj
  %i.wo = load i8, ptr %i.wn, align 1, !alias.scope !1241, !noalias !1277, !noundef !4
  %i.wp = getelementptr inbounds nuw i8, ptr %5, i64 %i.wi
  store i8 %i.wo, ptr %i.wp, align 1, !alias.scope !1241, !noalias !1277
  %exitcond1074.not.i = icmp eq i64 %i.wh, %i.vd
  br i1 %exitcond1074.not.i, label %.thread610.i, label %scalar.ph, !llvm.loop !1279

bb.hy:                                            ; preds = %.noexc567.i
  %i.wq = getelementptr inbounds nuw i8, ptr %5, i64 %i.wd
  %i.wr = getelementptr inbounds nuw i8, ptr %5, i64 %i.wb
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.wr, ptr nonnull align 1 %i.wq, i64 %i.wf, i1 false), !alias.scope !1280, !noalias !1283
  %i.ws = icmp samesign ugt i64 %.sroa.7.0.ph.i.fr, 4
  %i.wt = icmp ult i64 %.sroa.0.0.i564.i, 4
  %or.cond.i41 = or i1 %i.ws, %i.wt
  br i1 %or.cond.i41, label %.preheader.preheader.peel.i, label %.thread610.i

.preheader.preheader.peel.i:                      ; preds = %bb.hy
  %i.wu = shl nuw nsw i64 %.sroa.0.0.i564.i, 2
  %..i569.i = call noundef i64 @llvm.umin.i64(i64 %i.wu, i64 16) ; 5 uses
  %.sroa.7.0.ph.tr.i = trunc i64 %.sroa.7.0.ph.i.fr to i16
  %.lhs.trunc.i = shl i16 %.sroa.7.0.ph.tr.i, 2   ; 2 uses
  %.rhs.trunc.i = trunc nuw nsw i64 %..i569.i to i16 ; 2 uses
  %i.wv = udiv i16 %.lhs.trunc.i, %.rhs.trunc.i
  %.zext.i = zext nneg i16 %i.wv to i64
  %i.ww = urem i16 %.lhs.trunc.i, %.rhs.trunc.i
  %.not10.i.i.i = icmp ne i16 %i.ww, 0
  %i.wx = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.wx, %.zext.i ; 2 uses
  %switch.i = icmp samesign ult i64 %.sroa.05.0.i.i.i, 2
  br i1 %switch.i, label %.thread610.i, label %bb.hz

bb.hz:                                            ; preds = %.preheader.preheader.peel.i
  %i.wy = add nsw i64 %..i569.i, %i.vz            ; 2 uses
  %i.wz = add nsw i64 %i.wy, 16
  %i.xa = invoke { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsa5QsYiPB8Gl_5image(i64 noundef %i.wy, i64 noundef %i.wz, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @78)
          to label %.noexc574.peel.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.i, !noalias !1251 ; 2 uses

.noexc574.peel.i:                                 ; preds = %bb.hz
  %i.xb = add nuw nsw i64 %..i569.i, %i.wb        ; 2 uses
  %i.xc = extractvalue { i64, i64 } %i.xa, 0      ; 2 uses
  %i.xd = extractvalue { i64, i64 } %i.xa, 1
  %i.xe = sub i64 %i.xd, %i.xc                    ; 2 uses
  %i.xf = sub i64 %6, %i.xe
  %.not.i573.peel.i = icmp ugt i64 %i.xb, %i.xf
  br i1 %.not.i573.peel.i, label %.loopexit1072.invoke.i, label %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i.preheader, !prof !6

_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i.preheader: ; preds = %.noexc574.peel.i
  %i.xg = add nsw i64 %.sroa.05.0.i.i.i, -2       ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %5, i64 %i.xc
  %i.xi = getelementptr inbounds nuw i8, ptr %5, i64 %i.xb
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.xi, ptr nonnull align 1 %i.xh, i64 %i.xe, i1 false), !alias.scope !1285, !noalias !1288
  %.not504.i1516 = icmp eq i64 %i.xg, 0
  br i1 %.not504.i1516, label %.thread610.i, label %.lr.ph1519

.lr.ph1519:                                       ; preds = %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i.preheader
  %.sroa.5591.1.peel.i = shl nuw nsw i64 %..i569.i, 1
  br label %bb.ia

_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i: ; preds = %.noexc574.i
  %i.xj = add nsw i64 %.sroa.11.0.i1518, -1       ; 2 uses
  %.sroa.5591.1.i = add nuw nsw i64 %.sroa.5591.0.i1517, %..i569.i
  %i.xk = getelementptr inbounds nuw i8, ptr %5, i64 %i.xq
  %i.xl = getelementptr inbounds nuw i8, ptr %5, i64 %i.xp
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.xl, ptr nonnull align 1 %i.xk, i64 %i.xs, i1 false), !alias.scope !1285, !noalias !1288
  %.not504.i = icmp eq i64 %i.xj, 0
  br i1 %.not504.i, label %.thread610.i, label %bb.ia, !llvm.loop !1290

bb.ia:                                            ; preds = %.lr.ph1519, %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i
  %.sroa.11.0.i1518 = phi i64 [ %i.xg, %.lr.ph1519 ], [ %i.xj, %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i ]
  %.sroa.5591.0.i1517 = phi i64 [ %.sroa.5591.1.peel.i, %.lr.ph1519 ], [ %.sroa.5591.1.i, %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i ] ; 3 uses
  %i.xm = add i64 %.sroa.5591.0.i1517, %i.vz      ; 2 uses
  %i.xn = add i64 %i.xm, 16
  %i.xo = invoke { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsa5QsYiPB8Gl_5image(i64 noundef %i.xm, i64 noundef %i.xn, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @78)
          to label %.noexc574.i unwind label %.loopexit.split-lp.loopexit.loopexit.i, !noalias !1251 ; 2 uses

.noexc574.i:                                      ; preds = %bb.ia
  %i.xp = add nuw i64 %.sroa.5591.0.i1517, %i.wb  ; 2 uses
  %i.xq = extractvalue { i64, i64 } %i.xo, 0      ; 2 uses
  %i.xr = extractvalue { i64, i64 } %i.xo, 1
  %i.xs = sub i64 %i.xr, %i.xq                    ; 2 uses
  %i.xt = sub i64 %6, %i.xs
  %.not.i573.i = icmp ugt i64 %i.xp, %i.xt
  br i1 %.not.i573.i, label %.loopexit1072.invoke.i, label %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsa5QsYiPB8Gl_5image.exit576.i, !prof !6, !llvm.loop !1290

.loopexit1072.invoke.i:                           ; preds = %.noexc574.peel.i, %.noexc567.i, %.noexc574.i
  %i.xu = phi ptr [ @78, %.noexc574.i ], [ @78, %.noexc574.peel.i ], [ @75, %.noexc567.i ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xu) #23
          to label %.loopexit1072.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !1251

.loopexit1072.cont.i:                             ; preds = %.loopexit1072.invoke.i
  unreachable

bb.ib:                                            ; preds = %.thread610.i
  %i.xv = shl nuw nsw i64 %.sroa.0.0853.i, 2      ; 4 uses
  %i.xw = icmp samesign ugt i64 %i.xv, %6
  br i1 %i.xw, label %.invoke1375.i, label %bb.ic, !prof !6

bb.ic:                                            ; preds = %bb.ib
  %i.xx = sub nuw nsw i64 %6, %i.xv               ; 2 uses
  %i.xy = shl nuw nsw i64 %.sroa.7.0.ph.i.fr, 2   ; 3 uses
  %.not506.i = icmp samesign ugt i64 %i.xy, %i.xx
  br i1 %.not506.i, label %.invoke1375.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.lr.ph.i, !prof !46

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.ic
  %i.xz = getelementptr inbounds nuw i8, ptr %5, i64 %i.xv
  %i.ya = load i8, ptr %i.og, align 8, !alias.scope !1291, !noalias !1247, !noundef !4
end_hunk_1
