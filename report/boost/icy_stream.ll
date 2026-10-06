Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/icy_stream?download=true
inline.NumInlined: 2161
inline.NumDeleted: 978
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5boost5beast4http15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEES5_:bb.a
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !173, !noalias !411
  %i.lx = sub i64 %i.lw, %i.lt                    ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 4 uses
  %i.lz = icmp eq ptr %i.ly, %i.lj
  br i1 %i.lz, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.loopexit.i.i.i
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.kp, i64 %i.lx)
  store i64 %.sroa.speculated.i.i.i, ptr %i.al, align 8, !tbaa !412, !alias.scope !411
  store ptr %i.lj, ptr %i.aj, align 8, !tbaa !170, !alias.scope !411
  br label %_ZN5boost5beast15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE7prepareEm.exit

bb.ca:                                            ; preds = %.loopexit.i.i.i
  %.not22.i.i.i = icmp ult i64 %i.lx, %i.kp
  br i1 %.not22.i.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store ptr %i.ly, ptr %i.aj, align 8, !tbaa !170, !alias.scope !411
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.ma = sub nuw i64 %i.kp, %i.lx
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.mb = phi i64 [ -1, %bb.cc ], [ %i.kp, %bb.cb ]
  %i.mc = phi ptr [ %i.lj, %bb.cc ], [ %i.ly, %bb.cb ] ; 3 uses
  %.061.i.i.i = phi i64 [ %i.ma, %bb.cc ], [ %i.kp, %bb.cb ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.ly, %bb.cc ], [ %i.lu, %bb.cb ] ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.mc
  br i1 %i.me, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ce, %bb.cd
  %.162.lcssa.i.i.i = phi i64 [ %.061.i.i.i, %bb.cd ], [ %i.mi, %bb.ce ]
  %.sroa.speculated41.i.i.i = call i64 @llvm.umin.i64(i64 %i.mb, i64 %.162.lcssa.i.i.i)
  store i64 %.sroa.speculated41.i.i.i, ptr %i.al, align 8, !tbaa !412, !alias.scope !411
  br label %_ZN5boost5beast15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE7prepareEm.exit

.lr.ph.i.i.i:                                     ; preds = %bb.cd, %bb.ce
  %i.mf = phi ptr [ %i.mj, %bb.ce ], [ %i.md, %bb.cd ] ; 4 uses
  %.pn.i.i.i = phi ptr [ %i.mf, %bb.ce ], [ %.0.i.i.i, %bb.cd ]
  %.16270.i.i.i = phi i64 [ %i.mi, %bb.ce ], [ %.061.i.i.i, %bb.cd ] ; 3 uses
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  %i.mg = load i64, ptr %.in.i.i.i, align 8, !tbaa !173, !noalias !411 ; 2 uses
  %i.mh = icmp ult i64 %i.mg, %.16270.i.i.i
  br i1 %i.mh, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.lr.ph.i.i.i
  %i.mi = sub nuw i64 %.16270.i.i.i, %i.mg        ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 16 ; 2 uses
  %i.mk = icmp eq ptr %i.mj, %i.mc
  br i1 %i.mk, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !348

bb.cf:                                            ; preds = %.lr.ph.i.i.i
  store i64 %.16270.i.i.i, ptr %i.al, align 8, !tbaa !412, !alias.scope !411
  store ptr %i.mf, ptr %i.aj, align 8, !tbaa !170, !alias.scope !411
  br label %_ZN5boost5beast15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE7prepareEm.exit

_ZN5boost5beast15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE7prepareEm.exit: ; preds = %bb.cf, %._crit_edge.i.i.i, %bb.bz, %bb.bx
  %i.ml = phi ptr [ %i.mf, %bb.cf ], [ %i.mc, %._crit_edge.i.i.i ], [ %i.lj, %bb.bz ], [ %i.ki, %bb.bx ]
  %i.mm = phi ptr [ %i.lu, %bb.cf ], [ %i.lu, %._crit_edge.i.i.i ], [ %i.lu, %bb.bz ], [ %i.ki, %bb.bx ]
  %i.mn = load i8, ptr %i.u, align 1, !tbaa !126, !range !71, !noundef !72
  %i.mo = trunc nuw i8 %i.mn to i1
  %.pre.i115 = load i8, ptr %i.t, align 8, !tbaa !125 ; 3 uses
  br i1 %i.mo, label %.preheader.i, label %bb.cl

.preheader.i:                                     ; preds = %_ZN5boost5beast15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE7prepareEm.exit, %bb.ck
  %i.mp = phi i8 [ %i.mw, %bb.ck ], [ %.pre.i115, %_ZN5boost5beast15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE7prepareEm.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #31
  %i.mq = zext i8 %i.mp to i64                    ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.mq
  %i.ms = sub nsw i64 3, %i.mq
  store ptr %i.mr, ptr %33, align 8, !tbaa !174
  store i64 %i.ms, ptr %i.am, align 8, !tbaa !173
  %i.mt = invoke noundef i64 @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS3_14mutable_bufferEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(42) %43, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(24) %45)
          to label %.noexc118 unwind label %.loopexit

.noexc118:                                        ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  %i.mu = trunc i64 %i.mt to i8
  %i.mv = load i8, ptr %i.t, align 8, !tbaa !125
  %i.mw = add i8 %i.mv, %i.mu                     ; 8 uses
  store i8 %i.mw, ptr %i.t, align 8, !tbaa !125
  %i.mx = load i64, ptr %i.an, align 8, !tbaa !52 ; 2 uses
  %i.my = and i64 %i.mx, 1
  %.not.i.i.i116 = icmp eq i64 %i.my, 0
  br i1 %.not.i.i.i116, label %_ZNK5boost6system10error_codecvbEv.exit.thread24.i, label %bb.cg

bb.cg:                                            ; preds = %.noexc118
  %i.mz = icmp eq i64 %i.mx, 1
  %i.na = load i32, ptr %45, align 8
  %.not32.i = icmp eq i32 %i.na, 0
  %or.cond = select i1 %i.mz, i1 %.not32.i, i1 false
  br i1 %or.cond, label %_ZNK5boost6system10error_codecvbEv.exit.thread24.i, label %_ZN5boost5beast4http10icy_streamINS0_4test12basic_streamINS_4asio15any_io_executorEEEE9read_someINS0_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeE.exit

_ZNK5boost6system10error_codecvbEv.exit.thread24.i: ; preds = %bb.cg, %.noexc118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not.i.i.i.i.i = icmp eq i8 %i.mw, 0
  br i1 %.not.i.i.i.i.i, label %bb.ck, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit.i.i

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit.i.i: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread24.i
  %i.nb = call i8 @llvm.umin.i8(i8 %i.mw, i8 3)
  %i.nc = zext nneg i8 %i.nb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull align 8 %i.v, i64 %i.nc, i1 false)
  %.0..0..0..0..0..0..0..i.i = load i8, ptr %i.e, align 1
  %.not.i.i = icmp eq i8 %.0..0..0..0..0..0..0..i.i, 73
  br i1 %.not.i.i, label %bb.ch, label %.thread.i117

bb.ch:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit.i.i
  %i.nd = icmp ne i8 %i.mw, 1
  %.1..1..1..1..1..1..1..i.i = load i8, ptr %.1..1..1..1..1..1..1..sroa_idx, align 1
  %i.ne = icmp ne i8 %.1..1..1..1..1..1..1..i.i, 67
  %or.cond7.i.i = select i1 %i.nd, i1 %i.ne, i1 false
  br i1 %or.cond7.i.i, label %.thread.i117, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nf = icmp ugt i8 %i.mw, 2
  br i1 %i.nf, label %bb.cj, label %bb.ck

.thread.i117:                                     ; preds = %bb.ch, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.thread48.i

bb.cj:                                            ; preds = %bb.ci
  %.2..2..2..2..2..2..2..i.i = load i8, ptr %.2..2..2..2..2..2..2..sroa_idx, align 1
  %i.ng = icmp eq i8 %.2..2..2..2..2..2..2..i.i, 89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.ng, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit.i, label %.thread48.i

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit.i: ; preds = %bb.cj
  store i64 3543824036068086856, ptr %i.v, align 8
  store i8 8, ptr %i.t, align 8, !tbaa !125
  br label %.thread48.i

bb.ck:                                            ; preds = %bb.ci, %_ZNK5boost6system10error_codecvbEv.exit.thread24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.preheader.i

.thread48.i:                                      ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit.i, %bb.cj, %.thread.i117
  %i.nh = phi i8 [ 8, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit.i ], [ %i.mw, %bb.cj ], [ %i.mw, %.thread.i117 ]
  store i8 0, ptr %i.u, align 1, !tbaa !126
  %.pre1829 = load ptr, ptr %46, align 8, !tbaa !169
  %.pre1830 = load ptr, ptr %i.aj, align 8, !tbaa !170
  br label %bb.cm

bb.cl:                                            ; preds = %_ZN5boost5beast15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE7prepareEm.exit
  %.not.i113 = icmp eq i8 %.pre.i115, 0
  br i1 %.not.i113, label %bb.cr, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.thread48.i
  %i.ni = phi ptr [ %.pre1830, %.thread48.i ], [ %i.ml, %bb.cl ] ; 2 uses
  %.pre1832 = phi ptr [ %.pre1829, %.thread48.i ], [ %i.mm, %bb.cl ] ; 3 uses
  %i.nj = phi i8 [ %i.nh, %.thread48.i ], [ %.pre.i115, %bb.cl ] ; 2 uses
  %.not33.i = icmp eq ptr %.pre1832, %i.ni
  br i1 %.not33.i, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit.i, label %.lr.ph.i.i.i114

.lr.ph.i.i.i114:                                  ; preds = %bb.cm
  %i.nk = zext i8 %i.nj to i64
  br label %bb.cn

