Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.11?download=true
inline.NumInlined: 1166
inline.NumDeleted: 423
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE12decode_frameCsa5QsYiPB8Gl_5image:bb.a
  %.pn58.i = phi { ptr, i32 } [ %i.pk, %bb.dr ], [ %.pn56.i, %bb.dn ]
  %i.pj = getelementptr inbounds nuw i8, ptr %i.bm, i64 184
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pj) #24
          to label %bb.dt unwind label %bb.ec, !noalias !676

bb.dr:                                            ; preds = %bb.dp
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.ds:                                            ; preds = %bb.dp
  %i.pl = getelementptr inbounds nuw i8, ptr %i.bm, i64 184
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pl)
          to label %bb.dv unwind label %bb.du, !noalias !676

bb.dt:                                            ; preds = %bb.du, %bb.dq
  %.pn60.i = phi { ptr, i32 } [ %i.pn, %bb.du ], [ %.pn58.i, %bb.dq ]
  %i.pm = getelementptr inbounds nuw i8, ptr %i.bm, i64 208
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pm) #24
          to label %bb.dw unwind label %bb.ec, !noalias !676

bb.du:                                            ; preds = %bb.ds
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dv:                                            ; preds = %bb.ds
  %i.po = getelementptr inbounds nuw i8, ptr %i.bm, i64 208
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.po)
          to label %bb.dy unwind label %bb.dx, !noalias !676

bb.dw:                                            ; preds = %bb.dx, %bb.dt
  %.pn62.i = phi { ptr, i32 } [ %i.pq, %bb.dx ], [ %.pn60.i, %bb.dt ]
  %i.pp = getelementptr inbounds nuw i8, ptr %i.bm, i64 232
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pp) #24
          to label %bb.dz unwind label %bb.ec, !noalias !676

bb.dx:                                            ; preds = %bb.dv
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dy:                                            ; preds = %bb.dv
  %i.pr = getelementptr inbounds nuw i8, ptr %i.bm, i64 232
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pr)
          to label %bb.eb unwind label %bb.ea, !noalias !676

bb.dz:                                            ; preds = %bb.ea, %bb.dw
  %.pn64.i = phi { ptr, i32 } [ %i.pt, %bb.ea ], [ %.pn62.i, %bb.dw ]
  %i.ps = getelementptr inbounds nuw i8, ptr %i.bm, i64 256
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ps) #24
          to label %common.resume unwind label %bb.ec, !noalias !676

bb.ea:                                            ; preds = %bb.dy
  %i.pt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.eb:                                            ; preds = %bb.dy
  %i.pu = getelementptr inbounds nuw i8, ptr %i.bm, i64 256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pu), !noalias !676
  br label %_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE13decode_frame_Csa5QsYiPB8Gl_5image.exit

bb.ec:                                            ; preds = %bb.dz, %bb.dw, %bb.dt, %bb.dq, %bb.dn, %bb.dk, %bb.di, %.body.i
  %i.pv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !676
  unreachable

.lr.ph864.i:                                      ; preds = %.lr.ph867.i, %bb.ef
  %.sroa.042.0862.i = phi i64 [ %i.pw, %bb.ef ], [ 0, %.lr.ph867.i ] ; 3 uses
  %i.pw = add nuw nsw i64 %.sroa.042.0862.i, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !689
  %i.px = load i16, ptr %i.dm, align 4, !alias.scope !677, !noundef !5
  %i.py = zext i16 %i.px to i64
  %i.pz = mul nuw nsw i64 %.sroa.040.0865.i, %i.py
  %i.qa = add nuw nsw i64 %i.pz, %.sroa.042.0862.i ; 3 uses
  %i.qb = load i64, ptr %i.nz, align 8, !alias.scope !677, !noundef !5 ; 2 uses
  %i.qc = icmp ult i64 %i.qa, %i.qb
  br i1 %i.qc, label %bb.ed, label %.invoke1686.i

bb.ed:                                            ; preds = %.lr.ph864.i
  %i.qd = load ptr, ptr %i.oa, align 8, !alias.scope !677, !nonnull !5, !noundef !5
  %i.qe = getelementptr inbounds nuw [30 x i8], ptr %i.qd, i64 %i.qa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.av, ptr noundef nonnull align 1 dereferenceable(30) %i.qe, i64 30, i1 false), !noalias !676
  invoke fastcc void @_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE11loop_filterCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(896) %i.bm, i64 noundef %.sroa.042.0862.i, i64 noundef %.sroa.040.0865.i, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(30) %i.av)
          to label %bb.ef unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

bb.ee:                                            ; preds = %bb.eg
  unreachable

bb.ef:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !689
  %exitcond1232.not.i = icmp eq i64 %i.pw, %i.pd
  br i1 %exitcond1232.not.i, label %.loopexit.i, label %.lr.ph864.i

bb.eg:                                            ; preds = %bb.dg
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #28
          to label %bb.ee unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

bb.eh:                                            ; preds = %bb.dg
  %i.qf = zext i8 %i.ow to i64
  %i.qg = urem i64 %.sroa.025.0858.i, %i.qf       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !689
  invoke void @_RNvXsW_NtCsj6eKBz9Db1c_4core5arrayAhj9_NtNtB7_7default7Default7defaultCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([9 x i8]) align 1 captures(none) dereferenceable(9) %i.au)
          to label %bb.ei unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(9) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(9) %i.au, i64 9, i1 false), !noalias !676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !689
  store i32 0, ptr %i.eb, align 2, !alias.scope !677
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 1, !alias.scope !677
  %i.qh = load i16, ptr %i.dm, align 4, !alias.scope !677, !noundef !5 ; 2 uses
  %i.qi = zext i16 %i.qh to i64
  %.not869.i = icmp eq i16 %i.qh, 0
  br i1 %.not869.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ei
  %i.qj = icmp ne i64 %.sroa.025.0858.i, 0        ; 3 uses
  %i.qk = shl nuw nsw i64 %.sroa.025.0858.i, 4
  %i.ql = shl nuw nsw i64 %.sroa.025.0858.i, 3
  br label %bb.ek

