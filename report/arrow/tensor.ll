inline.NumInlined: 5130
inline.NumDeleted: 1400
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 139
begin_hunk_0_@_ZNK5arrow6Tensor12CountNonZeroEv:bb.a
  %i.ak = ptrtoaddr ptr %i.x to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 3 uses
  %min.iters.check297 = icmp ult i64 %i.al, 4
  br i1 %min.iters.check297, label %.lr.ph.i.i4.i.i.i.i.preheader, label %vector.ph298

vector.ph298:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i.i
  %n.vec299 = and i64 %i.al, -4                   ; 3 uses
  %i.am = getelementptr i8, ptr %i.x, i64 %n.vec299
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph298
  %index301 = phi i64 [ 0, %vector.ph298 ], [ %index.next307, %vector.body300 ] ; 2 uses
  %vec.phi302 = phi <2 x i64> [ zeroinitializer, %vector.ph298 ], [ %i.as, %vector.body300 ]
  %vec.phi303 = phi <2 x i64> [ zeroinitializer, %vector.ph298 ], [ %i.at, %vector.body300 ]
  %next.gep304 = getelementptr i8, ptr %i.x, i64 %index301 ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep304, i64 2
  %wide.load305 = load <2 x i8>, ptr %next.gep304, align 1, !tbaa !81, !noalias !258
  %wide.load306 = load <2 x i8>, ptr %i.an, align 1, !tbaa !81, !noalias !258
  %i.ao = icmp ne <2 x i8> %wide.load305, zeroinitializer
  %i.ap = icmp ne <2 x i8> %wide.load306, zeroinitializer
  %i.aq = zext <2 x i1> %i.ao to <2 x i64>
  %i.ar = zext <2 x i1> %i.ap to <2 x i64>
  %i.as = add <2 x i64> %vec.phi302, %i.aq        ; 2 uses
  %i.at = add <2 x i64> %vec.phi303, %i.ar        ; 2 uses
  %index.next307 = add nuw i64 %index301, 4       ; 2 uses
  %i.au = icmp eq i64 %index.next307, %n.vec299
  br i1 %i.au, label %middle.block308, label %vector.body300, !llvm.loop !261

middle.block308:                                  ; preds = %vector.body300
  %bin.rdx309 = add <2 x i64> %i.at, %i.as
  %i.av = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx309) ; 2 uses
  %cmp.n310 = icmp eq i64 %i.al, %n.vec299
  br i1 %cmp.n310, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i.i.preheader

.lr.ph.i.i4.i.i.i.i.preheader:                    ; preds = %.lr.ph.i.i4.preheader.i.i.i.i, %middle.block308
  %.09.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i.i ], [ %i.av, %middle.block308 ]
  %.058.i.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i4.preheader.i.i.i.i ], [ %i.am, %middle.block308 ]
  br label %.lr.ph.i.i4.i.i.i.i

.lr.ph.i.i4.i.i.i.i:                              ; preds = %.lr.ph.i.i4.i.i.i.i.preheader, %.lr.ph.i.i4.i.i.i.i
  %.09.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i, %.lr.ph.i.i4.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i4.i.i.i.i.preheader ]
  %.058.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i4.i.i.i.i ], [ %.058.i.i.i.i.i.i.ph, %.lr.ph.i.i4.i.i.i.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i.i = load i8, ptr %.058.i.i.i.i.i.i, align 1, !tbaa !81, !noalias !258
  %.not6.i.i.i.i.i.i = icmp ne i8 %.05.val.i.i.i.i.i.i, 0
  %i.aw = zext i1 %.not6.i.i.i.i.i.i to i64
  %spec.select.i.i.i.i.i.i = add nuw nsw i64 %.09.i.i.i.i.i.i, %i.aw ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.ai
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i.i, !llvm.loop !264

bb.g:                                             ; preds = %.noexc7
  %i.ay = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_8Int8TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !258
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.h:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bb = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.az, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ba)
          to label %.noexc8 unwind label %bb.av

.noexc8:                                          ; preds = %bb.h
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !84, !noalias !265 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 9
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !163, !range !53, !noalias !265, !noundef !54
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !265
  %i.bj = select i1 %i.bg, ptr %i.bi, ptr null, !prof !42 ; 6 uses
  %i.bk = load ptr, ptr %i.az, align 8, !tbaa !83, !noalias !265 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !83, !noalias !265 ; 2 uses
  %i.bn = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bn, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i105.i, label %.lr.ph.i.i.i.i.i92.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i105.i:  ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  br label %.lr.ph.i.i4.preheader.i.i.i97.i

.lr.ph.i.i.i.i.i92.i:                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i92.i
  %.06.i.i.i.i.i93.i = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i92.i ], [ 1, %bb.i ]
  %.sroa.02.05.i.i.i.i.i94.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i92.i ], [ %i.bk, %bb.i ] ; 2 uses
  %i.bp = load i64, ptr %.sroa.02.05.i.i.i.i.i94.i, align 8, !tbaa !14, !noalias !265
  %i.bq = mul nsw i64 %i.bp, %.06.i.i.i.i.i93.i   ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i94.i, i64 8 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bm
  br i1 %i.bs, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i, label %.lr.ph.i.i.i.i.i92.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i:          ; preds = %.lr.ph.i.i.i.i.i92.i
  %i.bt = getelementptr inbounds i8, ptr %i.bj, i64 %i.bq
  %.not7.i.i.i.i.i96.i = icmp eq i64 %i.bq, 0
  br i1 %.not7.i.i.i.i.i96.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i97.i

.lr.ph.i.i4.preheader.i.i.i97.i:                  ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i105.i
  %i.bu = phi ptr [ %i.bo, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i105.i ], [ %i.bt, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i ] ; 2 uses
  %i.bv = ptrtoaddr ptr %i.bu to i64
  %i.bw = ptrtoaddr ptr %i.bj to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %min.iters.check280 = icmp ult i64 %i.bx, 4
  br i1 %min.iters.check280, label %.lr.ph.i.i4.i.i.i98.i.preheader, label %vector.ph281

vector.ph281:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i97.i
  %n.vec282 = and i64 %i.bx, -4                   ; 3 uses
  %i.by = getelementptr i8, ptr %i.bj, i64 %n.vec282
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph281
  %index284 = phi i64 [ 0, %vector.ph281 ], [ %index.next290, %vector.body283 ] ; 2 uses
  %vec.phi285 = phi <2 x i64> [ zeroinitializer, %vector.ph281 ], [ %i.ce, %vector.body283 ]
  %vec.phi286 = phi <2 x i64> [ zeroinitializer, %vector.ph281 ], [ %i.cf, %vector.body283 ]
  %next.gep287 = getelementptr i8, ptr %i.bj, i64 %index284 ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep287, i64 2
  %wide.load288 = load <2 x i8>, ptr %next.gep287, align 1, !tbaa !81, !noalias !265
  %wide.load289 = load <2 x i8>, ptr %i.bz, align 1, !tbaa !81, !noalias !265
  %i.ca = icmp ne <2 x i8> %wide.load288, zeroinitializer
  %i.cb = icmp ne <2 x i8> %wide.load289, zeroinitializer
  %i.cc = zext <2 x i1> %i.ca to <2 x i64>
  %i.cd = zext <2 x i1> %i.cb to <2 x i64>
  %i.ce = add <2 x i64> %vec.phi285, %i.cc        ; 2 uses
  %i.cf = add <2 x i64> %vec.phi286, %i.cd        ; 2 uses
  %index.next290 = add nuw i64 %index284, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next290, %n.vec282
  br i1 %i.cg, label %middle.block291, label %vector.body283, !llvm.loop !268

middle.block291:                                  ; preds = %vector.body283
  %bin.rdx292 = add <2 x i64> %i.cf, %i.ce
  %i.ch = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx292) ; 2 uses
  %cmp.n293 = icmp eq i64 %i.bx, %n.vec282
  br i1 %cmp.n293, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i98.i.preheader

.lr.ph.i.i4.i.i.i98.i.preheader:                  ; preds = %.lr.ph.i.i4.preheader.i.i.i97.i, %middle.block291
  %.09.i.i.i.i.i99.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i97.i ], [ %i.ch, %middle.block291 ]
  %.058.i.i.i.i.i100.i.ph = phi ptr [ %i.bj, %.lr.ph.i.i4.preheader.i.i.i97.i ], [ %i.by, %middle.block291 ]
  br label %.lr.ph.i.i4.i.i.i98.i

.lr.ph.i.i4.i.i.i98.i:                            ; preds = %.lr.ph.i.i4.i.i.i98.i.preheader, %.lr.ph.i.i4.i.i.i98.i
  %.09.i.i.i.i.i99.i = phi i64 [ %spec.select.i.i.i.i.i103.i, %.lr.ph.i.i4.i.i.i98.i ], [ %.09.i.i.i.i.i99.i.ph, %.lr.ph.i.i4.i.i.i98.i.preheader ]
  %.058.i.i.i.i.i100.i = phi ptr [ %i.cj, %.lr.ph.i.i4.i.i.i98.i ], [ %.058.i.i.i.i.i100.i.ph, %.lr.ph.i.i4.i.i.i98.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i101.i = load i8, ptr %.058.i.i.i.i.i100.i, align 1, !tbaa !81, !noalias !265
  %.not6.i.i.i.i.i102.i = icmp ne i8 %.05.val.i.i.i.i.i101.i, 0
  %i.ci = zext i1 %.not6.i.i.i.i.i102.i to i64
  %spec.select.i.i.i.i.i103.i = add nuw nsw i64 %.09.i.i.i.i.i99.i, %i.ci ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i100.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i104.i = icmp eq ptr %i.cj, %i.bu
  br i1 %.not.i.i.i.i.i104.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i98.i, !llvm.loop !269

bb.j:                                             ; preds = %.noexc8
  %i.ck = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9UInt8TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !265
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.k:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cn = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cl, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cm)
          to label %.noexc9 unwind label %bb.av

.noexc9:                                          ; preds = %bb.k
  br i1 %i.cn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc9
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !84, !noalias !270 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 9
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !163, !range !53, !noalias !270, !noundef !54
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !270
  %i.cv = select i1 %i.cs, ptr %i.cu, ptr null, !prof !42 ; 6 uses
  %i.cw = load ptr, ptr %i.cl, align 8, !tbaa !83, !noalias !270 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !83, !noalias !270 ; 2 uses
  %i.cz = icmp eq ptr %i.cw, %i.cy
  br i1 %i.cz, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i120.i, label %.lr.ph.i.i.i.i.i107.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i120.i:  ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  br label %.lr.ph.i.i4.preheader.i.i.i112.i