bb.cn:                                            ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, %.lr.ph.i.i.i114
  %i.nl = phi ptr [ %.pre1832, %.lr.ph.i.i.i114 ], [ %i.nv, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ] ; 2 uses
  %.021.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i114 ], [ %i.nw, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ]
  %.sroa.07.020.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i114 ], [ %i.nx, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ] ; 2 uses
  %.sroa.6.019.i.i.i = phi i64 [ %i.nk, %.lr.ph.i.i.i114 ], [ %i.ny, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ] ; 2 uses
  %.sroa.412.018.i.i.i = phi ptr [ %.pre1832, %.lr.ph.i.i.i114 ], [ %i.nq, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ] ; 4 uses
  %.sroa.03.0.copyload.i.i.i.i = load ptr, ptr %.sroa.412.018.i.i.i, align 8, !tbaa !75 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.412.018.i.i.i, i64 8
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !37 ; 3 uses
  %i.nm = icmp eq ptr %.sroa.412.018.i.i.i, %i.nl
  br i1 %i.nm, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.nn = load i64, ptr %i.ak, align 8, !tbaa !171
  %..i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.nn, i64 %.sroa.6.0.copyload.i.i.i.i) ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i.i, i64 %..i.i.i.i.i
  %i.np = sub i64 %.sroa.6.0.copyload.i.i.i.i, %..i.i.i.i.i
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.sroa.03.0.i.i.i.i = phi ptr [ %i.no, %bb.co ], [ %.sroa.03.0.copyload.i.i.i.i, %bb.cn ]
  %.sroa.6.0.i.i.i.i = phi i64 [ %i.np, %bb.co ], [ %.sroa.6.0.copyload.i.i.i.i, %bb.cn ] ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.412.018.i.i.i, i64 16 ; 3 uses
  %i.nr = load ptr, ptr %i.aj, align 8, !tbaa !170
  %i.ns = icmp eq ptr %i.nq, %i.nr
  %i.nt = load i64, ptr %i.al, align 8
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.6.0.i.i.i.i, i64 %i.nt)
  %.sroa.6.1.i.i.i.i = select i1 %i.ns, i64 %.sroa.speculated.i.i.i.i, i64 %.sroa.6.0.i.i.i.i ; 2 uses
  %i.nu = call i64 @llvm.umin.i64(i64 %.sroa.6.1.i.i.i.i, i64 %.sroa.6.019.i.i.i) ; 4 uses
  %.not.i.i.i14.i = icmp eq i64 %.sroa.6.1.i.i.i.i, 0
  br i1 %.not.i.i.i14.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.03.0.i.i.i.i, ptr align 1 %.sroa.07.020.i.i.i, i64 %i.nu, i1 false)
  %.pre1831.a = load ptr, ptr %46, align 8, !tbaa !169
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i: ; preds = %bb.cq, %bb.cp
  %i.nv = phi ptr [ %.pre1831.a, %bb.cq ], [ %i.nl, %bb.cp ]
  %i.nw = add i64 %i.nu, %.021.i.i.i              ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.07.020.i.i.i, i64 %i.nu
  %i.ny = sub nuw nsw i64 %.sroa.6.019.i.i.i, %i.nu ; 2 uses
  %.not.i.i15.i = icmp ne i64 %i.ny, 0
  %i.nz = icmp ne ptr %i.nq, %i.ni
  %or.cond.i.i.i = and i1 %i.nz, %.not.i.i15.i
  br i1 %or.cond.i.i.i, label %bb.cn, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit.loopexit.i, !llvm.loop !0

_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit.loopexit.i: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i
  %.pre41.i = load i8, ptr %i.t, align 8, !tbaa !125
  br label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit.i

_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit.i: ; preds = %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit.loopexit.i, %bb.cm
  %i.oa = phi i8 [ %i.nj, %bb.cm ], [ %.pre41.i, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit.loopexit.i ]
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.cm ], [ %i.nw, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit.loopexit.i ] ; 4 uses
  %i.ob = trunc i64 %.0.lcssa.i.i.i to i8
  %i.oc = sub i8 %i.oa, %i.ob
  store i8 %i.oc, ptr %i.t, align 8, !tbaa !125
  %i.od = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0.lcssa.i.i.i
  %i.oe = sub i64 8, %.0.lcssa.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 1 %i.od, i64 %i.oe, i1 false)
  br label %_ZN5boost5beast4http10icy_streamINS0_4test12basic_streamINS_4asio15any_io_executorEEEE9read_someINS0_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeE.exit

bb.cr:                                            ; preds = %bb.cl
  %i.of = invoke noundef i64 @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_15buffers_adaptorISt5arrayINS3_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(42) %43, ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(24) %45)
          to label %_ZN5boost5beast4http10icy_streamINS0_4test12basic_streamINS_4asio15any_io_executorEEEE9read_someINS0_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeE.exit unwind label %.loopexit.split-lp.loopexit

_ZN5boost5beast4http10icy_streamINS0_4test12basic_streamINS_4asio15any_io_executorEEEE9read_someINS0_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeE.exit: ; preds = %bb.cg, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit.i, %bb.cr
  %.0.i = phi i64 [ %i.of, %bb.cr ], [ %.0.lcssa.i.i.i, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit.i ], [ 0, %bb.cg ] ; 4 uses
  %i.og = load ptr, ptr %i.k, align 8, !tbaa !159 ; 7 uses
  %i.oh = load ptr, ptr %i.l, align 8, !tbaa !108 ; 2 uses
  %i.oi = icmp eq ptr %i.og, %i.oh
  br i1 %i.oi, label %_ZN5boost5beast15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE6commitEm.exit, label %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i

_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i: ; preds = %_ZN5boost5beast4http10icy_streamINS0_4test12basic_streamINS_4asio15any_io_executorEEEE9read_someINS0_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeE.exit
  %i.oj = getelementptr inbounds i8, ptr %i.oh, i64 -16 ; 3 uses
  %.not24.i = icmp eq ptr %i.og, %i.oj
  %.pre.i129 = load i64, ptr %i.ah, align 8, !tbaa !161 ; 3 uses
  %.pre36.i = load i64, ptr %i.ag, align 8        ; 3 uses
  br i1 %.not24.i, label %._crit_edge.i, label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i
  %.sroa.22.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %.sroa.22.0.copyload.peel.i = load i64, ptr %.sroa.22.0..sroa_idx.peel.i, align 8, !tbaa !37
  %i.ok = sub i64 %.sroa.22.0.copyload.peel.i, %.pre.i129 ; 3 uses
  %.not11.peel.i = icmp ult i64 %.0.i, %i.ok
  br i1 %.not11.peel.i, label %.thread.i128, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph.i121
  %i.ol = getelementptr inbounds nuw i8, ptr %i.og, i64 16 ; 4 uses
  store ptr %i.ol, ptr %i.k, align 8, !tbaa !159
  %i.om = sub nuw i64 %.0.i, %i.ok                ; 2 uses
  store i64 0, ptr %i.ah, align 8, !tbaa !161
  %i.on = add i64 %i.ok, %.pre36.i                ; 3 uses
  store i64 %i.on, ptr %i.ag, align 8, !tbaa !160
  %.not.peel.i = icmp eq ptr %i.ol, %i.oj
  br i1 %.not.peel.i, label %._crit_edge.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.cs, %bb.ct
  %i.oo = phi i64 [ %i.ow, %bb.ct ], [ %i.on, %bb.cs ] ; 2 uses
  %.025.i = phi i64 [ %i.ov, %bb.ct ], [ %i.om, %bb.cs ] ; 3 uses
  %i.op = phi ptr [ %i.ou, %bb.ct ], [ %i.ol, %bb.cs ] ; 3 uses
  %.sroa.22.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %.sroa.22.0.copyload.i123 = load i64, ptr %.sroa.22.0..sroa_idx.i122, align 8, !tbaa !37 ; 3 uses
  %.not11.i = icmp ult i64 %.025.i, %.sroa.22.0.copyload.i123
  br i1 %.not11.i, label %.thread.i128, label %bb.ct

.thread.i128:                                     ; preds = %.peel.next.i, %.lr.ph.i121
  %i.oq = phi ptr [ %i.og, %.lr.ph.i121 ], [ %i.op, %.peel.next.i ]
  %i.or = phi i64 [ %.pre36.i, %.lr.ph.i121 ], [ %i.oo, %.peel.next.i ]
  %.lcssa30.i = phi i64 [ %.pre.i129, %.lr.ph.i121 ], [ 0, %.peel.next.i ]
  %.025.lcssa.i = phi i64 [ %.0.i, %.lr.ph.i121 ], [ %.025.i, %.peel.next.i ] ; 2 uses
  %i.os = add i64 %.025.lcssa.i, %.lcssa30.i
  store i64 %i.os, ptr %i.ah, align 8, !tbaa !161
  %i.ot = add i64 %.025.lcssa.i, %i.or
  store i64 %i.ot, ptr %i.ag, align 8, !tbaa !160
  br label %_ZN5boost5beast15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE6commitEm.exit