._crit_edge.i:                                    ; preds = %bb.jy, %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !690
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc114.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc114.i:                                      ; preds = %._crit_edge.i
  %i.qm = load i64, ptr %i.u, align 8, !range !12, !noalias !690, !noundef !5
  %i.qn = trunc nuw i64 %i.qm to i1
  %i.qo = load i64, ptr %i.ob, align 8, !range !15, !noalias !690, !noundef !5 ; 4 uses
  br i1 %i.qn, label %bb.ej, label %bb.fq, !prof !11

bb.ej:                                            ; preds = %.noexc114.i
  %i.qp = load i64, ptr %i.oc, align 8, !noalias !690
  br label %.invoke1684.i

bb.ek:                                            ; preds = %bb.jy, %.lr.ph.i
  %.sroa.027.0857.i = phi i64 [ 0, %.lr.ph.i ], [ %i.qq, %bb.jy ] ; 127 uses
  %i.qq = add nuw nsw i64 %.sroa.027.0857.i, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !689
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !689
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.kk, i8 0, i64 16, i1 false), !noalias !692
  invoke void @_RNvXsW_NtCsj6eKBz9Db1c_4core5arrayAhj9_NtNtB7_7default7Default7defaultCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([9 x i8]) align 1 captures(none) dereferenceable(9) %i.kl)
          to label %.noexc116.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc116.i:                                      ; preds = %bb.ek
  store i8 0, ptr %i.ko, align 1, !noalias !692
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kp, i8 0, i64 3, i1 false), !noalias !692
  %i.qr = load i8, ptr %i.dp, align 8, !range !9, !alias.scope !693, !noundef !5
  %i.qs = trunc nuw i8 %i.qr to i1
  %i.qt = load i8, ptr %i.dq, align 1, !range !9, !alias.scope !693
  %i.qu = trunc nuw i8 %i.qt to i1
  %or.cond.i.i = select i1 %i.qs, i1 %i.qu, i1 false
  br i1 %or.cond.i.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %.noexc117.i, %.noexc116.i
  %i.qv = load i8, ptr %i.dz, align 4, !range !9, !alias.scope !693, !noundef !5
  %i.qw = trunc nuw i8 %i.qv to i1
  br i1 %i.qw, label %bb.en, label %bb.eo

bb.em:                                            ; preds = %.noexc116.i
  %.sroa.063.0.copyload.i.i = load i32, ptr %i.dw, align 8, !alias.scope !693
  %i.qx = invoke noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder30read_with_tree_with_first_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dw, i64 noundef 3, i32 noundef %.sroa.063.0.copyload.i.i) #30
          to label %.noexc117.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc117.i:                                      ; preds = %bb.em
  store i8 %i.qx, ptr %i.ko, align 1, !noalias !692
  br label %bb.el

bb.en:                                            ; preds = %bb.el
  %i.qy = load i8, ptr %i.jt, align 1, !alias.scope !693, !noundef !5
  %i.qz = invoke noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dl, i8 noundef %i.qy) #30
          to label %.noexc118.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc118.i:                                      ; preds = %bb.en
  %i.ra = zext i1 %i.qz to i8
  br label %bb.eo

bb.eo:                                            ; preds = %.noexc118.i, %bb.el
  %.sroa.0.0.i.i = phi i8 [ %i.ra, %.noexc118.i ], [ 0, %bb.el ] ; 3 uses
  store i8 %.sroa.0.0.i.i, ptr %i.q, align 1, !noalias !692
  %i.rb = load i8, ptr %i.eg, align 4, !range !9, !alias.scope !693, !noundef !5
  %i.rc = trunc nuw i8 %i.rb to i1
  br i1 %i.rc, label %.thread.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.rd = load i8, ptr %i.dy, align 4, !alias.scope !693, !noundef !5
  %i.re = invoke noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dl, i8 noundef %i.rd) #30
          to label %.noexc119.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc119.i:                                      ; preds = %bb.ep
  br i1 %i.re, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %.noexc119.i
  %.pre.i.i = load i8, ptr %i.eg, align 4, !alias.scope !693
  %i.rf = trunc nuw i8 %.pre.i.i to i1
  br i1 %i.rf, label %.thread.i.i, label %bb.eu

bb.er:                                            ; preds = %.noexc119.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !692
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, i64 noundef 20, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc120.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc120.i:                                      ; preds = %bb.er
  %i.rg = load i64, ptr %i.p, align 8, !range !12, !noalias !692, !noundef !5
  %i.rh = trunc nuw i64 %i.rg to i1
  %i.ri = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.rj = load i64, ptr %i.ri, align 8, !range !15, !noalias !692, !noundef !5 ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  br i1 %i.rh, label %bb.es, label %bb.et, !prof !11

bb.es:                                            ; preds = %.noexc120.i
  %i.rl = load i64, ptr %i.rk, align 8, !noalias !692
  br label %.invoke1684.i

bb.et:                                            ; preds = %.noexc120.i
  %i.rm = load ptr, ptr %i.rk, align 8, !noalias !692, !nonnull !5, !noundef !5 ; 2 uses
  %i.rn = icmp samesign ugt i64 %i.rj, 19
  call void @llvm.assume(i1 %i.rn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.rm, ptr noundef nonnull align 1 dereferenceable(20) @120, i64 20, i1 false), !noalias !694
  br label %.loopexit490.i