.lr.ph.i.i.i.i.i107.i:                            ; preds = %bb.l, %.lr.ph.i.i.i.i.i107.i
  %.06.i.i.i.i.i108.i = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i107.i ], [ 1, %bb.l ]
  %.sroa.02.05.i.i.i.i.i109.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i107.i ], [ %i.cw, %bb.l ] ; 2 uses
  %i.db = load i64, ptr %.sroa.02.05.i.i.i.i.i109.i, align 8, !tbaa !14, !noalias !270
  %i.dc = mul nsw i64 %i.db, %.06.i.i.i.i.i108.i  ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i109.i, i64 8 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cy
  br i1 %i.de, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i, label %.lr.ph.i.i.i.i.i107.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i:         ; preds = %.lr.ph.i.i.i.i.i107.i
  %.idx.i.i.i.i = shl nsw i64 %i.dc, 1
  %i.df = getelementptr inbounds i8, ptr %i.cv, i64 %.idx.i.i.i.i
  %.not7.i.i.i.i.i111.i = icmp eq i64 %i.dc, 0
  br i1 %.not7.i.i.i.i.i111.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i112.i

.lr.ph.i.i4.preheader.i.i.i112.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i120.i
  %i.dg = phi ptr [ %i.da, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i120.i ], [ %i.df, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i ] ; 2 uses
  %i.dh = ptrtoaddr ptr %i.dg to i64
  %i.di = ptrtoaddr ptr %i.cv to i64
  %5 = sub i64 %i.dh, %i.di
  %6 = add i64 %5, -2                             ; 2 uses
  %i.dj = lshr i64 %6, 1
  %i.dk = add nuw i64 %i.dj, 1                    ; 2 uses
  %min.iters.check263 = icmp ult i64 %6, 6
  br i1 %min.iters.check263, label %.lr.ph.i.i4.i.i.i113.i.preheader, label %vector.ph264

vector.ph264:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i112.i
  %n.vec265 = and i64 %i.dk, -4                   ; 3 uses
  %i.dl = shl i64 %n.vec265, 1
  %i.dm = getelementptr i8, ptr %i.cv, i64 %i.dl
  br label %vector.body266

vector.body266:                                   ; preds = %vector.body266, %vector.ph264
  %index267 = phi i64 [ 0, %vector.ph264 ], [ %index.next273, %vector.body266 ] ; 2 uses
  %vec.phi268 = phi <2 x i64> [ zeroinitializer, %vector.ph264 ], [ %i.dt, %vector.body266 ]
  %vec.phi269 = phi <2 x i64> [ zeroinitializer, %vector.ph264 ], [ %i.du, %vector.body266 ]
  %i.dn = shl i64 %index267, 1
  %next.gep270 = getelementptr i8, ptr %i.cv, i64 %i.dn ; 2 uses
  %i.do = getelementptr i8, ptr %next.gep270, i64 4
  %wide.load271 = load <2 x i16>, ptr %next.gep270, align 2, !tbaa !273, !noalias !270
  %wide.load272 = load <2 x i16>, ptr %i.do, align 2, !tbaa !273, !noalias !270
  %i.dp = icmp ne <2 x i16> %wide.load271, zeroinitializer
  %i.dq = icmp ne <2 x i16> %wide.load272, zeroinitializer
  %i.dr = zext <2 x i1> %i.dp to <2 x i64>
  %i.ds = zext <2 x i1> %i.dq to <2 x i64>
  %i.dt = add <2 x i64> %vec.phi268, %i.dr        ; 2 uses
  %i.du = add <2 x i64> %vec.phi269, %i.ds        ; 2 uses
  %index.next273 = add nuw i64 %index267, 4       ; 2 uses
  %i.dv = icmp eq i64 %index.next273, %n.vec265
  br i1 %i.dv, label %middle.block274, label %vector.body266, !llvm.loop !275

middle.block274:                                  ; preds = %vector.body266
  %bin.rdx275 = add <2 x i64> %i.du, %i.dt
  %i.dw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx275) ; 2 uses
  %cmp.n276 = icmp eq i64 %i.dk, %n.vec265
  br i1 %cmp.n276, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i113.i.preheader

.lr.ph.i.i4.i.i.i113.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i112.i, %middle.block274
  %.09.i.i.i.i.i114.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i112.i ], [ %i.dw, %middle.block274 ]
  %.058.i.i.i.i.i115.i.ph = phi ptr [ %i.cv, %.lr.ph.i.i4.preheader.i.i.i112.i ], [ %i.dm, %middle.block274 ]
  br label %.lr.ph.i.i4.i.i.i113.i

.lr.ph.i.i4.i.i.i113.i:                           ; preds = %.lr.ph.i.i4.i.i.i113.i.preheader, %.lr.ph.i.i4.i.i.i113.i
  %.09.i.i.i.i.i114.i = phi i64 [ %spec.select.i.i.i.i.i118.i, %.lr.ph.i.i4.i.i.i113.i ], [ %.09.i.i.i.i.i114.i.ph, %.lr.ph.i.i4.i.i.i113.i.preheader ]
  %.058.i.i.i.i.i115.i = phi ptr [ %i.dy, %.lr.ph.i.i4.i.i.i113.i ], [ %.058.i.i.i.i.i115.i.ph, %.lr.ph.i.i4.i.i.i113.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i116.i = load i16, ptr %.058.i.i.i.i.i115.i, align 2, !tbaa !273, !noalias !270
  %.not6.i.i.i.i.i117.i = icmp ne i16 %.05.val.i.i.i.i.i116.i, 0
  %i.dx = zext i1 %.not6.i.i.i.i.i117.i to i64
  %spec.select.i.i.i.i.i118.i = add nuw nsw i64 %.09.i.i.i.i.i114.i, %i.dx ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i115.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i119.i = icmp eq ptr %i.dy, %i.dg
  br i1 %.not.i.i.i.i.i119.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i113.i, !llvm.loop !276

bb.m:                                             ; preds = %.noexc9
  %i.dz = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9Int16TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !270
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.n:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ec = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ea, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.eb)
          to label %.noexc10 unwind label %bb.av

.noexc10:                                         ; preds = %bb.n
  br i1 %i.ec, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc10
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !84, !noalias !277 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 9
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !163, !range !53, !noalias !277, !noundef !54
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !277
  %i.ek = select i1 %i.eh, ptr %i.ej, ptr null, !prof !42 ; 6 uses
  %i.el = load ptr, ptr %i.ea, align 8, !tbaa !83, !noalias !277 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !83, !noalias !277 ; 2 uses
  %i.eo = icmp eq ptr %i.el, %i.en
  br i1 %i.eo, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i136.i, label %.lr.ph.i.i.i.i.i122.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i136.i:  ; preds = %bb.o
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  br label %.lr.ph.i.i4.preheader.i.i.i128.i

.lr.ph.i.i.i.i.i122.i:                            ; preds = %bb.o, %.lr.ph.i.i.i.i.i122.i
  %.06.i.i.i.i.i123.i = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i122.i ], [ 1, %bb.o ]
  %.sroa.02.05.i.i.i.i.i124.i = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i122.i ], [ %i.el, %bb.o ] ; 2 uses
  %i.eq = load i64, ptr %.sroa.02.05.i.i.i.i.i124.i, align 8, !tbaa !14, !noalias !277
  %i.er = mul nsw i64 %i.eq, %.06.i.i.i.i.i123.i  ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i124.i, i64 8 ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.en
  br i1 %i.et, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i, label %.lr.ph.i.i.i.i.i122.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i:         ; preds = %.lr.ph.i.i.i.i.i122.i
  %.idx.i.i.i126.i = shl nsw i64 %i.er, 1
  %i.eu = getelementptr inbounds i8, ptr %i.ek, i64 %.idx.i.i.i126.i
  %.not7.i.i.i.i.i127.i = icmp eq i64 %i.er, 0
  br i1 %.not7.i.i.i.i.i127.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i128.i

.lr.ph.i.i4.preheader.i.i.i128.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i136.i
  %i.ev = phi ptr [ %i.ep, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i136.i ], [ %i.eu, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i ] ; 2 uses
  %i.ew = ptrtoaddr ptr %i.ev to i64
  %i.ex = ptrtoaddr ptr %i.ek to i64
  %7 = sub i64 %i.ew, %i.ex
  %8 = add i64 %7, -2                             ; 2 uses
  %i.ey = lshr i64 %8, 1
  %i.ez = add nuw i64 %i.ey, 1                    ; 2 uses
  %min.iters.check246 = icmp ult i64 %8, 6
  br i1 %min.iters.check246, label %.lr.ph.i.i4.i.i.i129.i.preheader, label %vector.ph247

vector.ph247:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i128.i
  %n.vec248 = and i64 %i.ez, -4                   ; 3 uses
  %i.fa = shl i64 %n.vec248, 1
  %i.fb = getelementptr i8, ptr %i.ek, i64 %i.fa
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph247
  %index250 = phi i64 [ 0, %vector.ph247 ], [ %index.next256, %vector.body249 ] ; 2 uses
  %vec.phi251 = phi <2 x i64> [ zeroinitializer, %vector.ph247 ], [ %i.fi, %vector.body249 ]
  %vec.phi252 = phi <2 x i64> [ zeroinitializer, %vector.ph247 ], [ %i.fj, %vector.body249 ]
  %i.fc = shl i64 %index250, 1
  %next.gep253 = getelementptr i8, ptr %i.ek, i64 %i.fc ; 2 uses
  %i.fd = getelementptr i8, ptr %next.gep253, i64 4
  %wide.load254 = load <2 x i16>, ptr %next.gep253, align 2, !tbaa !273, !noalias !277
  %wide.load255 = load <2 x i16>, ptr %i.fd, align 2, !tbaa !273, !noalias !277
  %i.fe = icmp ne <2 x i16> %wide.load254, zeroinitializer
  %i.ff = icmp ne <2 x i16> %wide.load255, zeroinitializer
  %i.fg = zext <2 x i1> %i.fe to <2 x i64>
  %i.fh = zext <2 x i1> %i.ff to <2 x i64>
  %i.fi = add <2 x i64> %vec.phi251, %i.fg        ; 2 uses
  %i.fj = add <2 x i64> %vec.phi252, %i.fh        ; 2 uses
  %index.next256 = add nuw i64 %index250, 4       ; 2 uses
  %i.fk = icmp eq i64 %index.next256, %n.vec248
  br i1 %i.fk, label %middle.block257, label %vector.body249, !llvm.loop !280

middle.block257:                                  ; preds = %vector.body249
  %bin.rdx258 = add <2 x i64> %i.fj, %i.fi
  %i.fl = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx258) ; 2 uses
  %cmp.n259 = icmp eq i64 %i.ez, %n.vec248
  br i1 %cmp.n259, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i129.i.preheader