bb.ct:                                            ; preds = %.peel.next.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.op, i64 16 ; 4 uses
  store ptr %i.ou, ptr %i.k, align 8, !tbaa !159
  %i.ov = sub nuw i64 %.025.i, %.sroa.22.0.copyload.i123 ; 2 uses
  store i64 0, ptr %i.ah, align 8, !tbaa !161
  %i.ow = add i64 %.sroa.22.0.copyload.i123, %i.oo ; 3 uses
  store i64 %i.ow, ptr %i.ag, align 8, !tbaa !160
  %.not.i124 = icmp eq ptr %i.ou, %i.oj
  br i1 %.not.i124, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.ct, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i, %bb.cs
  %i.ox = phi ptr [ %i.og, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i ], [ %i.ol, %bb.cs ], [ %i.ou, %bb.ct ] ; 3 uses
  %i.oy = phi i64 [ %.pre36.i, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i ], [ %i.on, %bb.cs ], [ %i.ow, %bb.ct ]
  %i.oz = phi i64 [ %.pre.i129, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i ], [ 0, %bb.cs ], [ 0, %bb.ct ] ; 2 uses
  %.0.lcssa.i125 = phi i64 [ %.0.i, %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i ], [ %i.om, %bb.cs ], [ %i.ov, %bb.ct ]
  %i.pa = load i64, ptr %i.ai, align 8, !tbaa !162
  %i.pb = sub i64 %i.pa, %i.oz
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.pb, i64 %.0.lcssa.i125) ; 2 uses
  %i.pc = add i64 %.sroa.speculated.i, %i.oz      ; 2 uses
  store i64 %i.pc, ptr %i.ah, align 8, !tbaa !161
  %i.pd = add i64 %.sroa.speculated.i, %i.oy
  store i64 %i.pd, ptr %i.ag, align 8, !tbaa !160
  %.sroa.2.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %.sroa.2.0.copyload.i127 = load i64, ptr %.sroa.2.0..sroa_idx.i126, align 8, !tbaa !37
  %i.pe = icmp eq i64 %i.pc, %.sroa.2.0.copyload.i127
  br i1 %i.pe, label %bb.cu, label %_ZN5boost5beast15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE6commitEm.exit

bb.cu:                                            ; preds = %._crit_edge.i
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ox, i64 16 ; 2 uses
  store ptr %i.pf, ptr %i.k, align 8, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  br label %_ZN5boost5beast15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE6commitEm.exit

_ZN5boost5beast15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE6commitEm.exit: ; preds = %_ZN5boost5beast4http10icy_streamINS0_4test12basic_streamINS_4asio15any_io_executorEEEE9read_someINS0_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeE.exit, %.thread.i128, %._crit_edge.i, %bb.cu
  %i.pg = phi ptr [ %i.og, %_ZN5boost5beast4http10icy_streamINS0_4test12basic_streamINS_4asio15any_io_executorEEEE9read_someINS0_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeE.exit ], [ %i.oq, %.thread.i128 ], [ %i.ox, %._crit_edge.i ], [ %i.pf, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #31
  %i.ph = load i64, ptr %i.an, align 8, !tbaa !52 ; 2 uses
  %i.pi = and i64 %i.ph, 1
  %.not.i.i130 = icmp eq i64 %i.pi, 0
  br i1 %.not.i.i130, label %_ZNK5boost6system10error_codecvbEv.exit.backedge, label %bb.cv

bb.cv:                                            ; preds = %_ZN5boost5beast15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE6commitEm.exit
  %i.pj = icmp ne i64 %i.ph, 1
  %i.pk = load i32, ptr %45, align 8
  %i.pl = icmp ne i32 %i.pk, 0
  %or.cond679 = select i1 %i.pj, i1 true, i1 %i.pl
  br i1 %or.cond679, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %_ZNK5boost6system10error_codecvbEv.exit.backedge

_ZNK5boost6system10error_codecvbEv.exit.backedge: ; preds = %bb.cv, %_ZN5boost5beast15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE6commitEm.exit
  br label %_ZNK5boost6system10error_codecvbEv.exit, !llvm.loop !349

bb.cw:                                            ; preds = %bb.e
  %i.pm = landingpad { ptr, i32 }
          cleanup
  br label %.body94

bb.cx:                                            ; preds = %bb.ac
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %.body104

.body104:                                         ; preds = %bb.am, %bb.cx
  %eh.lpad-body105 = phi { ptr, i32 } [ %i.pn, %bb.cx ], [ %.pn.i101, %bb.am ]
  call void @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %44) #31
  br label %.body96

.body96:                                          ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit46.1.i, %.body.i, %.body104
  %.pn = phi { ptr, i32 } [ %eh.lpad-body105, %.body104 ], [ %i.du, %.body.i ], [ %.pn.pn.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit46.1.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #31
  br label %.body94

.loopexit:                                        ; preds = %.preheader.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body110

.loopexit.split-lp.loopexit:                      ; preds = %bb.cr
  %lpad.loopexit682 = landingpad { ptr, i32 }
          cleanup
  br label %.body110

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.bt
  %lpad.loopexit.split-lp683 = landingpad { ptr, i32 }
          cleanup
  br label %.body110

.body110:                                         ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.bv
  %eh.lpad-body111 = phi { ptr, i32 } [ %i.lh, %bb.bv ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit682, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp683, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #31
  br label %.body134

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.cv
  %i.po = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error17get_misc_categoryEv()
          to label %.noexc.i131 unwind label %bb.cy ; 4 uses

.noexc.i131:                                      ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8 ; 2 uses
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !50, !noalias !413
  %i.pr = and i64 %i.pq, -2
  %switch.i.i.i.i = icmp eq i64 %i.pr, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

bb.cy:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.ps = landingpad { ptr, i32 }
          catch ptr null
  %i.pt = extractvalue { ptr, i32 } %i.ps, 0
  call void @__clang_call_terminate(ptr %i.pt) #32
  unreachable

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %.noexc.i131
  %i.pu = load ptr, ptr %i.po, align 8, !tbaa !45, !noalias !413
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 48
  %i.pw = load ptr, ptr %i.pv, align 8, !noalias !413
  %i.px = call noundef zeroext i1 %i.pw(ptr noundef nonnull align 8 dereferenceable(52) %i.po, i32 noundef 2) #31, !noalias !413, !inline_history !2 ; 0 uses
  br label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %.noexc.i131
  %i.py = load i64, ptr %i.an, align 8, !tbaa !52 ; 3 uses
  %i.pz = icmp eq i64 %i.py, 1
  br i1 %i.pz, label %bb.dd, label %_ZNK5boost6system10error_code5valueEv.exit17.i

_ZNK5boost6system10error_code5valueEv.exit17.i:   ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
end_hunk_0
begin_hunk_1_@_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS3_14mutable_bufferEEEmRKT_RNS_6system10error_codeE:bb.a
  %i.au = add i64 %i.at, %i.aj
  store i64 %i.au, ptr %i.as, align 8, !tbaa !240
  br label %bb.q

bb.l:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load i8, ptr %i.k, align 8, !tbaa !154, !range !71, !noundef !72
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.m, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %3, align 8, !tbaa !153   ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i15, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ay) #31 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.av

_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS5_14mutable_bufferEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESA_.exit.thread: ; preds = %_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS3_14mutable_bufferEEEmRKT_RNS_6system10error_codeEENKUlvE_clEv.exit.i, %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS5_14mutable_bufferEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESA_.exit
  %i.ba = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error17get_misc_categoryEv()
          to label %.noexc.i unwind label %bb.o   ; 4 uses

.noexc.i:                                         ; preds = %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS5_14mutable_bufferEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESA_.exit.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !50, !noalias !643
  %i.bd = and i64 %i.bc, -2
  %switch.i.i.i.i = icmp eq i64 %i.bd, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

bb.o:                                             ; preds = %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS5_14mutable_bufferEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESA_.exit.thread
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #32
  unreachable

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %.noexc.i
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !45, !noalias !643
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !643
  %i.bj = call noundef zeroext i1 %i.bi(ptr noundef nonnull align 8 dereferenceable(52) %i.ba, i32 noundef 2) #31, !noalias !643, !inline_history !2
  br i1 %i.bj, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %bb.p

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %.noexc.i, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.bk = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.bl = or disjoint i64 %i.bk, ptrtoint (ptr @_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS3_14mutable_bufferEEEmRKT_RNS_6system10error_codeEE7loc_bb_ to i64)
  store i64 2, ptr %2, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ba, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bl, ptr %.sroa.5.0..sroa_idx.i16, align 8, !tbaa !37
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit
  %.0 = phi i64 [ %i.aj, %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit ], [ 0, %bb.p ]
  %i.bm = load i8, ptr %i.k, align 8, !tbaa !154, !range !71, !noundef !72
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.r, label %_ZNSt11unique_lockISt5mutexED2Ev.exit18

bb.r:                                             ; preds = %bb.q
  %i.bo = load ptr, ptr %3, align 8, !tbaa !153   ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i17, label %_ZNSt11unique_lockISt5mutexED2Ev.exit18, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bo) #31 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18

_ZNSt11unique_lockISt5mutexED2Ev.exit18:          ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %_ZNSt11unique_lockISt5mutexED2Ev.exit18, %bb.d
  %.1 = phi i64 [ %.0, %_ZNSt11unique_lockISt5mutexED2Ev.exit18 ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_15buffers_adaptorISt5arrayINS3_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_lock", align 8  ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !127    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !238
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !238
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !239  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN5boost5beast4test10fail_count4failERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.g, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !169    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !170  ; 3 uses
  %.not8.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not8.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %.sroa.6.0..sroa_idx.i.i.peel.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.0.copyload.i.i.peel.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.peel.i.i, align 8, !tbaa !37
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.copyload.i.i.peel.i.i, i64 %i.l) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.j
  br i1 %i.o, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.lr.ph.i.i.i, %.peel.next.i.i
  %.010.i.i.i = phi i64 [ %i.r, %.peel.next.i.i ], [ %i.m, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.44.09.i.i.i = phi ptr [ %i.p, %.peel.next.i.i ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.44.09.i.i.i, i64 8
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.44.09.i.i.i, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.j
  %i.r = add i64 %.sroa.6.0.copyload.i.i.i.i, %.010.i.i.i
  br i1 %i.q, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit, label %.peel.next.i.i, !llvm.loop !3

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit: ; preds = %.peel.next.i.i, %.lr.ph.i.i.i
  %.010.i.lcssa.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %.010.i.i.i, %.peel.next.i.i ]
  %.sroa.6.0.i.i.lcssa.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i ], [ %.sroa.6.0.copyload.i.i.i.i, %.peel.next.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !37
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.6.0.i.i.lcssa.i.i, i64 %i.t)
  %i.u = sub i64 0, %.010.i.lcssa.i.i
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i.i, %i.u
  br i1 %i.v, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit.thread, label %bb.d

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit.thread: ; preds = %bb.c, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.x

