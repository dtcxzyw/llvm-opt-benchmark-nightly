Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/buffers_adaptor?download=true
inline.NumInlined: 1930
inline.NumDeleted: 564
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_:bb.a

.preheader.i.i.preheader.i:                       ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !41, !noalias !288 ; 2 uses
  %.sroa.speculated31.i.i12.i = call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.ay) ; 2 uses
  %.not21.i.i13.i = icmp ult i64 %i.ay, %i.bd
  br i1 %.not21.i.i13.i, label %.loopexit.i.i.i, label %.lr.ph.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !41, !noalias !288 ; 2 uses
  %.sroa.speculated31.i.i.i = call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bi) ; 2 uses
  %.not21.i.i.i = icmp ult i64 %i.bi, %i.bf
  br i1 %.not21.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i.i.preheader.i, %.preheader.i.i.i
  %.sroa.speculated31.i.i15.i = phi i64 [ %.sroa.speculated31.i.i.i, %.preheader.i.i.i ], [ %.sroa.speculated31.i.i12.i, %.preheader.i.i.preheader.i ]
  %.060.i.i14.i = phi i64 [ %i.bi, %.preheader.i.i.i ], [ %i.ay, %.preheader.i.i.preheader.i ]
  %i.bg = phi ptr [ %i.bh, %.preheader.i.i.i ], [ %i.au, %.preheader.i.i.preheader.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 3 uses
  %i.bi = sub nuw i64 %.060.i.i14.i, %.sroa.speculated31.i.i15.i ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %.preheader.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i, %.preheader.i.i.i, %.preheader.i.i.preheader.i, %bb.b
  %.sroa.01692.0 = phi ptr [ %i.au, %bb.b ], [ %i.au, %.preheader.i.i.preheader.i ], [ %i.bh, %.preheader.i.i.i ], [ %i.bh, %.lr.ph.i ] ; 6 uses
  %.sroa.121694.0 = phi i64 [ 0, %bb.b ], [ %.sroa.speculated31.i.i12.i, %.preheader.i.i.preheader.i ], [ 0, %.lr.ph.i ], [ %.sroa.speculated31.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.01692.0, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !41, !noalias !288
  %i.bl = sub i64 %i.bk, %.sroa.121694.0          ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.01692.0, i64 16 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, %i.aw
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit.i.i.i
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.az, i64 %i.bl)
  br label %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit

bb.d:                                             ; preds = %.loopexit.i.i.i
  %.not22.i.i.i = icmp ult i64 %i.bl, %i.az
  br i1 %.not22.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = sub nuw i64 %i.az, %i.bl
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.61693.0 = phi ptr [ %i.aw, %bb.e ], [ %i.bm, %bb.d ] ; 3 uses
  %i.bp = phi i64 [ -1, %bb.e ], [ %i.az, %bb.d ]
  %.061.i.i.i = phi i64 [ %i.bo, %bb.e ], [ %i.az, %bb.d ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.bm, %bb.e ], [ %.sroa.01692.0, %bb.d ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %.sroa.61693.0
  br i1 %i.br, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g, %bb.f
  %.162.lcssa.i.i.i = phi i64 [ %.061.i.i.i, %bb.f ], [ %i.bv, %bb.g ]
  %.sroa.speculated41.i.i.i = call i64 @llvm.umin.i64(i64 %i.bp, i64 %.162.lcssa.i.i.i)
  br label %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.g
  %i.bs = phi ptr [ %i.bw, %bb.g ], [ %i.bq, %bb.f ] ; 3 uses
  %.pn.i.i.i = phi ptr [ %i.bs, %bb.g ], [ %.0.i.i.i, %bb.f ]
  %.16270.i.i.i = phi i64 [ %i.bv, %bb.g ], [ %.061.i.i.i, %bb.f ] ; 3 uses
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  %i.bt = load i64, ptr %.in.i.i.i, align 8, !tbaa !41, !noalias !288 ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %.16270.i.i.i
  br i1 %i.bu, label %bb.g, label %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.bv = sub nuw i64 %.16270.i.i.i, %i.bt        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %.sroa.61693.0
  br i1 %i.bx, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit: ; preds = %.lr.ph.i.i.i, %bb.c, %._crit_edge.i.i.i
  %.sroa.61693.2 = phi ptr [ %.sroa.61693.0, %._crit_edge.i.i.i ], [ %i.aw, %bb.c ], [ %i.bs, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.171695.0 = phi i64 [ %.sroa.speculated41.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.speculated.i.i.i, %bb.c ], [ %.16270.i.i.i, %.lr.ph.i.i.i ]
  %.not6.i.i.i = icmp eq ptr %.sroa.01692.0, %.sroa.61693.2
  br i1 %.not6.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb0EEEvEEmRKT_.exit, label %.lr.ph.i.i.i86

.lr.ph.i.i.i86:                                   ; preds = %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.01692.0, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !41
  %i.ca = call i64 @llvm.usub.sat.i64(i64 %i.bz, i64 %.sroa.121694.0) ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.01692.0, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %.sroa.61693.2
  br i1 %i.cc, label %.thread.i.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.lr.ph.i.i.i86, %.peel.next.i.i
  %.08.i.i.i = phi i64 [ %i.ch, %.peel.next.i.i ], [ %i.ca, %.lr.ph.i.i.i86 ] ; 2 uses
  %.sroa.4.07.i.i.i = phi ptr [ %i.cf, %.peel.next.i.i ], [ %i.cb, %.lr.ph.i.i.i86 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !41 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %.sroa.61693.2
  %i.ch = add i64 %i.ce, %.08.i.i.i
  br i1 %i.cg, label %.thread.i.i, label %.peel.next.i.i, !llvm.loop !5

.thread.i.i:                                      ; preds = %.peel.next.i.i, %.lr.ph.i.i.i86
  %.08.i.lcssa.i.i = phi i64 [ 0, %.lr.ph.i.i.i86 ], [ %.08.i.i.i, %.peel.next.i.i ]
  %.sroa.6.0.i.i.lcssa.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i86 ], [ %i.ce, %.peel.next.i.i ]
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.6.0.i.i.lcssa.i.i, i64 %.sroa.171695.0)
  %i.ci = sub i64 0, %.08.i.lcssa.i.i
  %i.cj = icmp eq i64 %.sroa.speculated.i.i.i.i, %i.ci
  %i.ck = zext i1 %i.cj to i8
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb0EEEvEEmRKT_.exit

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb0EEEvEEmRKT_.exit: ; preds = %bb.a, %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit, %.thread.i.i
  %.0.lcssa.i.i.i = phi i8 [ 1, %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit ], [ %i.ck, %.thread.i.i ], [ 1, %bb.a ]
  store i8 %.0.lcssa.i.i.i, ptr %i.b, align 1, !tbaa !125
  %i.cl = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.as, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) @.str.6, ptr noundef nonnull @.str.9, i32 noundef 384) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  %i.cm = load ptr, ptr %i.at, align 8, !tbaa !113
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %0 to i64                  ; 17 uses
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !114
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.cs, %i.co
  %i.cu = load ptr, ptr %i.av, align 8, !tbaa !115
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = sub i64 %i.cv, %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %24, ptr noundef nonnull align 8 dereferenceable(112) %0, i64 48, i1 false), !tbaa.struct !126
  %i.cx = getelementptr inbounds nuw i8, ptr %24, i64 48 ; 13 uses
  %i.cy = getelementptr inbounds i8, ptr %24, i64 %i.cp
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !113
  %i.cz = getelementptr inbounds nuw i8, ptr %24, i64 56 ; 9 uses
  %i.da = getelementptr inbounds i8, ptr %24, i64 %i.ct
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !114
  %i.db = getelementptr inbounds i8, ptr %24, i64 %i.cw
  %i.dc = getelementptr inbounds nuw i8, ptr %24, i64 64 ; 13 uses
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !115
  %i.dd = getelementptr inbounds nuw i8, ptr %24, i64 72 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.df = getelementptr inbounds nuw i8, ptr %24, i64 80 ; 9 uses
  %i.dg = load <2 x i64>, ptr %i.de, align 8, !tbaa !30
  store <2 x i64> %i.dg, ptr %i.dd, align 8, !tbaa !30
  %i.dh = getelementptr inbounds nuw i8, ptr %24, i64 88 ; 21 uses
  %i.di = getelementptr inbounds nuw i8, ptr %24, i64 96 ; 9 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dk = load <2 x i64>, ptr %i.an, align 8, !tbaa !30
  store <2 x i64> %i.dk, ptr %i.dh, align 8, !tbaa !30
  %i.dl = getelementptr inbounds nuw i8, ptr %24, i64 104 ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !127
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  call void @_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE7prepareEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::buffers_adaptor<boost::beast::buffers_triple>::subrange.25") align 8 %25, ptr noundef nonnull align 8 dereferenceable(112) %24, i64 noundef 13)
  %i.do = load ptr, ptr %25, align 8, !tbaa !146  ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !147 ; 2 uses
  %.not1751 = icmp eq ptr %i.do, %i.dq
  br i1 %.not1751, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb0EEEvEEmRKT_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %25, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %.lr.ph.i.i
  %i.dt = phi ptr [ %i.do, %.lr.ph.i.i ], [ %i.ed, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.021.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ee, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ]
  %.sroa.07.020.i.i = phi ptr [ @.str.10, %.lr.ph.i.i ], [ %i.ef, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.6.019.i.i = phi i64 [ 13, %.lr.ph.i.i ], [ %i.eg, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.412.018.i.i = phi ptr [ %i.do, %.lr.ph.i.i ], [ %i.dy, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 4 uses
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %.sroa.412.018.i.i, align 8, !tbaa !29 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.412.018.i.i, i64 8
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !30 ; 3 uses
  %i.du = icmp eq ptr %.sroa.412.018.i.i, %i.dt
  br i1 %i.du, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dv = load i64, ptr %i.dr, align 8, !tbaa !148
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dv, i64 %.sroa.6.0.copyload.i.i.i) ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 %..i.i.i.i
  %i.dx = sub i64 %.sroa.6.0.copyload.i.i.i, %..i.i.i.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.03.0.i.i.i = phi ptr [ %i.dw, %bb.i ], [ %.sroa.03.0.copyload.i.i.i, %bb.h ]
  %.sroa.6.0.i.i.i = phi i64 [ %i.dx, %bb.i ], [ %.sroa.6.0.copyload.i.i.i, %bb.h ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.412.018.i.i, i64 16 ; 3 uses
  %i.dz = load ptr, ptr %i.dp, align 8, !tbaa !147
  %i.ea = icmp eq ptr %i.dy, %i.dz
  %i.eb = load i64, ptr %i.ds, align 8
  %.sroa.speculated.i.i.i88 = call i64 @llvm.umin.i64(i64 %.sroa.6.0.i.i.i, i64 %i.eb)
  %.sroa.6.1.i.i.i = select i1 %i.ea, i64 %.sroa.speculated.i.i.i88, i64 %.sroa.6.0.i.i.i ; 2 uses
  %i.ec = call i64 @llvm.umin.i64(i64 %.sroa.6.1.i.i.i, i64 %.sroa.6.019.i.i) ; 4 uses
  %.not.i.i.i87 = icmp eq i64 %.sroa.6.1.i.i.i, 0
  br i1 %.not.i.i.i87, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.03.0.i.i.i, ptr align 1 %.sroa.07.020.i.i, i64 %i.ec, i1 false)
  %.pre.a = load ptr, ptr %25, align 8, !tbaa !146
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i: ; preds = %bb.k, %bb.j
  %i.ed = phi ptr [ %.pre.a, %bb.k ], [ %i.dt, %bb.j ]
  %i.ee = add i64 %i.ec, %.021.i.i                ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.07.020.i.i, i64 %i.ec
  %i.eg = sub nuw nsw i64 %.sroa.6.019.i.i, %i.ec ; 2 uses
  %.not.i.i = icmp ne i64 %i.eg, 0
  %i.eh = icmp ne ptr %i.dy, %i.dq
  %or.cond.i.i = and i1 %i.eh, %.not.i.i
  br i1 %or.cond.i.i, label %bb.h, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit, !llvm.loop !6

_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb0EEEvEEmRKT_.exit
  %.0.lcssa.i.i = phi i64 [ 0, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb0EEEvEEmRKT_.exit ], [ %i.ee, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 4 uses
  %i.ei = load ptr, ptr %i.cz, align 8, !tbaa !114 ; 7 uses
  %i.ej = load ptr, ptr %i.dc, align 8, !tbaa !115 ; 3 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit._ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit_crit_edge, label %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i

_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit._ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit_crit_edge: ; preds = %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit
  %.pre2405.a = load i64, ptr %i.dh, align 8, !tbaa !143
  %.pre2406.a = load i64, ptr %i.di, align 8, !tbaa !149
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit

_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i: ; preds = %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 -16 ; 3 uses
  %.not24.i = icmp eq ptr %i.ei, %i.el
  %.pre.i = load i64, ptr %i.di, align 8, !tbaa !149 ; 3 uses
  %.pre36.i = load i64, ptr %i.dh, align 8        ; 3 uses
  br i1 %.not24.i, label %._crit_edge.i, label %.lr.ph.i89

.lr.ph.i89:                                       ; preds = %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i
  %.sroa.22.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.sroa.22.0.copyload.peel.i = load i64, ptr %.sroa.22.0..sroa_idx.peel.i, align 8, !tbaa !30
  %i.em = sub i64 %.sroa.22.0.copyload.peel.i, %.pre.i ; 3 uses
  %.not11.peel.i = icmp ult i64 %.0.lcssa.i.i, %i.em
  br i1 %.not11.peel.i, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i89
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 4 uses
  store ptr %i.en, ptr %i.cz, align 8, !tbaa !114
  %i.eo = sub nuw i64 %.0.lcssa.i.i, %i.em        ; 2 uses
  store i64 0, ptr %i.di, align 8, !tbaa !149
  %i.ep = add i64 %i.em, %.pre36.i                ; 3 uses
  store i64 %i.ep, ptr %i.dh, align 8, !tbaa !143
  %.not.peel.i = icmp eq ptr %i.en, %i.el
  br i1 %.not.peel.i, label %._crit_edge.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.l, %bb.m
  %i.eq = phi i64 [ %i.ey, %bb.m ], [ %i.ep, %bb.l ] ; 2 uses
  %.025.i = phi i64 [ %i.ex, %bb.m ], [ %i.eo, %bb.l ] ; 3 uses
  %i.er = phi ptr [ %i.ew, %bb.m ], [ %i.en, %bb.l ] ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !30 ; 3 uses
  %.not11.i = icmp ult i64 %.025.i, %.sroa.22.0.copyload.i
  br i1 %.not11.i, label %.thread.i, label %bb.m

.thread.i:                                        ; preds = %.peel.next.i, %.lr.ph.i89
  %i.es = phi ptr [ %i.ei, %.lr.ph.i89 ], [ %i.er, %.peel.next.i ]
  %i.et = phi i64 [ %.pre36.i, %.lr.ph.i89 ], [ %i.eq, %.peel.next.i ]
  %.lcssa30.i = phi i64 [ %.pre.i, %.lr.ph.i89 ], [ 0, %.peel.next.i ]
  %.025.lcssa.i = phi i64 [ %.0.lcssa.i.i, %.lr.ph.i89 ], [ %.025.i, %.peel.next.i ] ; 2 uses
  %i.eu = add i64 %.025.lcssa.i, %.lcssa30.i      ; 2 uses
  store i64 %i.eu, ptr %i.di, align 8, !tbaa !149
  %i.ev = add i64 %.025.lcssa.i, %i.et            ; 2 uses
  store i64 %i.ev, ptr %i.dh, align 8, !tbaa !143
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit

bb.m:                                             ; preds = %.peel.next.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 4 uses
  store ptr %i.ew, ptr %i.cz, align 8, !tbaa !114
  %i.ex = sub nuw i64 %.025.i, %.sroa.22.0.copyload.i ; 2 uses
  store i64 0, ptr %i.di, align 8, !tbaa !149
  %i.ey = add i64 %.sroa.22.0.copyload.i, %i.eq   ; 3 uses
  store i64 %i.ey, ptr %i.dh, align 8, !tbaa !143
  %.not.i = icmp eq ptr %i.ew, %i.el
  br i1 %.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.m, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i, %bb.l
  %i.ez = phi i64 [ %.pre36.i, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i ], [ %i.ep, %bb.l ], [ %i.ey, %bb.m ]
  %i.fa = phi i64 [ %.pre.i, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i ], [ 0, %bb.l ], [ 0, %bb.m ] ; 2 uses
  %.0.lcssa.i = phi i64 [ %.0.lcssa.i.i, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i ], [ %i.eo, %bb.l ], [ %i.ex, %bb.m ]
  %.lcssa.i = phi ptr [ %i.ei, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i ], [ %i.en, %bb.l ], [ %i.ew, %bb.m ] ; 3 uses
  %i.fb = load i64, ptr %i.dl, align 8, !tbaa !127
  %i.fc = sub i64 %i.fb, %i.fa
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.fc, i64 %.0.lcssa.i) ; 2 uses
  %i.fd = add i64 %.sroa.speculated.i, %i.fa      ; 3 uses
  store i64 %i.fd, ptr %i.di, align 8, !tbaa !149
  %i.fe = add i64 %.sroa.speculated.i, %i.ez      ; 3 uses
  store i64 %i.fe, ptr %i.dh, align 8, !tbaa !143
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !30
  %i.ff = icmp eq i64 %i.fd, %.sroa.2.0.copyload.i
  br i1 %i.ff, label %bb.n, label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16 ; 2 uses
  store ptr %i.fg, ptr %i.cz, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit

_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit: ; preds = %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit._ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit_crit_edge, %.thread.i, %._crit_edge.i, %bb.n
  %i.fh = phi i64 [ %.pre2406.a, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit._ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit_crit_edge ], [ %i.eu, %.thread.i ], [ %i.fd, %._crit_edge.i ], [ 0, %bb.n ]
  %i.fi = phi i64 [ %.pre2405.a, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit._ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit_crit_edge ], [ %i.ev, %.thread.i ], [ %i.fe, %._crit_edge.i ], [ %i.fe, %bb.n ]
  %i.fj = phi ptr [ %i.ei, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit._ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit_crit_edge ], [ %i.es, %.thread.i ], [ %.lcssa.i, %._crit_edge.i ], [ %i.fg, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.fk = load ptr, ptr %i.cx, align 8, !tbaa !113
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %24 to i64                 ; 15 uses
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = ptrtoint ptr %i.fj to i64
  %i.fp = sub i64 %i.fo, %i.fm
  %i.fq = ptrtoint ptr %i.ej to i64
  %i.fr = sub i64 %i.fq, %i.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %26, ptr noundef nonnull align 8 dereferenceable(112) %24, i64 48, i1 false), !tbaa.struct !126
  %i.fs = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 6 uses
  %i.ft = getelementptr inbounds i8, ptr %26, i64 %i.fn
  store ptr %i.ft, ptr %i.fs, align 8, !tbaa !113
  %i.fu = getelementptr inbounds nuw i8, ptr %26, i64 56 ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %26, i64 %i.fp
  store ptr %i.fv, ptr %i.fu, align 8, !tbaa !114
  %i.fw = getelementptr inbounds i8, ptr %26, i64 %i.fr
  %i.fx = getelementptr inbounds nuw i8, ptr %26, i64 64 ; 4 uses
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !115
  %i.fy = getelementptr inbounds nuw i8, ptr %26, i64 72 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %26, i64 80 ; 6 uses
  %i.ga = load <2 x i64>, ptr %i.dd, align 8, !tbaa !30
  store <2 x i64> %i.ga, ptr %i.fy, align 8, !tbaa !30
  %i.gb = getelementptr inbounds nuw i8, ptr %26, i64 88 ; 9 uses
  store i64 %i.fi, ptr %i.gb, align 8, !tbaa !143
  %i.gc = getelementptr inbounds nuw i8, ptr %26, i64 96 ; 3 uses
  store i64 %i.fh, ptr %i.gc, align 8, !tbaa !149
  %i.gd = getelementptr inbounds nuw i8, ptr %26, i64 104 ; 2 uses
  %i.ge = load i64, ptr %i.dl, align 8, !tbaa !127
  store i64 %i.ge, ptr %i.gd, align 8, !tbaa !127
  %i.gf = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i8 1, ptr %i.c, align 1, !tbaa !125
  %i.gg = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.gf, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) @.str.6, ptr noundef nonnull @.str.9, i32 noundef 398) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.gh = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.gi = load ptr, ptr %i.cx, align 8, !tbaa !113, !noalias !289 ; 7 uses
  %i.gj = load ptr, ptr %i.dc, align 8, !tbaa !115, !noalias !289 ; 4 uses
  %i.gk = load i64, ptr %i.df, align 8, !tbaa !144, !noalias !289 ; 4 uses
  %i.gl = load i64, ptr %i.dh, align 8, !tbaa !143, !noalias !289 ; 6 uses
  store ptr %i.gi, ptr %28, align 8, !tbaa !146, !alias.scope !289
  %i.gm = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 5 uses
  store ptr %i.gj, ptr %i.gm, align 8, !tbaa !147, !alias.scope !289
  %i.gn = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 3 uses
  store i64 0, ptr %i.gn, align 8, !tbaa !148, !alias.scope !289
  %i.go = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 3 uses
  %i.gp = icmp eq i64 %i.gl, 0
  br i1 %i.gp, label %.thread88.i.i.i126, label %bb.o