.lr.ph.i.i4.i.i.i129.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i128.i, %middle.block257
  %.09.i.i.i.i.i130.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i128.i ], [ %i.fl, %middle.block257 ]
  %.058.i.i.i.i.i131.i.ph = phi ptr [ %i.ek, %.lr.ph.i.i4.preheader.i.i.i128.i ], [ %i.fb, %middle.block257 ]
  br label %.lr.ph.i.i4.i.i.i129.i

.lr.ph.i.i4.i.i.i129.i:                           ; preds = %.lr.ph.i.i4.i.i.i129.i.preheader, %.lr.ph.i.i4.i.i.i129.i
  %.09.i.i.i.i.i130.i = phi i64 [ %spec.select.i.i.i.i.i134.i, %.lr.ph.i.i4.i.i.i129.i ], [ %.09.i.i.i.i.i130.i.ph, %.lr.ph.i.i4.i.i.i129.i.preheader ]
  %.058.i.i.i.i.i131.i = phi ptr [ %i.fn, %.lr.ph.i.i4.i.i.i129.i ], [ %.058.i.i.i.i.i131.i.ph, %.lr.ph.i.i4.i.i.i129.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i132.i = load i16, ptr %.058.i.i.i.i.i131.i, align 2, !tbaa !273, !noalias !277
  %.not6.i.i.i.i.i133.i = icmp ne i16 %.05.val.i.i.i.i.i132.i, 0
  %i.fm = zext i1 %.not6.i.i.i.i.i133.i to i64
  %spec.select.i.i.i.i.i134.i = add nuw nsw i64 %.09.i.i.i.i.i130.i, %i.fm ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i131.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i135.i = icmp eq ptr %i.fn, %i.ev
  br i1 %.not.i.i.i.i.i135.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i129.i, !llvm.loop !281

bb.p:                                             ; preds = %.noexc10
  %i.fo = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10UInt16TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !277
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.q:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fr = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fp, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fq)
          to label %.noexc11 unwind label %bb.av

.noexc11:                                         ; preds = %bb.q
  br i1 %i.fr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc11
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !84, !noalias !282 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 9
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !163, !range !53, !noalias !282, !noundef !54
  %i.fw = trunc nuw i8 %i.fv to i1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !282
  %i.fz = select i1 %i.fw, ptr %i.fy, ptr null, !prof !42 ; 6 uses
  %i.ga = load ptr, ptr %i.fp, align 8, !tbaa !83, !noalias !282 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !83, !noalias !282 ; 2 uses
  %i.gd = icmp eq ptr %i.ga, %i.gc
  br i1 %i.gd, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i152.i, label %.lr.ph.i.i.i.i.i138.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i152.i:  ; preds = %bb.r
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  br label %.lr.ph.i.i4.preheader.i.i.i144.i

.lr.ph.i.i.i.i.i138.i:                            ; preds = %bb.r, %.lr.ph.i.i.i.i.i138.i
  %.06.i.i.i.i.i139.i = phi i64 [ %i.gg, %.lr.ph.i.i.i.i.i138.i ], [ 1, %bb.r ]
  %.sroa.02.05.i.i.i.i.i140.i = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i138.i ], [ %i.ga, %bb.r ] ; 2 uses
  %i.gf = load i64, ptr %.sroa.02.05.i.i.i.i.i140.i, align 8, !tbaa !14, !noalias !282
  %i.gg = mul nsw i64 %i.gf, %.06.i.i.i.i.i139.i  ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i140.i, i64 8 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.gc
  br i1 %i.gi, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i, label %.lr.ph.i.i.i.i.i138.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i:         ; preds = %.lr.ph.i.i.i.i.i138.i
  %.idx.i.i.i142.i = shl nsw i64 %i.gg, 2
  %i.gj = getelementptr inbounds i8, ptr %i.fz, i64 %.idx.i.i.i142.i
  %.not7.i.i.i.i.i143.i = icmp eq i64 %i.gg, 0
  br i1 %.not7.i.i.i.i.i143.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i144.i

.lr.ph.i.i4.preheader.i.i.i144.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i152.i
  %i.gk = phi ptr [ %i.ge, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i152.i ], [ %i.gj, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i ] ; 2 uses
  %i.gl = ptrtoaddr ptr %i.gk to i64
  %i.gm = ptrtoaddr ptr %i.fz to i64
  %9 = sub i64 %i.gl, %i.gm
  %10 = add i64 %9, -4                            ; 2 uses
  %i.gn = lshr i64 %10, 2
  %i.go = add nuw nsw i64 %i.gn, 1                ; 2 uses
  %min.iters.check229 = icmp ult i64 %10, 12
  br i1 %min.iters.check229, label %.lr.ph.i.i4.i.i.i145.i.preheader, label %vector.ph230

vector.ph230:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i144.i
  %n.vec231 = and i64 %i.go, 9223372036854775804  ; 3 uses
  %i.gp = shl i64 %n.vec231, 2
  %i.gq = getelementptr i8, ptr %i.fz, i64 %i.gp
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph230
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next239, %vector.body232 ] ; 2 uses
  %vec.phi234 = phi <2 x i64> [ zeroinitializer, %vector.ph230 ], [ %i.gx, %vector.body232 ]
  %vec.phi235 = phi <2 x i64> [ zeroinitializer, %vector.ph230 ], [ %i.gy, %vector.body232 ]
  %i.gr = shl i64 %index233, 2
  %next.gep236 = getelementptr i8, ptr %i.fz, i64 %i.gr ; 2 uses
  %i.gs = getelementptr i8, ptr %next.gep236, i64 8
  %wide.load237 = load <2 x i32>, ptr %next.gep236, align 4, !tbaa !3, !noalias !282
  %wide.load238 = load <2 x i32>, ptr %i.gs, align 4, !tbaa !3, !noalias !282
  %i.gt = icmp ne <2 x i32> %wide.load237, zeroinitializer
  %i.gu = icmp ne <2 x i32> %wide.load238, zeroinitializer
  %i.gv = zext <2 x i1> %i.gt to <2 x i64>
  %i.gw = zext <2 x i1> %i.gu to <2 x i64>
  %i.gx = add <2 x i64> %vec.phi234, %i.gv        ; 2 uses
  %i.gy = add <2 x i64> %vec.phi235, %i.gw        ; 2 uses
  %index.next239 = add nuw i64 %index233, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next239, %n.vec231
  br i1 %i.gz, label %middle.block240, label %vector.body232, !llvm.loop !285

middle.block240:                                  ; preds = %vector.body232
  %bin.rdx241 = add <2 x i64> %i.gy, %i.gx
  %i.ha = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx241) ; 2 uses
  %cmp.n242 = icmp eq i64 %i.go, %n.vec231
  br i1 %cmp.n242, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i145.i.preheader

.lr.ph.i.i4.i.i.i145.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i144.i, %middle.block240
  %.09.i.i.i.i.i146.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i144.i ], [ %i.ha, %middle.block240 ]
  %.058.i.i.i.i.i147.i.ph = phi ptr [ %i.fz, %.lr.ph.i.i4.preheader.i.i.i144.i ], [ %i.gq, %middle.block240 ]
  br label %.lr.ph.i.i4.i.i.i145.i

.lr.ph.i.i4.i.i.i145.i:                           ; preds = %.lr.ph.i.i4.i.i.i145.i.preheader, %.lr.ph.i.i4.i.i.i145.i
  %.09.i.i.i.i.i146.i = phi i64 [ %spec.select.i.i.i.i.i150.i, %.lr.ph.i.i4.i.i.i145.i ], [ %.09.i.i.i.i.i146.i.ph, %.lr.ph.i.i4.i.i.i145.i.preheader ]
  %.058.i.i.i.i.i147.i = phi ptr [ %i.hc, %.lr.ph.i.i4.i.i.i145.i ], [ %.058.i.i.i.i.i147.i.ph, %.lr.ph.i.i4.i.i.i145.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i148.i = load i32, ptr %.058.i.i.i.i.i147.i, align 4, !tbaa !3, !noalias !282
  %.not6.i.i.i.i.i149.i = icmp ne i32 %.05.val.i.i.i.i.i148.i, 0
  %i.hb = zext i1 %.not6.i.i.i.i.i149.i to i64
  %spec.select.i.i.i.i.i150.i = add nuw nsw i64 %.09.i.i.i.i.i146.i, %i.hb ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i147.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i151.i = icmp eq ptr %i.hc, %i.gk
  br i1 %.not.i.i.i.i.i151.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i145.i, !llvm.loop !286

bb.s:                                             ; preds = %.noexc11
  %i.hd = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9Int32TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !282
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.t:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hg = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.he, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.hf)
          to label %.noexc12 unwind label %bb.av

.noexc12:                                         ; preds = %bb.t
  br i1 %i.hg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.noexc12
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !84, !noalias !287 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 9
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !163, !range !53, !noalias !287, !noundef !54
  %i.hl = trunc nuw i8 %i.hk to i1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !noalias !287
  %i.ho = select i1 %i.hl, ptr %i.hn, ptr null, !prof !42 ; 6 uses
  %i.hp = load ptr, ptr %i.he, align 8, !tbaa !83, !noalias !287 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !83, !noalias !287 ; 2 uses
  %i.hs = icmp eq ptr %i.hp, %i.hr
  br i1 %i.hs, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i168.i, label %.lr.ph.i.i.i.i.i154.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i168.i:  ; preds = %bb.u
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  br label %.lr.ph.i.i4.preheader.i.i.i160.i

.lr.ph.i.i.i.i.i154.i:                            ; preds = %bb.u, %.lr.ph.i.i.i.i.i154.i
  %.06.i.i.i.i.i155.i = phi i64 [ %i.hv, %.lr.ph.i.i.i.i.i154.i ], [ 1, %bb.u ]
  %.sroa.02.05.i.i.i.i.i156.i = phi ptr [ %i.hw, %.lr.ph.i.i.i.i.i154.i ], [ %i.hp, %bb.u ] ; 2 uses
  %i.hu = load i64, ptr %.sroa.02.05.i.i.i.i.i156.i, align 8, !tbaa !14, !noalias !287
  %i.hv = mul nsw i64 %i.hu, %.06.i.i.i.i.i155.i  ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i156.i, i64 8 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.hr
  br i1 %i.hx, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i, label %.lr.ph.i.i.i.i.i154.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i:         ; preds = %.lr.ph.i.i.i.i.i154.i
  %.idx.i.i.i158.i = shl nsw i64 %i.hv, 2
  %i.hy = getelementptr inbounds i8, ptr %i.ho, i64 %.idx.i.i.i158.i
  %.not7.i.i.i.i.i159.i = icmp eq i64 %i.hv, 0
  br i1 %.not7.i.i.i.i.i159.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i160.i