bb.eu:                                            ; preds = %.noexc125.i, %bb.eq
  %i.ro = phi i8 [ %i.rs, %.noexc125.i ], [ 0, %bb.eq ]
  %i.rp = phi i8 [ %i.rt, %.noexc125.i ], [ 0, %bb.eq ]
  %i.rq = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !693, !noundef !5 ; 2 uses
  %i.rr = icmp ult i64 %.sroa.027.0857.i, %i.rq
  br i1 %i.rr, label %bb.fc, label %.invoke1682.i

.thread.i.i:                                      ; preds = %bb.eq, %bb.eo
  %i.rs = invoke noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder30read_with_tree_with_first_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 4, i32 noundef 9503108) #30
          to label %.noexc122.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676 ; 7 uses

.noexc122.i:                                      ; preds = %.thread.i.i
  %switch.i.i = icmp ult i8 %i.rs, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !692
  br i1 %switch.i.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %.noexc122.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !692
  br label %.loopexit490.i

bb.ew:                                            ; preds = %.noexc122.i
  store i8 %i.rs, ptr %i.kq, align 1, !noalias !692
  store i8 20, ptr %i.t, align 8, !noalias !692
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp7decoder13DecodingErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t)
          to label %.noexc123.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc123.i:                                      ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !692
  store i8 %i.rs, ptr %i.km, align 1, !noalias !692
  switch i8 %i.rs, label %default.unreachable [
    i8 0, label %.loopexit.loopexit.i.i
    i8 1, label %bb.ex
    i8 2, label %bb.ey
    i8 3, label %bb.ez
    i8 4, label %.preheader.i.i
  ]

default.unreachable:                              ; preds = %.noexc203.i, %.noexc123.i
  unreachable

bb.ex:                                            ; preds = %.noexc123.i
  br label %.loopexit.loopexit.i.i

bb.ey:                                            ; preds = %.noexc123.i
  br label %.loopexit.loopexit.i.i

bb.ez:                                            ; preds = %.noexc123.i
  br label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.ez, %bb.ey, %bb.ex, %.noexc123.i
  %.sroa.083.0.i.i = phi i8 [ 1, %bb.ez ], [ 2, %bb.ex ], [ 3, %bb.ey ], [ %i.rs, %.noexc123.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %scevgep.i.i, i8 %.sroa.083.0.i.i, i64 4, i1 false), !noalias !692
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(4) %.sroa.7.0..sroa_idx.i, i8 %.sroa.083.0.i.i, i64 4, i1 false), !alias.scope !693
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit141.i.i, %.loopexit.loopexit.i.i
  %i.rt = invoke noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder30read_with_tree_with_first_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 3, i32 noundef 9306496) #30
          to label %.noexc124.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676 ; 5 uses

.noexc124.i:                                      ; preds = %.loopexit.i.i
  %switch139.i.i = icmp ult i8 %i.rt, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !692
  br i1 %switch139.i.i, label %bb.fb, label %bb.fa

.preheader.i.i:                                   ; preds = %.noexc123.i, %.loopexit141.i.i
  %.sroa.087.0149.i.i = phi i64 [ %i.ru, %.loopexit141.i.i ], [ 0, %.noexc123.i ] ; 3 uses
  %i.ru = add nuw nsw i64 %.sroa.087.0149.i.i, 1  ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.7.0..sroa_idx.i, i64 %.sroa.087.0149.i.i ; 5 uses
  %i.rw = shl nuw nsw i64 %.sroa.087.0149.i.i, 2
  %invariant.gep.i.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.rw ; 4 uses
  %i.rx = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !693, !noundef !5 ; 2 uses
  %i.ry = icmp ult i64 %.sroa.027.0857.i, %i.rx
  br i1 %i.ry, label %bb.ff, label %.invoke1682.i

bb.fa:                                            ; preds = %.noexc124.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !692
  br label %.loopexit490.i

bb.fb:                                            ; preds = %.noexc124.i
  store i8 %i.rt, ptr %i.ks, align 1, !noalias !692
  store i8 22, ptr %i.r, align 8, !noalias !692
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp7decoder13DecodingErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r)
          to label %.noexc125.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc125.i:                                      ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !692
  store i8 %i.rt, ptr %i.kn, align 1, !noalias !692
  br label %bb.eu

bb.fc:                                            ; preds = %bb.eu
  %i.rz = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !693, !nonnull !5, !noundef !5
  %i.sa = getelementptr inbounds nuw [30 x i8], ptr %i.rz, i64 %.sroa.027.0857.i
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 2
  store i8 %i.rp, ptr %i.sb, align 1, !noalias !694
  %i.sc = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !693, !noundef !5 ; 2 uses
  %i.sd = icmp ult i64 %.sroa.027.0857.i, %i.sc
  br i1 %i.sd, label %bb.fd, label %.invoke1682.i

bb.fd:                                            ; preds = %bb.fc
  %i.se = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !693, !nonnull !5, !noundef !5
  %i.sf = getelementptr inbounds nuw [30 x i8], ptr %i.se, i64 %.sroa.027.0857.i
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 3
  store i8 %i.ro, ptr %i.sg, align 1, !noalias !694
  %i.sh = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !693, !noundef !5 ; 2 uses
  %i.si = icmp ult i64 %.sroa.027.0857.i, %i.sh
  br i1 %i.si, label %bb.fe, label %.invoke1682.i

bb.fe:                                            ; preds = %bb.fd
  %i.sj = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !693, !nonnull !5, !noundef !5
  %i.sk = getelementptr inbounds nuw [30 x i8], ptr %i.sj, i64 %.sroa.027.0857.i
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.sl, ptr noundef nonnull align 1 dereferenceable(16) %i.kk, i64 16, i1 false), !noalias !694
  %i.sm = load i8, ptr %i.iu, align 1, !alias.scope !693, !noundef !5
  %i.sn = icmp eq i8 %i.sm, -14
  br i1 %i.sn, label %.loopexit490.i, label %bb.gh