bb.d:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.w = load ptr, ptr %0, align 8, !tbaa !127
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72 ; 2 uses
  store ptr %i.x, ptr %3, align 8, !tbaa !153
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.x) #31 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.z) #33
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.d
  store i8 1, ptr %i.y, align 8, !tbaa !154
  %i.aa = load ptr, ptr %0, align 8, !tbaa !127   ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !236 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !149 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.af, %i.ad
  br i1 %.not.i2.i, label %_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_15buffers_adaptorISt5arrayINS3_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeEENKUlvE_clEv.exit.i, label %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESG_.exit

_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_15buffers_adaptorISt5arrayINS3_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeEENKUlvE_clEv.exit.i: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %.noexc
  %i.ag = phi ptr [ %i.aj, %.noexc ], [ %i.aa, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 216
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !158
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %bb.f, label %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESG_.exit.thread

bb.f:                                             ; preds = %_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_15buffers_adaptorISt5arrayINS3_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeEENKUlvE_clEv.exit.i
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(9) %3)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.f
  %i.aj = load ptr, ptr %0, align 8, !tbaa !127   ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !236 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !149 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %i.al
  br i1 %.not.i.i, label %_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_15buffers_adaptorISt5arrayINS3_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeEENKUlvE_clEv.exit.i, label %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESG_.exit, !llvm.loop !644

_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESG_.exit: ; preds = %.noexc, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.ao = phi ptr [ %i.af, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ], [ %i.an, %.noexc ] ; 3 uses
  %i.ap = phi ptr [ %i.ad, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ], [ %i.al, %.noexc ] ; 4 uses
  %i.aq = phi ptr [ %i.aa, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ], [ %i.aj, %.noexc ] ; 2 uses
  %.not11 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not11, label %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESG_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESG_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 264
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !148 ; 2 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !169   ; 2 uses
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !170 ; 2 uses
  %.not18.i.i = icmp ne i64 %i.as, 0
  %i.av = icmp ne ptr %i.at, %i.au
  %or.cond19.i.i = select i1 %.not18.i.i, i1 %i.av, i1 false
  br i1 %or.cond19.i.i, label %.lr.ph.i.i, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.aw = ptrtoint ptr %i.ao to i64
  %i.ax = ptrtoint ptr %i.ap to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %spec.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.as)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %.lr.ph.i.i
  %.023.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bi, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ]
  %.sroa.414.022.i.i = phi ptr [ %i.at, %.lr.ph.i.i ], [ %i.bd, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 4 uses
  %.sroa.09.021.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %i.bj, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.6.020.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i ], [ %i.bk, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %.sroa.414.022.i.i, align 8, !tbaa !75 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.414.022.i.i, i64 8
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !37 ; 3 uses
  %4 = load ptr, ptr %1, align 8, !tbaa !169
  %i.az = icmp eq ptr %.sroa.414.022.i.i, %4
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = load i64, ptr %i.k, align 8, !tbaa !171
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ba, i64 %.sroa.6.0.copyload.i.i.i) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 %..i.i.i.i
  %i.bc = sub i64 %.sroa.6.0.copyload.i.i.i, %..i.i.i.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.03.0.i.i.i = phi ptr [ %i.bb, %bb.i ], [ %.sroa.03.0.copyload.i.i.i, %bb.h ]
  %.sroa.6.0.i.i.i = phi i64 [ %i.bc, %bb.i ], [ %.sroa.6.0.copyload.i.i.i, %bb.h ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.414.022.i.i, i64 16 ; 3 uses
  %i.be = load ptr, ptr %i.i, align 8, !tbaa !170
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = load i64, ptr %i.s, align 8, !tbaa !37
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.6.0.i.i.i, i64 %i.bg)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.6.1.i.i.i = phi i64 [ %.sroa.speculated.i.i.i, %bb.k ], [ %.sroa.6.0.i.i.i, %bb.j ] ; 2 uses
  %i.bh = call i64 @llvm.umin.i64(i64 %.sroa.6.1.i.i.i, i64 %.sroa.6.020.i.i) ; 4 uses
  %.not.i.i.i12 = icmp eq i64 %.sroa.6.1.i.i.i, 0
  br i1 %.not.i.i.i12, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.03.0.i.i.i, ptr align 1 %.sroa.09.021.i.i, i64 %i.bh, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i: ; preds = %bb.m, %bb.l
  %i.bi = add i64 %i.bh, %.023.i.i                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i.i, i64 %i.bh
  %i.bk = sub nuw i64 %.sroa.6.020.i.i, %i.bh     ; 2 uses
  %.not.i.i13 = icmp ne i64 %i.bk, 0
  %i.bl = icmp ne ptr %i.bd, %i.au
  %or.cond.i.i = select i1 %.not.i.i13, i1 %i.bl, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit.loopexit, !llvm.loop !11

_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit.loopexit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i
  %.pre24 = load ptr, ptr %0, align 8, !tbaa !127 ; 3 uses
  %.phi.trans.insert25 = getelementptr inbounds nuw i8, ptr %.pre24, i64 120
  %.pre26 = load ptr, ptr %.phi.trans.insert25, align 8, !tbaa !236
  %.phi.trans.insert27 = getelementptr inbounds nuw i8, ptr %.pre24, i64 128
  %.pre28 = load ptr, ptr %.phi.trans.insert27, align 8, !tbaa !149
  br label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit

_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit: ; preds = %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit.loopexit, %bb.g
  %i.bm = phi ptr [ %i.ao, %bb.g ], [ %.pre28, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit.loopexit ]
  %i.bn = phi ptr [ %i.ap, %bb.g ], [ %.pre26, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit.loopexit ] ; 2 uses
  %i.bo = phi ptr [ %i.aq, %bb.g ], [ %.pre24, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit.loopexit ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %bb.g ], [ %i.bi, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit.loopexit ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 120
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  %.not.i14 = icmp ult i64 %.0.lcssa.i.i, %i.bs
  br i1 %.not.i14, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 128
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !237 ; 2 uses
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !149
  br label %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit

bb.o:                                             ; preds = %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.0.lcssa.i.i
  br label %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit

_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit: ; preds = %bb.n, %bb.o
  %.sink.i = phi ptr [ %i.bw, %bb.o ], [ %i.bv, %bb.n ]
  store ptr %.sink.i, ptr %i.bp, align 8, !tbaa !236
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 240 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !240
  %i.bz = add i64 %i.by, %.0.lcssa.i.i
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !240
  br label %bb.u

bb.p:                                             ; preds = %bb.f
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load i8, ptr %i.y, align 8, !tbaa !154, !range !71, !noundef !72
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.q, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.cd = load ptr, ptr %3, align 8, !tbaa !153   ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i15, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cd) #31 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.ca

_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESG_.exit.thread: ; preds = %_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_15buffers_adaptorISt5arrayINS3_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeEENKUlvE_clEv.exit.i, %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESG_.exit
  %i.cf = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error17get_misc_categoryEv()
          to label %.noexc.i unwind label %bb.s   ; 4 uses

.noexc.i:                                         ; preds = %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESG_.exit.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !50, !noalias !647
  %i.ci = and i64 %i.ch, -2
  %switch.i.i.i.i = icmp eq i64 %i.ci, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

bb.s:                                             ; preds = %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESG_.exit.thread
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #32
  unreachable

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %.noexc.i
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !45, !noalias !647
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !647
  %i.co = call noundef zeroext i1 %i.cn(ptr noundef nonnull align 8 dereferenceable(52) %i.cf, i32 noundef 2) #31, !noalias !647, !inline_history !2
  br i1 %i.co, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %bb.t

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %.noexc.i, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %bb.t

bb.t:                                             ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.cp = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.cq = or disjoint i64 %i.cp, ptrtoint (ptr @_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_15buffers_adaptorISt5arrayINS3_14mutable_bufferELm2EEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeEE7loc_bb_ to i64)
  store i64 2, ptr %2, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cf, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.cq, ptr %.sroa.5.0..sroa_idx.i16, align 8, !tbaa !37
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit
  %.0 = phi i64 [ %.0.lcssa.i.i, %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit ], [ 0, %bb.t ]
  %i.cr = load i8, ptr %i.y, align 8, !tbaa !154, !range !71, !noundef !72
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.v, label %_ZNSt11unique_lockISt5mutexED2Ev.exit18

bb.v:                                             ; preds = %bb.u
  %i.ct = load ptr, ptr %3, align 8, !tbaa !153   ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i17, label %_ZNSt11unique_lockISt5mutexED2Ev.exit18, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ct) #31 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18

_ZNSt11unique_lockISt5mutexED2Ev.exit18:          ; preds = %bb.u, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %_ZNSt11unique_lockISt5mutexED2Ev.exit18, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit.thread
  %.1 = phi i64 [ %.0, %_ZNSt11unique_lockISt5mutexED2Ev.exit18 ], [ 0, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit.thread ], [ 0, %bb.b ]
  ret i64 %.1
}

declare noundef zeroext i1 @_ZN5boost5beast4test10fail_count4failERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

declare void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast9unit_test6runner4passIvEEvv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #33
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !102, !range !71, !noundef !72
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %._crit_edge.i.i, label %bb.i