.lr.ph.i.i4.preheader.i.i.i160.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i168.i
  %i.hz = phi ptr [ %i.ht, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i168.i ], [ %i.hy, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i ] ; 2 uses
  %i.ia = ptrtoaddr ptr %i.hz to i64
  %i.ib = ptrtoaddr ptr %i.ho to i64
  %11 = sub i64 %i.ia, %i.ib
  %12 = add i64 %11, -4                           ; 2 uses
  %i.ic = lshr i64 %12, 2
  %i.id = add nuw nsw i64 %i.ic, 1                ; 2 uses
  %min.iters.check212 = icmp ult i64 %12, 12
  br i1 %min.iters.check212, label %.lr.ph.i.i4.i.i.i161.i.preheader, label %vector.ph213

vector.ph213:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i160.i
  %n.vec214 = and i64 %i.id, 9223372036854775804  ; 3 uses
  %i.ie = shl i64 %n.vec214, 2
  %i.if = getelementptr i8, ptr %i.ho, i64 %i.ie
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next222, %vector.body215 ] ; 2 uses
  %vec.phi217 = phi <2 x i64> [ zeroinitializer, %vector.ph213 ], [ %i.im, %vector.body215 ]
  %vec.phi218 = phi <2 x i64> [ zeroinitializer, %vector.ph213 ], [ %i.in, %vector.body215 ]
  %i.ig = shl i64 %index216, 2
  %next.gep219 = getelementptr i8, ptr %i.ho, i64 %i.ig ; 2 uses
  %i.ih = getelementptr i8, ptr %next.gep219, i64 8
  %wide.load220 = load <2 x i32>, ptr %next.gep219, align 4, !tbaa !3, !noalias !287
  %wide.load221 = load <2 x i32>, ptr %i.ih, align 4, !tbaa !3, !noalias !287
  %i.ii = icmp ne <2 x i32> %wide.load220, zeroinitializer
  %i.ij = icmp ne <2 x i32> %wide.load221, zeroinitializer
  %i.ik = zext <2 x i1> %i.ii to <2 x i64>
  %i.il = zext <2 x i1> %i.ij to <2 x i64>
  %i.im = add <2 x i64> %vec.phi217, %i.ik        ; 2 uses
  %i.in = add <2 x i64> %vec.phi218, %i.il        ; 2 uses
  %index.next222 = add nuw i64 %index216, 4       ; 2 uses
  %i.io = icmp eq i64 %index.next222, %n.vec214
  br i1 %i.io, label %middle.block223, label %vector.body215, !llvm.loop !290

middle.block223:                                  ; preds = %vector.body215
  %bin.rdx224 = add <2 x i64> %i.in, %i.im
  %i.ip = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx224) ; 2 uses
  %cmp.n225 = icmp eq i64 %i.id, %n.vec214
  br i1 %cmp.n225, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i161.i.preheader

.lr.ph.i.i4.i.i.i161.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i160.i, %middle.block223
  %.09.i.i.i.i.i162.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i160.i ], [ %i.ip, %middle.block223 ]
  %.058.i.i.i.i.i163.i.ph = phi ptr [ %i.ho, %.lr.ph.i.i4.preheader.i.i.i160.i ], [ %i.if, %middle.block223 ]
  br label %.lr.ph.i.i4.i.i.i161.i

.lr.ph.i.i4.i.i.i161.i:                           ; preds = %.lr.ph.i.i4.i.i.i161.i.preheader, %.lr.ph.i.i4.i.i.i161.i
  %.09.i.i.i.i.i162.i = phi i64 [ %spec.select.i.i.i.i.i166.i, %.lr.ph.i.i4.i.i.i161.i ], [ %.09.i.i.i.i.i162.i.ph, %.lr.ph.i.i4.i.i.i161.i.preheader ]
  %.058.i.i.i.i.i163.i = phi ptr [ %i.ir, %.lr.ph.i.i4.i.i.i161.i ], [ %.058.i.i.i.i.i163.i.ph, %.lr.ph.i.i4.i.i.i161.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i164.i = load i32, ptr %.058.i.i.i.i.i163.i, align 4, !tbaa !3, !noalias !287
  %.not6.i.i.i.i.i165.i = icmp ne i32 %.05.val.i.i.i.i.i164.i, 0
  %i.iq = zext i1 %.not6.i.i.i.i.i165.i to i64
  %spec.select.i.i.i.i.i166.i = add nuw nsw i64 %.09.i.i.i.i.i162.i, %i.iq ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i163.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i167.i = icmp eq ptr %i.ir, %i.hz
  br i1 %.not.i.i.i.i.i167.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i161.i, !llvm.loop !291

bb.v:                                             ; preds = %.noexc12
  %i.is = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10UInt32TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !287
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.w:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.iv = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.it, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.iu)
          to label %.noexc13 unwind label %bb.av

.noexc13:                                         ; preds = %bb.w
  br i1 %i.iv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.noexc13
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !84, !noalias !292 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 9
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !163, !range !53, !noalias !292, !noundef !54
  %i.ja = trunc nuw i8 %i.iz to i1
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !292
  %i.jd = select i1 %i.ja, ptr %i.jc, ptr null, !prof !42 ; 6 uses
  %i.je = load ptr, ptr %i.it, align 8, !tbaa !83, !noalias !292 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !83, !noalias !292 ; 2 uses
  %i.jh = icmp eq ptr %i.je, %i.jg
  br i1 %i.jh, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i184.i, label %.lr.ph.i.i.i.i.i170.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i184.i:  ; preds = %bb.x
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  br label %.lr.ph.i.i4.preheader.i.i.i176.i

.lr.ph.i.i.i.i.i170.i:                            ; preds = %bb.x, %.lr.ph.i.i.i.i.i170.i
  %.06.i.i.i.i.i171.i = phi i64 [ %i.jk, %.lr.ph.i.i.i.i.i170.i ], [ 1, %bb.x ]
  %.sroa.02.05.i.i.i.i.i172.i = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i170.i ], [ %i.je, %bb.x ] ; 2 uses
  %i.jj = load i64, ptr %.sroa.02.05.i.i.i.i.i172.i, align 8, !tbaa !14, !noalias !292
  %i.jk = mul nsw i64 %i.jj, %.06.i.i.i.i.i171.i  ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i172.i, i64 8 ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.jg
  br i1 %i.jm, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i, label %.lr.ph.i.i.i.i.i170.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i:         ; preds = %.lr.ph.i.i.i.i.i170.i
  %.idx.i.i.i174.i = shl nsw i64 %i.jk, 3
  %i.jn = getelementptr inbounds i8, ptr %i.jd, i64 %.idx.i.i.i174.i
  %.not7.i.i.i.i.i175.i = icmp eq i64 %i.jk, 0
  br i1 %.not7.i.i.i.i.i175.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i176.i

.lr.ph.i.i4.preheader.i.i.i176.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i184.i
  %i.jo = phi ptr [ %i.ji, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i184.i ], [ %i.jn, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i ] ; 2 uses
  %i.jp = ptrtoaddr ptr %i.jo to i64
  %i.jq = ptrtoaddr ptr %i.jd to i64
  %13 = sub i64 %i.jp, %i.jq
  %14 = add i64 %13, -8                           ; 2 uses
  %i.jr = lshr i64 %14, 3
  %i.js = add nuw nsw i64 %i.jr, 1                ; 2 uses
  %min.iters.check195 = icmp ult i64 %14, 24
  br i1 %min.iters.check195, label %.lr.ph.i.i4.i.i.i177.i.preheader, label %vector.ph196

vector.ph196:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i176.i
  %n.vec197 = and i64 %i.js, 4611686018427387900  ; 3 uses
  %i.jt = shl i64 %n.vec197, 3
  %i.ju = getelementptr i8, ptr %i.jd, i64 %i.jt
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph196
  %index199 = phi i64 [ 0, %vector.ph196 ], [ %index.next205, %vector.body198 ] ; 2 uses
  %vec.phi200 = phi <2 x i64> [ zeroinitializer, %vector.ph196 ], [ %i.kb, %vector.body198 ]
  %vec.phi201 = phi <2 x i64> [ zeroinitializer, %vector.ph196 ], [ %i.kc, %vector.body198 ]
  %i.jv = shl i64 %index199, 3
  %next.gep202 = getelementptr i8, ptr %i.jd, i64 %i.jv ; 2 uses
  %i.jw = getelementptr i8, ptr %next.gep202, i64 16
  %wide.load203 = load <2 x i64>, ptr %next.gep202, align 8, !tbaa !14, !noalias !292
  %wide.load204 = load <2 x i64>, ptr %i.jw, align 8, !tbaa !14, !noalias !292
  %i.jx = icmp ne <2 x i64> %wide.load203, zeroinitializer
  %i.jy = icmp ne <2 x i64> %wide.load204, zeroinitializer
  %i.jz = zext <2 x i1> %i.jx to <2 x i64>
  %i.ka = zext <2 x i1> %i.jy to <2 x i64>
  %i.kb = add <2 x i64> %vec.phi200, %i.jz        ; 2 uses
  %i.kc = add <2 x i64> %vec.phi201, %i.ka        ; 2 uses
  %index.next205 = add nuw i64 %index199, 4       ; 2 uses
  %i.kd = icmp eq i64 %index.next205, %n.vec197
  br i1 %i.kd, label %middle.block206, label %vector.body198, !llvm.loop !295

middle.block206:                                  ; preds = %vector.body198
  %bin.rdx207 = add <2 x i64> %i.kc, %i.kb
  %i.ke = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx207) ; 2 uses
  %cmp.n208 = icmp eq i64 %i.js, %n.vec197
  br i1 %cmp.n208, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i177.i.preheader

.lr.ph.i.i4.i.i.i177.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i176.i, %middle.block206
  %.09.i.i.i.i.i178.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i176.i ], [ %i.ke, %middle.block206 ]
  %.058.i.i.i.i.i179.i.ph = phi ptr [ %i.jd, %.lr.ph.i.i4.preheader.i.i.i176.i ], [ %i.ju, %middle.block206 ]
  br label %.lr.ph.i.i4.i.i.i177.i