bb.ff:                                            ; preds = %.preheader.i.i
  %i.so = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !693, !nonnull !5, !noundef !5
  %i.sp = getelementptr inbounds nuw [30 x i8], ptr %i.so, i64 %.sroa.027.0857.i
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %i.sr = load i8, ptr %i.sq, align 1, !range !23, !noalias !694, !noundef !5
  %i.ss = zext nneg i8 %i.sr to i64
  %i.st = load i8, ptr %i.rv, align 1, !range !23, !alias.scope !693, !noundef !5
  %i.su = zext nneg i8 %i.st to i64
  %i.sv = getelementptr inbounds nuw [360 x i8], ptr @127, i64 %i.ss
  %i.sw = getelementptr inbounds nuw [36 x i8], ptr %i.sv, i64 %i.su ; 2 uses
  %.sroa.091.0.copyload.i.i = load i32, ptr %i.sw, align 1, !noalias !692
  %i.sx = invoke noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder30read_with_tree_with_first_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.sw, i64 noundef 9, i32 noundef %.sroa.091.0.copyload.i.i) #30
          to label %.noexc129.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676 ; 7 uses

.noexc129.i:                                      ; preds = %bb.ff
  %switch140.i.i = icmp ult i8 %i.sx, 10
  br i1 %switch140.i.i, label %bb.fg, label %.loopexit490.i

bb.fg:                                            ; preds = %.noexc129.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !692
  store i8 %i.sx, ptr %i.kr, align 1, !noalias !692
  store i8 21, ptr %i.s, align 8, !noalias !692
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp7decoder13DecodingErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s)
          to label %.noexc131.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc131.i:                                      ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !692
  store i8 %i.sx, ptr %invariant.gep.i.i, align 1, !noalias !692
  %i.sy = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !693, !noundef !5 ; 2 uses
  %i.sz = icmp ult i64 %.sroa.027.0857.i, %i.sy
  br i1 %i.sz, label %bb.fh, label %.invoke1682.i

bb.fh:                                            ; preds = %.noexc131.i
  %i.ta = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !693, !nonnull !5, !noundef !5
  %i.tb = getelementptr inbounds nuw [30 x i8], ptr %i.ta, i64 %.sroa.027.0857.i
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  store i8 %i.sx, ptr %i.tc, align 1, !noalias !694
  store i8 %i.sx, ptr %i.rv, align 1, !alias.scope !693
  %i.td = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !693, !noundef !5 ; 2 uses
  %i.te = icmp ult i64 %.sroa.027.0857.i, %i.td
  br i1 %i.te, label %bb.fi, label %.invoke1682.i

bb.fi:                                            ; preds = %bb.fh
  %i.tf = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !693, !nonnull !5, !noundef !5
  %i.tg = getelementptr inbounds nuw [30 x i8], ptr %i.tf, i64 %.sroa.027.0857.i
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 17
  %i.ti = load i8, ptr %i.th, align 1, !range !23, !noalias !694, !noundef !5
  %i.tj = zext nneg i8 %i.ti to i64
  %i.tk = zext nneg i8 %i.sx to i64
  %i.tl = getelementptr inbounds nuw [360 x i8], ptr @127, i64 %i.tj
  %i.tm = getelementptr inbounds nuw [36 x i8], ptr %i.tl, i64 %i.tk ; 2 uses
  %.sroa.091.0.copyload.1.i.i = load i32, ptr %i.tm, align 1, !noalias !692
  %i.tn = invoke noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder30read_with_tree_with_first_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tm, i64 noundef 9, i32 noundef %.sroa.091.0.copyload.1.i.i) #30
          to label %.noexc133.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676 ; 7 uses

.noexc133.i:                                      ; preds = %bb.fi
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE17read_coefficientsCsa5QsYiPB8Gl_5image:bb.a

bb.x:                                             ; preds = %bb.w
  %i.da = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.5.0.copyload) #30
  %i.db = shl nuw nsw i16 %i.cy, 1
  %i.dc = zext i1 %i.da to i16
  %i.dd = or disjoint i16 %i.db, %i.dc            ; 2 uses
  %i.de = icmp samesign ult i8 %i.co, 3
  br i1 %i.de, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.6.0.copyload) #30
  %i.dg = shl nuw nsw i16 %i.dd, 1
  %i.dh = zext i1 %i.df to i16
  %i.di = or disjoint i16 %i.dg, %i.dh            ; 2 uses
  %i.dj = icmp ult i8 %i.ci, 9
  br i1 %i.dj, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.7.0.copyload) #30
  %i.dl = shl nuw nsw i16 %i.di, 1
  %i.dm = zext i1 %i.dk to i16
  %i.dn = or disjoint i16 %i.dl, %i.dm            ; 2 uses
  %.not56 = icmp eq i8 %i.co, 5
  br i1 %.not56, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.do = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.8.0.copyload) #30
  %i.dp = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.9.0.copyload) #30
  %i.dq = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.10.0.copyload) #30
  %i.dr = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.11.0.copyload) #30
  %i.ds = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.12.0.copyload) #30
  %i.dt = shl nuw nsw i16 %i.dn, 2
  %i.du = select i1 %i.do, i16 2, i16 0
  %i.dv = or disjoint i16 %i.dt, %i.du
  %i.dw = zext i1 %i.dp to i16
  %i.dx = or disjoint i16 %i.dv, %i.dw
  %i.dy = shl nuw nsw i16 %i.dx, 2
  %i.dz = select i1 %i.dq, i16 2, i16 0
  %i.ea = or disjoint i16 %i.dy, %i.dz
  %i.eb = zext i1 %i.dr to i16
  %i.ec = or disjoint i16 %i.ea, %i.eb
  %i.ed = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.13.0.copyload) #30
  %i.ee = shl nuw nsw i16 %i.ec, 2
  %i.ef = select i1 %i.ds, i16 2, i16 0
  %i.eg = or disjoint i16 %i.ee, %i.ef
  %i.eh = zext i1 %i.ed to i16
  %i.ei = or disjoint i16 %i.eg, %i.eh
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.sroa.015.0.lcssa = phi i16 [ %i.di, %bb.y ], [ %i.dd, %bb.x ], [ %i.ct, %bb.v ], [ %i.ei, %bb.aa ], [ %i.cy, %bb.w ], [ %i.dn, %bb.z ]
  %i.ej = getelementptr inbounds nuw i8, ptr @95, i64 %i.cq
  %i.ek = load i8, ptr %i.ej, align 1, !noundef !5
  %i.el = zext i8 %i.ek to i16
  %i.em = add nuw nsw i16 %.sroa.015.0.lcssa, %i.el
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.u
  %.sroa.014.0 = phi i16 [ %i.cp, %bb.u ], [ %i.em, %bb.ab ] ; 3 uses
  %i.en = zext nneg i16 %.sroa.014.0 to i32       ; 2 uses
  %switch.selectcmp = icmp eq i16 %.sroa.014.0, 1
  %switch.select = select i1 %switch.selectcmp, i64 1, i64 2
  %switch.selectcmp43 = icmp eq i16 %.sroa.014.0, 0
  %switch.select44 = select i1 %switch.selectcmp43, i64 0, i64 %switch.select
  %i.eo = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_flag(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j) #30
  %i.ep = sub nsw i32 0, %i.en
  %spec.select = select i1 %i.eo, i32 %i.ep, i32 %i.en
  %i.eq = getelementptr inbounds nuw i8, ptr @96, i64 %.sroa.021.148
  %i.er = load i8, ptr %i.eq, align 1, !noundef !5
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.es
  %i.eu = mul nsw i32 %spec.select, %i.ca
  store i32 %i.eu, ptr %i.et, align 4
  br label %.backedge