._crit_edge.i.i:                                  ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !41
  store i8 0, ptr %i.f, align 8, !tbaa !40
  %i.h = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.h) #33
          to label %.noexc7 unwind label %bb.h

.noexc7:                                          ; preds = %bb.c
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i: ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %i.c, align 8, !tbaa !102, !range !71, !noundef !72
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 0 uses
  br label %.body

bb.f:                                             ; preds = %bb.d, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i
  store i8 0, ptr %i.c, align 8, !tbaa !102
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 0, ptr %i.p, align 2, !tbaa !103
  %i.q = load ptr, ptr %0, align 8, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
end_hunk_1
begin_hunk_2_@_ZN5boost5beast9unit_test6runner4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.l

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 1, ptr %i.ag, align 1, !tbaa !657
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 1, ptr %i.ah, align 2, !tbaa !103
  %i.ai = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 0 uses
  ret void

bb.k:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %.pn6 = phi { ptr, i32 } [ %i.aj, %bb.k ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ]
  %i.ak = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 0 uses
  resume { ptr, i32 } %.pn6
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast10async_baseIZNS0_4http15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEES6_EUlNS_6system10error_codeEmE_NS_4asio15any_io_executorESaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseIZNS0_4http15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEES6_EUlNS_6system10error_codeEmE_NS_4asio15any_io_executorESaIvEEE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i8, ptr %i.a, align 8, !tbaa !182, !range !71, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #31
  br label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit

_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.e) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http10icy_streamINS0_4test12basic_streamINS_4asio15any_io_executorEEEE3ops7read_opINS0_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEZNS1_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESL_EUlNS_6system10error_codeEmE_EclESN_mb(ptr noundef nonnull align 8 dereferenceable(225) %0, ptr noundef byval(%"class.boost::system::error_code") align 8 %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::beast::test::basic_stream<>::run_read_op", align 8 ; 4 uses
  %5 = alloca %"struct.boost::beast::test::basic_stream<>::run_read_op", align 8 ; 4 uses
  %i.a = alloca [3 x i8], align 1                 ; 8 uses
  %6 = alloca %"struct.boost::beast::test::basic_stream<>::run_read_op", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 5 uses
  %8 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 4 uses
  store i64 %2, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 9 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !224
  switch i32 %i.d, label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit.sink.split [
    i32 62, label %bb.x
    i32 0, label %bb.b
    i32 9, label %bb.e
    i32 47, label %_ZNK5boost6system10error_codecvbEv.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !661, !nonnull !72, !align !74 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 41
  %i.h = load i8, ptr %i.g, align 1, !tbaa !126, !range !71, !noundef !72
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.j, %bb.b
  store i32 9, ptr %i.c, align 4, !tbaa !224
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !661, !nonnull !72, !align !74 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.o = load i8, ptr %i.n, align 8, !tbaa !125
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = sub nsw i64 3, %i.p
  store ptr %i.q, ptr %7, align 8, !tbaa !174
  store i64 %i.r, ptr %i.k, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store ptr %i.l, ptr %6, align 8, !tbaa !662
  call void @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE11run_read_opclINS0_4http10icy_streamIS5_E3ops7read_opINS0_15buffers_adaptorISt5arrayINS3_14mutable_bufferELm2EEE8subrangeILb1EEEZNS8_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESN_EUlNS_6system10error_codeEmE_EESF_EEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(225) %0, ptr noundef nonnull align 8 dereferenceable(16) %7), !inline_history !658
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.s = load i32, ptr %i.c, align 4, !tbaa !224
  %.not7 = icmp eq i32 %i.s, 0
  br i1 %.not7, label %bb.d, label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.t = trunc i64 %2 to i8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !661, !nonnull !72, !align !74 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !125
  %i.y = add i8 %i.x, %i.t                        ; 5 uses
  store i8 %i.y, ptr %i.w, align 8, !tbaa !125
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !52  ; 2 uses
  %i.ab = and i64 %i.aa, 1
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread47, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp ne i64 %i.aa, 1
  %i.ad = load i32, ptr %1, align 8
  %i.ae = icmp ne i32 %i.ad, 0
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ae
  br i1 %or.cond, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %_ZNK5boost6system10error_codecvbEv.exit.thread47

_ZNK5boost6system10error_codecvbEv.exit.thread47: ; preds = %bb.f, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit.i

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit.i: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread47
  %i.ag = tail call i8 @llvm.umin.i8(i8 %i.y, i8 3)
  %i.ah = zext nneg i8 %i.ag to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 8 %i.af, i64 %i.ah, i1 false)
  %.0..0..0..0..0..i = load i8, ptr %i.a, align 1
  %.not.i = icmp eq i8 %.0..0..0..0..0..i, 73
  br i1 %.not.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit.i
  %i.ai = icmp ne i8 %i.y, 1
  %.1..1..1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.1..1..1..1..1..i = load i8, ptr %.1..1..1..1..1..sroa_idx, align 1
  %i.aj = icmp ne i8 %.1..1..1..1..1..i, 67
  %or.cond7.i = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond7.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = icmp ugt i8 %i.y, 2
  br i1 %i.ak, label %bb.i, label %bb.j

.thread:                                          ; preds = %bb.g, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %.2..2..2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.2..2..2..2..2..i = load i8, ptr %.2..2..2..2..2..sroa_idx, align 1
  %i.al = icmp eq i8 %.2..2..2..2..2..i, 89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.al, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit, label %bb.k

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit: ; preds = %bb.i
  store i64 3543824036068086856, ptr %i.af, align 8
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !661, !nonnull !72, !align !74 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i8 8, ptr %i.an, align 8, !tbaa !125
  br label %bb.k

bb.j:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread47, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.k:                                             ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit, %bb.i, %.thread
  %i.ao = phi ptr [ %i.am, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit ], [ %i.v, %bb.i ], [ %i.v, %.thread ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 41
  store i8 0, ptr %i.ap, align 1, !tbaa !126
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %i.aq = phi ptr [ %i.ao, %bb.k ], [ %i.f, %bb.b ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.at = load i8, ptr %i.as, align 8, !tbaa !125 ; 3 uses
  %.not8 = icmp eq i8 %i.at, 0
  br i1 %.not8, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !169 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !170 ; 2 uses
  %.not = icmp eq ptr %i.av, %i.ax
  br i1 %.not, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.ay = zext i8 %i.at to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %.lr.ph.i.i
  %.021.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bl, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ]
  %.sroa.07.020.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %i.bm, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.6.019.i.i = phi i64 [ %i.ay, %.lr.ph.i.i ], [ %i.bn, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.412.018.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %i.bg, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 4 uses
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %.sroa.412.018.i.i, align 8, !tbaa !75 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.412.018.i.i, i64 8
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !37 ; 3 uses
  %9 = load ptr, ptr %i.au, align 8, !tbaa !169
  %i.bc = icmp eq ptr %.sroa.412.018.i.i, %9
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = load i64, ptr %i.ba, align 8, !tbaa !171
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %.sroa.6.0.copyload.i.i.i) ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 %..i.i.i.i
  %i.bf = sub i64 %.sroa.6.0.copyload.i.i.i, %..i.i.i.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.03.0.i.i.i = phi ptr [ %i.be, %bb.o ], [ %.sroa.03.0.copyload.i.i.i, %bb.n ]
  %.sroa.6.0.i.i.i = phi i64 [ %i.bf, %bb.o ], [ %.sroa.6.0.copyload.i.i.i, %bb.n ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.412.018.i.i, i64 16 ; 3 uses
  %i.bh = load ptr, ptr %i.aw, align 8, !tbaa !170
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bj = load i64, ptr %i.bb, align 8, !tbaa !37
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.6.0.i.i.i, i64 %i.bj)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.6.1.i.i.i = phi i64 [ %.sroa.speculated.i.i.i, %bb.q ], [ %.sroa.6.0.i.i.i, %bb.p ] ; 2 uses
  %i.bk = tail call i64 @llvm.umin.i64(i64 %.sroa.6.1.i.i.i, i64 %.sroa.6.019.i.i) ; 4 uses
  %.not.i.i.i14 = icmp eq i64 %.sroa.6.1.i.i.i, 0
  br i1 %.not.i.i.i14, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.03.0.i.i.i, ptr align 1 %.sroa.07.020.i.i, i64 %i.bk, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i: ; preds = %bb.s, %bb.r
  %i.bl = add i64 %i.bk, %.021.i.i                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.07.020.i.i, i64 %i.bk
  %i.bn = sub nuw nsw i64 %.sroa.6.019.i.i, %i.bk ; 2 uses
  %.not.i.i15 = icmp ne i64 %i.bn, 0
  %i.bo = icmp ne ptr %i.bg, %i.ax
  %or.cond.i.i = and i1 %i.bo, %.not.i.i15
  br i1 %or.cond.i.i, label %bb.n, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit.loopexit, !llvm.loop !0

_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit.loopexit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i
  %.pre = load ptr, ptr %i.ar, align 8, !tbaa !661 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre72 = load i8, ptr %.phi.trans.insert, align 8, !tbaa !125
  br label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit

_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit: ; preds = %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit.loopexit, %bb.m
  %i.bp = phi i8 [ %i.at, %bb.m ], [ %.pre72, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit.loopexit ]
  %i.bq = phi ptr [ %i.aq, %bb.m ], [ %.pre, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit.loopexit ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ 0, %bb.m ], [ %i.bl, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit.loopexit ] ; 5 uses
  store i64 %.0.lcssa.i.i, ptr %i.b, align 8, !tbaa !37
  %i.br = trunc i64 %.0.lcssa.i.i to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bt = sub i8 %i.bp, %i.br
  store i8 %i.bt, ptr %i.bs, align 8, !tbaa !125
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.0.lcssa.i.i
  %i.bw = sub i64 8, %.0.lcssa.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr nonnull align 1 %i.bv, i64 %i.bw, i1 false)
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread

