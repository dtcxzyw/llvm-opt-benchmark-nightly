Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeGenDAGPatterns?download=true
inline.NumInlined: 10200
inline.NumDeleted: 3855
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN4llvm9TypeInfer18EnforceSmallerThanERNS_15TypeSetByHwModeES2_b:bb.a
  br i1 %.not13.i233, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240, label %bb.dc

_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240:   ; preds = %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.preheader.preheader
  %.010.i231.ptr.1 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 48
  %i.iq = load i64, ptr %.010.i231.ptr.1, align 8, !tbaa !46
  %.not13.i233.1 = icmp eq i64 %i.iq, 0
  br i1 %.not13.i233.1, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.1, label %bb.dc

_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.1: ; preds = %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240
  %.010.i231.ptr.2 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 56
  %i.ir = load i64, ptr %.010.i231.ptr.2, align 8, !tbaa !46
  %.not13.i233.2 = icmp eq i64 %i.ir, 0
  br i1 %.not13.i233.2, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.2, label %bb.dc

_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.2: ; preds = %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.1
  %.010.i231.ptr.3 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 64
  %i.is = load i64, ptr %.010.i231.ptr.3, align 8, !tbaa !46
  %.not13.i233.3 = icmp eq i64 %i.is, 0
  br i1 %.not13.i233.3, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.3, label %bb.dc

_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.3: ; preds = %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.2
  %.010.i231.ptr.4 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 72
  %i.it = load i64, ptr %.010.i231.ptr.4, align 8, !tbaa !46
  %.not13.i233.4 = icmp eq i64 %i.it, 0
  br i1 %.not13.i233.4, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.4, label %bb.dc

_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.4: ; preds = %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.3
  %.010.i231.ptr.5 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 80
  %i.iu = load i64, ptr %.010.i231.ptr.5, align 8, !tbaa !46
  %.not13.i233.5 = icmp eq i64 %i.iu, 0
  br i1 %.not13.i233.5, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.5, label %bb.dc

_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.5: ; preds = %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.4
  %.010.i231.ptr.6 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 88
  %i.iv = load i64, ptr %.010.i231.ptr.6, align 8, !tbaa !46
  %.not13.i233.6 = icmp eq i64 %i.iv, 0
  br i1 %.not13.i233.6, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.6, label %bb.dc

_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.6: ; preds = %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.5
  %.010.i231.ptr.7 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 96
  %i.iw = load i64, ptr %.010.i231.ptr.7, align 8, !tbaa !46
  %.not13.i233.7 = icmp eq i64 %i.iw, 0
  br i1 %.not13.i233.7, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.thread, label %bb.dc

_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.thread: ; preds = %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.6
  br i1 %.not21.i.i.i.i, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.thread.thread, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit230

_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.thread.thread: ; preds = %bb.be, %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.thread
  %.010.i226.ptr.1 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 48
  %i.ix = load i64, ptr %.010.i226.ptr.1, align 8, !tbaa !46
  %.not13.i228.1 = icmp eq i64 %i.ix, 0
  br i1 %.not13.i228.1, label %bb.bf, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit230

bb.bf:                                            ; preds = %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.thread.thread
  %.010.i226.ptr.2 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 56
  %i.iy = load i64, ptr %.010.i226.ptr.2, align 8, !tbaa !46
  %.not13.i228.2 = icmp eq i64 %i.iy, 0
  br i1 %.not13.i228.2, label %bb.bg, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit230

bb.bg:                                            ; preds = %bb.bf
  %.010.i226.ptr.3 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 64
  %i.iz = load i64, ptr %.010.i226.ptr.3, align 8, !tbaa !46
  %.not13.i228.3 = icmp eq i64 %i.iz, 0
  br i1 %.not13.i228.3, label %bb.bh, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit230

bb.bh:                                            ; preds = %bb.bg
  %.010.i226.ptr.4 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 72
  %i.ja = load i64, ptr %.010.i226.ptr.4, align 8, !tbaa !46
  %.not13.i228.4 = icmp eq i64 %i.ja, 0
  br i1 %.not13.i228.4, label %bb.bi, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit230

bb.bi:                                            ; preds = %bb.bh
  %.010.i226.ptr.5 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 80
  %i.jb = load i64, ptr %.010.i226.ptr.5, align 8, !tbaa !46
  %.not13.i228.5 = icmp eq i64 %i.jb, 0
  br i1 %.not13.i228.5, label %bb.bj, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit230

bb.bj:                                            ; preds = %bb.bi
  %.010.i226.ptr.6 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 88
  %i.jc = load i64, ptr %.010.i226.ptr.6, align 8, !tbaa !46
  %.not13.i228.6 = icmp eq i64 %i.jc, 0
  br i1 %.not13.i228.6, label %bb.bk, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit230

bb.bk:                                            ; preds = %bb.bj
  %.010.i226.ptr.7 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 96
  %i.jd = load i64, ptr %.010.i226.ptr.7, align 8, !tbaa !46
  %.not13.i228.7 = icmp eq i64 %i.jd, 0
  br i1 %.not13.i228.7, label %.preheader.preheader, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit230

.preheader.preheader:                             ; preds = %bb.bk
  %i.je = load i64, ptr %.0.i265.ptr.ptr.ptr, align 8, !tbaa !46
  %.not13.i = icmp eq i64 %i.je, 0
  br i1 %.not13.i, label %.preheader.1, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit230

.preheader.1:                                     ; preds = %.preheader.preheader
  %.010.i.ptr.1 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 48
  %i.jf = load i64, ptr %.010.i.ptr.1, align 8, !tbaa !46
  %.not13.i.1 = icmp eq i64 %i.jf, 0
  br i1 %.not13.i.1, label %.preheader.2, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit230

.preheader.2:                                     ; preds = %.preheader.1
  %.010.i.ptr.2 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 56
  %i.jg = load i64, ptr %.010.i.ptr.2, align 8, !tbaa !46
  %.not13.i.2 = icmp eq i64 %i.jg, 0
  br i1 %.not13.i.2, label %.preheader.3, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit230

.preheader.3:                                     ; preds = %.preheader.2
  %.010.i.ptr.3 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 64
  %i.jh = load i64, ptr %.010.i.ptr.3, align 8, !tbaa !46
  %.not13.i.3 = icmp eq i64 %i.jh, 0
  br i1 %.not13.i.3, label %.preheader.4, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit230

.preheader.4:                                     ; preds = %.preheader.3
  %.010.i.ptr.4 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 72
  %i.ji = load i64, ptr %.010.i.ptr.4, align 8, !tbaa !46
  %.not13.i.4 = icmp eq i64 %i.ji, 0
  br i1 %.not13.i.4, label %.preheader.5, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit230

.preheader.5:                                     ; preds = %.preheader.4
  %.010.i.ptr.5 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 80
  %i.jj = load i64, ptr %.010.i.ptr.5, align 8, !tbaa !46
  %.not13.i.5 = icmp eq i64 %i.jj, 0
  br i1 %.not13.i.5, label %.preheader.6, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit230

.preheader.6:                                     ; preds = %.preheader.5
  %.010.i.ptr.6 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 88
  %i.jk = load i64, ptr %.010.i.ptr.6, align 8, !tbaa !46
  %.not13.i.6 = icmp eq i64 %i.jk, 0
  br i1 %.not13.i.6, label %.preheader.7, label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit230

.preheader.7:                                     ; preds = %.preheader.6
  %.010.i.ptr.7 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 96
  %i.jl = load i64, ptr %.010.i.ptr.7, align 8, !tbaa !46
  %.not13.i.7 = icmp ne i64 %i.jl, 0
  br label %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit230