.thread88.i.i.i126:                               ; preds = %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit
  store ptr %i.gi, ptr %i.gm, align 8, !tbaa !147, !alias.scope !289
  br label %bb.p

bb.o:                                             ; preds = %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit
  %i.gq = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %.thread88.i.i.i126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, i8 0, i64 16, i1 false), !alias.scope !289
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit

bb.q:                                             ; preds = %bb.o
  %.not.old.i.i.i99 = icmp eq i64 %i.gk, 0
  br i1 %.not.old.i.i.i99, label %.loopexit.i.i.i113, label %.preheader.i.i.preheader.i100

.preheader.i.i.preheader.i100:                    ; preds = %bb.q
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !41, !noalias !289 ; 2 uses
  %.sroa.speculated31.i.i12.i101 = call i64 @llvm.umin.i64(i64 %i.gs, i64 %i.gk) ; 2 uses
  %.not21.i.i13.i102 = icmp ult i64 %i.gk, %i.gs
  br i1 %.not21.i.i13.i102, label %.loopexit.i.i.i113.sink.split, label %.lr.ph.i103

.preheader.i.i.i107:                              ; preds = %.lr.ph.i103
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !41, !noalias !289 ; 2 uses
  %.sroa.speculated31.i.i.i108 = call i64 @llvm.umin.i64(i64 %i.gu, i64 %i.gx) ; 2 uses
  %.not21.i.i.i109 = icmp ult i64 %i.gx, %i.gu
  br i1 %.not21.i.i.i109, label %.loopexit.i.i.i113.sink.split, label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %.preheader.i.i.preheader.i100, %.preheader.i.i.i107
  %.sroa.speculated31.i.i15.i104 = phi i64 [ %.sroa.speculated31.i.i.i108, %.preheader.i.i.i107 ], [ %.sroa.speculated31.i.i12.i101, %.preheader.i.i.preheader.i100 ]
  %.060.i.i14.i105 = phi i64 [ %i.gx, %.preheader.i.i.i107 ], [ %i.gk, %.preheader.i.i.preheader.i100 ]
  %i.gv = phi ptr [ %i.gw, %.preheader.i.i.i107 ], [ %i.gi, %.preheader.i.i.preheader.i100 ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 3 uses
  %i.gx = sub nuw i64 %.060.i.i14.i105, %.sroa.speculated31.i.i15.i104 ; 4 uses
  %.not.i.i.i106 = icmp eq i64 %i.gx, 0
  br i1 %.not.i.i.i106, label %.loopexit.i.i.i113.sink.split, label %.preheader.i.i.i107

.loopexit.i.i.i113.sink.split:                    ; preds = %.lr.ph.i103, %.preheader.i.i.i107, %.preheader.i.i.preheader.i100
  %.sink3506.a = phi ptr [ %i.gi, %.preheader.i.i.preheader.i100 ], [ %i.gw, %.preheader.i.i.i107 ], [ %i.gw, %.lr.ph.i103 ] ; 2 uses
  %.sink = phi i64 [ %.sroa.speculated31.i.i12.i101, %.preheader.i.i.preheader.i100 ], [ 0, %.lr.ph.i103 ], [ %.sroa.speculated31.i.i.i108, %.preheader.i.i.i107 ] ; 2 uses
  store ptr %.sink3506.a, ptr %28, align 8, !alias.scope !289
  store i64 %.sink, ptr %i.gn, align 8, !alias.scope !289
  br label %.loopexit.i.i.i113

end_hunk_0
begin_hunk_1_@_ZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_:bb.a
  %.not.i1156 = icmp ne i64 %i.blg, 0             ; 3 uses
  br i1 %.not.i1156, label %.lr.ph.i1157.preheader, label %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit

.lr.ph.i1157.preheader:                           ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb0EEEvEEmRKT_.exit1155
  %xtraiter = and i64 %spec.select, 7             ; 3 uses
  %i.bnf = icmp ult i64 %i.blg, 8
  br i1 %i.bnf, label %.lr.ph.i1157.epil.preheader, label %.lr.ph.i1157.preheader.new

.lr.ph.i1157.preheader.new:                       ; preds = %.lr.ph.i1157.preheader
  %unroll_iter = and i64 %spec.select, 8
  br label %.lr.ph.i1157

.lr.ph.i1157:                                     ; preds = %.lr.ph.i1157, %.lr.ph.i1157.preheader.new
  %.06.i = phi i64 [ 0, %.lr.ph.i1157.preheader.new ], [ %i.bnu, %.lr.ph.i1157 ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.i1157.preheader.new ], [ %niter.next.7, %.lr.ph.i1157 ]
  %indvars2386 = trunc i64 %.06.i to i8
  %i.bng = or disjoint i64 %.06.i, 1              ; 2 uses
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i
  store i8 %indvars2386, ptr %i.bnh, align 1, !tbaa !68
  %indvars2386.1 = trunc i64 %i.bng to i8
  %i.bni = or disjoint i64 %.06.i, 2              ; 2 uses
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bng
  store i8 %indvars2386.1, ptr %i.bnj, align 1, !tbaa !68
  %indvars2386.2 = trunc i64 %i.bni to i8
  %i.bnk = or disjoint i64 %.06.i, 3              ; 2 uses
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bni
  store i8 %indvars2386.2, ptr %i.bnl, align 1, !tbaa !68
  %indvars2386.3 = trunc i64 %i.bnk to i8
  %i.bnm = or disjoint i64 %.06.i, 4              ; 2 uses
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bnk
  store i8 %indvars2386.3, ptr %i.bnn, align 1, !tbaa !68
  %indvars2386.4 = trunc i64 %i.bnm to i8
  %i.bno = or disjoint i64 %.06.i, 5              ; 2 uses
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bnm
  store i8 %indvars2386.4, ptr %i.bnp, align 1, !tbaa !68
  %indvars2386.5 = trunc i64 %i.bno to i8
  %i.bnq = or disjoint i64 %.06.i, 6              ; 2 uses
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bno
  store i8 %indvars2386.5, ptr %i.bnr, align 1, !tbaa !68
  %indvars2386.6 = trunc i64 %i.bnq to i8
  %i.bns = or disjoint i64 %.06.i, 7              ; 2 uses
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bnq
  store i8 %indvars2386.6, ptr %i.bnt, align 1, !tbaa !68
  %indvars2386.7 = trunc i64 %i.bns to i8
  %i.bnu = add nuw nsw i64 %.06.i, 8              ; 2 uses
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bns
  store i8 %indvars2386.7, ptr %i.bnv, align 1, !tbaa !68
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit.loopexit.unr-lcssa, label %.lr.ph.i1157, !llvm.loop !264

_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i1157
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit, label %.lr.ph.i1157.epil.preheader

.lr.ph.i1157.epil.preheader:                      ; preds = %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit.loopexit.unr-lcssa, %.lr.ph.i1157.preheader
  %.06.i.epil.init = phi i64 [ 0, %.lr.ph.i1157.preheader ], [ %i.bnu, %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod3841 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod3841)
  br label %.lr.ph.i1157.epil

.lr.ph.i1157.epil:                                ; preds = %.lr.ph.i1157.epil, %.lr.ph.i1157.epil.preheader
  %.06.i.epil = phi i64 [ %i.bnw, %.lr.ph.i1157.epil ], [ %.06.i.epil.init, %.lr.ph.i1157.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i1157.epil ], [ 0, %.lr.ph.i1157.epil.preheader ]
  %indvars2386.epil = trunc i64 %.06.i.epil to i8
  %i.bnw = add nuw nsw i64 %.06.i.epil, 1
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i.epil
  store i8 %indvars2386.epil, ptr %i.bnx, align 1, !tbaa !68
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit, label %.lr.ph.i1157.epil, !llvm.loop !265

_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit: ; preds = %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit.loopexit.unr-lcssa, %.lr.ph.i1157.epil, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb0EEEvEEmRKT_.exit1155
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #28
  %i.bny = load ptr, ptr %i.at, align 8, !tbaa !113
  %i.bnz = ptrtoint ptr %i.bny to i64
  %i.boa = sub i64 %i.bnz, %i.co
  %i.bob = load ptr, ptr %i.cq, align 8, !tbaa !114
  %i.boc = ptrtoint ptr %i.bob to i64
  %i.bod = sub i64 %i.boc, %i.co
  %i.boe = load ptr, ptr %i.av, align 8, !tbaa !115
  %i.bof = ptrtoint ptr %i.boe to i64
  %i.bog = sub i64 %i.bof, %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %75, ptr noundef nonnull align 8 dereferenceable(112) %0, i64 48, i1 false), !tbaa.struct !126
  %i.boh = getelementptr inbounds nuw i8, ptr %75, i64 48 ; 3 uses
  %i.boi = getelementptr inbounds i8, ptr %75, i64 %i.boa
  store ptr %i.boi, ptr %i.boh, align 8, !tbaa !113
  %i.boj = getelementptr inbounds nuw i8, ptr %75, i64 56 ; 5 uses
  %i.bok = getelementptr inbounds i8, ptr %75, i64 %i.bod
  store ptr %i.bok, ptr %i.boj, align 8, !tbaa !114
  %i.bol = getelementptr inbounds i8, ptr %75, i64 %i.bog
  %i.bom = getelementptr inbounds nuw i8, ptr %75, i64 64 ; 3 uses
  store ptr %i.bol, ptr %i.bom, align 8, !tbaa !115
  %i.bon = getelementptr inbounds nuw i8, ptr %75, i64 72
  %i.boo = getelementptr inbounds nuw i8, ptr %75, i64 80 ; 2 uses
  %i.bop = load <2 x i64>, ptr %i.de, align 8, !tbaa !30
  store <2 x i64> %i.bop, ptr %i.bon, align 8, !tbaa !30
  %i.boq = getelementptr inbounds nuw i8, ptr %75, i64 88 ; 8 uses
  %i.bor = getelementptr inbounds nuw i8, ptr %75, i64 96 ; 6 uses
  %i.bos = load <2 x i64>, ptr %i.an, align 8, !tbaa !30
  store <2 x i64> %i.bos, ptr %i.boq, align 8, !tbaa !30
  %i.bot = getelementptr inbounds nuw i8, ptr %75, i64 104 ; 2 uses
  %i.bou = load i64, ptr %i.dm, align 8, !tbaa !127
  store i64 %i.bou, ptr %i.bot, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #28
  call void @_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE7prepareEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::buffers_adaptor<boost::beast::buffers_triple>::subrange.25") align 8 %76, ptr noundef nonnull align 8 dereferenceable(112) %75, i64 noundef %spec.select)
  %i.bov = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #28
  %i.bow = load ptr, ptr %76, align 8, !tbaa !146 ; 3 uses
  %i.box = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 3 uses
  %i.boy = load ptr, ptr %i.box, align 8, !tbaa !147 ; 3 uses
  %.not8.i.i.i1168 = icmp eq ptr %i.bow, %i.boy
  br i1 %.not8.i.i.i1168, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit1182, label %.lr.ph.i.i.i1169