.lr.ph.i.i4.i.i.i177.i:                           ; preds = %.lr.ph.i.i4.i.i.i177.i.preheader, %.lr.ph.i.i4.i.i.i177.i
  %.09.i.i.i.i.i178.i = phi i64 [ %spec.select.i.i.i.i.i182.i, %.lr.ph.i.i4.i.i.i177.i ], [ %.09.i.i.i.i.i178.i.ph, %.lr.ph.i.i4.i.i.i177.i.preheader ]
  %.058.i.i.i.i.i179.i = phi ptr [ %i.kg, %.lr.ph.i.i4.i.i.i177.i ], [ %.058.i.i.i.i.i179.i.ph, %.lr.ph.i.i4.i.i.i177.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i180.i = load i64, ptr %.058.i.i.i.i.i179.i, align 8, !tbaa !14, !noalias !292
  %.not6.i.i.i.i.i181.i = icmp ne i64 %.05.val.i.i.i.i.i180.i, 0
  %i.kf = zext i1 %.not6.i.i.i.i.i181.i to i64
  %spec.select.i.i.i.i.i182.i = add nuw nsw i64 %.09.i.i.i.i.i178.i, %i.kf ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i179.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i183.i = icmp eq ptr %i.kg, %i.jo
  br i1 %.not.i.i.i.i.i183.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i177.i, !llvm.loop !296

bb.y:                                             ; preds = %.noexc13
  %i.kh = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9Int64TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !292
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.z:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.kk = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ki, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.kj)
          to label %.noexc14 unwind label %bb.av

.noexc14:                                         ; preds = %bb.z
  br i1 %i.kk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.noexc14
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !84, !noalias !297 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 9
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !163, !range !53, !noalias !297, !noundef !54
  %i.kp = trunc nuw i8 %i.ko to i1
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !noalias !297
  %i.ks = select i1 %i.kp, ptr %i.kr, ptr null, !prof !42 ; 6 uses
  %i.kt = load ptr, ptr %i.ki, align 8, !tbaa !83, !noalias !297 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !83, !noalias !297 ; 2 uses
  %i.kw = icmp eq ptr %i.kt, %i.kv
  br i1 %i.kw, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i200.i, label %.lr.ph.i.i.i.i.i186.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i200.i:  ; preds = %bb.aa
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  br label %.lr.ph.i.i4.preheader.i.i.i192.i

.lr.ph.i.i.i.i.i186.i:                            ; preds = %bb.aa, %.lr.ph.i.i.i.i.i186.i
  %.06.i.i.i.i.i187.i = phi i64 [ %i.kz, %.lr.ph.i.i.i.i.i186.i ], [ 1, %bb.aa ]
  %.sroa.02.05.i.i.i.i.i188.i = phi ptr [ %i.la, %.lr.ph.i.i.i.i.i186.i ], [ %i.kt, %bb.aa ] ; 2 uses
  %i.ky = load i64, ptr %.sroa.02.05.i.i.i.i.i188.i, align 8, !tbaa !14, !noalias !297
  %i.kz = mul nsw i64 %i.ky, %.06.i.i.i.i.i187.i  ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i188.i, i64 8 ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.kv
  br i1 %i.lb, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i, label %.lr.ph.i.i.i.i.i186.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i:         ; preds = %.lr.ph.i.i.i.i.i186.i
  %.idx.i.i.i190.i = shl nsw i64 %i.kz, 3
  %i.lc = getelementptr inbounds i8, ptr %i.ks, i64 %.idx.i.i.i190.i
  %.not7.i.i.i.i.i191.i = icmp eq i64 %i.kz, 0
  br i1 %.not7.i.i.i.i.i191.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i192.i

.lr.ph.i.i4.preheader.i.i.i192.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i200.i
  %i.ld = phi ptr [ %i.kx, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i200.i ], [ %i.lc, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i ] ; 2 uses
  %i.le = ptrtoaddr ptr %i.ld to i64
  %i.lf = ptrtoaddr ptr %i.ks to i64
  %15 = sub i64 %i.le, %i.lf
  %16 = add i64 %15, -8                           ; 2 uses
  %i.lg = lshr i64 %16, 3
  %i.lh = add nuw nsw i64 %i.lg, 1                ; 2 uses
  %min.iters.check178 = icmp ult i64 %16, 24
  br i1 %min.iters.check178, label %.lr.ph.i.i4.i.i.i193.i.preheader, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i192.i
  %n.vec180 = and i64 %i.lh, 4611686018427387900  ; 3 uses
  %i.li = shl i64 %n.vec180, 3
  %i.lj = getelementptr i8, ptr %i.ks, i64 %i.li
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next188, %vector.body181 ] ; 2 uses
  %vec.phi183 = phi <2 x i64> [ zeroinitializer, %vector.ph179 ], [ %i.lq, %vector.body181 ]
  %vec.phi184 = phi <2 x i64> [ zeroinitializer, %vector.ph179 ], [ %i.lr, %vector.body181 ]
  %i.lk = shl i64 %index182, 3
  %next.gep185 = getelementptr i8, ptr %i.ks, i64 %i.lk ; 2 uses
  %i.ll = getelementptr i8, ptr %next.gep185, i64 16
  %wide.load186 = load <2 x i64>, ptr %next.gep185, align 8, !tbaa !14, !noalias !297
  %wide.load187 = load <2 x i64>, ptr %i.ll, align 8, !tbaa !14, !noalias !297
  %i.lm = icmp ne <2 x i64> %wide.load186, zeroinitializer
  %i.ln = icmp ne <2 x i64> %wide.load187, zeroinitializer
  %i.lo = zext <2 x i1> %i.lm to <2 x i64>
  %i.lp = zext <2 x i1> %i.ln to <2 x i64>
  %i.lq = add <2 x i64> %vec.phi183, %i.lo        ; 2 uses
  %i.lr = add <2 x i64> %vec.phi184, %i.lp        ; 2 uses
  %index.next188 = add nuw i64 %index182, 4       ; 2 uses
  %i.ls = icmp eq i64 %index.next188, %n.vec180
  br i1 %i.ls, label %middle.block189, label %vector.body181, !llvm.loop !300

middle.block189:                                  ; preds = %vector.body181
  %bin.rdx190 = add <2 x i64> %i.lr, %i.lq
  %i.lt = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx190) ; 2 uses
  %cmp.n191 = icmp eq i64 %i.lh, %n.vec180
  br i1 %cmp.n191, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i193.i.preheader

.lr.ph.i.i4.i.i.i193.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i192.i, %middle.block189
  %.09.i.i.i.i.i194.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i192.i ], [ %i.lt, %middle.block189 ]
  %.058.i.i.i.i.i195.i.ph = phi ptr [ %i.ks, %.lr.ph.i.i4.preheader.i.i.i192.i ], [ %i.lj, %middle.block189 ]
  br label %.lr.ph.i.i4.i.i.i193.i

.lr.ph.i.i4.i.i.i193.i:                           ; preds = %.lr.ph.i.i4.i.i.i193.i.preheader, %.lr.ph.i.i4.i.i.i193.i
  %.09.i.i.i.i.i194.i = phi i64 [ %spec.select.i.i.i.i.i198.i, %.lr.ph.i.i4.i.i.i193.i ], [ %.09.i.i.i.i.i194.i.ph, %.lr.ph.i.i4.i.i.i193.i.preheader ]
  %.058.i.i.i.i.i195.i = phi ptr [ %i.lv, %.lr.ph.i.i4.i.i.i193.i ], [ %.058.i.i.i.i.i195.i.ph, %.lr.ph.i.i4.i.i.i193.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i196.i = load i64, ptr %.058.i.i.i.i.i195.i, align 8, !tbaa !14, !noalias !297
  %.not6.i.i.i.i.i197.i = icmp ne i64 %.05.val.i.i.i.i.i196.i, 0
  %i.lu = zext i1 %.not6.i.i.i.i.i197.i to i64
  %spec.select.i.i.i.i.i198.i = add nuw nsw i64 %.09.i.i.i.i.i194.i, %i.lu ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i195.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i199.i = icmp eq ptr %i.lv, %i.ld
  br i1 %.not.i.i.i.i.i199.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i193.i, !llvm.loop !301

bb.ab:                                            ; preds = %.noexc14
  %i.lw = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10UInt64TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !297
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.ac:                                            ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.lz = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.lx, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ly)
          to label %.noexc15 unwind label %bb.av

.noexc15:                                         ; preds = %bb.ac
  br i1 %i.lz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.noexc15
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !84, !noalias !302 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 9
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !163, !range !53, !noalias !302, !noundef !54
  %i.me = trunc nuw i8 %i.md to i1
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8, !noalias !302
  %i.mh = select i1 %i.me, ptr %i.mg, ptr null, !prof !42 ; 6 uses
  %i.mi = load ptr, ptr %i.lx, align 8, !tbaa !83, !noalias !302 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !83, !noalias !302 ; 2 uses
  %i.ml = icmp eq ptr %i.mi, %i.mk
  br i1 %i.ml, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i216.i, label %.lr.ph.i.i.i.i.i202.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i216.i:  ; preds = %bb.ad
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mh, i64 2
  br label %.lr.ph.i.i4.preheader.i.i.i208.i

.lr.ph.i.i.i.i.i202.i:                            ; preds = %bb.ad, %.lr.ph.i.i.i.i.i202.i
  %.06.i.i.i.i.i203.i = phi i64 [ %i.mo, %.lr.ph.i.i.i.i.i202.i ], [ 1, %bb.ad ]
  %.sroa.02.05.i.i.i.i.i204.i = phi ptr [ %i.mp, %.lr.ph.i.i.i.i.i202.i ], [ %i.mi, %bb.ad ] ; 2 uses
  %i.mn = load i64, ptr %.sroa.02.05.i.i.i.i.i204.i, align 8, !tbaa !14, !noalias !302
  %i.mo = mul nsw i64 %i.mn, %.06.i.i.i.i.i203.i  ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i204.i, i64 8 ; 2 uses
  %i.mq = icmp eq ptr %i.mp, %i.mk
  br i1 %i.mq, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i, label %.lr.ph.i.i.i.i.i202.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i:         ; preds = %.lr.ph.i.i.i.i.i202.i
  %.idx.i.i.i206.i = shl nsw i64 %i.mo, 1
  %i.mr = getelementptr inbounds i8, ptr %i.mh, i64 %.idx.i.i.i206.i
  %.not7.i.i.i.i.i207.i = icmp eq i64 %i.mo, 0
  br i1 %.not7.i.i.i.i.i207.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i208.i