_ZNK4llvm19MachineValueTypeSet5emptyEv.exit230:   ; preds = %.preheader.7, %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.thread, %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.thread.thread, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6
  %i.jm = phi i1 [ true, %.preheader.4 ], [ true, %.preheader.preheader ], [ true, %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.thread ], [ true, %.preheader.1 ], [ %.not13.i.7, %.preheader.7 ], [ true, %.preheader.2 ], [ true, %.preheader.5 ], [ true, %.preheader.3 ], [ true, %.preheader.6 ], [ true, %bb.bk ], [ true, %bb.bj ], [ true, %bb.bi ], [ true, %bb.bh ], [ true, %bb.bg ], [ true, %bb.bf ], [ true, %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.thread.thread ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.ptr.ptr, i8 0, i64 64, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i265.ptr.ptr.ptr, i8 0, i64 64, i1 false)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.aw, %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit230, %bb.ax, %bb.ac
  %.3166 = phi i1 [ %i.eq, %bb.ac ], [ %i.hz, %bb.aw ], [ %.21651011, %bb.ax ], [ %i.jm, %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit230 ] ; 2 uses
  %i.jn = load i64, ptr %.0.i.ptr.ptr, align 8, !tbaa !46 ; 3 uses
  %.not21.i.i.i.i388 = icmp eq i64 %i.jn, 0       ; 2 uses
  br i1 %.not21.i.i.i.i388, label %bb.bm, label %.lr.ph.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.jo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 48
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !46 ; 2 uses
  %.not21.i.1.i.i.i393 = icmp eq i64 %i.jp, 0
  br i1 %.not21.i.1.i.i.i393, label %bb.bn, label %.lr.ph.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.jq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 56
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !46 ; 2 uses
  %.not21.i.2.i.i.i394 = icmp eq i64 %i.jr, 0
  br i1 %.not21.i.2.i.i.i394, label %bb.bo, label %.lr.ph.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.js = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 64
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !46 ; 2 uses
  %.not21.i.3.i.i.i395 = icmp eq i64 %i.jt, 0
  br i1 %.not21.i.3.i.i.i395, label %bb.bp, label %.lr.ph.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.ju = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 72
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !46 ; 2 uses
  %.not21.i.4.i.i.i396 = icmp eq i64 %i.jv, 0
  br i1 %.not21.i.4.i.i.i396, label %bb.bq, label %.lr.ph.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.jw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 80
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !46 ; 2 uses
  %.not21.i.5.i.i.i397 = icmp eq i64 %i.jx, 0
  br i1 %.not21.i.5.i.i.i397, label %bb.br, label %.lr.ph.i.i.i.i.i

bb.br:                                            ; preds = %bb.bq
  %i.jy = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 88
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !46 ; 2 uses
  %.not21.i.6.i.i.i398 = icmp eq i64 %i.jz, 0
  br i1 %.not21.i.6.i.i.i398, label %bb.bs, label %.lr.ph.i.i.i.i.i

bb.bs:                                            ; preds = %bb.br
  %i.ka = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 96
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !46 ; 2 uses
  %.not21.i.7.i.i.i399 = icmp eq i64 %i.kb, 0
  br i1 %.not21.i.7.i.i.i399, label %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread.thread.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl
  %.02026.i.lcssa.wide.i.i.i389 = phi i32 [ 0, %bb.bl ], [ 64, %bb.bm ], [ 128, %bb.bn ], [ 192, %bb.bo ], [ 256, %bb.bp ], [ 320, %bb.bq ], [ 384, %bb.br ], [ 448, %bb.bs ]
  %.lcssa.i.i.i390 = phi i64 [ %i.jn, %bb.bl ], [ %i.jp, %bb.bm ], [ %i.jr, %bb.bn ], [ %i.jt, %bb.bo ], [ %i.jv, %bb.bp ], [ %i.jx, %bb.bq ], [ %i.jz, %bb.br ], [ %i.kb, %bb.bs ]
  %i.kc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i.i390, i1 true)
  %i.kd = trunc nuw nsw i64 %i.kc to i32
  %i.ke = or disjoint i32 %.02026.i.lcssa.wide.i.i.i389, %i.kd
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.5.016.i.i.i.i.i = phi i32 [ %i.la, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i.i.i.i.i ], [ %i.ke, %.lr.ph.i.i.i.i.i ]
  %.sroa.5.016.fr.i.i.i.i.i = freeze i32 %.sroa.5.016.i.i.i.i.i ; 2 uses
  %i.kf = trunc i32 %.sroa.5.016.fr.i.i.i.i.i to i16
  %i.kg = add i16 %i.kf, -19
  %spec.select.i.i711 = icmp ult i16 %i.kg, 197
  br i1 %spec.select.i.i711, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.split.i.i.i.i.i
  %i.kh = add i32 %.sroa.5.016.fr.i.i.i.i.i, 1    ; 2 uses
  %i.ki = lshr i32 %i.kh, 6                       ; 4 uses
  %.not25.i.i.i.i.i.i = icmp eq i32 %i.ki, 8
  br i1 %.not25.i.i.i.i.i.i, label %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread, label %.lr.ph.i.i.i.i.i.i391

.lr.ph.i.i.i.i.i.i391:                            ; preds = %bb.bt
  %i.kj = and i32 %i.kh, 63                       ; 2 uses
  %i.kk = sub nuw nsw i32 64, %i.kj
  %.not.i.i.i.i.i = icmp eq i32 %i.kj, 0
  %i.kl = zext nneg i32 %i.kk to i64
  %i.km = lshr i64 -1, %i.kl
  %i.kn = xor i64 %i.km, -1
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.split.us.i.i.i.i.i, label %.lr.ph.i.split.i.i.i.i.i

.lr.ph.i.split.us.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i391, %bb.bu
  %.02026.i.us.i.i.i.i.i = phi i32 [ %i.kr, %bb.bu ], [ %i.ki, %.lr.ph.i.i.i.i.i.i391 ] ; 3 uses
  %i.ko = zext i32 %.02026.i.us.i.i.i.i.i to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %.0.i.ptr.ptr, i64 %i.ko
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !46 ; 2 uses
  %.not21.i.us.i.i.i.i.i = icmp eq i64 %i.kq, 0
  br i1 %.not21.i.us.i.i.i.i.i, label %bb.bu, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i.i.i.i.i

bb.bu:                                            ; preds = %.lr.ph.i.split.us.i.i.i.i.i
  %i.kr = add i32 %.02026.i.us.i.i.i.i.i, 1       ; 2 uses
  %.not.i.us.i.i.i.i.i = icmp eq i32 %i.kr, 8
  br i1 %.not.i.us.i.i.i.i.i, label %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread, label %.lr.ph.i.split.us.i.i.i.i.i, !llvm.loop !5

.lr.ph.i.split.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i391, %bb.bv
  %.02026.i.i.i.i.i.i = phi i32 [ %i.kw, %bb.bv ], [ %i.ki, %.lr.ph.i.i.i.i.i.i391 ] ; 4 uses
  %i.ks = zext i32 %.02026.i.i.i.i.i.i to i64
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.0.i.ptr.ptr, i64 %i.ks
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !46
  %i.kv = icmp eq i32 %.02026.i.i.i.i.i.i, %i.ki
  %spec.select32.i.i.i.i.i = select i1 %i.kv, i64 %i.kn, i64 -1
  %spec.select27.i.i.i.i.i.i = and i64 %spec.select32.i.i.i.i.i, %i.ku ; 2 uses
  %.not21.i.i.i.i.i.i = icmp eq i64 %spec.select27.i.i.i.i.i.i, 0
  br i1 %.not21.i.i.i.i.i.i, label %bb.bv, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i.i.i.i.i