.lr.ph.i.i.i1169:                                 ; preds = %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit
  %i.boz = getelementptr inbounds nuw i8, ptr %76, i64 16
  %i.bpa = load i64, ptr %i.boz, align 8
  %.sroa.6.0..sroa_idx.i.i.peel.i.i1170 = getelementptr inbounds nuw i8, ptr %i.bow, i64 8
  %.sroa.6.0.copyload.i.i.peel.i.i1171 = load i64, ptr %.sroa.6.0..sroa_idx.i.i.peel.i.i1170, align 8, !tbaa !30
  %i.bpb = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.copyload.i.i.peel.i.i1171, i64 %i.bpa) ; 2 uses
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bow, i64 16 ; 2 uses
  %i.bpd = icmp eq ptr %i.bpc, %i.boy
  br i1 %i.bpd, label %.thread.i.i1177, label %.peel.next.i.i1172

.peel.next.i.i1172:                               ; preds = %.lr.ph.i.i.i1169, %.peel.next.i.i1172
  %.010.i.i.i1173 = phi i64 [ %i.bpg, %.peel.next.i.i1172 ], [ %i.bpb, %.lr.ph.i.i.i1169 ] ; 2 uses
  %.sroa.44.09.i.i.i1174 = phi ptr [ %i.bpe, %.peel.next.i.i1172 ], [ %i.bpc, %.lr.ph.i.i.i1169 ] ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i1175 = getelementptr inbounds nuw i8, ptr %.sroa.44.09.i.i.i1174, i64 8
  %.sroa.6.0.copyload.i.i.i.i1176 = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i1175, align 8, !tbaa !30 ; 2 uses
  %i.bpe = getelementptr inbounds nuw i8, ptr %.sroa.44.09.i.i.i1174, i64 16 ; 2 uses
  %i.bpf = icmp eq ptr %i.bpe, %i.boy
  %i.bpg = add i64 %.sroa.6.0.copyload.i.i.i.i1176, %.010.i.i.i1173
  br i1 %i.bpf, label %.thread.i.i1177, label %.peel.next.i.i1172, !llvm.loop !9

.thread.i.i1177:                                  ; preds = %.peel.next.i.i1172, %.lr.ph.i.i.i1169
  %.010.i.lcssa.i.i1178 = phi i64 [ 0, %.lr.ph.i.i.i1169 ], [ %.010.i.i.i1173, %.peel.next.i.i1172 ]
  %.sroa.6.0.i.i.lcssa.i.i1179 = phi i64 [ %i.bpb, %.lr.ph.i.i.i1169 ], [ %.sroa.6.0.copyload.i.i.i.i1176, %.peel.next.i.i1172 ]
  %i.bph = getelementptr inbounds nuw i8, ptr %76, i64 24
  %i.bpi = load i64, ptr %i.bph, align 8, !tbaa !30
  %.sroa.speculated.i.i.i.i1180 = call i64 @llvm.umin.i64(i64 %.sroa.6.0.i.i.lcssa.i.i1179, i64 %i.bpi)
  %i.bpj = add i64 %.sroa.speculated.i.i.i.i1180, %.010.i.lcssa.i.i1178
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit1182

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit1182: ; preds = %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit, %.thread.i.i1177
  %.0.lcssa.i.i.i1181 = phi i64 [ 0, %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit ], [ %i.bpj, %.thread.i.i1177 ]
  %i.bpk = icmp eq i64 %.0.lcssa.i.i.i1181, %spec.select
  %i.bpl = zext i1 %i.bpk to i8
  store i8 %i.bpl, ptr %i.ak, align 1, !tbaa !125
  %i.bpm = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.bov, ptr noundef nonnull align 1 dereferenceable(1) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) @.str.6, ptr noundef nonnull @.str.9, i32 noundef 547) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #28
  call void @_ZN5boost5beast20test_buffer_sequenceINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(32) %76)
  %i.bpn = load ptr, ptr %76, align 8, !tbaa !146 ; 3 uses
  %i.bpo = load ptr, ptr %i.box, align 8, !tbaa !147 ; 2 uses
  %i.bpp = icmp ne ptr %i.bpn, %i.bpo
  %or.cond17.i.i1184 = select i1 %.not.i1156, i1 %i.bpp, i1 false
  br i1 %or.cond17.i.i1184, label %.lr.ph.i.i1186, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit1203

.lr.ph.i.i1186:                                   ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit1182
  %i.bpq = getelementptr inbounds nuw i8, ptr %76, i64 16
  %i.bpr = getelementptr inbounds nuw i8, ptr %76, i64 24
  br label %bb.ki

bb.ki:                                            ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i1198, %.lr.ph.i.i1186
  %i.bps = phi ptr [ %i.bpn, %.lr.ph.i.i1186 ], [ %i.bqc, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i1198 ] ; 2 uses
  %.021.i.i1187 = phi i64 [ 0, %.lr.ph.i.i1186 ], [ %i.bqd, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i1198 ]
  %.sroa.07.020.i.i1188 = phi ptr [ %i.ag, %.lr.ph.i.i1186 ], [ %i.bqe, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i1198 ] ; 2 uses
  %.sroa.6.019.i.i1189 = phi i64 [ %spec.select, %.lr.ph.i.i1186 ], [ %i.bqf, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i1198 ] ; 2 uses
  %.sroa.412.018.i.i1190 = phi ptr [ %i.bpn, %.lr.ph.i.i1186 ], [ %i.bpx, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i1198 ] ; 4 uses
  %.sroa.03.0.copyload.i.i.i1191 = load ptr, ptr %.sroa.412.018.i.i1190, align 8, !tbaa !29 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i1192 = getelementptr inbounds nuw i8, ptr %.sroa.412.018.i.i1190, i64 8
  %.sroa.6.0.copyload.i.i.i1193 = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i1192, align 8, !tbaa !30 ; 3 uses
  %i.bpt = icmp eq ptr %.sroa.412.018.i.i1190, %i.bps
  br i1 %i.bpt, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  %i.bpu = load i64, ptr %i.bpq, align 8, !tbaa !148
  %..i.i.i.i1202 = call i64 @llvm.umin.i64(i64 %i.bpu, i64 %.sroa.6.0.copyload.i.i.i1193) ; 2 uses
  %i.bpv = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i1191, i64 %..i.i.i.i1202
  %i.bpw = sub i64 %.sroa.6.0.copyload.i.i.i1193, %..i.i.i.i1202
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.ki
  %.sroa.03.0.i.i.i1194 = phi ptr [ %i.bpv, %bb.kj ], [ %.sroa.03.0.copyload.i.i.i1191, %bb.ki ]
  %.sroa.6.0.i.i.i1195 = phi i64 [ %i.bpw, %bb.kj ], [ %.sroa.6.0.copyload.i.i.i1193, %bb.ki ] ; 2 uses
  %i.bpx = getelementptr inbounds nuw i8, ptr %.sroa.412.018.i.i1190, i64 16 ; 3 uses
  %i.bpy = load ptr, ptr %i.box, align 8, !tbaa !147
  %i.bpz = icmp eq ptr %i.bpx, %i.bpy
  %i.bqa = load i64, ptr %i.bpr, align 8
  %.sroa.speculated.i.i.i1201 = call i64 @llvm.umin.i64(i64 %.sroa.6.0.i.i.i1195, i64 %i.bqa)
  %.sroa.6.1.i.i.i1196 = select i1 %i.bpz, i64 %.sroa.speculated.i.i.i1201, i64 %.sroa.6.0.i.i.i1195 ; 2 uses
  %i.bqb = call i64 @llvm.umin.i64(i64 %.sroa.6.1.i.i.i1196, i64 %.sroa.6.019.i.i1189) ; 4 uses
  %.not.i.i.i1197 = icmp eq i64 %.sroa.6.1.i.i.i1196, 0
  br i1 %.not.i.i.i1197, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i1198, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.03.0.i.i.i1194, ptr align 1 %.sroa.07.020.i.i1188, i64 %i.bqb, i1 false)
  %.pre2417 = load ptr, ptr %76, align 8, !tbaa !146
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i1198

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i1198: ; preds = %bb.kl, %bb.kk
  %i.bqc = phi ptr [ %.pre2417, %bb.kl ], [ %i.bps, %bb.kk ]
  %i.bqd = add i64 %i.bqb, %.021.i.i1187          ; 2 uses
  %i.bqe = getelementptr inbounds nuw i8, ptr %.sroa.07.020.i.i1188, i64 %i.bqb
  %i.bqf = sub nuw nsw i64 %.sroa.6.019.i.i1189, %i.bqb ; 2 uses
  %.not.i.i1199 = icmp ne i64 %i.bqf, 0
  %i.bqg = icmp ne ptr %i.bpx, %i.bpo
  %or.cond.i.i1200 = select i1 %.not.i.i1199, i1 %i.bqg, i1 false
  br i1 %or.cond.i.i1200, label %bb.ki, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit1203, !llvm.loop !6

_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit1203: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i1198, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit1182
  %.0.lcssa.i.i1185 = phi i64 [ 0, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit1182 ], [ %i.bqd, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i1198 ] ; 4 uses
  %i.bqh = load ptr, ptr %i.boj, align 8, !tbaa !114 ; 5 uses
  %i.bqi = load ptr, ptr %i.bom, align 8, !tbaa !115 ; 7 uses
  %i.bqj = icmp eq ptr %i.bqh, %i.bqi
  br i1 %i.bqj, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit1203._ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit1233thread-pre-split_crit_edge, label %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i1204

_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit1203._ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit1233thread-pre-split_crit_edge: ; preds = %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit1203
  %.pr.pre = load i64, ptr %i.boq, align 8, !tbaa !143, !noalias !310
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit1233

_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i1204: ; preds = %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit1203
  %i.bqk = getelementptr inbounds i8, ptr %i.bqi, i64 -16 ; 3 uses
  %.not24.i1205 = icmp eq ptr %i.bqh, %i.bqk
  %.pre.i1230 = load i64, ptr %i.bor, align 8, !tbaa !149 ; 3 uses
  %.pre36.i1232 = load i64, ptr %i.boq, align 8   ; 3 uses
  br i1 %.not24.i1205, label %._crit_edge.i1220, label %.lr.ph.i1207

.lr.ph.i1207:                                     ; preds = %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i1204
  %.sroa.22.0..sroa_idx.peel.i1210 = getelementptr inbounds nuw i8, ptr %i.bqh, i64 8
  %.sroa.22.0.copyload.peel.i1211 = load i64, ptr %.sroa.22.0..sroa_idx.peel.i1210, align 8, !tbaa !30
  %i.bql = sub i64 %.sroa.22.0.copyload.peel.i1211, %.pre.i1230 ; 3 uses
  %.not11.peel.i1212 = icmp ult i64 %.0.lcssa.i.i1185, %i.bql
  br i1 %.not11.peel.i1212, label %.thread.i1226, label %bb.km

bb.km:                                            ; preds = %.lr.ph.i1207
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqh, i64 16 ; 4 uses
  store ptr %i.bqm, ptr %i.boj, align 8, !tbaa !114
  %i.bqn = sub nuw i64 %.0.lcssa.i.i1185, %i.bql  ; 2 uses
  store i64 0, ptr %i.bor, align 8, !tbaa !149
  %i.bqo = add i64 %i.bql, %.pre36.i1232          ; 3 uses
  store i64 %i.bqo, ptr %i.boq, align 8, !tbaa !143
  %.not.peel.i1213 = icmp eq ptr %i.bqm, %i.bqk
  br i1 %.not.peel.i1213, label %._crit_edge.i1220, label %.peel.next.i1214