.lr.ph.i.i4.preheader.i.i.i208.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i216.i
  %i.ms = phi ptr [ %i.mm, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i216.i ], [ %i.mr, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i ] ; 2 uses
  %i.mt = ptrtoaddr ptr %i.ms to i64
  %i.mu = ptrtoaddr ptr %i.mh to i64
  %17 = sub i64 %i.mt, %i.mu
  %18 = add i64 %17, -2                           ; 2 uses
  %i.mv = lshr i64 %18, 1
  %i.mw = add nuw i64 %i.mv, 1                    ; 2 uses
  %min.iters.check161 = icmp ult i64 %18, 6
  br i1 %min.iters.check161, label %.lr.ph.i.i4.i.i.i209.i.preheader, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i208.i
  %n.vec163 = and i64 %i.mw, -4                   ; 3 uses
  %i.mx = shl i64 %n.vec163, 1
  %i.my = getelementptr i8, ptr %i.mh, i64 %i.mx
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body164 ] ; 2 uses
  %vec.phi166 = phi <2 x i64> [ zeroinitializer, %vector.ph162 ], [ %i.nf, %vector.body164 ]
  %vec.phi167 = phi <2 x i64> [ zeroinitializer, %vector.ph162 ], [ %i.ng, %vector.body164 ]
  %i.mz = shl i64 %index165, 1
  %next.gep168 = getelementptr i8, ptr %i.mh, i64 %i.mz ; 2 uses
  %i.na = getelementptr i8, ptr %next.gep168, i64 4
  %wide.load169 = load <2 x i16>, ptr %next.gep168, align 2, !tbaa !273, !noalias !302
  %wide.load170 = load <2 x i16>, ptr %i.na, align 2, !tbaa !273, !noalias !302
  %i.nb = icmp ne <2 x i16> %wide.load169, zeroinitializer
  %i.nc = icmp ne <2 x i16> %wide.load170, zeroinitializer
  %i.nd = zext <2 x i1> %i.nb to <2 x i64>
  %i.ne = zext <2 x i1> %i.nc to <2 x i64>
  %i.nf = add <2 x i64> %vec.phi166, %i.nd        ; 2 uses
  %i.ng = add <2 x i64> %vec.phi167, %i.ne        ; 2 uses
  %index.next171 = add nuw i64 %index165, 4       ; 2 uses
  %i.nh = icmp eq i64 %index.next171, %n.vec163
  br i1 %i.nh, label %middle.block172, label %vector.body164, !llvm.loop !305

middle.block172:                                  ; preds = %vector.body164
  %bin.rdx173 = add <2 x i64> %i.ng, %i.nf
  %i.ni = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx173) ; 2 uses
  %cmp.n174 = icmp eq i64 %i.mw, %n.vec163
  br i1 %cmp.n174, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i209.i.preheader

.lr.ph.i.i4.i.i.i209.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i208.i, %middle.block172
  %.09.i.i.i.i.i210.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i208.i ], [ %i.ni, %middle.block172 ]
  %.058.i.i.i.i.i211.i.ph = phi ptr [ %i.mh, %.lr.ph.i.i4.preheader.i.i.i208.i ], [ %i.my, %middle.block172 ]
  br label %.lr.ph.i.i4.i.i.i209.i

.lr.ph.i.i4.i.i.i209.i:                           ; preds = %.lr.ph.i.i4.i.i.i209.i.preheader, %.lr.ph.i.i4.i.i.i209.i
  %.09.i.i.i.i.i210.i = phi i64 [ %spec.select.i.i.i.i.i214.i, %.lr.ph.i.i4.i.i.i209.i ], [ %.09.i.i.i.i.i210.i.ph, %.lr.ph.i.i4.i.i.i209.i.preheader ]
  %.058.i.i.i.i.i211.i = phi ptr [ %i.nk, %.lr.ph.i.i4.i.i.i209.i ], [ %.058.i.i.i.i.i211.i.ph, %.lr.ph.i.i4.i.i.i209.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i212.i = load i16, ptr %.058.i.i.i.i.i211.i, align 2, !tbaa !273, !noalias !302
  %.not6.i.i.i.i.i213.i = icmp ne i16 %.05.val.i.i.i.i.i212.i, 0
  %i.nj = zext i1 %.not6.i.i.i.i.i213.i to i64
  %spec.select.i.i.i.i.i214.i = add nuw nsw i64 %.09.i.i.i.i.i210.i, %i.nj ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i211.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i215.i = icmp eq ptr %i.nk, %i.ms
  br i1 %.not.i.i.i.i.i215.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i209.i, !llvm.loop !306

bb.ae:                                            ; preds = %.noexc15
  %i.nl = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_13HalfFloatTypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !302
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.af:                                            ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.no = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.nm, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.nn)
          to label %.noexc16 unwind label %bb.av

.noexc16:                                         ; preds = %bb.af
  br i1 %i.no, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.noexc16
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !84, !noalias !307 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 9
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !163, !range !53, !noalias !307, !noundef !54
  %i.nt = trunc nuw i8 %i.ns to i1
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.nv = load ptr, ptr %i.nu, align 8, !noalias !307
  %i.nw = select i1 %i.nt, ptr %i.nv, ptr null, !prof !42 ; 6 uses
  %i.nx = load ptr, ptr %i.nm, align 8, !tbaa !83, !noalias !307 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !83, !noalias !307 ; 2 uses
  %i.oa = icmp eq ptr %i.nx, %i.nz
  br i1 %i.oa, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i229.i, label %.lr.ph.i.i.i.i.i218.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i229.i:  ; preds = %bb.ag
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  br label %.lr.ph.i.i4.preheader.i.i.i224.i

.lr.ph.i.i.i.i.i218.i:                            ; preds = %bb.ag, %.lr.ph.i.i.i.i.i218.i
  %.06.i.i.i.i.i219.i = phi i64 [ %i.od, %.lr.ph.i.i.i.i.i218.i ], [ 1, %bb.ag ]
  %.sroa.02.05.i.i.i.i.i220.i = phi ptr [ %i.oe, %.lr.ph.i.i.i.i.i218.i ], [ %i.nx, %bb.ag ] ; 2 uses
  %i.oc = load i64, ptr %.sroa.02.05.i.i.i.i.i220.i, align 8, !tbaa !14, !noalias !307
  %i.od = mul nsw i64 %i.oc, %.06.i.i.i.i.i219.i  ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i220.i, i64 8 ; 2 uses
  %i.of = icmp eq ptr %i.oe, %i.nz
  br i1 %i.of, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i, label %.lr.ph.i.i.i.i.i218.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i:         ; preds = %.lr.ph.i.i.i.i.i218.i
  %.idx.i.i.i222.i = shl nsw i64 %i.od, 2
  %i.og = getelementptr inbounds i8, ptr %i.nw, i64 %.idx.i.i.i222.i
  %.not6.i.i.i.i.i223.i = icmp eq i64 %i.od, 0
  br i1 %.not6.i.i.i.i.i223.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i224.i

.lr.ph.i.i4.preheader.i.i.i224.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i229.i
  %i.oh = phi ptr [ %i.ob, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i229.i ], [ %i.og, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i ] ; 2 uses
  %i.oi = ptrtoaddr ptr %i.oh to i64
  %i.oj = ptrtoaddr ptr %i.nw to i64
  %19 = sub i64 %i.oi, %i.oj
  %20 = add i64 %19, -4                           ; 2 uses
  %i.ok = lshr i64 %20, 2
  %i.ol = add nuw nsw i64 %i.ok, 1                ; 2 uses
  %min.iters.check144 = icmp ult i64 %20, 12
  br i1 %min.iters.check144, label %.lr.ph.i.i4.i.i.i225.i.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i224.i
  %n.vec146 = and i64 %i.ol, 9223372036854775804  ; 3 uses
  %i.om = shl i64 %n.vec146, 2
  %i.on = getelementptr i8, ptr %i.nw, i64 %i.om
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next154, %vector.body147 ] ; 2 uses
  %vec.phi149 = phi <2 x i64> [ zeroinitializer, %vector.ph145 ], [ %i.ou, %vector.body147 ]
  %vec.phi150 = phi <2 x i64> [ zeroinitializer, %vector.ph145 ], [ %i.ov, %vector.body147 ]
  %i.oo = shl i64 %index148, 2
  %next.gep151 = getelementptr i8, ptr %i.nw, i64 %i.oo ; 2 uses
  %i.op = getelementptr i8, ptr %next.gep151, i64 8
  %wide.load152 = load <2 x float>, ptr %next.gep151, align 4, !tbaa !310, !noalias !307
  %wide.load153 = load <2 x float>, ptr %i.op, align 4, !tbaa !310, !noalias !307
  %i.oq = fcmp une <2 x float> %wide.load152, zeroinitializer
  %i.or = fcmp une <2 x float> %wide.load153, zeroinitializer
  %i.os = zext <2 x i1> %i.oq to <2 x i64>
  %i.ot = zext <2 x i1> %i.or to <2 x i64>
  %i.ou = add <2 x i64> %vec.phi149, %i.os        ; 2 uses
  %i.ov = add <2 x i64> %vec.phi150, %i.ot        ; 2 uses
  %index.next154 = add nuw i64 %index148, 4       ; 2 uses
  %i.ow = icmp eq i64 %index.next154, %n.vec146
  br i1 %i.ow, label %middle.block155, label %vector.body147, !llvm.loop !312

middle.block155:                                  ; preds = %vector.body147
  %bin.rdx156 = add <2 x i64> %i.ov, %i.ou
  %i.ox = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx156) ; 2 uses
  %cmp.n157 = icmp eq i64 %i.ol, %n.vec146
  br i1 %cmp.n157, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i225.i.preheader

.lr.ph.i.i4.i.i.i225.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i224.i, %middle.block155
  %.08.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i224.i ], [ %i.ox, %middle.block155 ]
  %.057.i.i.i.i.i.i.ph = phi ptr [ %i.nw, %.lr.ph.i.i4.preheader.i.i.i224.i ], [ %i.on, %middle.block155 ]
  br label %.lr.ph.i.i4.i.i.i225.i

.lr.ph.i.i4.i.i.i225.i:                           ; preds = %.lr.ph.i.i4.i.i.i225.i.preheader, %.lr.ph.i.i4.i.i.i225.i
  %.08.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i227.i, %.lr.ph.i.i4.i.i.i225.i ], [ %.08.i.i.i.i.i.i.ph, %.lr.ph.i.i4.i.i.i225.i.preheader ]
  %.057.i.i.i.i.i.i = phi ptr [ %i.pa, %.lr.ph.i.i4.i.i.i225.i ], [ %.057.i.i.i.i.i.i.ph, %.lr.ph.i.i4.i.i.i225.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i226.i = load float, ptr %.057.i.i.i.i.i.i, align 4, !tbaa !310, !noalias !307
  %i.oy = fcmp une float %.05.val.i.i.i.i.i226.i, 0.000000e+00
  %i.oz = zext i1 %i.oy to i64
  %spec.select.i.i.i.i.i227.i = add nuw nsw i64 %.08.i.i.i.i.i.i, %i.oz ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i228.i = icmp eq ptr %i.pa, %i.oh
  br i1 %.not.i.i.i.i.i228.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i225.i, !llvm.loop !313

bb.ah:                                            ; preds = %.noexc16
  %i.pb = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9FloatTypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !307
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.ai:                                            ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.pe = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.pc, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.pd)
          to label %.noexc17 unwind label %bb.av