.backedge:                                        ; preds = %bb.ac, %bb.p
  %.sroa.06.0.be = phi i64 [ 0, %bb.ac ], [ 1, %bb.p ]
  %.sroa.0.0.be = phi i64 [ %switch.select44, %bb.ac ], [ 0, %bb.p ]
  %exitcond.not = icmp eq i64 %i.cb, 16
  br i1 %exitcond.not, label %.loopexit, label %bb.p, !llvm.loop !739
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE20read_segment_updatesCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(896) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 17 uses
  %i.b = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_flag(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 889 ; 2 uses
  %i.d = zext i1 %i.b to i8
  store i8 %i.d, ptr %i.c, align 1
  %i.e = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_flag(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #30
  br i1 %i.e, label %.preheader20.preheader, label %.loopexit19

.loopexit19:                                      ; preds = %.preheader20.preheader, %bb.a
  %i.f = load i8, ptr %i.c, align 1, !range !9, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.loopexit19
  %i.h = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_flag(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #30
  br i1 %i.h, label %bb.b, label %.preheader.1

.preheader20.preheader:                           ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_flag(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #30
  %i.j = xor i1 %i.i, true
  %i.k = zext i1 %i.j to i8                       ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 294
  store i8 %i.k, ptr %i.l, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 310
  store i8 %i.k, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 326
  store i8 %i.k, ptr %i.n, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 342
  store i8 %i.k, ptr %i.o, align 2
  %i.p = tail call noundef i32 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder26read_optional_signed_value(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 7) #30
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.r = trunc i32 %i.p to i8
  store i8 %i.r, ptr %i.q, align 4
  %i.s = tail call noundef i32 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder26read_optional_signed_value(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 7) #30
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.u = trunc i32 %i.s to i8
  store i8 %i.u, ptr %i.t, align 4
  %i.v = tail call noundef i32 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder26read_optional_signed_value(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 7) #30
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.x = trunc i32 %i.v to i8
  store i8 %i.x, ptr %i.w, align 4
  %i.y = tail call noundef i32 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder26read_optional_signed_value(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 7) #30
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 340
  %i.aa = trunc i32 %i.y to i8
  store i8 %i.aa, ptr %i.z, align 4
  %i.ab = tail call noundef i32 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder26read_optional_signed_value(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 6) #30
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 293
  %i.ad = trunc i32 %i.ab to i8
  store i8 %i.ad, ptr %i.ac, align 1
  %i.ae = tail call noundef i32 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder26read_optional_signed_value(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 6) #30
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 309
  %i.ag = trunc i32 %i.ae to i8
  store i8 %i.ag, ptr %i.af, align 1
  %i.ah = tail call noundef i32 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder26read_optional_signed_value(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 6) #30
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 325
  %i.aj = trunc i32 %i.ah to i8
  store i8 %i.aj, ptr %i.ai, align 1
  %i.ak = tail call noundef i32 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder26read_optional_signed_value(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 6) #30
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 341
  %i.am = trunc i32 %i.ak to i8
  store i8 %i.am, ptr %i.al, align 1
  br label %.loopexit19

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit19
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 411
  %i.ao = load i8, ptr %i.an, align 1, !noundef !5
  %i.ap = icmp eq i8 %i.ao, -14
  %. = select i1 %i.ap, i8 15, i8 -1
  store i8 %., ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.preheader.preheader
  %i.aq = tail call noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder12read_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 8) #30
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.b, %.preheader.preheader
  %.sroa.07.0 = phi i8 [ %i.aq, %bb.b ], [ -1, %.preheader.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 842
  store i8 %.sroa.07.0, ptr %i.ar, align 2
  %i.as = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_flag(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #30
  br i1 %i.as, label %bb.c, label %.preheader.2

bb.c:                                             ; preds = %.preheader.1
  %i.at = tail call noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder12read_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 8) #30
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.c, %.preheader.1
  %.sroa.07.0.1 = phi i8 [ %i.at, %bb.c ], [ -1, %.preheader.1 ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 846
  store i8 %.sroa.07.0.1, ptr %i.au, align 2
  %i.av = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_flag(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #30
  br i1 %i.av, label %bb.d, label %.loopexit.loopexit

bb.d:                                             ; preds = %.preheader.2
  %i.aw = tail call noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder12read_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 8) #30
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.d, %.preheader.2
  %.sroa.07.0.2 = phi i8 [ %i.aw, %bb.d ], [ -1, %.preheader.2 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 850
  store i8 %.sroa.07.0.2, ptr %i.ax, align 2
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE25read_quantization_indicesCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(896) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 6 uses
  %i.b = tail call noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder12read_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 7) #30
  %i.c = tail call noundef i32 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder26read_optional_signed_value(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 4) #30
  %i.d = tail call noundef i32 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder26read_optional_signed_value(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 4) #30
  %i.e = tail call noundef i32 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder26read_optional_signed_value(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 4) #30
  %i.f = tail call noundef i32 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder26read_optional_signed_value(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 4) #30
  %i.g = tail call noundef i32 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder26read_optional_signed_value(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 4) #30
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 888 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !range !9, !noundef !5 ; 2 uses
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = zext i8 %i.b to i32                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 411
  %i.n = load i8, ptr %i.m, align 1, !noundef !5
  %i.o = icmp eq i8 %i.n, -14
  %.7 = select i1 %i.o, i8 15, i8 -1
  store i8 %.7, ptr %0, align 8
  ret void

thread-pre-split:                                 ; preds = %bb.h
  %.pr = load i8, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.a
  %2 = phi i8 [ %.pr, %thread-pre-split ], [ %i.i, %bb.a ]
  %.sroa.03.08 = phi i64 [ %3, %thread-pre-split ], [ 0, %bb.a ] ; 4 uses
  %3 = add nuw nsw i64 %.sroa.03.08, 1
  %i.p = trunc nuw i8 %2 to i1
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.02.0 = phi i32 [ %spec.select, %bb.e ], [ %i.k, %bb.c ] ; 6 uses
  %i.q = add i32 %.sroa.02.0, %i.c
  %i.r = tail call noundef i16 @_RNvNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB7_10Vp8DecoderpE25read_quantization_indices8dc_quant(i32 noundef %i.q)
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.03.08 ; 6 uses
  store i16 %i.r, ptr %i.s, align 8
  %i.t = tail call noundef i16 @_RNvNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB7_10Vp8DecoderpE25read_quantization_indices8ac_quant(i32 noundef %.sroa.02.0)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 %i.t, ptr %i.u, align 2
  %i.v = add i32 %.sroa.02.0, %i.d
  %i.w = tail call noundef i16 @_RNvNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB7_10Vp8DecoderpE25read_quantization_indices8dc_quant(i32 noundef %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.y = shl i16 %i.w, 1
  store i16 %i.y, ptr %i.x, align 4
  %i.z = add i32 %.sroa.02.0, %i.e
  %i.aa = tail call noundef i16 @_RNvNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB7_10Vp8DecoderpE25read_quantization_indices8ac_quant(i32 noundef %i.z)
  %i.ab = sext i16 %i.aa to i32
  %i.ac = mul nsw i32 %i.ab, 31
  %i.ad = sdiv i32 %i.ac, 20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 6 ; 3 uses
  %i.af = trunc i32 %i.ad to i16
  store i16 %i.af, ptr %i.ae, align 2
  %i.ag = add i32 %.sroa.02.0, %i.f
  %i.ah = tail call noundef i16 @_RNvNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB7_10Vp8DecoderpE25read_quantization_indices8dc_quant(i32 noundef %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  store i16 %i.ah, ptr %i.ai, align 8
  %i.aj = add i32 %.sroa.02.0, %i.g
  %i.ak = tail call noundef i16 @_RNvNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB7_10Vp8DecoderpE25read_quantization_indices8ac_quant(i32 noundef %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = load i16, ptr %i.ae, align 2, !noundef !5
  %i.an = icmp slt i16 %i.am, 8
  br i1 %i.an, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.03.08 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !range !9, !noundef !5
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.at = load i8, ptr %i.as, align 4, !noundef !5
  %i.au = sext i8 %i.at to i32
  %i.av = select i1 %i.ar, i32 %i.k, i32 0
  %spec.select = add nsw i32 %i.av, %i.au
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  store i16 8, ptr %i.ae, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.aw = load i16, ptr %i.ai, align 8, !noundef !5
  %i.ax = icmp sgt i16 %i.aw, 132
  br i1 %i.ax, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.i
  %i.ay = icmp samesign ult i64 %.sroa.03.08, 3
  %i.az = select i1 %i.j, i1 %i.ay, i1 false
  br i1 %i.az, label %thread-pre-split, label %bb.b

bb.i:                                             ; preds = %bb.g
  store i16 132, ptr %i.ai, align 8
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE26update_token_probabilitiesCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(896) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 11 uses
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAAhjb_j3_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAAhjb_j3_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.split.us.us
  %i.c = icmp eq i64 %.sroa.0.0.add, 1056
  br i1 %i.c, label %bb.m, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAAhjb_j3_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAAhjb_j3_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAAhjb_j3_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit, %bb.a
  %.sroa.0.0.idx171 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAAhjb_j3_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit ] ; 2 uses
  %.sroa.7.0170 = phi i64 [ 0, %bb.a ], [ %i.d, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAAhjb_j3_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit ] ; 12 uses
  %.sroa.0.0.ptr = getelementptr inbounds nuw i8, ptr @129, i64 %.sroa.0.0.idx171
  %.sroa.0.0.add = add nuw nsw i64 %.sroa.0.0.idx171, 264 ; 2 uses
  %i.d = add nuw nsw i64 %.sroa.7.0170, 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.us.us.preheader

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.us.us.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.split.us.us, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAAhjb_j3_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.043.0.idx155.us = phi i64 [ %.sroa.043.0.add.us, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.split.us.us ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAAhjb_j3_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %.sroa.745.0154.us = phi i64 [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.split.us.us ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAAhjb_j3_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 12 uses
  %.sroa.043.0.ptr156.us = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ptr, i64 %.sroa.043.0.idx155.us
  %.sroa.043.0.add.us = add nuw nsw i64 %.sroa.043.0.idx155.us, 33 ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.745.0154.us, 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.preheader

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread.split.us.split.us.us.us.us, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.us.us.preheader
  %.sroa.046.0.idx125.us.us.us = phi i64 [ %.sroa.046.0.add.us.us.us, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread.split.us.split.us.us.us.us ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.us.us.preheader ] ; 2 uses
  %.sroa.748.0124.us.us.us = phi i64 [ %i.f, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread.split.us.split.us.us.us.us ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.us.us.preheader ] ; 12 uses
  %.sroa.046.0.ptr126.us.us.us = getelementptr inbounds nuw i8, ptr %.sroa.043.0.ptr156.us, i64 %.sroa.046.0.idx125.us.us.us ; 11 uses
  %.sroa.046.0.add.us.us.us = add nuw nsw i64 %.sroa.046.0.idx125.us.us.us, 11 ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.748.0124.us.us.us, 1
  %i.g = load i8, ptr %.sroa.046.0.ptr126.us.us.us, align 1, !noundef !5
  %i.h = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef %i.g) #30
  br i1 %i.h, label %bb.b, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.1

bb.b:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.preheader
  %i.i = tail call noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder12read_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 8) #30
  %i.j = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw [1056 x i8], ptr %i.j, i64 %.sroa.7.0170
  %i.l = getelementptr inbounds nuw [132 x i8], ptr %i.k, i64 %.sroa.745.0154.us
  %i.m = getelementptr inbounds nuw [44 x i8], ptr %i.l, i64 %.sroa.748.0124.us.us.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i8 %i.i, ptr %i.n, align 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.1

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.1: ; preds = %bb.b, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.preheader
  %.sroa.049.0.ptr91.us.us.us.us.us.us.1 = getelementptr inbounds nuw i8, ptr %.sroa.046.0.ptr126.us.us.us, i64 1
  %i.o = load i8, ptr %.sroa.049.0.ptr91.us.us.us.us.us.us.1, align 1, !noundef !5
  %i.p = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef %i.o) #30
  br i1 %i.p, label %bb.c, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.2

bb.c:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.1
  %i.q = tail call noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder12read_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 8) #30
  %i.r = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw [1056 x i8], ptr %i.r, i64 %.sroa.7.0170
  %i.t = getelementptr inbounds nuw [132 x i8], ptr %i.s, i64 %.sroa.745.0154.us
  %i.u = getelementptr inbounds nuw [44 x i8], ptr %i.t, i64 %.sroa.748.0124.us.us.us
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  store i8 %i.q, ptr %i.v, align 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.2

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.2: ; preds = %bb.c, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.1
  %.sroa.049.0.ptr91.us.us.us.us.us.us.2 = getelementptr inbounds nuw i8, ptr %.sroa.046.0.ptr126.us.us.us, i64 2
  %i.w = load i8, ptr %.sroa.049.0.ptr91.us.us.us.us.us.us.2, align 1, !noundef !5
  %i.x = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef %i.w) #30
  br i1 %i.x, label %bb.d, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.3

bb.d:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.2
  %i.y = tail call noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder12read_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 8) #30
  %i.z = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw [1056 x i8], ptr %i.z, i64 %.sroa.7.0170
  %i.ab = getelementptr inbounds nuw [132 x i8], ptr %i.aa, i64 %.sroa.745.0154.us
  %i.ac = getelementptr inbounds nuw [44 x i8], ptr %i.ab, i64 %.sroa.748.0124.us.us.us
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 10
  store i8 %i.y, ptr %i.ad, align 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.3

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.3: ; preds = %bb.d, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.2
  %.sroa.049.0.ptr91.us.us.us.us.us.us.3 = getelementptr inbounds nuw i8, ptr %.sroa.046.0.ptr126.us.us.us, i64 3
  %i.ae = load i8, ptr %.sroa.049.0.ptr91.us.us.us.us.us.us.3, align 1, !noundef !5
  %i.af = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef %i.ae) #30
  br i1 %i.af, label %bb.e, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.4

bb.e:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.3
  %i.ag = tail call noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder12read_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 8) #30
  %i.ah = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw [1056 x i8], ptr %i.ah, i64 %.sroa.7.0170
  %i.aj = getelementptr inbounds nuw [132 x i8], ptr %i.ai, i64 %.sroa.745.0154.us
  %i.ak = getelementptr inbounds nuw [44 x i8], ptr %i.aj, i64 %.sroa.748.0124.us.us.us
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  store i8 %i.ag, ptr %i.al, align 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.4

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.4: ; preds = %bb.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.3
  %.sroa.049.0.ptr91.us.us.us.us.us.us.4 = getelementptr inbounds nuw i8, ptr %.sroa.046.0.ptr126.us.us.us, i64 4
  %i.am = load i8, ptr %.sroa.049.0.ptr91.us.us.us.us.us.us.4, align 1, !noundef !5
  %i.an = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef %i.am) #30
  br i1 %i.an, label %bb.f, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.5

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.4
  %i.ao = tail call noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder12read_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 8) #30
  %i.ap = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.aq = getelementptr inbounds nuw [1056 x i8], ptr %i.ap, i64 %.sroa.7.0170
  %i.ar = getelementptr inbounds nuw [132 x i8], ptr %i.aq, i64 %.sroa.745.0154.us
  %i.as = getelementptr inbounds nuw [44 x i8], ptr %i.ar, i64 %.sroa.748.0124.us.us.us
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 18
  store i8 %i.ao, ptr %i.at, align 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.5: ; preds = %bb.f, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.4
  %.sroa.049.0.ptr91.us.us.us.us.us.us.5 = getelementptr inbounds nuw i8, ptr %.sroa.046.0.ptr126.us.us.us, i64 5
  %i.au = load i8, ptr %.sroa.049.0.ptr91.us.us.us.us.us.us.5, align 1, !noundef !5
  %i.av = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef %i.au) #30
  br i1 %i.av, label %bb.g, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.6

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.5
  %i.aw = tail call noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder12read_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 8) #30
  %i.ax = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw [1056 x i8], ptr %i.ax, i64 %.sroa.7.0170
  %i.az = getelementptr inbounds nuw [132 x i8], ptr %i.ay, i64 %.sroa.745.0154.us
  %i.ba = getelementptr inbounds nuw [44 x i8], ptr %i.az, i64 %.sroa.748.0124.us.us.us
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 22
  store i8 %i.aw, ptr %i.bb, align 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.6

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.6: ; preds = %bb.g, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.5
  %.sroa.049.0.ptr91.us.us.us.us.us.us.6 = getelementptr inbounds nuw i8, ptr %.sroa.046.0.ptr126.us.us.us, i64 6
  %i.bc = load i8, ptr %.sroa.049.0.ptr91.us.us.us.us.us.us.6, align 1, !noundef !5
  %i.bd = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef %i.bc) #30
  br i1 %i.bd, label %bb.h, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.7

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.6
  %i.be = tail call noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder12read_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 8) #30
  %i.bf = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.bg = getelementptr inbounds nuw [1056 x i8], ptr %i.bf, i64 %.sroa.7.0170
  %i.bh = getelementptr inbounds nuw [132 x i8], ptr %i.bg, i64 %.sroa.745.0154.us
  %i.bi = getelementptr inbounds nuw [44 x i8], ptr %i.bh, i64 %.sroa.748.0124.us.us.us
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 26
  store i8 %i.be, ptr %i.bj, align 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.7

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.7: ; preds = %bb.h, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.6
  %.sroa.049.0.ptr91.us.us.us.us.us.us.7 = getelementptr inbounds nuw i8, ptr %.sroa.046.0.ptr126.us.us.us, i64 7
  %i.bk = load i8, ptr %.sroa.049.0.ptr91.us.us.us.us.us.us.7, align 1, !noundef !5
  %i.bl = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef %i.bk) #30
  br i1 %i.bl, label %bb.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.8