bb.bv:                                            ; preds = %.lr.ph.i.split.i.i.i.i.i
  %i.kw = add i32 %.02026.i.i.i.i.i.i, 1          ; 2 uses
  %.not.i.i.i.i.i.i392 = icmp eq i32 %i.kw, 8
  br i1 %.not.i.i.i.i.i.i392, label %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread, label %.lr.ph.i.split.i.i.i.i.i, !llvm.loop !5

_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i.i.i.i.i: ; preds = %.lr.ph.i.split.i.i.i.i.i, %.lr.ph.i.split.us.i.i.i.i.i
  %.us-phi.i.i.i.i.i = phi i32 [ %.02026.i.us.i.i.i.i.i, %.lr.ph.i.split.us.i.i.i.i.i ], [ %.02026.i.i.i.i.i.i, %.lr.ph.i.split.i.i.i.i.i ]
  %.us-phi14.i.i.i.i.i = phi i64 [ %i.kq, %.lr.ph.i.split.us.i.i.i.i.i ], [ %spec.select27.i.i.i.i.i.i, %.lr.ph.i.split.i.i.i.i.i ]
  %i.kx = shl i32 %.us-phi.i.i.i.i.i, 6
  %i.ky = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.us-phi14.i.i.i.i.i, i1 true)
  %i.kz = trunc nuw nsw i64 %i.ky to i32
  %i.la = or disjoint i32 %i.kx, %i.kz            ; 2 uses
  %.not34.i.i.i.i.i = icmp eq i32 %i.la, 512
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread, label %.lr.ph.split.i.i.i.i.i, !llvm.loop !597

bb.bw:                                            ; preds = %.lr.ph.split.i.i.i.i.i
  %i.lb = load i64, ptr %.0.i265.ptr.ptr.ptr, align 8, !tbaa !46 ; 2 uses
  %.not21.i.i.i.i400 = icmp eq i64 %i.lb, 0
  br i1 %.not21.i.i.i.i400, label %bb.bx, label %.lr.ph.i.i.i.i.i401

bb.bx:                                            ; preds = %bb.bw
  %i.lc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 48
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !46 ; 2 uses
  %.not21.i.1.i.i.i427 = icmp eq i64 %i.ld, 0
  br i1 %.not21.i.1.i.i.i427, label %bb.by, label %.lr.ph.i.i.i.i.i401

bb.by:                                            ; preds = %bb.bx
  %i.le = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 56
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !46 ; 2 uses
  %.not21.i.2.i.i.i428 = icmp eq i64 %i.lf, 0
  br i1 %.not21.i.2.i.i.i428, label %bb.bz, label %.lr.ph.i.i.i.i.i401

bb.bz:                                            ; preds = %bb.by
  %i.lg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 64
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !46 ; 2 uses
  %.not21.i.3.i.i.i429 = icmp eq i64 %i.lh, 0
  br i1 %.not21.i.3.i.i.i429, label %bb.ca, label %.lr.ph.i.i.i.i.i401

bb.ca:                                            ; preds = %bb.bz
  %i.li = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 72
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !46 ; 2 uses
  %.not21.i.4.i.i.i430 = icmp eq i64 %i.lj, 0
  br i1 %.not21.i.4.i.i.i430, label %bb.cb, label %.lr.ph.i.i.i.i.i401

bb.cb:                                            ; preds = %bb.ca
  %i.lk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 80
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !46 ; 2 uses
  %.not21.i.5.i.i.i431 = icmp eq i64 %i.ll, 0
  br i1 %.not21.i.5.i.i.i431, label %bb.cc, label %.lr.ph.i.i.i.i.i401

bb.cc:                                            ; preds = %bb.cb
  %i.lm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 88
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !46 ; 2 uses
  %.not21.i.6.i.i.i432 = icmp eq i64 %i.ln, 0
  br i1 %.not21.i.6.i.i.i432, label %bb.cd, label %.lr.ph.i.i.i.i.i401

bb.cd:                                            ; preds = %bb.cc
  %i.lo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 96
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !46 ; 2 uses
  %.not21.i.7.i.i.i433 = icmp eq i64 %i.lp, 0
  br i1 %.not21.i.7.i.i.i433, label %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread, label %.lr.ph.i.i.i.i.i401

.lr.ph.i.i.i.i.i401:                              ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw
  %.02026.i.lcssa.wide.i.i.i402 = phi i32 [ 0, %bb.bw ], [ 64, %bb.bx ], [ 128, %bb.by ], [ 192, %bb.bz ], [ 256, %bb.ca ], [ 320, %bb.cb ], [ 384, %bb.cc ], [ 448, %bb.cd ]
  %.lcssa.i.i.i403 = phi i64 [ %i.lb, %bb.bw ], [ %i.ld, %bb.bx ], [ %i.lf, %bb.by ], [ %i.lh, %bb.bz ], [ %i.lj, %bb.ca ], [ %i.ll, %bb.cb ], [ %i.ln, %bb.cc ], [ %i.lp, %bb.cd ]
  %i.lq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i.i403, i1 true)
  %i.lr = trunc nuw nsw i64 %i.lq to i32
  %i.ls = or disjoint i32 %.02026.i.lcssa.wide.i.i.i402, %i.lr
  br label %.lr.ph.split.i.i.i.i.i404

.lr.ph.split.i.i.i.i.i404:                        ; preds = %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i.i.i.i.i415, %.lr.ph.i.i.i.i.i401
  %.sroa.5.016.i.i.i.i.i405 = phi i32 [ %i.mo, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i.i.i.i.i415 ], [ %i.ls, %.lr.ph.i.i.i.i.i401 ]
  %.sroa.5.016.fr.i.i.i.i.i406 = freeze i32 %.sroa.5.016.i.i.i.i.i405 ; 2 uses
  %i.lt = trunc i32 %.sroa.5.016.fr.i.i.i.i.i406 to i16
  %i.lu = add i16 %i.lt, -19
  %spec.select.i.i712 = icmp ult i16 %i.lu, 197
  br i1 %spec.select.i.i712, label %bb.db, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.split.i.i.i.i.i404
  %i.lv = add i32 %.sroa.5.016.fr.i.i.i.i.i406, 1 ; 2 uses
  %i.lw = lshr i32 %i.lv, 6                       ; 4 uses
  %.not25.i.i.i.i.i.i407 = icmp eq i32 %i.lw, 8
  br i1 %.not25.i.i.i.i.i.i407, label %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread, label %.lr.ph.i.i.i.i.i.i408

.lr.ph.i.i.i.i.i.i408:                            ; preds = %bb.ce
  %i.lx = and i32 %i.lv, 63                       ; 2 uses
  %i.ly = sub nuw nsw i32 64, %i.lx
  %.not.i.i.i.i.i409 = icmp eq i32 %i.lx, 0
  %i.lz = zext nneg i32 %i.ly to i64
  %i.ma = lshr i64 -1, %i.lz
  %i.mb = xor i64 %i.ma, -1
  br i1 %.not.i.i.i.i.i409, label %.lr.ph.i.split.us.i.i.i.i.i423, label %.lr.ph.i.split.i.i.i.i.i410

.lr.ph.i.split.us.i.i.i.i.i423:                   ; preds = %.lr.ph.i.i.i.i.i.i408, %bb.cf
  %.02026.i.us.i.i.i.i.i424 = phi i32 [ %i.mf, %bb.cf ], [ %i.lw, %.lr.ph.i.i.i.i.i.i408 ] ; 3 uses
  %i.mc = zext i32 %.02026.i.us.i.i.i.i.i424 to i64
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %.0.i265.ptr.ptr.ptr, i64 %i.mc
  %i.me = load i64, ptr %i.md, align 8, !tbaa !46 ; 2 uses
  %.not21.i.us.i.i.i.i.i425 = icmp eq i64 %i.me, 0
  br i1 %.not21.i.us.i.i.i.i.i425, label %bb.cf, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i.i.i.i.i415