.peel.next.i1214:                                 ; preds = %bb.km, %bb.kn
  %i.bqp = phi i64 [ %i.bqw, %bb.kn ], [ %i.bqo, %bb.km ] ; 2 uses
  %.025.i1215 = phi i64 [ %i.bqv, %bb.kn ], [ %i.bqn, %bb.km ] ; 3 uses
  %i.bqq = phi ptr [ %i.bqu, %bb.kn ], [ %i.bqm, %bb.km ] ; 2 uses
  %.sroa.22.0..sroa_idx.i1216 = getelementptr inbounds nuw i8, ptr %i.bqq, i64 8
  %.sroa.22.0.copyload.i1217 = load i64, ptr %.sroa.22.0..sroa_idx.i1216, align 8, !tbaa !30 ; 3 uses
  %.not11.i1218 = icmp ult i64 %.025.i1215, %.sroa.22.0.copyload.i1217
  br i1 %.not11.i1218, label %.thread.i1226, label %bb.kn

.thread.i1226:                                    ; preds = %.peel.next.i1214, %.lr.ph.i1207
  %i.bqr = phi i64 [ %.pre36.i1232, %.lr.ph.i1207 ], [ %i.bqp, %.peel.next.i1214 ]
  %.lcssa30.i1227 = phi i64 [ %.pre.i1230, %.lr.ph.i1207 ], [ 0, %.peel.next.i1214 ]
  %.025.lcssa.i1228 = phi i64 [ %.0.lcssa.i.i1185, %.lr.ph.i1207 ], [ %.025.i1215, %.peel.next.i1214 ] ; 2 uses
  %i.bqs = add i64 %.025.lcssa.i1228, %.lcssa30.i1227
  store i64 %i.bqs, ptr %i.bor, align 8, !tbaa !149
  %i.bqt = add i64 %.025.lcssa.i1228, %i.bqr      ; 2 uses
  store i64 %i.bqt, ptr %i.boq, align 8, !tbaa !143
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit1233

bb.kn:                                            ; preds = %.peel.next.i1214
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqq, i64 16 ; 4 uses
  store ptr %i.bqu, ptr %i.boj, align 8, !tbaa !114
  %i.bqv = sub nuw i64 %.025.i1215, %.sroa.22.0.copyload.i1217 ; 2 uses
  store i64 0, ptr %i.bor, align 8, !tbaa !149
  %i.bqw = add i64 %.sroa.22.0.copyload.i1217, %i.bqp ; 3 uses
  store i64 %i.bqw, ptr %i.boq, align 8, !tbaa !143
  %.not.i1219 = icmp eq ptr %i.bqu, %i.bqk
  br i1 %.not.i1219, label %._crit_edge.i1220, label %.peel.next.i1214, !llvm.loop !7

._crit_edge.i1220:                                ; preds = %bb.kn, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i1204, %bb.km
  %i.bqx = phi i64 [ %.pre36.i1232, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i1204 ], [ %i.bqo, %bb.km ], [ %i.bqw, %bb.kn ]
  %i.bqy = phi i64 [ %.pre.i1230, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i1204 ], [ 0, %bb.km ], [ 0, %bb.kn ] ; 2 uses
  %.0.lcssa.i1221 = phi i64 [ %.0.lcssa.i.i1185, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i1204 ], [ %i.bqn, %bb.km ], [ %i.bqv, %bb.kn ]
  %.lcssa.i1222 = phi ptr [ %i.bqh, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i1204 ], [ %i.bqm, %bb.km ], [ %i.bqu, %bb.kn ] ; 2 uses
  %i.bqz = load i64, ptr %i.bot, align 8, !tbaa !127
  %i.bra = sub i64 %i.bqz, %i.bqy
  %.sroa.speculated.i1223 = call i64 @llvm.umin.i64(i64 %i.bra, i64 %.0.lcssa.i1221) ; 2 uses
  %i.brb = add i64 %.sroa.speculated.i1223, %i.bqy ; 2 uses
  store i64 %i.brb, ptr %i.bor, align 8, !tbaa !149
  %i.brc = add i64 %.sroa.speculated.i1223, %i.bqx ; 3 uses
  store i64 %i.brc, ptr %i.boq, align 8, !tbaa !143
  %.sroa.2.0..sroa_idx.i1224 = getelementptr inbounds nuw i8, ptr %.lcssa.i1222, i64 8
  %.sroa.2.0.copyload.i1225 = load i64, ptr %.sroa.2.0..sroa_idx.i1224, align 8, !tbaa !30
  %i.brd = icmp eq i64 %i.brb, %.sroa.2.0.copyload.i1225
  br i1 %i.brd, label %bb.ko, label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit1233

bb.ko:                                            ; preds = %._crit_edge.i1220
  %i.bre = getelementptr inbounds nuw i8, ptr %.lcssa.i1222, i64 16
  store ptr %i.bre, ptr %i.boj, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bor, i8 0, i64 16, i1 false)
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit1233

_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit1233: ; preds = %bb.ko, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit1203._ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit1233thread-pre-split_crit_edge, %.thread.i1226, %._crit_edge.i1220
  %i.brf = phi i64 [ %i.brc, %._crit_edge.i1220 ], [ %i.bqt, %.thread.i1226 ], [ %.pr.pre, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit1203._ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit1233thread-pre-split_crit_edge ], [ %i.brc, %bb.ko ] ; 6 uses
  %i.brg = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #28
  %i.brh = load ptr, ptr %i.boh, align 8, !tbaa !113, !noalias !310 ; 6 uses
  %i.bri = load i64, ptr %i.boo, align 8, !tbaa !144, !noalias !310 ; 4 uses
  %i.brj = icmp eq i64 %i.brf, 0
  br i1 %i.brj, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb0EEEvEEmRKT_.exit1273, label %bb.kp

bb.kp:                                            ; preds = %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit1233
  %i.brk = icmp eq ptr %i.brh, %i.bqi
  br i1 %i.brk, label %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit1262, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %.not.old.i.i.i1234 = icmp eq i64 %i.bri, 0
  br i1 %.not.old.i.i.i1234, label %.loopexit.i.i.i1248, label %.preheader.i.i.preheader.i1235

.preheader.i.i.preheader.i1235:                   ; preds = %bb.kq
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brh, i64 8
  %i.brm = load i64, ptr %i.brl, align 8, !tbaa !41, !noalias !310 ; 2 uses
  %.sroa.speculated31.i.i12.i1236 = call i64 @llvm.umin.i64(i64 %i.brm, i64 %i.bri) ; 2 uses
  %.not21.i.i13.i1237 = icmp ult i64 %i.bri, %i.brm
  br i1 %.not21.i.i13.i1237, label %.loopexit.i.i.i1248, label %.lr.ph.i1238

.preheader.i.i.i1242:                             ; preds = %.lr.ph.i1238
  %i.brn = getelementptr inbounds nuw i8, ptr %i.brp, i64 24
  %i.bro = load i64, ptr %i.brn, align 8, !tbaa !41, !noalias !310 ; 2 uses
  %.sroa.speculated31.i.i.i1243 = call i64 @llvm.umin.i64(i64 %i.bro, i64 %i.brr) ; 2 uses
  %.not21.i.i.i1244 = icmp ult i64 %i.brr, %i.bro
  br i1 %.not21.i.i.i1244, label %.loopexit.i.i.i1248, label %.lr.ph.i1238

.lr.ph.i1238:                                     ; preds = %.preheader.i.i.preheader.i1235, %.preheader.i.i.i1242
  %.sroa.speculated31.i.i15.i1239 = phi i64 [ %.sroa.speculated31.i.i.i1243, %.preheader.i.i.i1242 ], [ %.sroa.speculated31.i.i12.i1236, %.preheader.i.i.preheader.i1235 ]
  %.060.i.i14.i1240 = phi i64 [ %i.brr, %.preheader.i.i.i1242 ], [ %i.bri, %.preheader.i.i.preheader.i1235 ]
  %i.brp = phi ptr [ %i.brq, %.preheader.i.i.i1242 ], [ %i.brh, %.preheader.i.i.preheader.i1235 ] ; 2 uses
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brp, i64 16 ; 3 uses
  %i.brr = sub nuw i64 %.060.i.i14.i1240, %.sroa.speculated31.i.i15.i1239 ; 4 uses
  %.not.i.i.i1241 = icmp eq i64 %i.brr, 0
  br i1 %.not.i.i.i1241, label %.loopexit.i.i.i1248, label %.preheader.i.i.i1242

.loopexit.i.i.i1248:                              ; preds = %.lr.ph.i1238, %.preheader.i.i.i1242, %.preheader.i.i.preheader.i1235, %bb.kq
  %.sroa.121667.0 = phi i64 [ 0, %bb.kq ], [ %.sroa.speculated31.i.i12.i1236, %.preheader.i.i.preheader.i1235 ], [ 0, %.lr.ph.i1238 ], [ %.sroa.speculated31.i.i.i1243, %.preheader.i.i.i1242 ] ; 4 uses
  %.sroa.01665.0 = phi ptr [ %i.brh, %bb.kq ], [ %i.brh, %.preheader.i.i.preheader.i1235 ], [ %i.brq, %.preheader.i.i.i1242 ], [ %i.brq, %.lr.ph.i1238 ] ; 6 uses
  %i.brs = getelementptr inbounds nuw i8, ptr %.sroa.01665.0, i64 8
  %i.brt = load i64, ptr %i.brs, align 8, !tbaa !41, !noalias !310
  %i.bru = sub i64 %i.brt, %.sroa.121667.0        ; 3 uses
  %i.brv = getelementptr inbounds nuw i8, ptr %.sroa.01665.0, i64 16 ; 3 uses
  %i.brw = icmp eq ptr %i.brv, %i.bqi
  br i1 %i.brw, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %.loopexit.i.i.i1248
  %.sroa.speculated.i.i.i1259 = call i64 @llvm.umin.i64(i64 %i.brf, i64 %i.bru)
  br label %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit1262

bb.ks:                                            ; preds = %.loopexit.i.i.i1248
  %.not22.i.i.i1249 = icmp ult i64 %i.bru, %i.brf
  br i1 %.not22.i.i.i1249, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.brx = sub nuw i64 %i.brf, %i.bru
  br label %bb.ku

bb.ku:                                            ; preds = %bb.ks, %bb.kt
  %.sroa.61666.0 = phi ptr [ %i.bqi, %bb.kt ], [ %i.brv, %bb.ks ] ; 3 uses
  %i.bry = phi i64 [ -1, %bb.kt ], [ %i.brf, %bb.ks ]
  %.061.i.i.i1250 = phi i64 [ %i.brx, %bb.kt ], [ %i.brf, %bb.ks ] ; 2 uses
  %.0.i.i.i1251 = phi ptr [ %i.brv, %bb.kt ], [ %.sroa.01665.0, %bb.ks ] ; 2 uses
  %i.brz = getelementptr inbounds nuw i8, ptr %.0.i.i.i1251, i64 16 ; 2 uses
  %i.bsa = icmp eq ptr %i.brz, %.sroa.61666.0
  br i1 %i.bsa, label %._crit_edge.i.i.i1256, label %.lr.ph.i.i.i1252

._crit_edge.i.i.i1256:                            ; preds = %bb.kv, %bb.ku
  %.162.lcssa.i.i.i1257 = phi i64 [ %.061.i.i.i1250, %bb.ku ], [ %i.bse, %bb.kv ]
  %.sroa.speculated41.i.i.i1258 = call i64 @llvm.umin.i64(i64 %i.bry, i64 %.162.lcssa.i.i.i1257)
  br label %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit1262

.lr.ph.i.i.i1252:                                 ; preds = %bb.ku, %bb.kv
  %i.bsb = phi ptr [ %i.bsf, %bb.kv ], [ %i.brz, %bb.ku ] ; 3 uses
  %.pn.i.i.i1253 = phi ptr [ %i.bsb, %bb.kv ], [ %.0.i.i.i1251, %bb.ku ]
  %.16270.i.i.i1254 = phi i64 [ %i.bse, %bb.kv ], [ %.061.i.i.i1250, %bb.ku ] ; 3 uses
  %.in.i.i.i1255 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i1253, i64 8
  %i.bsc = load i64, ptr %.in.i.i.i1255, align 8, !tbaa !41, !noalias !310 ; 2 uses
  %i.bsd = icmp ult i64 %i.bsc, %.16270.i.i.i1254
  br i1 %i.bsd, label %bb.kv, label %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit1262

bb.kv:                                            ; preds = %.lr.ph.i.i.i1252
  %i.bse = sub nuw i64 %.16270.i.i.i1254, %i.bsc  ; 2 uses
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.bsb, i64 16 ; 2 uses
  %i.bsg = icmp eq ptr %i.bsf, %.sroa.61666.0
  br i1 %i.bsg, label %._crit_edge.i.i.i1256, label %.lr.ph.i.i.i1252, !llvm.loop !4

_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit1262: ; preds = %.lr.ph.i.i.i1252, %bb.kp, %bb.kr, %._crit_edge.i.i.i1256
  %.sroa.121667.1 = phi i64 [ 0, %bb.kp ], [ %.sroa.121667.0, %bb.kr ], [ %.sroa.121667.0, %._crit_edge.i.i.i1256 ], [ %.sroa.121667.0, %.lr.ph.i.i.i1252 ]
  %.sroa.171668.0 = phi i64 [ 0, %bb.kp ], [ %.sroa.speculated.i.i.i1259, %bb.kr ], [ %.sroa.speculated41.i.i.i1258, %._crit_edge.i.i.i1256 ], [ %.16270.i.i.i1254, %.lr.ph.i.i.i1252 ]
  %.sroa.61666.2 = phi ptr [ %i.bqi, %bb.kp ], [ %i.bqi, %bb.kr ], [ %.sroa.61666.0, %._crit_edge.i.i.i1256 ], [ %i.bsb, %.lr.ph.i.i.i1252 ] ; 3 uses
  %.sroa.01665.1 = phi ptr [ %i.brh, %bb.kp ], [ %.sroa.01665.0, %bb.kr ], [ %.sroa.01665.0, %._crit_edge.i.i.i1256 ], [ %.sroa.01665.0, %.lr.ph.i.i.i1252 ] ; 3 uses
  %.not6.i.i.i1263 = icmp eq ptr %.sroa.01665.1, %.sroa.61666.2
  br i1 %.not6.i.i.i1263, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb0EEEvEEmRKT_.exit1273, label %.lr.ph.i.i.i1264

.lr.ph.i.i.i1264:                                 ; preds = %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit1262
  %i.bsh = getelementptr inbounds nuw i8, ptr %.sroa.01665.1, i64 8
  %i.bsi = load i64, ptr %i.bsh, align 8, !tbaa !41
  %i.bsj = call i64 @llvm.usub.sat.i64(i64 %i.bsi, i64 %.sroa.121667.1) ; 2 uses
  %i.bsk = getelementptr inbounds nuw i8, ptr %.sroa.01665.1, i64 16 ; 2 uses
  %i.bsl = icmp eq ptr %i.bsk, %.sroa.61666.2