bb.t:                                             ; preds = %bb.l
  store i32 47, ptr %i.c, align 4, !tbaa !224
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.u
  %i.by = load ptr, ptr %i.ar, align 8, !tbaa !661, !nonnull !72, !align !74
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %i.by, ptr %5, align 8, !tbaa !662
  call void @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE11run_read_opclINS0_4http10icy_streamIS5_E3ops7read_opINS0_15buffers_adaptorISt5arrayINS3_14mutable_bufferELm2EEE8subrangeILb1EEEZNS8_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESN_EUlNS_6system10error_codeEmE_EESJ_EEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(225) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bx), !inline_history !659
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.bz = load i32, ptr %i.c, align 4, !tbaa !224
  %.not10 = icmp eq i32 %i.bz, 0
  br i1 %.not10, label %bb.u, label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.f, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit, %bb.a
  %i.ca = phi i64 [ %2, %bb.f ], [ %.0.lcssa.i.i, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit ], [ %2, %bb.a ]
  br i1 %3, label %bb.y, label %bb.v

bb.v:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !242
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !663
  store i32 62, ptr %i.c, align 4, !tbaa !224
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.w
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !661, !nonnull !72, !align !74
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.ce, ptr %4, align 8, !tbaa !662
  call void @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE11run_read_opclINS0_4http10icy_streamIS5_E3ops7read_opINS0_15buffers_adaptorISt5arrayINS3_14mutable_bufferELm2EEE8subrangeILb1EEEZNS8_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESN_EUlNS_6system10error_codeEmE_EESF_EEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(225) %0, ptr noundef nonnull align 8 dereferenceable(16) %8), !inline_history !658
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.cf = load i32, ptr %i.c, align 4, !tbaa !224
  %.not12 = icmp eq i32 %i.cf, 0
  br i1 %.not12, label %bb.w, label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit

bb.x:                                             ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.5.0.copyload4.i = load i64, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !37 ; 3 uses
  %switch.i.i = icmp ult i64 %.sroa.5.0.copyload4.i, 2
  %i.ch = and i64 %.sroa.5.0.copyload4.i, 1
  %i.ci = or disjoint i64 %i.ch, ptrtoint (ptr @_ZZN5boost5beast4http10icy_streamINS0_4test12basic_streamINS_4asio15any_io_executorEEEE3ops7read_opINS0_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEZNS1_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESL_EUlNS_6system10error_codeEmE_EclESN_mbE7loc_bb_ to i64)
  %.sroa.5.0.i = select i1 %switch.i.i, i64 %.sroa.5.0.copyload4.i, i64 %i.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !37
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !663
  store i64 %i.ck, ptr %i.b, align 8, !tbaa !37
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNK5boost6system10error_codecvbEv.exit.thread
  invoke void @_ZN5boost5beast10async_baseIZNS0_4http15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEES6_EUlNS_6system10error_codeEmE_NS_4asio15any_io_executorESaIvEE12complete_nowIJRS8_RmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit.sink.split unwind label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit17

_ZN5boost4asio6detail13coroutine_refD2Ev.exit.sink.split: ; preds = %bb.a, %bb.y
  store i32 -1, ptr %i.c, align 4, !tbaa !224
  br label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit

_ZN5boost4asio6detail13coroutine_refD2Ev.exit:    ; preds = %bb.w, %bb.u, %bb.d, %_ZN5boost4asio6detail13coroutine_refD2Ev.exit.sink.split
  ret void

_ZN5boost4asio6detail13coroutine_refD2Ev.exit17:  ; preds = %bb.y
  %i.cl = landingpad { ptr, i32 }
          cleanup
  store i32 -1, ptr %i.c, align 4, !tbaa !224
  resume { ptr, i32 } %i.cl
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast10async_baseIZNS0_4http15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEES6_EUlNS_6system10error_codeEmE_NS_4asio15any_io_executorESaIvEE18before_invoke_hookEv(ptr noundef nonnull align 8 dereferenceable(148) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http10icy_streamINS0_4test12basic_streamINS_4asio15any_io_executorEEEE3ops7read_opINS0_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEZNS1_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESL_EUlNS_6system10error_codeEmE_ED0Ev(ptr noundef nonnull align 8 dereferenceable(225) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseIZNS0_4http15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEES6_EUlNS_6system10error_codeEmE_NS_4asio15any_io_executorESaIvEEE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i8, ptr %i.a, align 8, !tbaa !182, !range !71, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5boost5beast10async_baseIZNS0_4http15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEES6_EUlNS_6system10error_codeEmE_NS_4asio15any_io_executorESaIvEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #31, !inline_history !188
  br label %_ZN5boost5beast10async_baseIZNS0_4http15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEES6_EUlNS_6system10error_codeEmE_NS_4asio15any_io_executorESaIvEED2Ev.exit

_ZN5boost5beast10async_baseIZNS0_4http15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEES6_EUlNS_6system10error_codeEmE_NS_4asio15any_io_executorESaIvEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.e) #31, !inline_history !188
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast10async_baseIZNS0_4http15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEES6_EUlNS_6system10error_codeEmE_NS_4asio15any_io_executorESaIvEED0Ev(ptr noundef nonnull align 8 dereferenceable(148) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseIZNS0_4http15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEES6_EUlNS_6system10error_codeEmE_NS_4asio15any_io_executorESaIvEEE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i8, ptr %i.a, align 8, !tbaa !182, !range !71, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5boost5beast10async_baseIZNS0_4http15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEES6_EUlNS_6system10error_codeEmE_NS_4asio15any_io_executorESaIvEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #31, !inline_history !188
  br label %_ZN5boost5beast10async_baseIZNS0_4http15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEES6_EUlNS_6system10error_codeEmE_NS_4asio15any_io_executorESaIvEED2Ev.exit

_ZN5boost5beast10async_baseIZNS0_4http15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEES6_EUlNS_6system10error_codeEmE_NS_4asio15any_io_executorESaIvEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.e) #31, !inline_history !188
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 152) #34
  ret void
}

declare void @_ZNK5boost4asio15any_io_executor6preferINS0_9execution6detail16outstanding_work9tracked_tILi0EEEEES1_RKT_NS0_10constraintIXsr6traits13prefer_memberIRKNS3_12any_executorIJNS3_12context_as_tIRNS0_17execution_contextEEENS4_8blocking7never_tILi0EEENS3_11prefer_onlyINSH_10possibly_tILi0EEEEENSK_IS7_EENSK_INS5_11untracked_tILi0EEEEENSK_INS4_12relationship6fork_tILi0EEEEENSK_INSS_14continuation_tILi0EEEEEEEESA_EE8is_validEiE4typeE(ptr dead_on_unwind writable sret(%"class.boost::asio::any_io_executor") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 1 dereferenceable(1), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast10async_baseIZNS0_4http15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEES6_EUlNS_6system10error_codeEmE_NS_4asio15any_io_executorESaIvEE12complete_nowIJRS8_RmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = load ptr, ptr %i.a, align 8
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !182, !range !71, !noundef !72
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.f) #31
  store i8 0, ptr %i.c, align 8, !tbaa !182
  br label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit

_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %2, align 8, !tbaa !37     ; 4 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !664, !nonnull !72, !align !74
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !665, !nonnull !72, !align !74 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !159  ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !108  ; 2 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %_ZZN5boost5beast4http15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEES5_ENKUlNS_6system10error_codeEmE_clES7_m.exit, label %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i.i

_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i.i: ; preds = %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -16 ; 3 uses
  %.not24.i.i = icmp eq ptr %i.m, %i.q
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 7 uses
  br i1 %.not24.i.i, label %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.._crit_edge_crit_edge.i.i, label %.lr.ph.i.i

_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.._crit_edge_crit_edge.i.i: ; preds = %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i.i
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !161
  %.phi.trans.insert35.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %.pre36.i.i = load i64, ptr %.phi.trans.insert35.i.i, align 8, !tbaa !160
  br label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt4prevIPKN5boost4asio14mutable_bufferEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 4 uses
  %.promoted27.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !161 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5boost4asio6detail17executor_functionC2INS1_7binder0INS1_14append_handlerINS_5beast4test12basic_streamINS0_15any_io_executorEE7read_opINS6_4http10icy_streamISA_E3ops7read_opINS6_15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEEZNSC_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESR_EUlNS_6system10error_codeEmE_EESN_E6lambdaEJST_EEEEESaIvEEET_RKT0_:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !182, !range !71, !noundef !72 ; 2 uses
  %i.m = trunc nuw i8 %i.l to i1
  store i8 %i.l, ptr %i.j, align 8, !tbaa !182
  br i1 %i.m, label %bb.b, label %_ZN5boost5beast4http10icy_streamINS0_4test12basic_streamINS_4asio15any_io_executorEEEE3ops7read_opINS0_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEZNS1_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESL_EUlNS_6system10error_codeEmE_EC2EOSP_.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.o) #31, !inline_history !759
  store i8 0, ptr %i.k, align 8, !tbaa !182
  br label %_ZN5boost5beast4http10icy_streamINS0_4test12basic_streamINS_4asio15any_io_executorEEEE3ops7read_opINS0_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEZNS1_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESL_EUlNS_6system10error_codeEmE_EC2EOSP_.exit.i.i.i.i