bb.cf:                                            ; preds = %.lr.ph.i.split.us.i.i.i.i.i423
  %i.mf = add i32 %.02026.i.us.i.i.i.i.i424, 1    ; 2 uses
  %.not.i.us.i.i.i.i.i426 = icmp eq i32 %i.mf, 8
  br i1 %.not.i.us.i.i.i.i.i426, label %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread, label %.lr.ph.i.split.us.i.i.i.i.i423, !llvm.loop !5

.lr.ph.i.split.i.i.i.i.i410:                      ; preds = %.lr.ph.i.i.i.i.i.i408, %bb.cg
  %.02026.i.i.i.i.i.i411 = phi i32 [ %i.mk, %bb.cg ], [ %i.lw, %.lr.ph.i.i.i.i.i.i408 ] ; 4 uses
  %i.mg = zext i32 %.02026.i.i.i.i.i.i411 to i64
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %.0.i265.ptr.ptr.ptr, i64 %i.mg
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !46
  %i.mj = icmp eq i32 %.02026.i.i.i.i.i.i411, %i.lw
  %spec.select32.i.i.i.i.i412 = select i1 %i.mj, i64 %i.mb, i64 -1
  %spec.select27.i.i.i.i.i.i413 = and i64 %spec.select32.i.i.i.i.i412, %i.mi ; 2 uses
  %.not21.i.i.i.i.i.i414 = icmp eq i64 %spec.select27.i.i.i.i.i.i413, 0
  br i1 %.not21.i.i.i.i.i.i414, label %bb.cg, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i.i.i.i.i415

bb.cg:                                            ; preds = %.lr.ph.i.split.i.i.i.i.i410
  %i.mk = add i32 %.02026.i.i.i.i.i.i411, 1       ; 2 uses
  %.not.i.i.i.i.i.i422 = icmp eq i32 %i.mk, 8
  br i1 %.not.i.i.i.i.i.i422, label %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread, label %.lr.ph.i.split.i.i.i.i.i410, !llvm.loop !5

_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i.i.i.i.i415: ; preds = %.lr.ph.i.split.i.i.i.i.i410, %.lr.ph.i.split.us.i.i.i.i.i423
  %.us-phi.i.i.i.i.i416 = phi i32 [ %.02026.i.us.i.i.i.i.i424, %.lr.ph.i.split.us.i.i.i.i.i423 ], [ %.02026.i.i.i.i.i.i411, %.lr.ph.i.split.i.i.i.i.i410 ]
  %.us-phi14.i.i.i.i.i417 = phi i64 [ %i.me, %.lr.ph.i.split.us.i.i.i.i.i423 ], [ %spec.select27.i.i.i.i.i.i413, %.lr.ph.i.split.i.i.i.i.i410 ]
  %i.ml = shl i32 %.us-phi.i.i.i.i.i416, 6
  %i.mm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.us-phi14.i.i.i.i.i417, i1 true)
  %i.mn = trunc nuw nsw i64 %i.mm to i32
  %i.mo = or disjoint i32 %i.ml, %i.mn            ; 2 uses
  %.not34.i.i.i.i.i418 = icmp eq i32 %i.mo, 512
  br i1 %.not34.i.i.i.i.i418, label %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread, label %.lr.ph.split.i.i.i.i.i404, !llvm.loop !597

_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread: ; preds = %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i.i.i.i.i, %bb.bt, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i.i.i.i.i415, %bb.ce, %bb.bv, %bb.bu, %bb.cg, %bb.cf, %bb.cd
  br i1 %.not21.i.i.i.i388, label %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread.thread, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i

_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread.thread: ; preds = %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread
  %.phi.trans.insert1170 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 48
  %.pre1171 = load i64, ptr %.phi.trans.insert1170, align 8, !tbaa !46 ; 2 uses
  %.not21.i.1.i = icmp eq i64 %.pre1171, 0
  br i1 %.not21.i.1.i, label %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread.thread.thread, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i

_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread.thread.thread: ; preds = %bb.bs, %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread.thread
  %i.mp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 56
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !46 ; 2 uses
  %.not21.i.2.i = icmp eq i64 %i.mq, 0
  br i1 %.not21.i.2.i, label %bb.ch, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i

bb.ch:                                            ; preds = %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread.thread.thread
  %i.mr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 64
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !46 ; 2 uses
  %.not21.i.3.i = icmp eq i64 %i.ms, 0
  br i1 %.not21.i.3.i, label %bb.ci, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i

bb.ci:                                            ; preds = %bb.ch
  %i.mt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 72
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !46 ; 2 uses
  %.not21.i.4.i = icmp eq i64 %i.mu, 0
  br i1 %.not21.i.4.i, label %bb.cj, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i

bb.cj:                                            ; preds = %bb.ci
  %i.mv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 80
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !46 ; 2 uses
  %.not21.i.5.i = icmp eq i64 %i.mw, 0
  br i1 %.not21.i.5.i, label %bb.ck, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i

bb.ck:                                            ; preds = %bb.cj
  %i.mx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 88
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !46 ; 2 uses
  %.not21.i.6.i = icmp eq i64 %i.my, 0
  br i1 %.not21.i.6.i, label %bb.cl, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i

bb.cl:                                            ; preds = %bb.ck
  %i.mz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i, i64 96
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !46 ; 2 uses
  %.not21.i.7.i = icmp eq i64 %i.na, 0
  br i1 %.not21.i.7.i, label %_ZL9berase_ifIPFbN4llvm3MVTEEEbRNS0_19MachineValueTypeSetET_.exit, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i

_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i: ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread.thread.thread, %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread.thread, %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread
  %.02026.i.lcssa.wide.i = phi i32 [ 0, %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread ], [ 64, %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread.thread ], [ 128, %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread.thread.thread ], [ 192, %bb.ch ], [ 256, %bb.ci ], [ 320, %bb.cj ], [ 384, %bb.ck ], [ 448, %bb.cl ]
  %.lcssa49.i = phi i64 [ %i.jn, %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread ], [ %.pre1171, %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread.thread ], [ %i.mq, %_ZN4llvm7none_ofIRNS_19MachineValueTypeSetEPFbNS_3MVTEEEEbOT_T0_.exit.thread.thread.thread ], [ %i.ms, %bb.ch ], [ %i.mu, %bb.ci ], [ %i.mw, %bb.cj ], [ %i.my, %bb.ck ], [ %i.na, %bb.cl ]
  %i.nb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa49.i, i1 true)
  %i.nc = trunc nuw nsw i64 %i.nb to i32
  %i.nd = or disjoint i32 %.02026.i.lcssa.wide.i, %i.nc
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit22.i, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i
  %.040.i = phi i1 [ %.1.i435, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit22.i ], [ false, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i ]
  %.sroa.5.039.i = phi i32 [ %i.oj, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit22.i ], [ %i.nd, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i ]
  %.sroa.5.039.fr.i = freeze i32 %.sroa.5.039.i   ; 4 uses
  %i.ne = trunc i32 %.sroa.5.039.fr.i to i16
  %i.nf = add i16 %i.ne, -19
  %spec.select.i.i713 = icmp ult i16 %i.nf, 197
  br i1 %spec.select.i.i713, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.lr.ph.i
  %i.ng = and i32 %.sroa.5.039.fr.i, 63
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = shl nuw i64 1, %i.nh
  %i.nj = xor i64 %i.ni, -1
  %i.nk = lshr i32 %.sroa.5.039.fr.i, 6
  %i.nl = and i32 %i.nk, 1023
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %.0.i.ptr.ptr, i64 %i.nm ; 2 uses
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !46
  %i.np = and i64 %i.no, %i.nj
  store i64 %i.np, ptr %i.nn, align 8, !tbaa !46
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.lr.ph.i
  %.1.i435 = phi i1 [ true, %bb.cm ], [ %.040.i, %.lr.ph.i ] ; 5 uses
  %i.nq = add i32 %.sroa.5.039.fr.i, 1            ; 2 uses
  %i.nr = lshr i32 %i.nq, 6                       ; 4 uses
  %.not25.i.i = icmp eq i32 %i.nr, 8
  br i1 %.not25.i.i, label %_ZL9berase_ifIPFbN4llvm3MVTEEEbRNS0_19MachineValueTypeSetET_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cn
  %i.ns = and i32 %i.nq, 63                       ; 2 uses
  %i.nt = sub nuw nsw i32 64, %i.ns
  %.not42.i = icmp eq i32 %i.ns, 0
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = lshr i64 -1, %i.nu
  %i.nw = xor i64 %i.nv, -1
  br i1 %.not42.i, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i, %bb.co
  %.02026.i18.us.i = phi i32 [ %i.oa, %bb.co ], [ %i.nr, %.lr.ph.i.i ] ; 3 uses
  %i.nx = zext i32 %.02026.i18.us.i to i64
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %.0.i.ptr.ptr, i64 %i.nx
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !46 ; 2 uses
  %.not21.i19.us.i = icmp eq i64 %i.nz, 0
  br i1 %.not21.i19.us.i, label %bb.co, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit22.i