end_hunk_1
begin_hunk_2_@_ZN5boost5beast17buffers_to_stringINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb0EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.i
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.sroa.03.0.i.i, i64 noundef %.sroa.6.1.i.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.y, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ap = load ptr, ptr %0, align 8, !tbaa !67    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.a
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !68
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail27test_mutable_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZSt9__advanceIPKN5boost4asio14mutable_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i.i:
  %1 = alloca %"class.boost::beast::buffers_adaptor.23", align 8 ; 16 uses
  %2 = alloca %"class.boost::beast::buffers_adaptor<boost::beast::buffers_triple>::subrange.25", align 8 ; 12 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.boost::beast::buffers_adaptor<boost::beast::buffers_triple>::subrange.25", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.boost::beast::buffers_adaptor<boost::beast::buffers_triple>::subrange", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.boost::beast::buffers_adaptor<boost::beast::buffers_triple>::subrange.25", align 8 ; 9 uses
  %i.g = alloca i8, align 1                       ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.boost::beast::buffers_adaptor<boost::beast::buffers_triple>::subrange", align 8 ; 9 uses
  %13 = alloca %"class.boost::beast::buffers_adaptor.23", align 8 ; 16 uses
  %14 = alloca %"class.boost::beast::buffers_adaptor<boost::beast::buffers_triple>::subrange.25", align 8 ; 8 uses
  %15 = alloca %"class.boost::beast::buffers_adaptor<boost::beast::buffers_triple>::subrange.25", align 8 ; 9 uses
  %16 = alloca %"class.boost::beast::buffers_adaptor<boost::beast::buffers_triple>::subrange", align 8 ; 9 uses
  %17 = alloca %"class.boost::beast::buffers_adaptor<boost::beast::buffers_triple>::subrange", align 8 ; 9 uses
  %i.h = alloca i8, align 1                       ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.boost::beast::buffers_adaptor<boost::beast::buffers_triple>::subrange.25", align 8 ; 9 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.boost::beast::buffers_adaptor<boost::beast::buffers_triple>::subrange", align 8 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %0 to i64                   ; 6 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !115
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(112) %0, i64 48, i1 false), !tbaa.struct !126
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.y = getelementptr inbounds i8, ptr %1, i64 %i.o
  store ptr %i.y, ptr %i.x, align 8, !tbaa !113
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %1, i64 %i.s
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !114
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !115
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.af = load <2 x i64>, ptr %i.j, align 8, !tbaa !30
  %i.ag = load i64, ptr %i.j, align 8, !tbaa !116 ; 8 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 13) ; 22 uses
  store <2 x i64> %i.af, ptr %i.ad, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 6 uses
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !tbaa !30
  store <2 x i64> %i.ak, ptr %i.ah, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !127
  store i64 %i.an, ptr %i.al, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE7prepareEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::buffers_adaptor<boost::beast::buffers_triple>::subrange.25") align 8 %2, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %spec.select)
  %i.ao = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ap = load ptr, ptr %2, align 8, !tbaa !146   ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !147 ; 3 uses
  %.not8.i.i.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not8.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt9__advanceIPKN5boost4asio14mutable_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i64, ptr %i.as, align 8
  %.sroa.6.0..sroa_idx.i.i.peel.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.6.0.copyload.i.i.peel.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.peel.i.i, align 8, !tbaa !30
  %i.au = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.copyload.i.i.peel.i.i, i64 %i.at) ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ar
  br i1 %i.aw, label %.thread.i.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.lr.ph.i.i.i, %.peel.next.i.i
  %.010.i.i.i = phi i64 [ %i.az, %.peel.next.i.i ], [ %i.au, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.44.09.i.i.i = phi ptr [ %i.ax, %.peel.next.i.i ], [ %i.av, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.44.09.i.i.i, i64 8
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.44.09.i.i.i, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ar
  %i.az = add i64 %.sroa.6.0.copyload.i.i.i.i, %.010.i.i.i
  br i1 %i.ay, label %.thread.i.i, label %.peel.next.i.i, !llvm.loop !9

.thread.i.i:                                      ; preds = %.peel.next.i.i, %.lr.ph.i.i.i
  %.010.i.lcssa.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %.010.i.i.i, %.peel.next.i.i ]
  %.sroa.6.0.i.i.lcssa.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i ], [ %.sroa.6.0.copyload.i.i.i.i, %.peel.next.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !30
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.6.0.i.i.lcssa.i.i, i64 %i.bb)
  %i.bc = add i64 %.sroa.speculated.i.i.i.i, %.010.i.lcssa.i.i
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit: ; preds = %_ZSt9__advanceIPKN5boost4asio14mutable_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %.thread.i.i
  %.0.lcssa.i.i.i = phi i64 [ 0, %_ZSt9__advanceIPKN5boost4asio14mutable_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.bc, %.thread.i.i ]
  %i.bd = icmp eq i64 %.0.lcssa.i.i.i, %spec.select
  %i.be = zext i1 %i.bd to i8
  store i8 %i.be, ptr %i.a, align 1, !tbaa !125
  %i.bf = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @.str.6, ptr noundef nonnull @.str.9, i32 noundef 309) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bg = load ptr, ptr %i.aq, align 8, !tbaa !147 ; 2 uses
  %i.bh = load ptr, ptr %2, align 8, !tbaa !146   ; 3 uses
  %.not9.i = icmp eq ptr %i.bh, %i.bg
  br i1 %.not9.i, label %_ZN5boost5beast6detail12buffers_fillINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEEEvRKT_c.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.a

bb.a:                                             ; preds = %_ZSt4fillIPccEvT_S1_RKT0_.exit.i, %.lr.ph.i
  %i.bk = phi ptr [ %i.bh, %.lr.ph.i ], [ %i.bt, %_ZSt4fillIPccEvT_S1_RKT0_.exit.i ] ; 2 uses
  %.sroa.4.010.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %i.bp, %_ZSt4fillIPccEvT_S1_RKT0_.exit.i ] ; 4 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %.sroa.4.010.i, align 8, !tbaa !29 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i, i64 8
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !30 ; 3 uses
  %i.bl = icmp eq ptr %.sroa.4.010.i, %i.bk
  br i1 %i.bl, label %bb.b, label %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EE8iteratordeEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.bm = load i64, ptr %i.bi, align 8, !tbaa !148
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.bm, i64 %.sroa.6.0.copyload.i.i) ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 %..i.i.i
  %i.bo = sub i64 %.sroa.6.0.copyload.i.i, %..i.i.i
  br label %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EE8iteratordeEv.exit.i

_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EE8iteratordeEv.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.03.0.i.i = phi ptr [ %i.bn, %bb.b ], [ %.sroa.03.0.copyload.i.i, %bb.a ]
  %.sroa.6.0.i.i = phi i64 [ %i.bo, %bb.b ], [ %.sroa.6.0.copyload.i.i, %bb.a ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i, i64 16 ; 3 uses
  %i.bq = load ptr, ptr %i.aq, align 8, !tbaa !147
  %i.br = icmp eq ptr %i.bp, %i.bq
  %i.bs = load i64, ptr %i.bj, align 8
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %.sroa.6.0.i.i, i64 %i.bs)
  %.sroa.6.1.i.i = select i1 %i.br, i64 %.sroa.speculated.i.i, i64 %.sroa.6.0.i.i ; 2 uses
  %.not.i.i.i.i = icmp samesign eq i64 %.sroa.6.1.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZSt4fillIPccEvT_S1_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EE8iteratordeEv.exit.i
  call void @llvm.memset.p0.i64(ptr align 1 %.sroa.03.0.i.i, i8 42, i64 %.sroa.6.1.i.i, i1 false)
  %.pre.a = load ptr, ptr %2, align 8, !tbaa !146
  br label %_ZSt4fillIPccEvT_S1_RKT0_.exit.i

_ZSt4fillIPccEvT_S1_RKT0_.exit.i:                 ; preds = %bb.c, %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EE8iteratordeEv.exit.i
  %i.bt = phi ptr [ %.pre.a, %bb.c ], [ %i.bk, %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EE8iteratordeEv.exit.i ]
  %.not.i = icmp eq ptr %i.bp, %i.bg
  br i1 %.not.i, label %_ZN5boost5beast6detail12buffers_fillINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEEEvRKT_c.exit, label %bb.a, !llvm.loop !325

_ZN5boost5beast6detail12buffers_fillINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEEEvRKT_c.exit: ; preds = %_ZSt4fillIPccEvT_S1_RKT0_.exit.i, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit
  %i.bu = load ptr, ptr %i.z, align 8, !tbaa !114 ; 5 uses
  %i.bv = load ptr, ptr %i.ac, align 8, !tbaa !115 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZN5boost5beast6detail12buffers_fillINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEEEvRKT_c.exit._ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit_crit_edge, label %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i

_ZN5boost5beast6detail12buffers_fillINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEEEvRKT_c.exit._ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit_crit_edge: ; preds = %_ZN5boost5beast6detail12buffers_fillINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEEEvRKT_c.exit
  %.pre580 = load i64, ptr %i.ah, align 8, !tbaa !143
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit

_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i: ; preds = %_ZN5boost5beast6detail12buffers_fillINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEEEvRKT_c.exit
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -16 ; 3 uses
  %.not24.i = icmp eq ptr %i.bu, %i.bx
  %.pre.i = load i64, ptr %i.aj, align 8, !tbaa !149 ; 3 uses
  %.pre36.i = load i64, ptr %i.ah, align 8        ; 3 uses
  br i1 %.not24.i, label %._crit_edge.i, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i
  %.sroa.22.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.22.0.copyload.peel.i = load i64, ptr %.sroa.22.0..sroa_idx.peel.i, align 8, !tbaa !30
  %i.by = sub i64 %.sroa.22.0.copyload.peel.i, %.pre.i ; 3 uses
  %.not11.peel.i = icmp ult i64 %spec.select, %i.by
  br i1 %.not11.peel.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i27
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 4 uses
  store ptr %i.bz, ptr %i.z, align 8, !tbaa !114
  %i.ca = sub nuw nsw i64 %spec.select, %i.by     ; 2 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !149
  %i.cb = add i64 %i.by, %.pre36.i                ; 3 uses
  store i64 %i.cb, ptr %i.ah, align 8, !tbaa !143
  %.not.peel.i = icmp eq ptr %i.bz, %i.bx
  br i1 %.not.peel.i, label %._crit_edge.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.d, %bb.e
  %i.cc = phi i64 [ %i.cj, %bb.e ], [ %i.cb, %bb.d ] ; 2 uses
  %.025.i = phi i64 [ %i.ci, %bb.e ], [ %i.ca, %bb.d ] ; 3 uses
  %i.cd = phi ptr [ %i.ch, %bb.e ], [ %i.bz, %bb.d ] ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !30 ; 3 uses
  %.not11.i = icmp ult i64 %.025.i, %.sroa.22.0.copyload.i
  br i1 %.not11.i, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %.peel.next.i, %.lr.ph.i27
  %i.ce = phi i64 [ %.pre36.i, %.lr.ph.i27 ], [ %i.cc, %.peel.next.i ]
  %.lcssa30.i = phi i64 [ %.pre.i, %.lr.ph.i27 ], [ 0, %.peel.next.i ]
  %.025.lcssa.i = phi i64 [ %spec.select, %.lr.ph.i27 ], [ %.025.i, %.peel.next.i ] ; 2 uses
  %i.cf = add i64 %.025.lcssa.i, %.lcssa30.i
  store i64 %i.cf, ptr %i.aj, align 8, !tbaa !149
  %i.cg = add i64 %.025.lcssa.i, %i.ce            ; 2 uses
  store i64 %i.cg, ptr %i.ah, align 8, !tbaa !143
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit

bb.e:                                             ; preds = %.peel.next.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 4 uses
  store ptr %i.ch, ptr %i.z, align 8, !tbaa !114
  %i.ci = sub nuw nsw i64 %.025.i, %.sroa.22.0.copyload.i ; 2 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !149
  %i.cj = add i64 %.sroa.22.0.copyload.i, %i.cc   ; 3 uses
  store i64 %i.cj, ptr %i.ah, align 8, !tbaa !143
  %.not.i28 = icmp eq ptr %i.ch, %i.bx
  br i1 %.not.i28, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.e, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i, %bb.d
  %i.ck = phi i64 [ %.pre36.i, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i ], [ %i.cb, %bb.d ], [ %i.cj, %bb.e ]
  %i.cl = phi i64 [ %.pre.i, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i ], [ 0, %bb.d ], [ 0, %bb.e ] ; 2 uses
  %.0.lcssa.i = phi i64 [ %spec.select, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i ], [ %i.ca, %bb.d ], [ %i.ci, %bb.e ]
  %.lcssa.i = phi ptr [ %i.bu, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i ], [ %i.bz, %bb.d ], [ %i.ch, %bb.e ] ; 2 uses
  %i.cm = load i64, ptr %i.al, align 8, !tbaa !127
  %i.cn = sub i64 %i.cm, %i.cl
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.cn, i64 %.0.lcssa.i) ; 2 uses
  %i.co = add i64 %.sroa.speculated.i, %i.cl      ; 2 uses
  store i64 %i.co, ptr %i.aj, align 8, !tbaa !149
  %i.cp = add i64 %.sroa.speculated.i, %i.ck      ; 3 uses
  store i64 %i.cp, ptr %i.ah, align 8, !tbaa !143
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !30
  %i.cq = icmp eq i64 %i.co, %.sroa.2.0.copyload.i
  br i1 %i.cq, label %bb.f, label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  store ptr %i.cr, ptr %i.z, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit

_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit: ; preds = %_ZN5boost5beast6detail12buffers_fillINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEEEvRKT_c.exit._ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit_crit_edge, %.thread.i, %._crit_edge.i, %bb.f
  %i.cs = phi i64 [ %.pre580, %_ZN5boost5beast6detail12buffers_fillINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEEEvRKT_c.exit._ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit_crit_edge ], [ %i.cg, %.thread.i ], [ %i.cp, %._crit_edge.i ], [ %i.cp, %bb.f ]
  %i.ct = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.cu = icmp eq i64 %i.cs, %spec.select
  %i.cv = zext i1 %i.cu to i8
  store i8 %i.cv, ptr %i.b, align 1, !tbaa !125
  %i.cw = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.ct, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) @.str.6, ptr noundef nonnull @.str.9, i32 noundef 312) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.cx = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.cy = load ptr, ptr %i.x, align 8, !tbaa !113, !noalias !355 ; 7 uses
  %i.cz = load ptr, ptr %i.ac, align 8, !tbaa !115, !noalias !355 ; 4 uses
  %i.da = load i64, ptr %i.ae, align 8, !tbaa !144, !noalias !355 ; 4 uses
  %i.db = load i64, ptr %i.ah, align 8, !tbaa !143, !noalias !355 ; 6 uses
  store ptr %i.cy, ptr %4, align 8, !tbaa !146, !alias.scope !355
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store ptr %i.cz, ptr %i.dc, align 8, !tbaa !147, !alias.scope !355
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 0, ptr %i.dd, align 8, !tbaa !148, !alias.scope !355
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.df = icmp eq i64 %i.db, 0
  br i1 %i.df, label %.thread88.i.i.i, label %bb.g