_ZN5boost5beast4http10icy_streamINS0_4test12basic_streamINS_4asio15any_io_executorEEEE3ops7read_opINS0_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEZNS1_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESL_EUlNS_6system10error_codeEmE_EC2EOSP_.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.r = load <2 x i32>, ptr %i.q, align 8, !tbaa !40
  store <2 x i32> %i.r, ptr %i.p, align 8, !tbaa !40
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast4http10icy_streamINS0_4test12basic_streamINS_4asio15any_io_executorEEEE3ops7read_opINS0_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEZNS1_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESL_EUlNS_6system10error_codeEmE_EE, i64 16), ptr %i.e, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.s, ptr noundef nonnull align 8 dereferenceable(73) %i.t, i64 73, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.w = load <2 x ptr>, ptr %i.v, align 8, !tbaa !75
  store <2 x ptr> %i.w, ptr %i.u, align 8, !tbaa !75
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !tbaa.struct !266
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 280
  tail call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(113) %i.z, ptr noundef nonnull align 8 dereferenceable(113) %i.aa) #31, !inline_history !759
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !182, !range !71, !noundef !72 ; 2 uses
  %i.ae = trunc nuw i8 %i.ad to i1
  store i8 %i.ad, ptr %i.ab, align 8, !tbaa !182
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost5beast4http10icy_streamINS0_4test12basic_streamINS_4asio15any_io_executorEEEE3ops7read_opINS0_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEZNS1_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESL_EUlNS_6system10error_codeEmE_EC2EOSP_.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 336
  tail call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.ag) #31, !inline_history !759
  store i8 0, ptr %i.ac, align 8, !tbaa !182
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5boost5beast4http10icy_streamINS0_4test12basic_streamINS_4asio15any_io_executorEEEE3ops7read_opINS0_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEZNS1_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESL_EUlNS_6system10error_codeEmE_EC2EOSP_.exit.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 400
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !tbaa.struct !242
  store ptr @_ZN5boost4asio6detail17executor_function8completeINS1_7binder0INS1_14append_handlerINS_5beast4test12basic_streamINS0_15any_io_executorEE7read_opINS6_4http10icy_streamISA_E3ops7read_opINS6_15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEEZNSC_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESR_EUlNS_6system10error_codeEmE_EESN_E6lambdaEJST_EEEEESaIvEEEvPNS2_9impl_baseEb, ptr %i.c, align 8, !tbaa !205
  store ptr %i.c, ptr %0, align 8, !tbaa !203
  store ptr null, ptr %i.a, align 8, !tbaa !270
  invoke void @_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4test12basic_streamINS0_15any_io_executorEE7read_opINS6_4http10icy_streamISA_E3ops7read_opINS6_15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEEZNSC_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESR_EUlNS_6system10error_codeEmE_EESN_E6lambdaEJST_EEEEESaIvEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4test12basic_streamINS0_15any_io_executorEE7read_opINS6_4http10icy_streamISA_E3ops7read_opINS6_15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEEZNSC_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESR_EUlNS_6system10error_codeEmE_EESN_E6lambdaEJST_EEEEESaIvEE3ptrD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #32
  unreachable

_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4test12basic_streamINS0_15any_io_executorEE7read_opINS6_4http10icy_streamISA_E3ops7read_opINS6_15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEEZNSC_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESR_EUlNS_6system10error_codeEmE_EESN_E6lambdaEJST_EEEEESaIvEE3ptrD2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail22executor_function_view8completeINS1_7binder0INS1_14append_handlerINS_5beast4test12basic_streamINS0_15any_io_executorEE7read_opINS6_4http10icy_streamISA_E3ops7read_opINS6_15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEEZNSC_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESR_EUlNS_6system10error_codeEmE_EESN_E6lambdaEJST_EEEEEEEvPv(ptr noundef %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  tail call void @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE7read_opINS0_4http10icy_streamIS5_E3ops7read_opINS0_15buffers_adaptorISt5arrayINS3_14mutable_bufferELm2EEE8subrangeILb1EEEZNS7_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESM_EUlNS_6system10error_codeEmE_EESI_E6lambdaclESO_(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %i.a), !inline_history !760
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE7read_opINS0_4http10icy_streamIS5_E3ops7read_opINS0_15buffers_adaptorISt5arrayINS3_14mutable_bufferELm2EEE8subrangeILb1EEEZNS7_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESM_EUlNS_6system10error_codeEmE_EESI_E6lambdaclESO_(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef byval(%"class.boost::system::error_code") align 8 %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.86", align 8     ; 5 uses
  %3 = alloca %"struct.boost::asio::async_result<boost::asio::append_t<boost::beast::http::icy_stream<boost::beast::test::basic_stream<>>::ops::read_op<boost::beast::buffers_adaptor<std::array<boost::asio::mutable_buffer, 2>>::subrange<true>, (lambda at /opt-bench/work/boost/boost/libs/beast/test/beast/_experimental/icy_stream.cpp:85:33)>, boost::system::error_code, unsigned long>, void ()>::init_wrapper", align 8 ; 7 uses
  %4 = alloca %"class.boost::asio::detail::initiate_dispatch_with_executor", align 8 ; 7 uses
  %5 = alloca %"struct.boost::asio::detail::empty_work_function", align 1 ; 4 uses
  %6 = alloca %"class.boost::shared_ptr", align 8 ; 7 uses
  %7 = alloca %"class.boost::asio::any_io_executor", align 8 ; 7 uses
  %8 = alloca %"class.boost::asio::append_t.85", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  store ptr null, ptr %6, align 8, !tbaa !127, !alias.scope !769
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157, !noalias !769 ; 5 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !156, !alias.scope !769
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 4, !noalias !769 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i
  %.058.i.i.i.i.i = phi i32 [ %i.k, %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.h = add nsw i32 %.058.i.i.i.i.i, 1
  %i.i = cmpxchg weak ptr %i.e, i32 %.058.i.i.i.i.i, i32 %i.h monotonic monotonic, align 4, !noalias !769 ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.k = extractvalue { i32, i1 } %i.i, 0         ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i, %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !156, !alias.scope !769
  br label %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit.thread

_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !155, !noalias !769 ; 3 uses
  store ptr %i.m, ptr %6, align 8, !tbaa !127, !alias.scope !769
  %.not35 = icmp eq ptr %i.m, null
  br i1 %.not35, label %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit.thread, label %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit._crit_edge

_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit._crit_edge: ; preds = %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !52
  br label %bb.d

_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit.thread: ; preds = %bb.a, %.loopexit.i.i.i, %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit
  %i.n = phi ptr [ %i.d, %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit ], [ null, %.loopexit.i.i.i ], [ null, %bb.a ]
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !50, !noalias !770
  %i.p = and i64 %i.o, -2
  %switch.i.i.i.i = icmp eq i64 %i.p, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit.thread
  %i.q = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !45, !noalias !770
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !noalias !770
  %i.t = tail call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #31, !noalias !770, !inline_history !16
  br i1 %i.t, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %bb.c

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit.thread, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.u = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.v = or disjoint i64 %i.u, ptrtoint (ptr @_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE7read_opINS0_4http10icy_streamIS5_E3ops7read_opINS0_15buffers_adaptorISt5arrayINS3_14mutable_bufferELm2EEE8subrangeILb1EEEZNS7_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESM_EUlNS_6system10error_codeEmE_EESI_E6lambdaclESO_E7loc_bb_ to i64) ; 2 uses
  store i64 125, ptr %1, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.523.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.v, ptr %.sroa.5.0..sroa_idx.i7, align 8, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit._crit_edge, %bb.c
  %i.w = phi ptr [ %i.m, %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit._crit_edge ], [ null, %bb.c ] ; 6 uses
  %i.x = phi ptr [ %i.d, %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit._crit_edge ], [ %i.n, %bb.c ] ; 7 uses
  %i.y = phi i64 [ %.pre, %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit._crit_edge ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = and i64 %i.y, 1
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread29, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp ne i64 %i.y, 1
  %i.ac = load i32, ptr %1, align 8
  %i.ad = icmp ne i32 %i.ac, 0
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ad
  br i1 %or.cond, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %_ZNK5boost6system10error_codecvbEv.exit.thread29

_ZNK5boost6system10error_codecvbEv.exit.thread29: ; preds = %bb.e, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 72 ; 2 uses
  %i.af = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ae) #31 ; 2 uses
  %.not.i.i8 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i8, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread29
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.af) #33
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 120 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !236 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 128 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !149 ; 3 uses
  %.not = icmp eq ptr %i.aj, %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  br i1 %.not, label %bb.q, label %bb.g

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  %i.am = load i64, ptr %i.al, align 8, !tbaa !148 ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !169 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !170 ; 2 uses
  %.not18.i.i = icmp ne i64 %i.am, 0
  %i.aq = icmp ne ptr %i.an, %i.ap
  %or.cond19.i.i = select i1 %.not18.i.i, i1 %i.aq, i1 false
  br i1 %or.cond19.i.i, label %.lr.ph.i.i, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.ar = ptrtoint ptr %i.aj to i64
  %i.as = ptrtoint ptr %i.ah to i64
  %i.at = sub i64 %i.ar, %i.as
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.am)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 272
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %.lr.ph.i.i
  %.023.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bf, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ]
  %.sroa.414.022.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %i.ba, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 4 uses
  %.sroa.09.021.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %i.bg, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.6.020.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i ], [ %i.bh, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %.sroa.414.022.i.i, align 8, !tbaa !75 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.414.022.i.i, i64 8
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !37 ; 3 uses
  %9 = load ptr, ptr %i.ak, align 8, !tbaa !169
  %i.aw = icmp eq ptr %.sroa.414.022.i.i, %9
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = load i64, ptr %i.au, align 8, !tbaa !171
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 %.sroa.6.0.copyload.i.i.i) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 %..i.i.i.i
  %i.az = sub i64 %.sroa.6.0.copyload.i.i.i, %..i.i.i.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.03.0.i.i.i = phi ptr [ %i.ay, %bb.i ], [ %.sroa.03.0.copyload.i.i.i, %bb.h ]
  %.sroa.6.0.i.i.i = phi i64 [ %i.az, %bb.i ], [ %.sroa.6.0.copyload.i.i.i, %bb.h ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.414.022.i.i, i64 16 ; 3 uses
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !170
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = load i64, ptr %i.av, align 8, !tbaa !37
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.6.0.i.i.i, i64 %i.bd)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.6.1.i.i.i = phi i64 [ %.sroa.speculated.i.i.i, %bb.k ], [ %.sroa.6.0.i.i.i, %bb.j ] ; 2 uses
  %i.be = tail call i64 @llvm.umin.i64(i64 %.sroa.6.1.i.i.i, i64 %.sroa.6.020.i.i) ; 4 uses
  %.not.i.i.i9 = icmp eq i64 %.sroa.6.1.i.i.i, 0
  br i1 %.not.i.i.i9, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.03.0.i.i.i, ptr align 1 %.sroa.09.021.i.i, i64 %i.be, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i: ; preds = %bb.m, %bb.l
  %i.bf = add i64 %i.be, %.023.i.i                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i.i, i64 %i.be
  %i.bh = sub nuw i64 %.sroa.6.020.i.i, %i.be     ; 2 uses
  %.not.i.i10 = icmp ne i64 %i.bh, 0
  %i.bi = icmp ne ptr %i.ba, %i.ap
  %or.cond.i.i = select i1 %.not.i.i10, i1 %i.bi, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit.loopexit, !llvm.loop !11