bb.co:                                            ; preds = %.lr.ph.i.split.us.i
  %i.oa = add i32 %.02026.i18.us.i, 1             ; 2 uses
  %.not.i21.us.i = icmp eq i32 %i.oa, 8
  br i1 %.not.i21.us.i, label %_ZL9berase_ifIPFbN4llvm3MVTEEEbRNS0_19MachineValueTypeSetET_.exit, label %.lr.ph.i.split.us.i, !llvm.loop !5

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i, %bb.cp
  %.02026.i18.i = phi i32 [ %i.of, %bb.cp ], [ %i.nr, %.lr.ph.i.i ] ; 4 uses
  %i.ob = zext i32 %.02026.i18.i to i64
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.ptr.ptr, i64 %i.ob
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !46
  %i.oe = icmp eq i32 %.02026.i18.i, %i.nr
  %spec.select.i = select i1 %i.oe, i64 %i.nw, i64 -1
  %spec.select27.i.i = and i64 %spec.select.i, %i.od ; 2 uses
  %.not21.i19.i = icmp eq i64 %spec.select27.i.i, 0
  br i1 %.not21.i19.i, label %bb.cp, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit22.i

bb.cp:                                            ; preds = %.lr.ph.i.split.i
  %i.of = add i32 %.02026.i18.i, 1                ; 2 uses
  %.not.i21.i = icmp eq i32 %i.of, 8
  br i1 %.not.i21.i, label %_ZL9berase_ifIPFbN4llvm3MVTEEEbRNS0_19MachineValueTypeSetET_.exit, label %.lr.ph.i.split.i, !llvm.loop !5

_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit22.i: ; preds = %.lr.ph.i.split.i, %.lr.ph.i.split.us.i
  %.us-phi.i = phi i32 [ %.02026.i18.us.i, %.lr.ph.i.split.us.i ], [ %.02026.i18.i, %.lr.ph.i.split.i ]
  %.us-phi37.i = phi i64 [ %i.nz, %.lr.ph.i.split.us.i ], [ %spec.select27.i.i, %.lr.ph.i.split.i ]
  %i.og = shl i32 %.us-phi.i, 6
  %i.oh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.us-phi37.i, i1 true)
  %i.oi = trunc nuw nsw i64 %i.oh to i32
  %i.oj = or disjoint i32 %i.og, %i.oi            ; 2 uses
  %.not.i436 = icmp eq i32 %i.oj, 512
  br i1 %.not.i436, label %_ZL9berase_ifIPFbN4llvm3MVTEEEbRNS0_19MachineValueTypeSetET_.exit, label %.lr.ph.i

_ZL9berase_ifIPFbN4llvm3MVTEEEbRNS0_19MachineValueTypeSetET_.exit: ; preds = %bb.cn, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit22.i, %bb.cp, %bb.co, %bb.cl
  %.0.lcssa.i = phi i1 [ %.1.i435, %bb.cp ], [ false, %bb.cl ], [ %.1.i435, %bb.co ], [ %.1.i435, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit22.i ], [ %.1.i435, %bb.cn ]
  %i.ok = load i64, ptr %.0.i265.ptr.ptr.ptr, align 8, !tbaa !46 ; 2 uses
  %.not21.i.i437 = icmp eq i64 %i.ok, 0
  br i1 %.not21.i.i437, label %bb.cq, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i438

bb.cq:                                            ; preds = %_ZL9berase_ifIPFbN4llvm3MVTEEEbRNS0_19MachineValueTypeSetET_.exit
  %i.ol = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 48
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !46 ; 2 uses
  %.not21.i.1.i464 = icmp eq i64 %i.om, 0
  br i1 %.not21.i.1.i464, label %bb.cr, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i438

bb.cr:                                            ; preds = %bb.cq
  %i.on = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 56
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !46 ; 2 uses
  %.not21.i.2.i465 = icmp eq i64 %i.oo, 0
  br i1 %.not21.i.2.i465, label %bb.cs, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i438

bb.cs:                                            ; preds = %bb.cr
  %i.op = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 64
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !46 ; 2 uses
  %.not21.i.3.i466 = icmp eq i64 %i.oq, 0
  br i1 %.not21.i.3.i466, label %bb.ct, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i438

bb.ct:                                            ; preds = %bb.cs
  %i.or = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 72
  %i.os = load i64, ptr %i.or, align 8, !tbaa !46 ; 2 uses
  %.not21.i.4.i467 = icmp eq i64 %i.os, 0
  br i1 %.not21.i.4.i467, label %bb.cu, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i438

bb.cu:                                            ; preds = %bb.ct
  %i.ot = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 80
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !46 ; 2 uses
  %.not21.i.5.i468 = icmp eq i64 %i.ou, 0
  br i1 %.not21.i.5.i468, label %bb.cv, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i438

bb.cv:                                            ; preds = %bb.cu
  %i.ov = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 88
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !46 ; 2 uses
  %.not21.i.6.i469 = icmp eq i64 %i.ow, 0
  br i1 %.not21.i.6.i469, label %bb.cw, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i438

bb.cw:                                            ; preds = %bb.cv
  %i.ox = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i264, i64 96
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !46 ; 2 uses
  %.not21.i.7.i470 = icmp eq i64 %i.oy, 0
  br i1 %.not21.i.7.i470, label %_ZL9berase_ifIPFbN4llvm3MVTEEEbRNS0_19MachineValueTypeSetET_.exit471, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i438

_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i438: ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %_ZL9berase_ifIPFbN4llvm3MVTEEEbRNS0_19MachineValueTypeSetET_.exit
  %.02026.i.lcssa.wide.i439 = phi i32 [ 0, %_ZL9berase_ifIPFbN4llvm3MVTEEEbRNS0_19MachineValueTypeSetET_.exit ], [ 64, %bb.cq ], [ 128, %bb.cr ], [ 192, %bb.cs ], [ 256, %bb.ct ], [ 320, %bb.cu ], [ 384, %bb.cv ], [ 448, %bb.cw ]
  %.lcssa49.i440 = phi i64 [ %i.ok, %_ZL9berase_ifIPFbN4llvm3MVTEEEbRNS0_19MachineValueTypeSetET_.exit ], [ %i.om, %bb.cq ], [ %i.oo, %bb.cr ], [ %i.oq, %bb.cs ], [ %i.os, %bb.ct ], [ %i.ou, %bb.cu ], [ %i.ow, %bb.cv ], [ %i.oy, %bb.cw ]
  %i.oz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa49.i440, i1 true)
  %i.pa = trunc nuw nsw i64 %i.oz to i32
  %i.pb = or disjoint i32 %.02026.i.lcssa.wide.i439, %i.pa
  br label %.lr.ph.i441