.noexc17:                                         ; preds = %bb.ai
  br i1 %i.pe, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.noexc17
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !84, !noalias !314 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 9
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !163, !range !53, !noalias !314, !noundef !54
  %i.pj = trunc nuw i8 %i.pi to i1
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8, !noalias !314
  %i.pm = select i1 %i.pj, ptr %i.pl, ptr null, !prof !42 ; 6 uses
  %i.pn = load ptr, ptr %i.pc, align 8, !tbaa !83, !noalias !314 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !83, !noalias !314 ; 2 uses
  %i.pq = icmp eq ptr %i.pn, %i.pp
  br i1 %i.pq, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i244.i, label %.lr.ph.i.i.i.i.i231.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i244.i:  ; preds = %bb.aj
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  br label %.lr.ph.i.i4.preheader.i.i.i237.i

.lr.ph.i.i.i.i.i231.i:                            ; preds = %bb.aj, %.lr.ph.i.i.i.i.i231.i
  %.06.i.i.i.i.i232.i = phi i64 [ %i.pt, %.lr.ph.i.i.i.i.i231.i ], [ 1, %bb.aj ]
  %.sroa.02.05.i.i.i.i.i233.i = phi ptr [ %i.pu, %.lr.ph.i.i.i.i.i231.i ], [ %i.pn, %bb.aj ] ; 2 uses
  %i.ps = load i64, ptr %.sroa.02.05.i.i.i.i.i233.i, align 8, !tbaa !14, !noalias !314
  %i.pt = mul nsw i64 %i.ps, %.06.i.i.i.i.i232.i  ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i233.i, i64 8 ; 2 uses
  %i.pv = icmp eq ptr %i.pu, %i.pp
  br i1 %i.pv, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i, label %.lr.ph.i.i.i.i.i231.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i:         ; preds = %.lr.ph.i.i.i.i.i231.i
  %.idx.i.i.i235.i = shl nsw i64 %i.pt, 3
  %i.pw = getelementptr inbounds i8, ptr %i.pm, i64 %.idx.i.i.i235.i
  %.not6.i.i.i.i.i236.i = icmp eq i64 %i.pt, 0
  br i1 %.not6.i.i.i.i.i236.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i237.i

.lr.ph.i.i4.preheader.i.i.i237.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i244.i
  %i.px = phi ptr [ %i.pr, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i244.i ], [ %i.pw, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i ] ; 2 uses
  %i.py = ptrtoaddr ptr %i.px to i64
  %i.pz = ptrtoaddr ptr %i.pm to i64
  %21 = sub i64 %i.py, %i.pz
  %22 = add i64 %21, -8                           ; 2 uses
  %i.qa = lshr i64 %22, 3
  %i.qb = add nuw nsw i64 %i.qa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %22, 24
  br i1 %min.iters.check, label %.lr.ph.i.i4.i.i.i238.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i4.preheader.i.i.i237.i
  %n.vec = and i64 %i.qb, 4611686018427387900     ; 3 uses
  %i.qc = shl i64 %n.vec, 3
  %i.qd = getelementptr i8, ptr %i.pm, i64 %i.qc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.qk, %vector.body ]
  %vec.phi141 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ql, %vector.body ]
  %i.qe = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.pm, i64 %i.qe ; 2 uses
  %i.qf = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !317, !noalias !314
  %wide.load142 = load <2 x double>, ptr %i.qf, align 8, !tbaa !317, !noalias !314
  %i.qg = fcmp une <2 x double> %wide.load, zeroinitializer
  %i.qh = fcmp une <2 x double> %wide.load142, zeroinitializer
  %i.qi = zext <2 x i1> %i.qg to <2 x i64>
  %i.qj = zext <2 x i1> %i.qh to <2 x i64>
  %i.qk = add <2 x i64> %vec.phi, %i.qi           ; 2 uses
  %i.ql = add <2 x i64> %vec.phi141, %i.qj        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qm = icmp eq i64 %index.next, %n.vec
  br i1 %i.qm, label %middle.block, label %vector.body, !llvm.loop !319

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ql, %i.qk
  %i.qn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.qb, %n.vec
  br i1 %cmp.n, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i238.i.preheader

.lr.ph.i.i4.i.i.i238.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i237.i, %middle.block
  %.08.i.i.i.i.i239.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i237.i ], [ %i.qn, %middle.block ]
  %.057.i.i.i.i.i240.i.ph = phi ptr [ %i.pm, %.lr.ph.i.i4.preheader.i.i.i237.i ], [ %i.qd, %middle.block ]
  br label %.lr.ph.i.i4.i.i.i238.i

.lr.ph.i.i4.i.i.i238.i:                           ; preds = %.lr.ph.i.i4.i.i.i238.i.preheader, %.lr.ph.i.i4.i.i.i238.i
  %.08.i.i.i.i.i239.i = phi i64 [ %spec.select.i.i.i.i.i242.i, %.lr.ph.i.i4.i.i.i238.i ], [ %.08.i.i.i.i.i239.i.ph, %.lr.ph.i.i4.i.i.i238.i.preheader ]
  %.057.i.i.i.i.i240.i = phi ptr [ %i.qq, %.lr.ph.i.i4.i.i.i238.i ], [ %.057.i.i.i.i.i240.i.ph, %.lr.ph.i.i4.i.i.i238.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i241.i = load double, ptr %.057.i.i.i.i.i240.i, align 8, !tbaa !317, !noalias !314
  %i.qo = fcmp une double %.05.val.i.i.i.i.i241.i, 0.000000e+00
  %i.qp = zext i1 %i.qo to i64
  %spec.select.i.i.i.i.i242.i = add nuw nsw i64 %.08.i.i.i.i.i239.i, %i.qp ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.i240.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i243.i = icmp eq ptr %i.qq, %i.px
  br i1 %.not.i.i.i.i.i243.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i238.i, !llvm.loop !320

bb.ak:                                            ; preds = %.noexc17
  %i.qr = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10DoubleTypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !314
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

.invoke:                                          ; preds = %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_114NonZeroCounter5VisitERKNS_8DataTypeE(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.k)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.av

bb.al:                                            ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  invoke void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(21) @.str.33)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.av

_ZN5arrow6StatusD2Ev.exit.sink.split:             ; preds = %.lr.ph.i.i4.i.i.i238.i, %.lr.ph.i.i4.i.i.i225.i, %.lr.ph.i.i4.i.i.i209.i, %.lr.ph.i.i4.i.i.i193.i, %.lr.ph.i.i4.i.i.i177.i, %.lr.ph.i.i4.i.i.i161.i, %.lr.ph.i.i4.i.i.i145.i, %.lr.ph.i.i4.i.i.i129.i, %.lr.ph.i.i4.i.i.i113.i, %.lr.ph.i.i4.i.i.i98.i, %.lr.ph.i.i4.i.i.i.i, %middle.block, %middle.block155, %middle.block172, %middle.block189, %middle.block206, %middle.block223, %middle.block240, %middle.block257, %middle.block274, %middle.block291, %middle.block308, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i, %bb.ak, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i, %bb.ah, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i, %bb.ae, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i, %bb.ab, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i, %bb.y, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i, %bb.v, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i, %bb.s, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i, %bb.p, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i, %bb.m, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i, %bb.j, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i.i, %bb.g
  %.sroa.15.0.ph = phi i64 [ %spec.select.i.i.i.i.i166.i, %.lr.ph.i.i4.i.i.i161.i ], [ %spec.select.i.i.i.i.i150.i, %.lr.ph.i.i4.i.i.i145.i ], [ %spec.select.i.i.i.i.i134.i, %.lr.ph.i.i4.i.i.i129.i ], [ %spec.select.i.i.i.i.i118.i, %.lr.ph.i.i4.i.i.i113.i ], [ %spec.select.i.i.i.i.i103.i, %.lr.ph.i.i4.i.i.i98.i ], [ %spec.select.i.i.i.i.i.i, %.lr.ph.i.i4.i.i.i.i ], [ %spec.select.i.i.i.i.i227.i, %.lr.ph.i.i4.i.i.i225.i ], [ %spec.select.i.i.i.i.i214.i, %.lr.ph.i.i4.i.i.i209.i ], [ %spec.select.i.i.i.i.i198.i, %.lr.ph.i.i4.i.i.i193.i ], [ %spec.select.i.i.i.i.i182.i, %.lr.ph.i.i4.i.i.i177.i ], [ %i.ay, %bb.g ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i.i ], [ %i.ck, %bb.j ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i ], [ %i.dz, %bb.m ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i ], [ %i.fo, %bb.p ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i ], [ %i.hd, %bb.s ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i ], [ %i.is, %bb.v ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i ], [ %i.kh, %bb.y ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i ], [ %i.lw, %bb.ab ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i ], [ %i.nl, %bb.ae ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i ], [ %i.pb, %bb.ah ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i ], [ %i.qr, %bb.ak ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i ], [ %i.av, %middle.block308 ], [ %i.ch, %middle.block291 ], [ %i.dw, %middle.block274 ], [ %i.fl, %middle.block257 ], [ %i.ha, %middle.block240 ], [ %i.ip, %middle.block223 ], [ %i.ke, %middle.block206 ], [ %i.lt, %middle.block189 ], [ %i.ni, %middle.block172 ], [ %i.ox, %middle.block155 ], [ %i.qn, %middle.block ], [ %spec.select.i.i.i.i.i242.i, %.lr.ph.i.i4.i.i.i238.i ]
  store ptr null, ptr %3, align 8, !tbaa !18, !alias.scope !255
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.invoke, %_ZN5arrow6StatusD2Ev.exit.sink.split, %bb.al
  %.sroa.15.0 = phi i64 [ 0, %.invoke ], [ %.sroa.15.0.ph, %_ZN5arrow6StatusD2Ev.exit.sink.split ], [ 0, %bb.al ]
  %i.qs = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  store ptr %i.qs, ptr %2, align 8, !tbaa !18
  store ptr null, ptr %3, align 8, !tbaa !18
  %i.qt = load ptr, ptr %i.c, align 8, !tbaa !109 ; 8 uses
  %.not.i.i = icmp eq ptr %i.qt, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8 ; 4 uses
  %i.qv = load atomic i64, ptr %i.qu acquire, align 8 ; 2 uses
  %i.qw = icmp eq i64 %i.qv, 4294967297
  %i.qx = trunc i64 %i.qv to i32                  ; 2 uses
  br i1 %i.qw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.qu, align 8, !tbaa !111
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qt, i64 12
  store i32 0, ptr %i.qy, align 4, !tbaa !113
  %i.qz = load ptr, ptr %i.qt, align 8, !tbaa !7
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %i.rb = load ptr, ptr %i.ra, align 8
  call void %i.rb(ptr noundef nonnull align 8 dereferenceable(16) %i.qt) #22, !inline_history !145
  %i.rc = load ptr, ptr %i.qt, align 8, !tbaa !7
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 24
  %i.re = load ptr, ptr %i.rd, align 8
  call void %i.re(ptr noundef nonnull align 8 dereferenceable(16) %i.qt) #22, !inline_history !145
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split