_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit.loopexit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i
  %.pre36 = load ptr, ptr %i.ag, align 8, !tbaa !236
  %.pre37 = load ptr, ptr %i.ai, align 8, !tbaa !149
  br label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit

_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit: ; preds = %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit.loopexit, %bb.g
  %i.bj = phi ptr [ %i.aj, %bb.g ], [ %.pre37, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit.loopexit ]
  %i.bk = phi ptr [ %i.ah, %bb.g ], [ %.pre36, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit.loopexit ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ 0, %bb.g ], [ %i.bf, %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit.loopexit ] ; 4 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %.not.i = icmp ult i64 %.0.lcssa.i.i, %i.bn
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !237 ; 2 uses
  store ptr %i.bp, ptr %i.ai, align 8, !tbaa !149
  br label %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit

bb.o:                                             ; preds = %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEES5_EEmRKT_RKT0_m.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.0.lcssa.i.i
  br label %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit

_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit: ; preds = %bb.n, %bb.o
  %.sink.i = phi ptr [ %i.bq, %bb.o ], [ %i.bp, %bb.n ]
  store ptr %.sink.i, ptr %i.ag, align 8, !tbaa !236
  %i.br = getelementptr inbounds nuw i8, ptr %i.w, i64 240 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !240
  %i.bt = add i64 %i.bs, %.0.lcssa.i.i
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !240
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit.thread

bb.p:                                             ; preds = %bb.f
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.q:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.bv = load ptr, ptr %i.ak, align 8, !tbaa !169 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !170 ; 3 uses
  %.not8.i.i.i = icmp eq ptr %i.bv, %i.bx
  br i1 %.not8.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bz = load i64, ptr %i.by, align 8
  %.sroa.6.0..sroa_idx.i.i.peel.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.6.0.copyload.i.i.peel.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.peel.i.i, align 8, !tbaa !37
  %i.ca = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.copyload.i.i.peel.i.i, i64 %i.bz) ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bx
  br i1 %i.cc, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.lr.ph.i.i.i, %.peel.next.i.i
  %.010.i.i.i = phi i64 [ %i.cf, %.peel.next.i.i ], [ %i.ca, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.44.09.i.i.i = phi ptr [ %i.cd, %.peel.next.i.i ], [ %i.cb, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.44.09.i.i.i, i64 8
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.44.09.i.i.i, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bx
  %i.cf = add i64 %.sroa.6.0.copyload.i.i.i.i, %.010.i.i.i
  br i1 %i.ce, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit, label %.peel.next.i.i, !llvm.loop !3

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit: ; preds = %.peel.next.i.i, %.lr.ph.i.i.i
  %.010.i.lcssa.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %.010.i.i.i, %.peel.next.i.i ]
  %.sroa.6.0.i.i.lcssa.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i ], [ %.sroa.6.0.copyload.i.i.i.i, %.peel.next.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !37
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.6.0.i.i.lcssa.i.i, i64 %i.ch)
  %i.ci = sub i64 0, %.010.i.lcssa.i.i
  %.not4 = icmp eq i64 %.sroa.speculated.i.i.i.i, %i.ci
  br i1 %.not4, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit
  %i.cj = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error17get_misc_categoryEv()
          to label %.noexc.i unwind label %bb.s   ; 4 uses

.noexc.i:                                         ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !50, !noalias !771
  %i.cm = and i64 %i.cl, -2
  %switch.i.i.i.i11 = icmp eq i64 %i.cm, -5572340897628102704
  br i1 %switch.i.i.i.i11, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

bb.s:                                             ; preds = %bb.r
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  tail call void @__clang_call_terminate(ptr %i.co) #32
  unreachable

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %.noexc.i
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !45, !noalias !771
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !771
  %i.cs = tail call noundef zeroext i1 %i.cr(ptr noundef nonnull align 8 dereferenceable(52) %i.cj, i32 noundef 2) #31, !noalias !771, !inline_history !2
  br i1 %i.cs, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %bb.t

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %.noexc.i, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %bb.t

bb.t:                                             ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.ct = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.cu = or disjoint i64 %i.ct, ptrtoint (ptr @_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE7read_opINS0_4http10icy_streamIS5_E3ops7read_opINS0_15buffers_adaptorISt5arrayINS3_14mutable_bufferELm2EEE8subrangeILb1EEEZNS7_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESM_EUlNS_6system10error_codeEmE_EESI_E6lambdaclESO_E7loc_bb__0 to i64)
  store i64 2, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.cj, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 %i.cu, ptr %i.z, align 8, !tbaa !37
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit.thread

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit.thread: ; preds = %bb.q, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit, %bb.t, %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit
  %.0 = phi i64 [ 0, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit ], [ 0, %bb.t ], [ %.0.lcssa.i.i, %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit ], [ 0, %bb.q ]
  %i.cv = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ae) #31 ; 0 uses
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.e, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit.thread
  %.1 = phi i64 [ 0, %bb.e ], [ %.0, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorISt5arrayINS_4asio14mutable_bufferELm2EEE8subrangeILb1EEEvEEmRKT_.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @_ZN5boost4asio15any_io_executorC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(113) %i.cw) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !772)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseIZNS0_4http15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEES6_EUlNS_6system10error_codeEmE_NS_4asio15any_io_executorESaIvEEE, i64 16), ptr %8, align 8, !tbaa !45, !alias.scope !772
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false), !tbaa.struct !246
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(113) %i.cz, ptr noundef nonnull align 8 dereferenceable(113) %i.da) #31
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 136 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !182, !range !71, !noalias !772, !noundef !72 ; 2 uses
  %i.de = trunc nuw i8 %i.dd to i1
  store i8 %i.dd, ptr %i.db, align 8, !tbaa !182, !alias.scope !772
  br i1 %i.de, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.df, ptr noundef nonnull align 8 dereferenceable(56) %i.dg) #31
  store i8 0, ptr %i.dc, align 8, !tbaa !182, !noalias !772
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dj = load <2 x i32>, ptr %i.di, align 8, !tbaa !40, !noalias !772
  store <2 x i32> %i.dj, ptr %i.dh, align 8, !tbaa !40, !alias.scope !772
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast4http10icy_streamINS0_4test12basic_streamINS_4asio15any_io_executorEEEE3ops7read_opINS0_15buffers_adaptorISt5arrayINS5_14mutable_bufferELm2EEE8subrangeILb1EEEZNS1_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESL_EUlNS_6system10error_codeEmE_EE, i64 16), ptr %8, align 8, !tbaa !45, !alias.scope !772
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.dk, ptr noundef nonnull align 8 dereferenceable(73) %i.dl, i64 73, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 232 ; 2 uses
  store i64 %.1, ptr %i.dm, align 8, !tbaa !256, !alias.scope !772
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 240 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !242
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN5boost4asio15any_io_executorC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %7) #31, !inline_history !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4) #31, !inline_history !18
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !37
  store i64 %i.do, ptr %2, align 8, !tbaa !37
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i64 24, i1 false), !tbaa.struct !242
  invoke void @_ZNO5boost4asio12async_resultINS0_8append_tINS_5beast4http10icy_streamINS3_4test12basic_streamINS0_15any_io_executorEEEE3ops7read_opINS3_15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEEZNS4_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESN_EUlNS_6system10error_codeEmE_EEJSP_mEEEJFvvEEE12init_wrapperINS0_6detail31initiate_dispatch_with_executorIS8_EEEclISR_JNSW_19empty_work_functionEEEEvOT_St5tupleIJSP_mEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(264) %8, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.w unwind label %.body.i, !inline_history !19

.body.i:                                          ; preds = %bb.v
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #31, !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #31, !inline_history !17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN5boost4asio8append_tINS_5beast4http10icy_streamINS2_4test12basic_streamINS0_15any_io_executorEEEE3ops7read_opINS2_15buffers_adaptorISt5arrayINS0_14mutable_bufferELm2EEE8subrangeILb1EEEZNS3_15icy_stream_test8doMatrixENS_4core17basic_string_viewIcEESM_EUlNS_6system10error_codeEmE_EEJSO_mEED2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.ac

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #31, !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #31, !inline_history !17
end_hunk_3