.lr.ph.i441:                                      ; preds = %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit22.i454, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i438
  %.040.i442 = phi i1 [ %.1.i445, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit22.i454 ], [ false, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i438 ]
  %.sroa.5.039.i443 = phi i32 [ %i.qh, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit22.i454 ], [ %i.pb, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i438 ]
  %.sroa.5.039.fr.i444 = freeze i32 %.sroa.5.039.i443 ; 4 uses
  %i.pc = trunc i32 %.sroa.5.039.fr.i444 to i16
  %i.pd = add i16 %i.pc, -19
  %spec.select.i.i714 = icmp ult i16 %i.pd, 197
  br i1 %spec.select.i.i714, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.lr.ph.i441
  %i.pe = and i32 %.sroa.5.039.fr.i444, 63
  %i.pf = zext nneg i32 %i.pe to i64
  %i.pg = shl nuw i64 1, %i.pf
  %i.ph = xor i64 %i.pg, -1
  %i.pi = lshr i32 %.sroa.5.039.fr.i444, 6
  %i.pj = and i32 %i.pi, 1023
  %i.pk = zext nneg i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %.0.i265.ptr.ptr.ptr, i64 %i.pk ; 2 uses
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !46
  %i.pn = and i64 %i.pm, %i.ph
  store i64 %i.pn, ptr %i.pl, align 8, !tbaa !46
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.lr.ph.i441
  %.1.i445 = phi i1 [ true, %bb.cx ], [ %.040.i442, %.lr.ph.i441 ] ; 5 uses
  %i.po = add i32 %.sroa.5.039.fr.i444, 1         ; 2 uses
  %i.pp = lshr i32 %i.po, 6                       ; 4 uses
  %.not25.i.i446 = icmp eq i32 %i.pp, 8
  br i1 %.not25.i.i446, label %_ZL9berase_ifIPFbN4llvm3MVTEEEbRNS0_19MachineValueTypeSetET_.exit471, label %.lr.ph.i.i447

.lr.ph.i.i447:                                    ; preds = %bb.cy
  %i.pq = and i32 %i.po, 63                       ; 2 uses
  %i.pr = sub nuw nsw i32 64, %i.pq
  %.not42.i448 = icmp eq i32 %i.pq, 0
  %i.ps = zext nneg i32 %i.pr to i64
  %i.pt = lshr i64 -1, %i.ps
  %i.pu = xor i64 %i.pt, -1
  br i1 %.not42.i448, label %.lr.ph.i.split.us.i460, label %.lr.ph.i.split.i449

.lr.ph.i.split.us.i460:                           ; preds = %.lr.ph.i.i447, %bb.cz
  %.02026.i18.us.i461 = phi i32 [ %i.py, %bb.cz ], [ %i.pp, %.lr.ph.i.i447 ] ; 3 uses
  %i.pv = zext i32 %.02026.i18.us.i461 to i64
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %.0.i265.ptr.ptr.ptr, i64 %i.pv
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !46 ; 2 uses
  %.not21.i19.us.i462 = icmp eq i64 %i.px, 0
  br i1 %.not21.i19.us.i462, label %bb.cz, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit22.i454

bb.cz:                                            ; preds = %.lr.ph.i.split.us.i460
  %i.py = add i32 %.02026.i18.us.i461, 1          ; 2 uses
  %.not.i21.us.i463 = icmp eq i32 %i.py, 8
  br i1 %.not.i21.us.i463, label %_ZL9berase_ifIPFbN4llvm3MVTEEEbRNS0_19MachineValueTypeSetET_.exit471, label %.lr.ph.i.split.us.i460, !llvm.loop !5

.lr.ph.i.split.i449:                              ; preds = %.lr.ph.i.i447, %bb.da
  %.02026.i18.i450 = phi i32 [ %i.qd, %bb.da ], [ %i.pp, %.lr.ph.i.i447 ] ; 4 uses
  %i.pz = zext i32 %.02026.i18.i450 to i64
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %.0.i265.ptr.ptr.ptr, i64 %i.pz
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !46
  %i.qc = icmp eq i32 %.02026.i18.i450, %i.pp
  %spec.select.i451 = select i1 %i.qc, i64 %i.pu, i64 -1
  %spec.select27.i.i452 = and i64 %spec.select.i451, %i.qb ; 2 uses
  %.not21.i19.i453 = icmp eq i64 %spec.select27.i.i452, 0
  br i1 %.not21.i19.i453, label %bb.da, label %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit22.i454

bb.da:                                            ; preds = %.lr.ph.i.split.i449
  %i.qd = add i32 %.02026.i18.i450, 1             ; 2 uses
  %.not.i21.i459 = icmp eq i32 %i.qd, 8
  br i1 %.not.i21.i459, label %_ZL9berase_ifIPFbN4llvm3MVTEEEbRNS0_19MachineValueTypeSetET_.exit471, label %.lr.ph.i.split.i449, !llvm.loop !5

_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit22.i454: ; preds = %.lr.ph.i.split.i449, %.lr.ph.i.split.us.i460
  %.us-phi.i455 = phi i32 [ %.02026.i18.us.i461, %.lr.ph.i.split.us.i460 ], [ %.02026.i18.i450, %.lr.ph.i.split.i449 ]
  %.us-phi37.i456 = phi i64 [ %i.px, %.lr.ph.i.split.us.i460 ], [ %spec.select27.i.i452, %.lr.ph.i.split.i449 ]
  %i.qe = shl i32 %.us-phi.i455, 6
  %i.qf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.us-phi37.i456, i1 true)
  %i.qg = trunc nuw nsw i64 %i.qf to i32
  %i.qh = or disjoint i32 %i.qe, %i.qg            ; 2 uses
  %.not.i457 = icmp eq i32 %i.qh, 512
  br i1 %.not.i457, label %_ZL9berase_ifIPFbN4llvm3MVTEEEbRNS0_19MachineValueTypeSetET_.exit471, label %.lr.ph.i441

_ZL9berase_ifIPFbN4llvm3MVTEEEbRNS0_19MachineValueTypeSetET_.exit471: ; preds = %bb.cy, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit22.i454, %bb.da, %bb.cz, %bb.cw
  %.0.lcssa.i458 = phi i1 [ %.1.i445, %bb.da ], [ false, %bb.cw ], [ %.1.i445, %bb.cz ], [ %.1.i445, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit22.i454 ], [ %.1.i445, %bb.cy ]
  %i.qi = or i1 %.0.lcssa.i, %.0.lcssa.i458
  %i.qj = or i1 %i.qi, %.3166
  br label %bb.db

bb.db:                                            ; preds = %.lr.ph.split.i.i.i.i.i404, %_ZL9berase_ifIPFbN4llvm3MVTEEEbRNS0_19MachineValueTypeSetET_.exit471
  %.5.ph = phi i1 [ %i.qj, %_ZL9berase_ifIPFbN4llvm3MVTEEEbRNS0_19MachineValueTypeSetET_.exit471 ], [ %.3166, %.lr.ph.split.i.i.i.i.i404 ] ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.01681010, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.qk, %i.z
  br i1 %.not, label %.thread826, label %bb.g