.thread88.i.i.i:                                  ; preds = %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit
  store ptr %i.cy, ptr %i.dc, align 8, !tbaa !147, !alias.scope !355
  br label %bb.h

bb.g:                                             ; preds = %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit
  %i.dg = icmp eq ptr %i.cy, %i.cz
  br i1 %i.dg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %.thread88.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i8 0, i64 16, i1 false), !alias.scope !355
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit

bb.i:                                             ; preds = %bb.g
  %.not.old.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.old.i.i.i, label %.loopexit.i.i.i, label %.preheader.i.i.preheader.i

.preheader.i.i.preheader.i:                       ; preds = %bb.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !41, !noalias !355 ; 2 uses
  %.sroa.speculated31.i.i12.i = call i64 @llvm.umin.i64(i64 %i.di, i64 %i.da) ; 2 uses
  %.not21.i.i13.i = icmp ult i64 %i.da, %i.di
  br i1 %.not21.i.i13.i, label %.loopexit.i.i.i.sink.split, label %.lr.ph.i29

.preheader.i.i.i:                                 ; preds = %.lr.ph.i29
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !41, !noalias !355 ; 2 uses
  %.sroa.speculated31.i.i.i = call i64 @llvm.umin.i64(i64 %i.dk, i64 %i.dn) ; 2 uses
  %.not21.i.i.i = icmp ult i64 %i.dn, %i.dk
  br i1 %.not21.i.i.i, label %.loopexit.i.i.i.sink.split, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.preheader.i.i.preheader.i, %.preheader.i.i.i
  %.sroa.speculated31.i.i15.i = phi i64 [ %.sroa.speculated31.i.i.i, %.preheader.i.i.i ], [ %.sroa.speculated31.i.i12.i, %.preheader.i.i.preheader.i ]
  %.060.i.i14.i = phi i64 [ %i.dn, %.preheader.i.i.i ], [ %i.da, %.preheader.i.i.preheader.i ]
  %i.dl = phi ptr [ %i.dm, %.preheader.i.i.i ], [ %i.cy, %.preheader.i.i.preheader.i ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 3 uses
  %i.dn = sub nuw i64 %.060.i.i14.i, %.sroa.speculated31.i.i15.i ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i.i.sink.split, label %.preheader.i.i.i

.loopexit.i.i.i.sink.split:                       ; preds = %.lr.ph.i29, %.preheader.i.i.i, %.preheader.i.i.preheader.i
  %.sink910.a = phi ptr [ %i.cy, %.preheader.i.i.preheader.i ], [ %i.dm, %.preheader.i.i.i ], [ %i.dm, %.lr.ph.i29 ] ; 2 uses
  %.sink = phi i64 [ %.sroa.speculated31.i.i12.i, %.preheader.i.i.preheader.i ], [ 0, %.lr.ph.i29 ], [ %.sroa.speculated31.i.i.i, %.preheader.i.i.i ] ; 2 uses
  store ptr %.sink910.a, ptr %4, align 8, !alias.scope !355
  store i64 %.sink, ptr %i.dd, align 8, !alias.scope !355
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.i.sink.split, %bb.i
  %i.do = phi i64 [ 0, %bb.i ], [ %.sink, %.loopexit.i.i.i.sink.split ]
  %i.dp = phi ptr [ %i.cy, %bb.i ], [ %.sink910.a, %.loopexit.i.i.i.sink.split ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !41, !noalias !355
  %i.ds = sub i64 %i.dr, %i.do                    ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 5 uses
  %i.du = icmp eq ptr %i.dt, %i.cz
  br i1 %i.du, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit.i.i.i
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.db, i64 %i.ds)
  store i64 %.sroa.speculated.i.i.i, ptr %i.de, align 8, !tbaa !150, !alias.scope !355
  store ptr %i.dt, ptr %i.dc, align 8, !tbaa !147, !alias.scope !355
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit

bb.k:                                             ; preds = %.loopexit.i.i.i
  %.not22.i.i.i = icmp ult i64 %i.ds, %i.db
  br i1 %.not22.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.dt, ptr %i.dc, align 8, !tbaa !147, !alias.scope !355
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.dv = sub nuw i64 %i.db, %i.ds
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dw = phi i64 [ -1, %bb.m ], [ %i.db, %bb.l ]
  %i.dx = phi ptr [ %i.cz, %bb.m ], [ %i.dt, %bb.l ] ; 2 uses
  %.061.i.i.i = phi i64 [ %i.dv, %bb.m ], [ %i.db, %bb.l ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.dt, %bb.m ], [ %i.dp, %bb.l ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dx
  br i1 %i.dz, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i30

._crit_edge.i.i.i:                                ; preds = %bb.o, %bb.n
end_hunk_2
begin_hunk_3_@_ZN5boost5beast6detail27test_mutable_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_St17integral_constantIbLb1EE:_ZSt9__advanceIPKN5boost4asio14mutable_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16 ; 3 uses
  %i.lm = sub nuw i64 %.060.i.i14.i.i118, %.sroa.speculated31.i.i15.i.i117 ; 4 uses
  %.not.i.i.i.i119 = icmp eq i64 %i.lm, 0
  br i1 %.not.i.i.i.i119, label %.loopexit.i.i.i.i126.sink.split, label %.preheader.i.i.i.i120

.loopexit.i.i.i.i126.sink.split:                  ; preds = %.lr.ph.i.i116, %.preheader.i.i.i.i120, %.preheader.i.i.preheader.i.i113
  %.sink922.a = phi ptr [ %i.kx, %.preheader.i.i.preheader.i.i113 ], [ %i.ll, %.preheader.i.i.i.i120 ], [ %i.ll, %.lr.ph.i.i116 ] ; 2 uses
  %.sink921 = phi i64 [ %.sroa.speculated31.i.i12.i.i114, %.preheader.i.i.preheader.i.i113 ], [ 0, %.lr.ph.i.i116 ], [ %.sroa.speculated31.i.i.i.i121, %.preheader.i.i.i.i120 ] ; 2 uses
  store ptr %.sink922.a, ptr %12, align 8, !alias.scope !363
  store i64 %.sink921, ptr %i.lc, align 8, !alias.scope !363
  br label %.loopexit.i.i.i.i126

.loopexit.i.i.i.i126:                             ; preds = %.loopexit.i.i.i.i126.sink.split, %bb.bb
  %i.ln = phi i64 [ 0, %bb.bb ], [ %.sink921, %.loopexit.i.i.i.i126.sink.split ]
  %i.lo = phi ptr [ %i.kx, %bb.bb ], [ %.sink922.a, %.loopexit.i.i.i.i126.sink.split ] ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !41, !noalias !363
  %i.lr = sub i64 %i.lq, %i.ln                    ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 16 ; 5 uses
  %i.lt = icmp eq ptr %i.ls, %i.ky
  br i1 %i.lt, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.loopexit.i.i.i.i126
  %.sroa.speculated.i.i.i.i137 = call i64 @llvm.umin.i64(i64 %i.la, i64 %i.lr)
  store i64 %.sroa.speculated.i.i.i.i137, ptr %i.ld, align 8, !tbaa !155, !alias.scope !363
  store ptr %i.ls, ptr %i.lb, align 8, !tbaa !153, !alias.scope !363
  br label %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE5cdataEv.exit140

bb.bd:                                            ; preds = %.loopexit.i.i.i.i126
  %.not22.i.i.i.i127 = icmp ult i64 %i.lr, %i.la
  br i1 %.not22.i.i.i.i127, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store ptr %i.ls, ptr %i.lb, align 8, !tbaa !153, !alias.scope !363
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.lu = sub nuw i64 %i.la, %i.lr
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.lv = phi i64 [ -1, %bb.bf ], [ %i.la, %bb.be ]
  %i.lw = phi ptr [ %i.ky, %bb.bf ], [ %i.ls, %bb.be ] ; 2 uses
  %.061.i.i.i.i128 = phi i64 [ %i.lu, %bb.bf ], [ %i.la, %bb.be ] ; 2 uses
  %.0.i.i.i.i129 = phi ptr [ %i.ls, %bb.bf ], [ %i.lo, %bb.be ] ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i129, i64 16 ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.lw
  br i1 %i.ly, label %._crit_edge.i.i.i.i134, label %.lr.ph.i.i.i.i130

._crit_edge.i.i.i.i134:                           ; preds = %bb.bh, %bb.bg
  %.162.lcssa.i.i.i.i135 = phi i64 [ %.061.i.i.i.i128, %bb.bg ], [ %i.mc, %bb.bh ]
  %.sroa.speculated41.i.i.i.i136 = call i64 @llvm.umin.i64(i64 %i.lv, i64 %.162.lcssa.i.i.i.i135)
  store i64 %.sroa.speculated41.i.i.i.i136, ptr %i.ld, align 8, !tbaa !155, !alias.scope !363
  br label %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE5cdataEv.exit140

.lr.ph.i.i.i.i130:                                ; preds = %bb.bg, %bb.bh
  %i.lz = phi ptr [ %i.md, %bb.bh ], [ %i.lx, %bb.bg ] ; 3 uses
  %.pn.i.i.i.i131 = phi ptr [ %i.lz, %bb.bh ], [ %.0.i.i.i.i129, %bb.bg ]
  %.16270.i.i.i.i132 = phi i64 [ %i.mc, %bb.bh ], [ %.061.i.i.i.i128, %bb.bg ] ; 3 uses
  %.in.i.i.i.i133 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i131, i64 8
  %i.ma = load i64, ptr %.in.i.i.i.i133, align 8, !tbaa !41, !noalias !363 ; 2 uses
  %i.mb = icmp ult i64 %i.ma, %.16270.i.i.i.i132
  br i1 %i.mb, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph.i.i.i.i130
  %i.mc = sub nuw i64 %.16270.i.i.i.i132, %i.ma   ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 16 ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.lw
  br i1 %i.me, label %._crit_edge.i.i.i.i134, label %.lr.ph.i.i.i.i130, !llvm.loop !4

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i130
  store i64 %.16270.i.i.i.i132, ptr %i.ld, align 8, !tbaa !155, !alias.scope !363
  store ptr %i.lz, ptr %i.lb, align 8, !tbaa !153, !alias.scope !363
  br label %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE5cdataEv.exit140

_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE5cdataEv.exit140: ; preds = %bb.ba, %bb.bc, %._crit_edge.i.i.i.i134, %bb.bi
  call void @_ZN5boost5beast17buffers_to_stringINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb0EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.mf = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !69
  %i.mh = icmp eq i64 %i.mg, %spec.select
  br i1 %i.mh, label %bb.bj, label %_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit142

bb.bj:                                            ; preds = %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE5cdataEv.exit140
  %i.mi = icmp eq i64 %i.ag, 0
  br i1 %i.mi, label %_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit142, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mj = load ptr, ptr %11, align 8, !tbaa !67
  %bcmp.i141 = call i32 @bcmp(ptr %i.mj, ptr nonnull @.str.10, i64 %spec.select)
  %i.mk = icmp eq i32 %bcmp.i141, 0
  %i.ml = zext i1 %i.mk to i8
  br label %_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit142

_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit142: ; preds = %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE5cdataEv.exit140, %bb.bj, %bb.bk
  %i.mm = phi i8 [ 0, %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE5cdataEv.exit140 ], [ %i.ml, %bb.bk ], [ 1, %bb.bj ]
  store i8 %i.mm, ptr %i.g, align 1, !tbaa !125
  %i.mn = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.kw, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 1 dereferenceable(1) @.str.6, ptr noundef nonnull @.str.9, i32 noundef 326)
          to label %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit143 unwind label %bb.dz ; 0 uses

_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit143: ; preds = %_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit142
  %i.mo = load ptr, ptr %11, align 8, !tbaa !67   ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.mq = icmp eq ptr %i.mo, %i.mp
  br i1 %i.mq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit143
  %i.mr = load i64, ptr %i.mp, align 8, !tbaa !68
  %i.ms = add i64 %i.mr, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.ms) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.mt = load ptr, ptr %i.k, align 8, !tbaa !113
  %i.mu = ptrtoint ptr %i.mt to i64
  %i.mv = sub i64 %i.mu, %i.n
  %i.mw = load ptr, ptr %i.p, align 8, !tbaa !114
  %i.mx = ptrtoint ptr %i.mw to i64
  %i.my = sub i64 %i.mx, %i.n
  %i.mz = load ptr, ptr %i.t, align 8, !tbaa !115
  %i.na = ptrtoint ptr %i.mz to i64
  %i.nb = sub i64 %i.na, %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %13, ptr noundef nonnull align 8 dereferenceable(112) %0, i64 48, i1 false), !tbaa.struct !126
  %i.nc = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 3 uses
  %i.nd = getelementptr inbounds i8, ptr %13, i64 %i.mv
  store ptr %i.nd, ptr %i.nc, align 8, !tbaa !113
  %i.ne = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 5 uses
  %i.nf = getelementptr inbounds i8, ptr %13, i64 %i.my
  store ptr %i.nf, ptr %i.ne, align 8, !tbaa !114
  %i.ng = getelementptr inbounds i8, ptr %13, i64 %i.nb
  %i.nh = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 3 uses
  store ptr %i.ng, ptr %i.nh, align 8, !tbaa !115
  %i.ni = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.nj = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  %i.nk = load <2 x i64>, ptr %i.j, align 8, !tbaa !30
  store <2 x i64> %i.nk, ptr %i.ni, align 8, !tbaa !30
  %i.nl = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 8 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 6 uses
  %i.nn = load <2 x i64>, ptr %i.ai, align 8, !tbaa !30
  store <2 x i64> %i.nn, ptr %i.nl, align 8, !tbaa !30
  %i.no = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 2 uses
  %i.np = load i64, ptr %i.am, align 8, !tbaa !127
  store i64 %i.np, ptr %i.no, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE7prepareEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::buffers_adaptor<boost::beast::buffers_triple>::subrange.25") align 8 %14, ptr noundef nonnull align 8 dereferenceable(112) %13, i64 noundef %spec.select)
  %i.nq = load ptr, ptr %14, align 8, !tbaa !146  ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !147 ; 2 uses
  %i.nt = icmp ne ptr %i.nq, %i.ns
  %or.cond17.i.i157 = select i1 %.not16.i.i433, i1 %i.nt, i1 false
  br i1 %or.cond17.i.i157, label %.lr.ph.i.i159, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit176