bb.ao:                                            ; preds = %bb.am
  %i.rf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i = icmp eq i8 %i.rf, 0
  br i1 %.not.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.rg = add nsw i32 %i.qx, -1
  store i32 %i.rg, ptr %i.qu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.rh = atomicrmw volatile add ptr %i.qu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i = phi i32 [ %i.qx, %bb.ap ], [ %i.rh, %bb.aq ]
  %i.ri = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ri, label %bb.ar, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split, !prof !110

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qt) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.an
  %.pr = load ptr, ptr %2, align 8, !tbaa !18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split, %_ZN5arrow6StatusD2Ev.exit
  %i.rj = phi ptr [ %.pr, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split ], [ %i.qs, %_ZN5arrow6StatusD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.rk = icmp eq ptr %i.rj, null
  br i1 %i.rk, label %_ZN5arrow6StatusD2Ev.exit56, label %bb.as, !prof !42

bb.as:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  %i.rl = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %.not.i51 = icmp eq ptr %i.rl, null
  br i1 %.not.i51, label %_ZN5arrow6StatusD2Ev.exit52, label %bb.at, !prof !42

bb.at:                                            ; preds = %bb.as
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 1
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !43, !range !53, !noundef !54
  %i.ro = trunc nuw i8 %i.rn to i1
  br i1 %i.ro, label %_ZN5arrow6StatusD2Ev.exit52, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  br label %_ZN5arrow6StatusD2Ev.exit52

_ZN5arrow6StatusD2Ev.exit52:                      ; preds = %bb.as, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.aw

bb.av:                                            ; preds = %.invoke, %bb.al, %bb.ai, %bb.af, %bb.ac, %bb.z, %bb.w, %bb.t, %bb.q, %bb.n, %bb.k, %bb.h, %bb.e
  %i.rp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.rp

_ZN5arrow6StatusD2Ev.exit56:                      ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  store ptr null, ptr %0, align 8, !tbaa !18
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.15.0, ptr %i.rq, align 8, !tbaa !14
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit52, %_ZN5arrow6StatusD2Ev.exit56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.24", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !18
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !110

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h
end_hunk_0
begin_hunk_1_@_ZN5arrow6TensorD2Ev:bb.a
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.ag, align 8, !tbaa !111
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !113
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #22, !inline_history !186
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #22, !inline_history !186
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i4 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.aj, %bb.h ], [ %i.at, %bb.i ]
  %i.au = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.au, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !110

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit3, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !109 ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ax, align 8, !tbaa !111
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !113
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22, !inline_history !145
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22, !inline_history !145
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i6 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

bb.o:                                             ; preds = %bb.m
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i8 = phi i32 [ %i.ba, %bb.n ], [ %i.bk, %bb.o ]
  %i.bl = icmp eq i32 %.0.i.i.i.i8, 1
  br i1 %i.bl, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !110

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7, %bb.p
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6TensorD0Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow6TensorD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #25
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIlSaIlEE14_M_fill_assignEmRKl(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.i, label %bb.c, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %i.j = shl nuw nsw i64 %1, 3                    ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j ; 2 uses
  %i.m = load i64, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.n = add nsw i64 %i.j, -8                     ; 2 uses
  %i.o = lshr exact i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check50 = icmp ult i64 %i.n, 24
  br i1 %min.iters.check50, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph51

vector.ph51:                                      ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %n.vec52 = and i64 %i.p, 4611686018427387900    ; 3 uses
  %i.q = shl i64 %n.vec52, 3
  %i.r = getelementptr i8, ptr %i.k, i64 %i.q
  %broadcast.splatinsert53 = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat54 = shufflevector <2 x i64> %broadcast.splatinsert53, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph51
  %index56 = phi i64 [ 0, %vector.ph51 ], [ %index.next58, %vector.body55 ] ; 2 uses
  %i.s = shl i64 %index56, 3
  %next.gep57 = getelementptr i8, ptr %i.k, i64 %i.s ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep57, i64 16
  store <2 x i64> %broadcast.splat54, ptr %next.gep57, align 8, !tbaa !14
  store <2 x i64> %broadcast.splat54, ptr %i.t, align 8, !tbaa !14
  %index.next58 = add nuw i64 %index56, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next58, %n.vec52
  br i1 %i.u, label %middle.block59, label %vector.body55, !llvm.loop !321

middle.block59:                                   ; preds = %vector.body55
  %cmp.n60 = icmp eq i64 %i.p, %n.vec52
  br i1 %cmp.n60, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i, %middle.block59
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.r, %middle.block59 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.m, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !322

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block59
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !13
  store ptr %i.l, ptr %i.x, align 8, !tbaa !9
  store ptr %i.w, ptr %i.a, align 8, !tbaa !24
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !9    ; 8 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = sub i64 %i.aa, %i.e                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 3                 ; 2 uses
  %i.ad = icmp ugt i64 %1, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %2, align 8, !tbaa !14    ; 3 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.z
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %3 = sub i64 %i.aa, %i.e
  %4 = add i64 %3, -8                             ; 2 uses
  %i.af = lshr i64 %4, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check24 = icmp ult i64 %4, 24
  br i1 %min.iters.check24, label %.lr.ph.i.i.i.i.preheader62, label %vector.ph25

vector.ph25:                                      ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec26 = and i64 %i.ag, 4611686018427387900   ; 3 uses
  %i.ah = shl i64 %n.vec26, 3
  %i.ai = getelementptr i8, ptr %i.c, i64 %i.ah
  %broadcast.splatinsert27 = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %broadcast.splat28 = shufflevector <2 x i64> %broadcast.splatinsert27, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body29

vector.body29:                                    ; preds = %vector.body29, %vector.ph25
  %index30 = phi i64 [ 0, %vector.ph25 ], [ %index.next32, %vector.body29 ] ; 2 uses
  %i.aj = shl i64 %index30, 3
  %next.gep31 = getelementptr i8, ptr %i.c, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep31, i64 16
  store <2 x i64> %broadcast.splat28, ptr %next.gep31, align 8, !tbaa !14
  store <2 x i64> %broadcast.splat28, ptr %i.ak, align 8, !tbaa !14
  %index.next32 = add nuw i64 %index30, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next32, %n.vec26
  br i1 %i.al, label %middle.block33, label %vector.body29, !llvm.loop !323

middle.block33:                                   ; preds = %vector.body29
  %cmp.n34 = icmp eq i64 %i.ag, %n.vec26
  br i1 %cmp.n34, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i.preheader62

.lr.ph.i.i.i.i.preheader62:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block33
  %.06.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %middle.block33 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader62, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader62 ] ; 2 uses
  store i64 %i.ae, ptr %.06.i.i.i.i, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.am, %i.z
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !324

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block33
  %.pre = load i64, ptr %2, align 8, !tbaa !14
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit.loopexit, %bb.f
  %i.an = phi i64 [ %.pre, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit.loopexit ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ao = sub i64 %1, %i.ac
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i.i.i.i.i ; 2 uses
  %i.aq = shl i64 %1, 3
  %5 = sub i64 %i.aq, %i.ab
  %6 = add i64 %5, -8                             ; 2 uses
  %i.ar = lshr i64 %6, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check37 = icmp ult i64 %6, 24
  br i1 %min.iters.check37, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph38

vector.ph38:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit
  %n.vec39 = and i64 %i.as, 4611686018427387900   ; 3 uses
  %i.at = shl i64 %n.vec39, 3
  %i.au = getelementptr i8, ptr %i.z, i64 %i.at
  %broadcast.splatinsert40 = insertelement <2 x i64> poison, i64 %i.an, i64 0
  %broadcast.splat41 = shufflevector <2 x i64> %broadcast.splatinsert40, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph38
  %index43 = phi i64 [ 0, %vector.ph38 ], [ %index.next45, %vector.body42 ] ; 2 uses
  %i.av = shl i64 %index43, 3
  %next.gep44 = getelementptr i8, ptr %i.z, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep44, i64 16
  store <2 x i64> %broadcast.splat41, ptr %next.gep44, align 8, !tbaa !14
  store <2 x i64> %broadcast.splat41, ptr %i.aw, align 8, !tbaa !14
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next45, %n.vec39
  br i1 %i.ax, label %middle.block46, label %vector.body42, !llvm.loop !325

middle.block46:                                   ; preds = %vector.body42
  %cmp.n47 = icmp eq i64 %i.as, %n.vec39
  br i1 %cmp.n47, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit, %middle.block46
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit ], [ %i.au, %middle.block46 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.an, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !326

_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block46
  store ptr %i.ap, ptr %i.y, align 8, !tbaa !9
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.az = icmp eq i64 %1, 0
  br i1 %i.az, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx.i.i = shl nuw nsw i64 %1, 3               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %i.bb = load i64, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.bc = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.bd = lshr exact i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i12.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.h
  %n.vec = and i64 %i.be, 4611686018427387900     ; 3 uses
  %i.bf = shl i64 %n.vec, 3
  %i.bg = getelementptr i8, ptr %i.c, i64 %i.bf
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bb, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.bh ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !14
  store <2 x i64> %broadcast.splat, ptr %i.bi, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !327

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12.preheader

.lr.ph.i.i.i.i12.preheader:                       ; preds = %bb.h, %middle.block
  %.06.i.i.i.i13.ph = phi ptr [ %i.c, %bb.h ], [ %i.bg, %middle.block ]
  br label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.preheader, %.lr.ph.i.i.i.i12
  %.06.i.i.i.i13 = phi ptr [ %i.bk, %.lr.ph.i.i.i.i12 ], [ %.06.i.i.i.i13.ph, %.lr.ph.i.i.i.i12.preheader ] ; 2 uses
  store i64 %i.bb, ptr %.06.i.i.i.i13, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i13, i64 8 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.bk, %i.ba
  br i1 %.not.i.i.i.i14, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !328

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i12, %middle.block, %bb.g
  %.0.i.i = phi ptr [ %i.c, %bb.g ], [ %i.ba, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i12 ] ; 2 uses
  %.not.i = icmp eq ptr %i.z, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.y, align 8, !tbaa !9
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA22_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(22) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !329
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !329
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !332, !noalias !329, !nonnull !54, !align !342
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(22) %2) #22, !noalias !329
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(22) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !329 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !329
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !329
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !80     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !81
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !80     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
end_hunk_1