bb.dc:                                            ; preds = %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.6, %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.5, %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.4, %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.3, %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.2, %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.1, %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240, %_ZNK4llvm19MachineValueTypeSet5emptyEv.exit240.preheader.preheader
  %i.ql = load ptr, ptr %0, align 8, !tbaa !120, !nonnull !113, !align !121
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.qm = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.qn = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.qn, align 1, !tbaa !153
  store ptr @.str.5, ptr %7, align 8, !tbaa !59
  store i8 3, ptr %i.qm, align 8, !tbaa !154
  call void @_ZN4llvm11TreePattern5errorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(200) %i.ql, ptr noundef nonnull align 8 dereferenceable(34) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %.loopexit

.thread826:                                       ; preds = %bb.db
  %.pre1172 = load ptr, ptr %6, align 8, !tbaa !105 ; 2 uses
  %.pre1173 = load i32, ptr %i.u, align 8, !tbaa !106 ; 2 uses
  %i.qo = zext i32 %.pre1173 to i64
  %.idx1018 = shl nuw nsw i64 %i.qo, 2
  %i.qp = getelementptr inbounds nuw i8, ptr %.pre1172, i64 %.idx1018
  %.not1701013 = icmp eq i32 %.pre1173, 0
  br i1 %.not1701013, label %.loopexit, label %.lr.ph1016

.lr.ph1016:                                       ; preds = %.thread826
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.qu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.dd

bb.dd:                                            ; preds = %.lr.ph1016, %"_ZL6max_ifIN4llvm19MachineValueTypeSet14const_iteratorEPFbNS0_3MVTEEZNS0_9TypeInfer18EnforceSmallerThanERNS0_15TypeSetByHwModeES8_bE3$_2ET_SA_SA_T0_T1_.exit695.thread"
  %.71015 = phi i1 [ %.5.ph, %.lr.ph1016 ], [ %.11, %"_ZL6max_ifIN4llvm19MachineValueTypeSet14const_iteratorEPFbNS0_3MVTEEZNS0_9TypeInfer18EnforceSmallerThanERNS0_15TypeSetByHwModeES8_bE3$_2ET_SA_SA_T0_T1_.exit695.thread" ] ; 3 uses
  %.01691014 = phi ptr [ %.pre1172, %.lr.ph1016 ], [ %i.abu, %"_ZL6max_ifIN4llvm19MachineValueTypeSet14const_iteratorEPFbNS0_3MVTEEZNS0_9TypeInfer18EnforceSmallerThanERNS0_15TypeSetByHwModeES8_bE3$_2ET_SA_SA_T0_T1_.exit695.thread" ] ; 2 uses
  %i.qw = load i32, ptr %.01691014, align 4, !tbaa !90 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.qw, ptr %i.b, align 4, !tbaa !90
  %i.qx = load ptr, ptr %i.qq, align 8, !tbaa !68 ; 2 uses
  %.not10.i.i.i.i472 = icmp eq ptr %i.qx, null
  br i1 %.not10.i.i.i.i472, label %_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread.i485, label %.lr.ph.i.i.i.i473

.lr.ph.i.i.i.i473:                                ; preds = %bb.dd, %.lr.ph.i.i.i.i473
  %.012.i.i.i.i474 = phi ptr [ %.1.i.i.i.i479, %.lr.ph.i.i.i.i473 ], [ %i.qx, %bb.dd ] ; 3 uses
  %.0811.i.i.i.i475 = phi ptr [ %.19.i.i.i.i476, %.lr.ph.i.i.i.i473 ], [ %i.qr, %bb.dd ]
  %i.qy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i474, i64 32
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !90
  %i.ra = icmp ult i32 %i.qz, %i.qw               ; 2 uses
  %.19.i.i.i.i476 = select i1 %i.ra, ptr %.0811.i.i.i.i475, ptr %.012.i.i.i.i474 ; 4 uses
  %.1.in.v.i.i.i.i477 = select i1 %i.ra, i64 24, i64 16
  %.1.in.i.i.i.i478 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i474, i64 %.1.in.v.i.i.i.i477
  %.1.i.i.i.i479 = load ptr, ptr %.1.in.i.i.i.i478, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i480 = icmp eq ptr %.1.i.i.i.i479, null
  br i1 %.not.i.i.i.i480, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm19MachineValueTypeSetEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i481, label %.lr.ph.i.i.i.i473, !llvm.loop !2

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm19MachineValueTypeSetEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i481: ; preds = %.lr.ph.i.i.i.i473
  %i.rb = icmp eq ptr %.19.i.i.i.i476, %i.qr
  br i1 %i.rb, label %_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread.i485, label %_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.i482

_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.i482: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm19MachineValueTypeSetEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i481
  %i.rc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i476, i64 32
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !90
  %i.re = icmp ult i32 %i.qw, %i.rd
  br i1 %i.re, label %_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread.i485, label %_ZN4llvm12InfoByHwModeINS_19MachineValueTypeSetEE3getEj.exit487

_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread.i485: ; preds = %_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.i482, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm19MachineValueTypeSetEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i481, %bb.dd
  %i.rf = load ptr, ptr %i.qs, align 8, !tbaa !69
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 40
  %i.rh = call { ptr, i8 } @_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE11try_emplaceIJRS1_EEES4_ISt17_Rb_tree_iteratorIS6_EbERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.rg)
  %.fca.0.extract.i486 = extractvalue { ptr, i8 } %i.rh, 0
  br label %_ZN4llvm12InfoByHwModeINS_19MachineValueTypeSetEE3getEj.exit487

_ZN4llvm12InfoByHwModeINS_19MachineValueTypeSetEE3getEj.exit487: ; preds = %_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.i482, %_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread.i485
  %.19.i.i.i.pn.i483 = phi ptr [ %.fca.0.extract.i486, %_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread.i485 ], [ %.19.i.i.i.i476, %_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.i482 ] ; 15 uses
  %.0.i484 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i483, i64 40 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.qw, ptr %i.a, align 4, !tbaa !90
  %i.ri = load ptr, ptr %i.qt, align 8, !tbaa !68 ; 2 uses
  %.not10.i.i.i.i488 = icmp eq ptr %i.ri, null
  br i1 %.not10.i.i.i.i488, label %_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread.i501, label %.lr.ph.i.i.i.i489

.lr.ph.i.i.i.i489:                                ; preds = %_ZN4llvm12InfoByHwModeINS_19MachineValueTypeSetEE3getEj.exit487, %.lr.ph.i.i.i.i489
  %.012.i.i.i.i490 = phi ptr [ %.1.i.i.i.i495, %.lr.ph.i.i.i.i489 ], [ %i.ri, %_ZN4llvm12InfoByHwModeINS_19MachineValueTypeSetEE3getEj.exit487 ] ; 3 uses
  %.0811.i.i.i.i491 = phi ptr [ %.19.i.i.i.i492, %.lr.ph.i.i.i.i489 ], [ %i.qu, %_ZN4llvm12InfoByHwModeINS_19MachineValueTypeSetEE3getEj.exit487 ]
  %i.rj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i490, i64 32
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !90
  %i.rl = icmp ult i32 %i.rk, %i.qw               ; 2 uses
  %.19.i.i.i.i492 = select i1 %i.rl, ptr %.0811.i.i.i.i491, ptr %.012.i.i.i.i490 ; 4 uses
  %.1.in.v.i.i.i.i493 = select i1 %i.rl, i64 24, i64 16
  %.1.in.i.i.i.i494 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i490, i64 %.1.in.v.i.i.i.i493
  %.1.i.i.i.i495 = load ptr, ptr %.1.in.i.i.i.i494, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i496 = icmp eq ptr %.1.i.i.i.i495, null
  br i1 %.not.i.i.i.i496, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm19MachineValueTypeSetEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i497, label %.lr.ph.i.i.i.i489, !llvm.loop !2

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm19MachineValueTypeSetEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i497: ; preds = %.lr.ph.i.i.i.i489
  %i.rm = icmp eq ptr %.19.i.i.i.i492, %i.qu
  br i1 %i.rm, label %_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread.i501, label %_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.i498