.lr.ph.i.i159:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.nu = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.nv = getelementptr inbounds nuw i8, ptr %14, i64 24
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i171, %.lr.ph.i.i159
  %i.nw = phi ptr [ %i.nq, %.lr.ph.i.i159 ], [ %i.og, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i171 ] ; 2 uses
  %.021.i.i160 = phi i64 [ 0, %.lr.ph.i.i159 ], [ %i.oh, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i171 ]
  %.sroa.07.020.i.i161 = phi ptr [ @.str.10, %.lr.ph.i.i159 ], [ %i.oi, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i171 ] ; 2 uses
  %.sroa.6.019.i.i162 = phi i64 [ %spec.select, %.lr.ph.i.i159 ], [ %i.oj, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i171 ] ; 2 uses
  %.sroa.412.018.i.i163 = phi ptr [ %i.nq, %.lr.ph.i.i159 ], [ %i.ob, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i171 ] ; 4 uses
  %.sroa.03.0.copyload.i.i.i164 = load ptr, ptr %.sroa.412.018.i.i163, align 8, !tbaa !29 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i165 = getelementptr inbounds nuw i8, ptr %.sroa.412.018.i.i163, i64 8
  %.sroa.6.0.copyload.i.i.i166 = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i165, align 8, !tbaa !30 ; 3 uses
  %i.nx = icmp eq ptr %.sroa.412.018.i.i163, %i.nw
  br i1 %i.nx, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ny = load i64, ptr %i.nu, align 8, !tbaa !148
  %..i.i.i.i175 = call i64 @llvm.umin.i64(i64 %i.ny, i64 %.sroa.6.0.copyload.i.i.i166) ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i164, i64 %..i.i.i.i175
  %i.oa = sub i64 %.sroa.6.0.copyload.i.i.i166, %..i.i.i.i175
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.sroa.03.0.i.i.i167 = phi ptr [ %i.nz, %bb.bm ], [ %.sroa.03.0.copyload.i.i.i164, %bb.bl ]
  %.sroa.6.0.i.i.i168 = phi i64 [ %i.oa, %bb.bm ], [ %.sroa.6.0.copyload.i.i.i166, %bb.bl ] ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.412.018.i.i163, i64 16 ; 3 uses
  %i.oc = load ptr, ptr %i.nr, align 8, !tbaa !147
  %i.od = icmp eq ptr %i.ob, %i.oc
  %i.oe = load i64, ptr %i.nv, align 8
  %.sroa.speculated.i.i.i174 = call i64 @llvm.umin.i64(i64 %.sroa.6.0.i.i.i168, i64 %i.oe)
  %.sroa.6.1.i.i.i169 = select i1 %i.od, i64 %.sroa.speculated.i.i.i174, i64 %.sroa.6.0.i.i.i168 ; 2 uses
  %i.of = call i64 @llvm.umin.i64(i64 %.sroa.6.1.i.i.i169, i64 %.sroa.6.019.i.i162) ; 4 uses
  %.not.i.i.i170 = icmp eq i64 %.sroa.6.1.i.i.i169, 0
  br i1 %.not.i.i.i170, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i171, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.03.0.i.i.i167, ptr align 1 %.sroa.07.020.i.i161, i64 %i.of, i1 false)
  %.pre582 = load ptr, ptr %14, align 8, !tbaa !146
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i171

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i171: ; preds = %bb.bo, %bb.bn
  %i.og = phi ptr [ %.pre582, %bb.bo ], [ %i.nw, %bb.bn ]
  %i.oh = add i64 %i.of, %.021.i.i160             ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.07.020.i.i161, i64 %i.of
  %i.oj = sub nuw nsw i64 %.sroa.6.019.i.i162, %i.of ; 2 uses
  %.not.i.i172 = icmp ne i64 %i.oj, 0
  %i.ok = icmp ne ptr %i.ob, %i.ns
  %or.cond.i.i173 = select i1 %.not.i.i172, i1 %i.ok, i1 false
  br i1 %or.cond.i.i173, label %bb.bl, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit176, !llvm.loop !6

_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit176: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i171, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %.0.lcssa.i.i158 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ], [ %i.oh, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i171 ] ; 4 uses
  %i.ol = load ptr, ptr %i.ne, align 8, !tbaa !114 ; 5 uses
  %i.om = load ptr, ptr %i.nh, align 8, !tbaa !115 ; 18 uses
  %i.on = icmp eq ptr %i.ol, %i.om
  br i1 %i.on, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit176._ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit206thread-pre-split_crit_edge, label %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i177

_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit176._ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit206thread-pre-split_crit_edge: ; preds = %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit176
  %.pr.pre = load i64, ptr %i.nl, align 8, !tbaa !143, !noalias !364
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit206

_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i177: ; preds = %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit176
  %i.oo = getelementptr inbounds i8, ptr %i.om, i64 -16 ; 3 uses
  %.not24.i178 = icmp eq ptr %i.ol, %i.oo
  %.pre.i203 = load i64, ptr %i.nm, align 8, !tbaa !149 ; 3 uses
  %.pre36.i205 = load i64, ptr %i.nl, align 8     ; 3 uses
  br i1 %.not24.i178, label %._crit_edge.i193, label %.lr.ph.i180

.lr.ph.i180:                                      ; preds = %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i177
  %.sroa.22.0..sroa_idx.peel.i183 = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %.sroa.22.0.copyload.peel.i184 = load i64, ptr %.sroa.22.0..sroa_idx.peel.i183, align 8, !tbaa !30
  %i.op = sub i64 %.sroa.22.0.copyload.peel.i184, %.pre.i203 ; 3 uses
  %.not11.peel.i185 = icmp ult i64 %.0.lcssa.i.i158, %i.op
  br i1 %.not11.peel.i185, label %.thread.i199, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i180
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ol, i64 16 ; 4 uses
  store ptr %i.oq, ptr %i.ne, align 8, !tbaa !114
  %i.or = sub nuw i64 %.0.lcssa.i.i158, %i.op     ; 2 uses
  store i64 0, ptr %i.nm, align 8, !tbaa !149
  %i.os = add i64 %i.op, %.pre36.i205             ; 3 uses
  store i64 %i.os, ptr %i.nl, align 8, !tbaa !143
  %.not.peel.i186 = icmp eq ptr %i.oq, %i.oo
  br i1 %.not.peel.i186, label %._crit_edge.i193, label %.peel.next.i187

.peel.next.i187:                                  ; preds = %bb.bp, %bb.bq
  %i.ot = phi i64 [ %i.pa, %bb.bq ], [ %i.os, %bb.bp ] ; 2 uses
  %.025.i188 = phi i64 [ %i.oz, %bb.bq ], [ %i.or, %bb.bp ] ; 3 uses
  %i.ou = phi ptr [ %i.oy, %bb.bq ], [ %i.oq, %bb.bp ] ; 2 uses
  %.sroa.22.0..sroa_idx.i189 = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %.sroa.22.0.copyload.i190 = load i64, ptr %.sroa.22.0..sroa_idx.i189, align 8, !tbaa !30 ; 3 uses
  %.not11.i191 = icmp ult i64 %.025.i188, %.sroa.22.0.copyload.i190
  br i1 %.not11.i191, label %.thread.i199, label %bb.bq

.thread.i199:                                     ; preds = %.peel.next.i187, %.lr.ph.i180
  %i.ov = phi i64 [ %.pre36.i205, %.lr.ph.i180 ], [ %i.ot, %.peel.next.i187 ]
  %.lcssa30.i200 = phi i64 [ %.pre.i203, %.lr.ph.i180 ], [ 0, %.peel.next.i187 ]
  %.025.lcssa.i201 = phi i64 [ %.0.lcssa.i.i158, %.lr.ph.i180 ], [ %.025.i188, %.peel.next.i187 ] ; 2 uses
  %i.ow = add i64 %.025.lcssa.i201, %.lcssa30.i200
  store i64 %i.ow, ptr %i.nm, align 8, !tbaa !149
  %i.ox = add i64 %.025.lcssa.i201, %i.ov         ; 2 uses
  store i64 %i.ox, ptr %i.nl, align 8, !tbaa !143
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit206

bb.bq:                                            ; preds = %.peel.next.i187
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 16 ; 4 uses
  store ptr %i.oy, ptr %i.ne, align 8, !tbaa !114
  %i.oz = sub nuw i64 %.025.i188, %.sroa.22.0.copyload.i190 ; 2 uses
  store i64 0, ptr %i.nm, align 8, !tbaa !149
  %i.pa = add i64 %.sroa.22.0.copyload.i190, %i.ot ; 3 uses
  store i64 %i.pa, ptr %i.nl, align 8, !tbaa !143
  %.not.i192 = icmp eq ptr %i.oy, %i.oo
  br i1 %.not.i192, label %._crit_edge.i193, label %.peel.next.i187, !llvm.loop !7

._crit_edge.i193:                                 ; preds = %bb.bq, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i177, %bb.bp
  %i.pb = phi i64 [ %.pre36.i205, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i177 ], [ %i.os, %bb.bp ], [ %i.pa, %bb.bq ]
  %i.pc = phi i64 [ %.pre.i203, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i177 ], [ 0, %bb.bp ], [ 0, %bb.bq ] ; 2 uses
  %.0.lcssa.i194 = phi i64 [ %.0.lcssa.i.i158, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i177 ], [ %i.or, %bb.bp ], [ %i.oz, %bb.bq ]
  %.lcssa.i195 = phi ptr [ %i.ol, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i177 ], [ %i.oq, %bb.bp ], [ %i.oy, %bb.bq ] ; 2 uses
  %i.pd = load i64, ptr %i.no, align 8, !tbaa !127
  %i.pe = sub i64 %i.pd, %i.pc
  %.sroa.speculated.i196 = call i64 @llvm.umin.i64(i64 %i.pe, i64 %.0.lcssa.i194) ; 2 uses
  %i.pf = add i64 %.sroa.speculated.i196, %i.pc   ; 2 uses
  store i64 %i.pf, ptr %i.nm, align 8, !tbaa !149
  %i.pg = add i64 %.sroa.speculated.i196, %i.pb   ; 3 uses
  store i64 %i.pg, ptr %i.nl, align 8, !tbaa !143
  %.sroa.2.0..sroa_idx.i197 = getelementptr inbounds nuw i8, ptr %.lcssa.i195, i64 8
  %.sroa.2.0.copyload.i198 = load i64, ptr %.sroa.2.0..sroa_idx.i197, align 8, !tbaa !30
  %i.ph = icmp eq i64 %i.pf, %.sroa.2.0.copyload.i198
  br i1 %i.ph, label %bb.br, label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit206

bb.br:                                            ; preds = %._crit_edge.i193
  %i.pi = getelementptr inbounds nuw i8, ptr %.lcssa.i195, i64 16
  store ptr %i.pi, ptr %i.ne, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nm, i8 0, i64 16, i1 false)
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit206

_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit206: ; preds = %bb.br, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit176._ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit206thread-pre-split_crit_edge, %.thread.i199, %._crit_edge.i193
  %i.pj = phi i64 [ %i.pg, %._crit_edge.i193 ], [ %i.ox, %.thread.i199 ], [ %.pr.pre, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit176._ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit206thread-pre-split_crit_edge ], [ %i.pg, %bb.br ] ; 21 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.pk = load ptr, ptr %i.nc, align 8, !tbaa !113, !noalias !364 ; 28 uses
  %i.pl = load i64, ptr %i.nj, align 8, !tbaa !144, !noalias !364 ; 16 uses
  store ptr %i.pk, ptr %15, align 8, !tbaa !146, !alias.scope !364
  %i.pm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  store ptr %i.om, ptr %i.pm, align 8, !tbaa !147, !alias.scope !364
  %i.pn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store i64 0, ptr %i.pn, align 8, !tbaa !148, !alias.scope !364
  %i.po = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  %i.pp = icmp eq i64 %i.pj, 0                    ; 4 uses
  br i1 %i.pp, label %.thread88.i.i.i234, label %bb.bs

.thread88.i.i.i234:                               ; preds = %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit206
  store ptr %i.pk, ptr %i.pm, align 8, !tbaa !147, !alias.scope !364
  br label %bb.bt

bb.bs:                                            ; preds = %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit206
  %i.pq = icmp eq ptr %i.pk, %i.om
  br i1 %i.pq, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %.thread88.i.i.i234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pn, i8 0, i64 16, i1 false), !alias.scope !364
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit235

bb.bu:                                            ; preds = %bb.bs
  %.not.old.i.i.i207 = icmp eq i64 %i.pl, 0
  br i1 %.not.old.i.i.i207, label %.loopexit.i.i.i221, label %.preheader.i.i.preheader.i208

.preheader.i.i.preheader.i208:                    ; preds = %bb.bu
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !41, !noalias !364 ; 2 uses
  %.sroa.speculated31.i.i12.i209 = call i64 @llvm.umin.i64(i64 %i.ps, i64 %i.pl) ; 2 uses
  %.not21.i.i13.i210 = icmp ult i64 %i.pl, %i.ps
  br i1 %.not21.i.i13.i210, label %.loopexit.i.i.i221.sink.split, label %.lr.ph.i211

.preheader.i.i.i215:                              ; preds = %.lr.ph.i211
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !41, !noalias !364 ; 2 uses
  %.sroa.speculated31.i.i.i216 = call i64 @llvm.umin.i64(i64 %i.pu, i64 %i.px) ; 2 uses
  %.not21.i.i.i217 = icmp ult i64 %i.px, %i.pu
  br i1 %.not21.i.i.i217, label %.loopexit.i.i.i221.sink.split, label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %.preheader.i.i.preheader.i208, %.preheader.i.i.i215
  %.sroa.speculated31.i.i15.i212 = phi i64 [ %.sroa.speculated31.i.i.i216, %.preheader.i.i.i215 ], [ %.sroa.speculated31.i.i12.i209, %.preheader.i.i.preheader.i208 ]
  %.060.i.i14.i213 = phi i64 [ %i.px, %.preheader.i.i.i215 ], [ %i.pl, %.preheader.i.i.preheader.i208 ]
  %i.pv = phi ptr [ %i.pw, %.preheader.i.i.i215 ], [ %i.pk, %.preheader.i.i.preheader.i208 ] ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16 ; 3 uses
  %i.px = sub nuw i64 %.060.i.i14.i213, %.sroa.speculated31.i.i15.i212 ; 4 uses
  %.not.i.i.i214 = icmp eq i64 %i.px, 0
  br i1 %.not.i.i.i214, label %.loopexit.i.i.i221.sink.split, label %.preheader.i.i.i215