bb.i:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.7
  %i.bm = tail call noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder12read_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 8) #30
  %i.bn = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.bo = getelementptr inbounds nuw [1056 x i8], ptr %i.bn, i64 %.sroa.7.0170
  %i.bp = getelementptr inbounds nuw [132 x i8], ptr %i.bo, i64 %.sroa.745.0154.us
  %i.bq = getelementptr inbounds nuw [44 x i8], ptr %i.bp, i64 %.sroa.748.0124.us.us.us
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 30
  store i8 %i.bm, ptr %i.br, align 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.8

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.8: ; preds = %bb.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.7
  %.sroa.049.0.ptr91.us.us.us.us.us.us.8 = getelementptr inbounds nuw i8, ptr %.sroa.046.0.ptr126.us.us.us, i64 8
  %i.bs = load i8, ptr %.sroa.049.0.ptr91.us.us.us.us.us.us.8, align 1, !noundef !5
  %i.bt = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef %i.bs) #30
  br i1 %i.bt, label %bb.j, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.9

bb.j:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.8
  %i.bu = tail call noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder12read_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 8) #30
  %i.bv = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.bw = getelementptr inbounds nuw [1056 x i8], ptr %i.bv, i64 %.sroa.7.0170
  %i.bx = getelementptr inbounds nuw [132 x i8], ptr %i.bw, i64 %.sroa.745.0154.us
  %i.by = getelementptr inbounds nuw [44 x i8], ptr %i.bx, i64 %.sroa.748.0124.us.us.us
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 34
  store i8 %i.bu, ptr %i.bz, align 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.9

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.9: ; preds = %bb.j, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.8
  %.sroa.049.0.ptr91.us.us.us.us.us.us.9 = getelementptr inbounds nuw i8, ptr %.sroa.046.0.ptr126.us.us.us, i64 9
  %i.ca = load i8, ptr %.sroa.049.0.ptr91.us.us.us.us.us.us.9, align 1, !noundef !5
  %i.cb = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef %i.ca) #30
  br i1 %i.cb, label %bb.k, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.us.us.us.us.us.10

bb.k:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.9
  %i.cc = tail call noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder12read_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef 8) #30
  %i.cd = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.ce = getelementptr inbounds nuw [1056 x i8], ptr %i.cd, i64 %.sroa.7.0170
  %i.cf = getelementptr inbounds nuw [132 x i8], ptr %i.ce, i64 %.sroa.745.0154.us
  %i.cg = getelementptr inbounds nuw [44 x i8], ptr %i.cf, i64 %.sroa.748.0124.us.us.us
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 38
  store i8 %i.cc, ptr %i.ch, align 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.us.us.us.us.us.10

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.us.us.us.us.us.10: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterAhjb_EENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.us.split.us.split.us.us.us.us.9, %bb.k
  %.sroa.049.0.ptr91.us.us.us.us.us.us.10 = getelementptr inbounds nuw i8, ptr %.sroa.046.0.ptr126.us.us.us, i64 10
  %i.ci = load i8, ptr %.sroa.049.0.ptr91.us.us.us.us.us.us.10, align 1, !noundef !5
end_hunk_1