_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.i498: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm19MachineValueTypeSetEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i497
  %i.rn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i492, i64 32
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !90
  %i.rp = icmp ult i32 %i.qw, %i.ro
  br i1 %i.rp, label %_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread.i501, label %_ZN4llvm12InfoByHwModeINS_19MachineValueTypeSetEE3getEj.exit503

_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread.i501: ; preds = %_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.i498, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm19MachineValueTypeSetEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i497, %_ZN4llvm12InfoByHwModeINS_19MachineValueTypeSetEE3getEj.exit487
  %i.rq = load ptr, ptr %i.qv, align 8, !tbaa !69
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 40
  %i.rs = call { ptr, i8 } @_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE11try_emplaceIJRS1_EEES4_ISt17_Rb_tree_iteratorIS6_EbERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.rr)
  %.fca.0.extract.i502 = extractvalue { ptr, i8 } %i.rs, 0
  br label %_ZN4llvm12InfoByHwModeINS_19MachineValueTypeSetEE3getEj.exit503

_ZN4llvm12InfoByHwModeINS_19MachineValueTypeSetEE3getEj.exit503: ; preds = %_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.i498, %_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread.i501
  %.19.i.i.i.pn.i499 = phi ptr [ %.fca.0.extract.i502, %_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread.i501 ], [ %.19.i.i.i.i492, %_ZNSt3mapIjN4llvm19MachineValueTypeSetESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.i498 ] ; 15 uses
  %.0.i500 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i499, i64 40 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.rt = load i64, ptr %.0.i484, align 8, !tbaa !46 ; 2 uses
  %.not21.i = icmp eq i64 %i.rt, 0
  br i1 %.not21.i, label %bb.de, label %.lr.ph.i507.preheader

bb.de:                                            ; preds = %_ZN4llvm12InfoByHwModeINS_19MachineValueTypeSetEE3getEj.exit503
  %i.ru = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i483, i64 48
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !46 ; 2 uses
  %.not21.i.1 = icmp eq i64 %i.rv, 0
  br i1 %.not21.i.1, label %bb.df, label %.lr.ph.i507.preheader

bb.df:                                            ; preds = %bb.de
  %i.rw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i483, i64 56
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !46 ; 2 uses
  %.not21.i.2 = icmp eq i64 %i.rx, 0
  br i1 %.not21.i.2, label %bb.dg, label %.lr.ph.i507.preheader

bb.dg:                                            ; preds = %bb.df
  %i.ry = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i483, i64 64
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !46 ; 2 uses
  %.not21.i.3 = icmp eq i64 %i.rz, 0
  br i1 %.not21.i.3, label %bb.dh, label %.lr.ph.i507.preheader

bb.dh:                                            ; preds = %bb.dg
  %i.sa = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i483, i64 72
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !46 ; 2 uses
  %.not21.i.4 = icmp eq i64 %i.sb, 0
  br i1 %.not21.i.4, label %bb.di, label %.lr.ph.i507.preheader

bb.di:                                            ; preds = %bb.dh
  %i.sc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i483, i64 80
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !46 ; 2 uses
  %.not21.i.5 = icmp eq i64 %i.sd, 0
  br i1 %.not21.i.5, label %bb.dj, label %.lr.ph.i507.preheader

bb.dj:                                            ; preds = %bb.di
  %i.se = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i483, i64 88
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !46 ; 2 uses
  %.not21.i.6 = icmp eq i64 %i.sf, 0
  br i1 %.not21.i.6, label %bb.dk, label %.lr.ph.i507.preheader

bb.dk:                                            ; preds = %bb.dj
  %i.sg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i483, i64 96
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !46 ; 2 uses
  %.not21.i.7 = icmp eq i64 %i.sh, 0
  br i1 %.not21.i.7, label %"_ZL6min_ifIN4llvm19MachineValueTypeSet14const_iteratorEPFbNS0_3MVTEEZNS0_9TypeInfer18EnforceSmallerThanERNS0_15TypeSetByHwModeES8_bE3$_2ET_SA_SA_T0_T1_.exit.thread", label %.lr.ph.i507.preheader

.lr.ph.i507.preheader:                            ; preds = %_ZN4llvm12InfoByHwModeINS_19MachineValueTypeSetEE3getEj.exit503, %bb.de, %bb.df, %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.dk
  %.02026.i.lcssa.wide = phi i32 [ 0, %_ZN4llvm12InfoByHwModeINS_19MachineValueTypeSetEE3getEj.exit503 ], [ 64, %bb.de ], [ 128, %bb.df ], [ 192, %bb.dg ], [ 256, %bb.dh ], [ 320, %bb.di ], [ 384, %bb.dj ], [ 448, %bb.dk ]
  %.lcssa = phi i64 [ %i.rt, %_ZN4llvm12InfoByHwModeINS_19MachineValueTypeSetEE3getEj.exit503 ], [ %i.rv, %bb.de ], [ %i.rx, %bb.df ], [ %i.rz, %bb.dg ], [ %i.sb, %bb.dh ], [ %i.sd, %bb.di ], [ %i.sf, %bb.dj ], [ %i.sh, %bb.dk ]
  %i.si = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa, i1 true)
  %i.sj = trunc nuw nsw i64 %i.si to i32
  %i.sk = or disjoint i32 %.02026.i.lcssa.wide, %i.sj
  br label %.lr.ph.i507

.lr.ph.i507:                                      ; preds = %.lr.ph.i507.preheader, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i516
  %.sroa.6.042.i = phi i32 [ %i.ty, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i516 ], [ %i.sk, %.lr.ph.i507.preheader ]
  %.sroa.5.041.i = phi i32 [ %.sroa.5.1.i, %_ZNK4llvm19MachineValueTypeSet14const_iterator13find_from_posEj.exit.i516 ], [ 512, %.lr.ph.i507.preheader ] ; 5 uses
  %.sroa.6.042.fr.i = freeze i32 %.sroa.6.042.i   ; 4 uses
  %i.sl = trunc i32 %.sroa.6.042.fr.i to i16
  %i.sm = add i16 %i.sl, -216
  %spec.select.i.i715 = icmp ult i16 %i.sm, -197
  br i1 %spec.select.i.i715, label %bb.dl, label %"_ZZN4llvm9TypeInfer18EnforceSmallerThanERNS_15TypeSetByHwModeES2_bENK3$_2clENS_3MVTES4_.exit.thread33.i"

bb.dl:                                            ; preds = %.lr.ph.i507
  %i.sn = icmp eq i32 %.sroa.5.041.i, 512
  br i1 %i.sn, label %"_ZZN4llvm9TypeInfer18EnforceSmallerThanERNS_15TypeSetByHwModeES2_bENK3$_2clENS_3MVTES4_.exit.thread.i", label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit.i.i

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit.i.i:    ; preds = %bb.dl
  %i.so = trunc i32 %.sroa.5.041.i to i16         ; 2 uses
  %.mask.i = and i32 %.sroa.6.042.fr.i, 65535
  %i.sp = zext nneg i32 %.mask.i to i64
  %i.sq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.sp
  %i.sr = getelementptr i8, ptr %i.sq, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.sr, align 16 ; 3 uses
  %i.ss = add i16 %i.so, -163
  %spec.select.i5.i.i = icmp ult i16 %i.ss, 53
  %i.st = add i16 %i.so, -19
  %spec.select.i.i.i6.i.i = icmp ult i16 %i.st, 197
  %.mask35.i = and i32 %.sroa.5.041.i, 65535
  %i.su = zext nneg i32 %.mask35.i to i64         ; 3 uses
  br i1 %spec.select.i.i.i6.i.i, label %bb.dm, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit9.i.i

end_hunk_0