.loopexit.i.i.i221.sink.split:                    ; preds = %.lr.ph.i211, %.preheader.i.i.i215, %.preheader.i.i.preheader.i208
  %.sink926.a = phi ptr [ %i.pk, %.preheader.i.i.preheader.i208 ], [ %i.pw, %.preheader.i.i.i215 ], [ %i.pw, %.lr.ph.i211 ] ; 2 uses
  %.sink925 = phi i64 [ %.sroa.speculated31.i.i12.i209, %.preheader.i.i.preheader.i208 ], [ 0, %.lr.ph.i211 ], [ %.sroa.speculated31.i.i.i216, %.preheader.i.i.i215 ] ; 2 uses
  store ptr %.sink926.a, ptr %15, align 8, !alias.scope !364
  store i64 %.sink925, ptr %i.pn, align 8, !alias.scope !364
  br label %.loopexit.i.i.i221

.loopexit.i.i.i221:                               ; preds = %.loopexit.i.i.i221.sink.split, %bb.bu
  %i.py = phi i64 [ 0, %bb.bu ], [ %.sink925, %.loopexit.i.i.i221.sink.split ]
  %i.pz = phi ptr [ %i.pk, %bb.bu ], [ %.sink926.a, %.loopexit.i.i.i221.sink.split ] ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !41, !noalias !364
  %i.qc = sub i64 %i.qb, %i.py                    ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pz, i64 16 ; 5 uses
  %i.qe = icmp eq ptr %i.qd, %i.om
  br i1 %i.qe, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.loopexit.i.i.i221
  %.sroa.speculated.i.i.i232 = call i64 @llvm.umin.i64(i64 %i.pj, i64 %i.qc)
  store i64 %.sroa.speculated.i.i.i232, ptr %i.po, align 8, !tbaa !150, !alias.scope !364
  store ptr %i.qd, ptr %i.pm, align 8, !tbaa !147, !alias.scope !364
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit235

bb.bw:                                            ; preds = %.loopexit.i.i.i221
  %.not22.i.i.i222 = icmp ult i64 %i.qc, %i.pj
  br i1 %.not22.i.i.i222, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store ptr %i.qd, ptr %i.pm, align 8, !tbaa !147, !alias.scope !364
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.qf = sub nuw i64 %i.pj, %i.qc
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.qg = phi i64 [ -1, %bb.by ], [ %i.pj, %bb.bx ]
  %i.qh = phi ptr [ %i.om, %bb.by ], [ %i.qd, %bb.bx ] ; 2 uses
  %.061.i.i.i223 = phi i64 [ %i.qf, %bb.by ], [ %i.pj, %bb.bx ] ; 2 uses
  %.0.i.i.i224 = phi ptr [ %i.qd, %bb.by ], [ %i.pz, %bb.bx ] ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.0.i.i.i224, i64 16 ; 2 uses
  %i.qj = icmp eq ptr %i.qi, %i.qh
  br i1 %i.qj, label %._crit_edge.i.i.i229, label %.lr.ph.i.i.i225

._crit_edge.i.i.i229:                             ; preds = %bb.ca, %bb.bz
  %.162.lcssa.i.i.i230 = phi i64 [ %.061.i.i.i223, %bb.bz ], [ %i.qn, %bb.ca ]
  %.sroa.speculated41.i.i.i231 = call i64 @llvm.umin.i64(i64 %i.qg, i64 %.162.lcssa.i.i.i230)
  store i64 %.sroa.speculated41.i.i.i231, ptr %i.po, align 8, !tbaa !150, !alias.scope !364
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit235

end_hunk_3
begin_hunk_4_@_ZThn16_N5boost10wrapexceptINS_5beast9unit_test5suite15abort_exceptionEED0Ev:bb.a
  tail call void @__clang_call_terminate(ptr %i.h) #29
  unreachable

_ZN5boost10wrapexceptINS_5beast9unit_test5suite15abort_exceptionEED0Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds i8, ptr %0, i64 -16
  %i.j = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.j) #28
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 noundef 56) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast9unit_test5suite15abort_exceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #32
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptINS_5beast9unit_test5suite15abort_exceptionEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %i.a, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.b, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 4 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !63
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.c unwind label %bb.d, !inline_history !3

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptINS_5beast9unit_test5suite15abort_exceptionEEE, i64 16), ptr %0, align 8, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptINS_5beast9unit_test5suite15abort_exceptionEEE, i64 64), ptr %i.a, align 8, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptINS_5beast9unit_test5suite15abort_exceptionEEE, i64 104), ptr %i.b, align 8, !tbaa !58
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #28
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast9unit_test6runner4passIvEEvv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #30
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !123, !range !84, !noundef !85
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %._crit_edge.i.i, label %bb.i

._crit_edge.i.i:                                  ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !69
  store i8 0, ptr %i.f, align 8, !tbaa !68
  %i.h = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.h) #30
          to label %.noexc7 unwind label %bb.h

.noexc7:                                          ; preds = %bb.c
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i: ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %i.c, align 8, !tbaa !123, !range !84, !noundef !85
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 0 uses
  br label %.body

bb.f:                                             ; preds = %bb.d, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i
  store i8 0, ptr %i.c, align 8, !tbaa !123
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 0, ptr %i.p, align 2, !tbaa !124
  %i.q = load ptr, ptr %0, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.t = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 0 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !67     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.f
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.w = load i64, ptr %i.f, align 8, !tbaa !68
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.n, %bb.e ]
  %i.z = load ptr, ptr %1, align 8, !tbaa !67     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.f
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %.body
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !68
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.l

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 1, ptr %i.ag, align 2, !tbaa !124
  %i.ah = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 0 uses
  ret void

bb.k:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %.pn5 = phi { ptr, i32 } [ %i.ai, %bb.k ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ]
  %i.aj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 0 uses
  resume { ptr, i32 } %.pn5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail20test_mutable_buffersINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEEEvRKT_NS_4asio14mutable_bufferE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !146    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 5 uses
  %.not8.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not8.i.i.i, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx.i.i.peel.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload.i.i.peel.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.peel.i.i, align 8, !tbaa !30
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.copyload.i.i.peel.i.i, i64 %i.f) ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.h, %i.d
  br i1 %i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit.thread, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.lr.ph.i.i.i, %.peel.next.i.i
  %.010.i.i.i = phi i64 [ %i.l, %.peel.next.i.i ], [ %i.g, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.44.09.i.i.i = phi ptr [ %i.j, %.peel.next.i.i ], [ %i.h, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.44.09.i.i.i, i64 8
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.44.09.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  %i.l = add i64 %.sroa.6.0.copyload.i.i.i.i, %.010.i.i.i
  br i1 %i.k, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit.thread.thread, label %.peel.next.i.i, !llvm.loop !9

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit.thread: ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !30   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.n)
  %i.o = icmp ult i64 %.sroa.speculated.i.i.i.i, 13
  br i1 %i.o, label %.loopexit, label %.lr.ph.i.i

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit.thread.thread: ; preds = %.peel.next.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !30   ; 2 uses
  %.sroa.speculated.i.i.i.i46 = tail call i64 @llvm.umin.i64(i64 %.sroa.6.0.copyload.i.i.i.i, i64 %i.q)
  %i.r = add i64 %.sroa.speculated.i.i.i.i46, %.010.i.i.i
  %i.s = icmp ult i64 %i.r, 13
  br i1 %i.s, label %.peel.next.i.i10, label %.lr.ph.i.i

.peel.next.i.i10:                                 ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit.thread.thread, %.peel.next.i.i10
  %.010.i.i.i11 = phi i64 [ %i.v, %.peel.next.i.i10 ], [ %i.g, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit.thread.thread ] ; 2 uses
  %.sroa.44.09.i.i.i12 = phi ptr [ %i.t, %.peel.next.i.i10 ], [ %i.h, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit.thread.thread ] ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %.sroa.44.09.i.i.i12, i64 8
  %.sroa.6.0.copyload.i.i.i.i14 = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i13, align 8, !tbaa !30 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.44.09.i.i.i12, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  %i.v = add i64 %.sroa.6.0.copyload.i.i.i.i14, %.010.i.i.i11
  br i1 %i.u, label %.loopexit, label %.peel.next.i.i10, !llvm.loop !9

.loopexit:                                        ; preds = %.peel.next.i.i10, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit.thread
  %i.w = phi ptr [ %i.m, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit.thread ], [ %i.p, %.peel.next.i.i10 ]
  %i.x = phi i64 [ %i.n, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit.thread ], [ %i.q, %.peel.next.i.i10 ]
  %.010.i.lcssa.i.i16 = phi i64 [ 0, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit.thread ], [ %.010.i.i.i11, %.peel.next.i.i10 ]
  %.sroa.6.0.i.i.lcssa.i.i17 = phi i64 [ %i.g, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit.thread ], [ %.sroa.6.0.copyload.i.i.i.i14, %.peel.next.i.i10 ]
  %.sroa.speculated.i.i.i.i18 = tail call i64 @llvm.umin.i64(i64 %.sroa.6.0.i.i.lcssa.i.i17, i64 %i.x)
  %i.y = add i64 %.sroa.speculated.i.i.i.i18, %.010.i.lcssa.i.i16 ; 2 uses
  %.not16.i.i.not = icmp eq i64 %i.y, 0
  br i1 %.not16.i.i.not, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit.thread.thread, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit.thread, %.loopexit
  %.sroa.8.049 = phi i64 [ %i.y, %.loopexit ], [ 13, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit.thread ], [ 13, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit.thread.thread ] ; 2 uses
  %i.z = phi ptr [ %i.w, %.loopexit ], [ %i.m, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit.thread ], [ %i.p, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEvEEmRKT_.exit.thread.thread ]
  br label %bb.b

bb.b:                                             ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %.lr.ph.i.i
  %.sroa.07.020.i.i = phi ptr [ @.str.10, %.lr.ph.i.i ], [ %i.aj, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.6.019.i.i = phi i64 [ %.sroa.8.049, %.lr.ph.i.i ], [ %i.ak, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.412.018.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %i.ae, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 4 uses
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %.sroa.412.018.i.i, align 8, !tbaa !29 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.412.018.i.i, i64 8
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !30 ; 3 uses
  %4 = load ptr, ptr %0, align 8, !tbaa !146
  %i.aa = icmp eq ptr %.sroa.412.018.i.i, %4
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !148
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %.sroa.6.0.copyload.i.i.i) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 %..i.i.i.i
  %i.ad = sub i64 %.sroa.6.0.copyload.i.i.i, %..i.i.i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i.i.i = phi ptr [ %i.ac, %bb.c ], [ %.sroa.03.0.copyload.i.i.i, %bb.b ]
  %.sroa.6.0.i.i.i = phi i64 [ %i.ad, %bb.c ], [ %.sroa.6.0.copyload.i.i.i, %bb.b ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.412.018.i.i, i64 16 ; 3 uses
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load i64, ptr %i.z, align 8, !tbaa !30
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.6.0.i.i.i, i64 %i.ah)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.6.1.i.i.i = phi i64 [ %.sroa.speculated.i.i.i, %bb.e ], [ %.sroa.6.0.i.i.i, %bb.d ] ; 2 uses
  %i.ai = tail call i64 @llvm.umin.i64(i64 %.sroa.6.1.i.i.i, i64 %.sroa.6.019.i.i) ; 3 uses
  %.not.i.i.i = icmp eq i64 %.sroa.6.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.03.0.i.i.i, ptr align 1 %.sroa.07.020.i.i, i64 %i.ai, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i: ; preds = %bb.g, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.07.020.i.i, i64 %i.ai
  %i.ak = sub nuw i64 %.sroa.6.019.i.i, %i.ai     ; 2 uses
  %.not.i.i = icmp ne i64 %i.ak, 0
  %i.al = icmp ne ptr %i.ae, %i.d
  %or.cond.i.i = and i1 %i.al, %.not.i.i
  br i1 %or.cond.i.i, label %bb.b, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit, !llvm.loop !6

_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %bb.a, %.loopexit
  %.sroa.8.035 = phi i64 [ 0, %bb.a ], [ 0, %.loopexit ], [ %.sroa.8.049, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 3 uses
  %i.am = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN5boost5beast17buffers_to_stringINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !69
  %i.ap = icmp eq i64 %i.ao, %.sroa.8.035
  br i1 %i.ap, label %bb.h, label %_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit

bb.h:                                             ; preds = %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit
  %i.aq = icmp eq i64 %.sroa.8.035, 0
  br i1 %i.aq, label %_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %3, align 8, !tbaa !67
  %bcmp.i = call i32 @bcmp(ptr %i.ar, ptr nonnull @.str.10, i64 %.sroa.8.035)
  %i.as = icmp eq i32 %bcmp.i, 0
  %i.at = zext i1 %i.as to i8
  br label %_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit

_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit: ; preds = %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit, %bb.h, %bb.i
  %i.au = phi i8 [ 0, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit ], [ %i.at, %bb.i ], [ 1, %bb.h ]
  store i8 %i.au, ptr %i.a, align 1, !tbaa !125
  %i.av = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @.str.6, ptr noundef nonnull @.str.9, i32 noundef 128)
          to label %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit unwind label %bb.j ; 0 uses

_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit: ; preds = %_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit
  %i.aw = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !68
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.j:                                             ; preds = %_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.j
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !68
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  resume { ptr, i32 } %i.bb
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio15basic_streambufISaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5boost4asio15basic_streambufISaIcEEE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %0, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio15basic_streambufISaIcEED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5boost4asio15basic_streambufISaIcEEE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost4asio15basic_streambufISaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32, !inline_history !142
  br label %_ZN5boost4asio15basic_streambufISaIcEED2Ev.exit

_ZN5boost4asio15basic_streambufISaIcEED2Ev.exit:  ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %0, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #28, !inline_history !142
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE6setbufEPcl(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
declare { i64, i64 } @_ZNSt15basic_streambufIcSt11char_traitsIcEE7seekoffElSt12_Ios_SeekdirSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef, i32 noundef, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare { i64, i64 } @_ZNSt15basic_streambufIcSt11char_traitsIcEE7seekposESt4fposI11__mbstate_tESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(64), i64, i64, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE4syncEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef i64 @_ZNSt15basic_streambufIcSt11char_traitsIcEE9showmanycEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio15basic_streambufISaIcEE9underflowEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !135
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !138
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.i, align 8, !tbaa !140
  %i.j = load i8, ptr %i.b, align 1, !tbaa !68
  %i.k = zext i8 %i.j to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE9pbackfailEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio15basic_streambufISaIcEE8overflowEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !139
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !134  ; 2 uses
  %i.n = icmp ult i64 %i.k, %i.m
  %i.o = sub nuw i64 %i.m, %i.k
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.o, i64 128)
  %.sink = select i1 %i.n, i64 %i.p, i64 128
  tail call void @_ZN5boost4asio15basic_streambufISaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %.sink)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %i.q = trunc i32 %1 to i8
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !118
  store i8 %i.q, ptr %i.r, align 1, !tbaa !68
end_hunk_4
